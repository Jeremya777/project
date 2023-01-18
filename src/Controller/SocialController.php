<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Kreait\Firebase\Factory;
use Google\Cloud\Firestore\FirestoreClient;
use Google\ApiCore\Serializer;
class SocialController extends AbstractController
{
    #[Route('/social', name: 'app_social')]
    public function index(): Response
    {

        $factory = (new Factory)
                            ->withServiceAccount($_SERVER['DOCUMENT_ROOT'].'firebase.json')
                            ->withDatabaseUri('https://project-b1337-default-rtdb.europe-west1.firebasedatabase.app/');
        $firestore = $factory->createFirestore();

        $database = $firestore->database();
        $r = $database->collection('posts');
        $username = $this->getUser()->getUsername();
        $q1 = $r->where('author', '==', $username );
        $documents1 = $q1->documents();
        $posts = [];
        foreach ($documents1 as $document) {
            if ($document->exists()) {
                $posts[] = $document->data()["postMessage"];
            } else {
                printf('Document %s does not exist!' . PHP_EOL, $document->id());
            }
        }
        $posts = count($posts) - 1;
        return $this->render('social/index.html.twig', [
            'controller_name' => 'SocialController',
            'posts' => $posts 
        ]);
    }
}
