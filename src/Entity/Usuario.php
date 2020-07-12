<?php

namespace App\Entity;

use App\Repository\UsuarioRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\UserInterface;

/**
 * @ORM\Entity(repositoryClass=UsuarioRepository::class)
 */
class Usuario implements UserInterface
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $login;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $senha;

    /**
     * @ORM\Column(type="array")
     */
    private $permissoes = [];

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLogin(): ?string
    {
        return $this->login;
    }

    public function setLogin(string $login): self
    {
        $this->login = $login;

        return $this;
    }

    public function getSenha(): ?string
    {
        return $this->senha;
    }

    public function setSenha(string $senha): self
    {
        $this->senha = $senha;

        return $this;
    }

    public function getPermissoes(): ?array
    {
        return $this->permissoes;
    }

    public function setPermissoes(array $permissoes): self
    {
        $this->permissoes = $permissoes;

        return $this;
    }

    public function getRoles()
    {
        return $this->getPermissoes();
    }

    public function getPassword()
    {
        return $this->getSenha();
    }

    public function getSalt()
    {
        // TODO: Implement getSalt() method.
    }

    public function getUsername()
    {
        return $this->getLogin();
    }

    public function eraseCredentials()
    {
        // TODO: Implement eraseCredentials() method.
    }
}
