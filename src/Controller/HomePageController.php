<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\RegistrationFormType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Contracts\Translation\TranslatorInterface;
use Kreait\Firebase\Factory;
use Google\Cloud\Firestore\FirestoreClient;
use Google\ApiCore\Serializer;
use Symfony\Component\Security\Http\Attribute\CurrentUser;
class HomePageController extends AbstractController
{
    #[Route('/homepage', name: 'app_homepage')]
    public function index(Request $request, UserPasswordHasherInterface $userPasswordHasher, EntityManagerInterface $entityManager): Response
    {
        $factory = (new Factory)
                            ->withServiceAccount( $_SERVER['DOCUMENT_ROOT'].'firebase.json')
                            ->withDatabaseUri('https://project-b1337-default-rtdb.europe-west1.firebasedatabase.app/');
        $firestore = $factory->createFirestore();
       /* $database = $factory->createDatabase();
        $reference = $firestore->getReference('users');
        $snapshot = $reference->getSnapshot();
        $value = $snapshot->getValue();
       echo $value;*/       
        $database = $firestore->database();
        $r = $database->collection('requestFriendship');
        $username = $this->getUser()->getUsername();
        $q1 = $r->where('receiver', '==', $username )->where('status','==', "accepted");
        $documents1 = $q1->documents();
        $friends = [];
        foreach ($documents1 as $document) {
            if ($document->exists()) {
                $friends[] = explode(":",$document->id())[0];
            } else {
                printf('Document %s does not exist!' . PHP_EOL, $document->id());
            }
        }
        $q2 = $r->where('sender', '==', $username )->where('status','==', "accepted");
        $documents2 = $q2->documents();
        foreach ($documents2 as $document) {
            if ($document->exists()) {
                $friends[] = explode(":",$document->id())[1];
            } else {
                printf('Document %s does not exist!' . PHP_EOL, $document->id());
            }
        }
        return $this->render('home_page/b.html.twig', [
          'db' => $friends
        ]);
    }
}
