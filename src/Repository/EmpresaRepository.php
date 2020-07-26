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
    
    public function search($term)
    {
        return $this->createQueryBuilder('emp')
            ->andWhere(
                'emp.titulo LIKE :searchTerm 
                 OR emp.endereco LIKE :searchTerm
                 OR emp.cep LIKE :searchTerm 
                 OR emp.cidade LIKE :searchTerm
                 OR emp.categoria LIKE :searchTerm')
            ->setParameter('searchTerm', '%'.$term.'%')
            ->setMaxResults(100)
            ->getQuery()
            ->getResult()
        ;
    }

    }
