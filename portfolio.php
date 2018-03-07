<?php

/*-------------------------------------------------------------------------
code principal
But : aller en base chercher les infos pour les mettre dans le phtml ...
------------------------------------------------------------------------*/

// 1. préparer l'accès à la base
$options = [
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

$pdo = new PDO("mysql:host=localhost;dbname=myportfolio",
"root",
"", $options);

$pdo->exec("SET NAMES UTF8");

// 2. écrire la requête (mode simplifié car il n'y a pas de paramètres)
$query = $pdo->query("SELECT * FROM `projet`;");

// 3. l'exécuter
$listProj = $query->fetchAll(PDO::FETCH_ASSOC);

// 4. on lui ajoute la liste de ses images   (donc bien utiliser le foreach en édition avec le &)

foreach ($listProj as &$elt) {
  // 4.1 écrire la requête
  $query = $pdo->prepare("SELECT * FROM `images` WHERE `image_proj_lien` = ?;");
  // préparer les paramètres de la requête
  $array = [
    $elt['proj_id'],
    ];
  // 4.2 exécuter la requête
  $query->execute($array);
  // 4.3 récupérer le tableau des valeurs de la base et les injecter dans l'attribut 'images' ajouté aux données du projet
  $elt['images'] = $query->fetchAll(PDO::FETCH_ASSOC);
}

// 5. passage à l'affichage via le layout qui permet d'avoir des en-têtes pieds de page unifiés
$template = "portfolio";
include "layout.phtml";
