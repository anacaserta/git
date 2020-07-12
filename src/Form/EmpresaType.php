<?php

namespace App\Form;

use App\Entity\Empresa;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EmpresaType extends AbstractType
{
    private $cidadeChoices = [
        'Bauru' => 'Bauru',
        'São Paulo'=> 'São Paulo',
    ];

    private $estadoChoices = [
        'São Paulo' => 'São Paulo',
    ];

    private $categoriaChoices = [
        'Auto' => 'Auto',
        'Beauty and Fitness' => 'Beauty and Fitness',
        'Entertainment' => 'Entertainment',
        'Food and Dining' =>  'Food and Dining',
        'Health' => 'Health',
        'Sports' => 'Sports',
        'Travel' => 'Travel',
    ];

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titulo')
            ->add('telefone')
            ->add('endereco')
            ->add('cidade', ChoiceType::class, ['choices' => $this->cidadeChoices,])
            ->add('estado', ChoiceType::class, ['choices' => $this->estadoChoices,])
            ->add('cep')
            ->add('descricao')
            ->add('categoria', ChoiceType::class, ['choices' => $this->categoriaChoices,
                'expanded' => true,
                'multiple' => true,

            ])

        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Empresa::class,
        ]);
    }
}
