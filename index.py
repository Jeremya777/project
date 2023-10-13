from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
import psycopg2
import re
psycopg2
service = Service(executable_path='/Users/andresrighettobonciani/Desktop/chromed/chromedriver')
options = webdriver.ChromeOptions()
options.add_argument("--headless")  # Esegue Chrome in modalità headless

driver = webdriver.Chrome(service=service, options=options)


wait = WebDriverWait(driver, 20)


arrayCategories = ["https://cineblog01.codes/film/?genere=1","https://cineblog01.codes/film/?genere=2","https://cineblog01.codes/film/?genere=3","https://cineblog01.codes/film/?genere=4","https://cineblog01.codes/film/?genere=5", "https://cineblog01.codes/film/?genere=24","https://cineblog01.codes/film/?genere=6","https://cineblog01.codes/film/?genere=7","https://cineblog01.codes/film/?genere=8","https://cineblog01.codes/film/?genere=26","https://cineblog01.codes/film/?genere=9","https://cineblog01.codes/film/?genere=10","https://cineblog01.codes/film/?genere=11","https://cineblog01.codes/film/?genere=12","https://cineblog01.codes/film/?genere=13","https://cineblog01.codes/film/?genere=14","https://cineblog01.codes/film/?genere=15","https://cineblog01.codes/film/?genere=16","https://cineblog01.codes/film/?genere=23","https://cineblog01.codes/film/?genere=17","https://cineblog01.codes/film/?genere=18","https://cineblog01.codes/film/?genere=19","https://cineblog01.codes/film/?genere=20"]

categorie = ["azione","animazione","avventura","biografico","commedia","crime","documentario","erotico","famiglia","fantascienza","fantasy","giallo","guerra","horror","musical","poliziesco","romantico","storico","spionaggio","sportivo","thriller","western"]

hrefs = []

cat = {}


titleFilm = []
imageFilm = []
embedLinks = []
# I tuoi dati di connessione al database
DATABASE = 'progetto'
USER = 'postgres'
PASSWORD = '!ChangeMe!'
HOST = 'localhost'
PORT = '5432'
y = 0
# Connessione al database
conn = psycopg2.connect(database=DATABASE, user=USER, password=PASSWORD, host=HOST, port=PORT)
cur = conn.cursor()

for index, category in enumerate(arrayCategories):
    print(categorie[index])
    driver.get(category)
    hrefs = []
    containerFilms = driver.find_element(By.ID, "dle-content").find_elements(By.CLASS_NAME, "block-th-cover")
        
    trama = driver.find_elements(By.CLASS_NAME, "story")
    tramas = [t.get_attribute("textContent") for t in trama]
    print("LEN TRAMA : !!!!!!!!!!! ",len(trama))
    for i, href in enumerate(containerFilms):
        link = href.find_element(By.XPATH, "a").get_attribute("href")
        image = href.find_element(By.XPATH, "a").find_element(By.XPATH, "img").get_attribute("data-src")
        title = href.find_element(By.XPATH, "a").find_element(By.XPATH, "img").get_attribute("alt")
        imageFilm.append(image)
        titleFilm.append(title)
        hrefs.append(link)
    for pageFilm in hrefs:
        driver.get(pageFilm)
        tr_tags = driver.find_elements(By.TAG_NAME, "tr")
        for tr_tag in tr_tags:
            td_tags = tr_tag.find_elements(By.TAG_NAME, "td")
            for td_tag in td_tags:
                if "Supervideo" in td_tag.text:
                    onclick_value = tr_tag.get_attribute("onclick")
                    match = re.search(r"'(http[s]?://[^']+)'", onclick_value)
                    url = match.group(1)
                    parts = url.split('/', 3)  # Suddividi l'URL in parti dopo il terzo slash
                    new_url = '/'.join(parts[:-1]) + '/e/' + parts[-1]
                    print(new_url)  # Ricostruisci l'URL inserendo 'e/' dopo il terzo slash
                    embedLinks.append(new_url)
                    break
        cat[category] = hrefs
    for i, link in enumerate(tramas):
        table_name = categorie[index]
        query = f"INSERT INTO {table_name} (titolo,linkvideo, trama, immagine) VALUES (%s, %s, %s, %s);"
        cur.execute(query, (titleFilm[i], imageFilm[i], link, tramas[i]))        # Commit delle operazioni
        conn.commit()
        y = y + 1
    print(f"INSERIMENTO IN TABELLA {categorie[index]}")
    titleFilm.clear()
    imageFilm.clear()
    tramas.clear()
    embedLinks.clear()

cur.close()
conn.close()
driver.quit()
