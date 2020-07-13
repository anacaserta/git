<?php

namespace App\Repository;

use App\Entity\Empresa;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Empresa|null find($id, $lockMode = null, $lockVersion = null)
 * @method Empresa|null findOneBy(array $criteria, array $orderBy = null)
 * @method Empresa[]    findAll()
 * @method Empresa[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 *
 */
class EmpresaRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Empresa::class);
    }

    // /**
    //  * @return Empresa[] Returns an array of Empresa objects
    //  */

    public function findByTitulo($titulo)
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.titulo LIKE :titulo')
            ->setParameter('titulo',  '%'.$titulo.'%')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    

}
