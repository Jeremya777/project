<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Doctrine\DBAL\Connection;
use Doctrine\ORM\EntityManagerInterface;

class SecurityController extends AbstractController
{

    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager) {
        $this->entityManager = $entityManager;
    }
    
    #[Route(path: '/', name: 'app_login')]
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // if ($this->getUser()) {
        //     return $this->redirectToRoute('target_path');
        // }

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }

    #[Route(path: '/logout', name: 'app_logout')]
    public function logout(): void
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }
    #[Route(path: '/movies', name: 'app_movies')]
    public function movies(): Response
    {
        $connection = $this->entityManager->getConnection();
        $arrayImages = [];
        $result = $connection->executeQuery('SELECT immagine FROM azione')->fetchAllAssociative();
    
        foreach ($result as $row) {
            $arrayImages[] = $row['immagine'];
        }
    
        return $this->render('movies/index.html.twig', [
            'images' => $arrayImages
        ]);
    }
    #[Route(path: '/movies/{id}', name: 'app_moviesid')]
    public function moviesId(string $id): Response
    {
        $connection = $this->entityManager->getConnection();
        $arrayImages = [];
        $arrayIds = [];
        $titoli = [];
        $result = $connection->executeQuery('SELECT * FROM '.$id.'')->fetchAllAssociative();
    
        foreach ($result as $row) {
            $arrayImages[] = $row['immagine'];
            $arrayIds[] = $row["id"];
            $titoli[] = $row["titolo"];
        }
    
        return $this->render('movies/category_movie.html.twig', [
            'categoria' => $id,
            'images' => $arrayImages,
            'ids' => $arrayIds,
            'titoli' => $titoli
        ]);
    }
    #[Route(path: 'movies/movie/{categoria}/{id}', name: 'app_movieid')]
    public function movieId(string $categoria, string $id): Response
    {
        $connection = $this->entityManager->getConnection();
        $arrayImages = [];
        $arrayIds = [];
        $result = $connection->executeQuery('SELECT * FROM '.$categoria.' WHERE id = '.$id.'')->fetchAssociative();
    
        return $this->render('movies/movie.html.twig', [
            'link' => $result["linkvideo"],
            'trama' => $result["trama"],
            'titolo' => $result["titolo"]
        ]);
    }

}
