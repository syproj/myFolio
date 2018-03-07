<?php
//init message d'avertissement et de son format d'affichage (erreur ou ok)
$message ="";
$isMessErreur = true;

/*------------------------------------------------------------
fonction de vérification des champs de formulaire
------------------------------------------------------------*/

function verifyFields ($nom, $mail, $titre, $contenu) {

  if (empty($nom) || empty($mail) || empty($titre) || empty($contenu) ) {
    $messRet = "Attention, tous les champs sont nécessaires à l'envoi";
    return $messRet;
  }
  //les champs sont tous remplis (sinon on est sorti en return) , reste à savoir si les formats et longueurs sont OK
  if (strlen($nom) > 100) {
    $messRet = "La longueur de nom/prénom est limitée à 100 caractères. Complétez dans le contenu si nécessaire";
    return $messRet;
  }

  if (strlen($mail) > 100) {
    $messRet = "La longueur d'email est limitée à 100 caractères";
    return $messRet;
  }

  if (filter_var ($mail, FILTER_VALIDATE_EMAIL) === false) {
    $messRet = "Cet email n'a pas un format valide ..." ;
    return $messRet;
  }

  if (strlen($titre) > 100) {
    $messRet = "La longueur du titre est limitée à 100 caractères. Complétez dans le contenu si nécessaire";
    return $messRet;
  }

  //tout est correct, on renvoie un message d'erreur vide
  $messRet = '';
  return $messRet;


}

/*------------------------------------------------------------
code principal
------------------------------------------------------------*/

if ( empty( $_POST ) == false)  {
  // ===================================================
  // actions si on a bien reçu des données du formulaire
  // ===================================================

  $emetteurName = $_POST["auteurMess"];
  $emetteurMail = $_POST["emailMess"];
  $mailTitre = $_POST["titreMess"];
  $mailContent = $_POST["contenuMess"];

  //on vérifie si les champs sont cohérents
  $message = verifyFields($emetteurName, $emetteurMail, $mailTitre, $mailContent);

  if (empty($message)) {
    //tout va bien puisqu'il n'y a pas de message d'erreur à afficher, donc on l'envoie;

    // mettre en place gestion d'erreur de la fonction mail
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );

    // préparer les élements nécessaires à un mail
    $from = $emetteurMail;
    $to = "sfab.pro@gmail.com";
    $subject = "ContactSite : " . $mailTitre;
    $myMessage = "De :  " . $emetteurName . "\r\n" . "Le : " . date("d/m/Y H:i e") . "\r\n\r\n" . $mailContent;
    // Dans le cas où nos lignes comportent plus de 70 caractères, il faut d'après la doc les couper en utilisant wordwrap() - vu les commentaires ultérieurs, 1000 semble être la limite, donc je vais prendre 800 comme max pour être large ...
    $message = wordwrap($message, 800, "\r\n");

    $headers = "From:" . $from;

    //envoyer le message
    $res = mail($to,$subject,$myMessage, $headers);
    if ($res) {
      $isMessErreur = false;
      $message = "Votre message a bien été envoyé, je vous en remercie.";
    }
    else {
      $message = "Il y a eu un problème dans l'envoi de votre message, merci de retenter ultérieurement.";
    }
  }

}
else {
  // ===================================================
  // actions si on est arrivé directement
  // ===================================================


  //initialisation des variables échangées avec la visu html
  //à vide pour le moment, la possibilité de pré-remplir reste ainsi ouverte
  $emetteurName = '';
  $emetteurMail = '';
  $mailTitre = '';
  $mailContent = '';

}



// passage à l'affichage via le layout qui permet d'avoir des en-têtes pieds de page unifiés
$template = "contact";
include "layout.phtml";
