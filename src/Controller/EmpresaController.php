<?php

namespace App\Controller;

use App\Entity\Empresa;
use App\Form\EmpresaType;
use App\Repository\EmpresaRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/empresa")
 */
class EmpresaController extends AbstractController
{
    /**
     * @Route("/", name="empresa_index", methods={"GET"})
     */
    public function index(): Response
    {
        return $this->render('empresa/index.html.twig');
    }


    /**
     * @Route("/", name="empresa_find", methods={"GET", "POST"})
     */
    public function search(Request $request, EmpresaRepository $empresaRepository): Response
    {
        dump($request->getContent());
        return $this->render('empresa/results.html.twig', [
            'empresas' => $empresaRepository->search($request->request->get('search'))

        ]);
    }

    /**
     * @Route("/admin", name="empresa_admin", methods={"GET"})
     */
    public function admin(EmpresaRepository $empresaRepository): Response
    {
        return $this->render('empresa/admin.html.twig', [
            'empresas' => $empresaRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="empresa_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $empresa = new Empresa();
        $form = $this->createForm(EmpresaType::class, $empresa);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($empresa);
            $entityManager->flush();

            return $this->redirectToRoute('empresa_admin');
        }

        return $this->render('empresa/new.html.twig', [
            'empresa' => $empresa,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="empresa_show", methods={"GET"})
     */
    public function show(Empresa $empresa): Response
    {
        return $this->render('empresa/show.html.twig', [
            'empresa' => $empresa,
        ]);
    }
    /**
     * @Route("/detail/{id}", name="empresa_detail", methods={"GET"})
     */
    public function detail(Empresa $empresa): Response
    {
        return $this->render('empresa/detail.html.twig', [
            'empresa' => $empresa,
        ]);
    }


    /**
     * @Route("/admin/{id}/edit", name="empresa_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Empresa $empresa): Response
    {
        $form = $this->createForm(EmpresaType::class, $empresa);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('empresa_admin');
        }

        return $this->render('empresa/edit.html.twig', [
            'empresa' => $empresa,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/admin/{id}", name="empresa_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Empresa $empresa): Response
    {
        if ($this->isCsrfTokenValid('delete'.$empresa->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($empresa);
            $entityManager->flush();
        }

        return $this->redirectToRoute('empresa_admin');
    }
}
