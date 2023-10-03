<?php

namespace App\Entity;

use App\Repository\MovieRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: MovieRepository::class)]
class Movie
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $titolo = null;

    #[ORM\Column(length: 255)]
    private ?string $immagine = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $linkvideo = null;

    #[ORM\Column(length: 255)]
    private ?string $trama = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitolo(): ?string
    {
        return $this->titolo;
    }

    public function setTitolo(?string $titolo): static
    {
        $this->titolo = $titolo;

        return $this;
    }

    public function getImmagine(): ?string
    {
        return $this->immagine;
    }

    public function setImmagine(string $immagine): static
    {
        $this->immagine = $immagine;

        return $this;
    }

    public function getLinkvideo(): ?string
    {
        return $this->linkvideo;
    }

    public function setLinkvideo(?string $linkvideo): static
    {
        $this->linkvideo = $linkvideo;

        return $this;
    }

    public function getTrama(): ?string
    {
        return $this->trama;
    }

    public function setTrama(string $trama): static
    {
        $this->trama = $trama;

        return $this;
    }
}
