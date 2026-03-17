<?php

namespace App\Controller;

use App\Entity\Menu;
use App\Repository\MenuRepository; 

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\HttpFoundation\Response;



#[Route('/menu')]
final class MenuController extends AbstractController
{
    #[Route('', name: 'app_menu_index', methods: ['GET'])]
    public function index(MenuRepository $menuRepository): Response
    {
        return $this->render('menu/index.html.twig', [
            'menus' => $menuRepository->findAll(),
        ]);
    }

    #[Route('/{id}', name: 'app_menu_show', methods: ['GET'])]
    public function show(Menu $menu): Response
    {
        //show details for menu with the selected id
        return $this->render('menu/show.html.twig', [
            'menu' => $menu,
        ]);
    }
}