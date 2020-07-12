<?php

namespace App\DataFixtures;

use App\Entity\Empresa;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class EmpresaFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        for($i = 1; $i <= 10; $i++){
            $empresa = new Empresa();
            $empresa->setTitulo(sprintf('empresa%d', $i));
            $empresa->setTelefone(sprintf('telefone%d', $i));
            $empresa->setEndereco(sprintf('endereço%d', $i));
            $empresa->setCep(sprintf('cep%d', $i));
            $empresa->setCidade(sprintf('cidade%d', $i));
            $empresa->setEstado(sprintf('estado%d', $i));
            $empresa->setDescricao(sprintf('descricao%d', $i));
            $empresa->setCategoria(array(sprintf('categoria%d', $i)));
            $manager->persist($empresa);
        }

        $manager->flush();
    }
}
