<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231001002321 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP SEQUENCE animazione_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE azione_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE avventura_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE biografico_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE commedia_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE articolo_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE crime_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE documentario_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE erotico_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE famiglia_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE fantascienza_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE fantasy_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE giallo_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE guerra_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE horror_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE musical_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE poliziesco_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE romantico_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE storico_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE spionaggio_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE sportivo_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE thriller_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE western_id_seq CASCADE');
        $this->addSql('CREATE SEQUENCE movie_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE TABLE movie (id INT NOT NULL, titolo VARCHAR(255) DEFAULT NULL, immagine VARCHAR(255) NOT NULL, linkvideo VARCHAR(255) DEFAULT NULL, trama VARCHAR(255) NOT NULL, PRIMARY KEY(id))');
        $this->addSql('DROP TABLE biografico');
        $this->addSql('DROP TABLE fantasy');
        $this->addSql('DROP TABLE avventura');
        $this->addSql('DROP TABLE animazione');
        $this->addSql('DROP TABLE fantascienza');
        $this->addSql('DROP TABLE spionaggio');
        $this->addSql('DROP TABLE western');
        $this->addSql('DROP TABLE musical');
        $this->addSql('DROP TABLE giallo');
        $this->addSql('DROP TABLE famiglia');
        $this->addSql('DROP TABLE erotico');
        $this->addSql('DROP TABLE poliziesco');
        $this->addSql('DROP TABLE thriller');
        $this->addSql('DROP TABLE documentario');
        $this->addSql('DROP TABLE crime');
        $this->addSql('DROP TABLE horror');
        $this->addSql('DROP TABLE sportivo');
        $this->addSql('DROP TABLE commedia');
        $this->addSql('DROP TABLE romantico');
        $this->addSql('DROP TABLE azione');
        $this->addSql('DROP TABLE guerra');
        $this->addSql('DROP TABLE storico');
        $this->addSql('DROP TABLE articolo');
        $this->addSql('ALTER TABLE "user" DROP nome');
        $this->addSql('ALTER TABLE "user" DROP cognome');
        $this->addSql('ALTER TABLE "user" DROP ruolo');
        $this->addSql('ALTER TABLE "user" DROP nomeazienda');
        $this->addSql('ALTER TABLE "user" DROP indirizzo');
        $this->addSql('ALTER TABLE "user" DROP cap');
        $this->addSql('ALTER TABLE "user" DROP citta');
        $this->addSql('ALTER TABLE "user" DROP provincia');
        $this->addSql('ALTER TABLE "user" DROP linguapreferita');
        $this->addSql('ALTER TABLE "user" DROP telefono');
        $this->addSql('ALTER TABLE "user" DROP cf');
        $this->addSql('ALTER TABLE "user" DROP cellulare');
        $this->addSql('ALTER TABLE "user" DROP fax');
        $this->addSql('ALTER TABLE "user" DROP sitoweb');
        $this->addSql('ALTER TABLE "user" DROP email');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('DROP SEQUENCE movie_id_seq CASCADE');
        $this->addSql('CREATE SEQUENCE animazione_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE azione_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE avventura_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE biografico_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE commedia_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE articolo_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE crime_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE documentario_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE erotico_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE famiglia_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE fantascienza_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE fantasy_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE giallo_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE guerra_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE horror_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE musical_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE poliziesco_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE romantico_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE storico_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE spionaggio_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE sportivo_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE thriller_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE western_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE TABLE biografico (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE fantasy (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE avventura (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE animazione (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE fantascienza (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE spionaggio (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE western (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE musical (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE giallo (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE famiglia (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE erotico (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE poliziesco (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE thriller (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE documentario (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE crime (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE horror (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE sportivo (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE commedia (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE romantico (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE azione (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE guerra (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE storico (id SERIAL NOT NULL, titolo VARCHAR(255) NOT NULL, immagine TEXT DEFAULT NULL, linkvideo TEXT DEFAULT NULL, trama TEXT DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE TABLE articolo (id INT NOT NULL, titolo VARCHAR(255) DEFAULT NULL, sottotitolo VARCHAR(255) DEFAULT NULL, data VARCHAR(255) DEFAULT NULL, video VARCHAR(255) DEFAULT NULL, sottotitolovideo VARCHAR(255) DEFAULT NULL, puntichiave VARCHAR(255) DEFAULT NULL, versioneaudioarticolo VARCHAR(255) DEFAULT NULL, testoarticolo VARCHAR(255) DEFAULT NULL, videoarticolo VARCHAR(255) DEFAULT NULL, sottovideoarticolo VARCHAR(255) DEFAULT NULL, categoria VARCHAR(255) DEFAULT NULL, immaginearticolo VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id))');
        $this->addSql('DROP TABLE movie');
        $this->addSql('ALTER TABLE "user" ADD nome VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD cognome VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD ruolo VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD nomeazienda VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD indirizzo VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD cap VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD citta VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD provincia VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD linguapreferita VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD telefono VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD cf VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD cellulare VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD fax VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD sitoweb VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE "user" ADD email VARCHAR(255) DEFAULT NULL');
    }
}
