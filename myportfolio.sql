-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 07 mars 2018 à 16:53
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `myportfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `image_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_number_in_proj` tinyint(4) NOT NULL,
  `image_filename` varchar(150) NOT NULL,
  `image_alt` varchar(100) NOT NULL,
  `image_description` varchar(250) NOT NULL,
  `image_proj_lien` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `image_proj_lien` (`image_proj_lien`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`image_id`, `image_number_in_proj`, `image_filename`, `image_alt`, `image_description`, `image_proj_lien`) VALUES
(1, 1, 'img/portfolio/geneaco/cap1.JPG', 'capture écran de la page décrite ci-dessous', 'Page d\'accueil dans laquelle des articles peuvent être ajoutés par l\'administrateur', 1),
(2, 2, 'img/portfolio/geneaco/cap2.JPG', 'capture écran de la page décrite ci-dessous', 'Page découvrir le cercle (modifiable par l\'administrateur via la gestion des articles)', 1),
(3, 3, 'img/portfolio/geneaco/cap3.JPG', 'capture écran de la page décrite ci-dessous', 'Page adhérer au cercle (modifiable par l\'administrateur via la gestion des articles), avec son lien pour télécharger le formulaire papier et le plan d\'accès au cercle', 1),
(4, 4, 'img/portfolio/geneaco/cap4.JPG', 'capture écran de la page décrite ci-dessous', 'Page bibliothèque en vision visiteur (les adhérents peuvent également avoir accès aux informations de classement permettant de retrouver plus rapidement le livre/journal)', 1),
(5, 5, 'img/portfolio/geneaco/cap5.JPG', 'capture écran de la page décrite ci-dessous', 'Un clic sur les tuiles au fond clair aboutit systématiquement à la page de connexion (qui comprend également un lien d\'inscription)', 1),
(6, 6, 'img/portfolio/geneaco/cap6.JPG', 'capture écran de la page décrite ci-dessous', 'Page d\'inscription avec  une demande d\'autorisation pour faire apparaitre en clair l\'email fourni (si l\'inscrit refuse, il ne profitera pas des échanges répondre à tous, mais c\'est son droit)', 1),
(7, 7, 'img/portfolio/geneaco/cap7.JPG', 'capture écran de la page décrite ci-dessous', 'Page d\'accueil actuelle (sans articles) après connexion d\'un inscrit simple (demande non encore validée par l\'administrateur). Il peut modifier son profil par le bouton en haut à gauche.', 1),
(8, 8, 'img/portfolio/geneaco/cap8.JPG', 'capture écran de la page décrite ci-dessous', 'Page de comptes rendus de réunion accessible à un adhérent. Celui-ci a choisi de replier les menus en tuile afin de garder un maximum de visibilité sur les contenus', 1),
(9, 9, 'img/portfolio/geneaco/cap40.JPG', 'capture écran de la page décrite ci-dessous', 'Travaux en cours (pour les adhérents) : liste des sujets et menus outils (bibliothèque et dépouillements) - exemple fictif', 1),
(10, 10, 'img/portfolio/geneaco/cap41.JPG', 'capture écran de la page décrite ci-dessous', 'Travaux en cours (pour les adhérents) : échange de commentaires sur un sujet pour remplacer les échanges de mails utilisés jusqu\'à présent - exemple fictif', 1),
(11, 11, 'img/portfolio/geneaco/cap42.JPG', 'capture écran de la page décrite ci-dessous', 'Travaux en cours (pour les adhérents) : enrichissement de la bibliothèque (seuls les éléments créés par la personne connectée sont modifiables ou supprimables via la colonne action) ', 1),
(12, 12, 'img/portfolio/geneaco/cap43.JPG', 'capture écran de la page décrite ci-dessous', 'Travaux en cours (pour les adhérents) : enrichissement des dépouillements (seuls les éléments créés par la personne connectée sont modifiables ou supprimables via la colonne action) ', 1),
(13, 13, 'img/portfolio/geneaco/cap9.JPG', 'capture écran de la page décrite ci-dessous', 'Page d\'administration. Les premiers éléments sont plus dédiés à la vie courante du cercle, les suivants au contenu du site.', 1),
(14, 14, 'img/portfolio/geneaco/cap10.JPG', 'capture écran de la page décrite ci-dessous', 'Fonction d\'administration envoi de mail en masse qui permet de choisir si celui-ci est envoyé à tous ou seulement aux adhérents et/ou administrateurs et/ou inscrits simples', 1),
(15, 15, 'img/portfolio/geneaco/cap11.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des images, par défaut on arrive sur la liste des images existantes (avec recherche) , avec visualisation et le html à recopier dans les articles pour les utiliser', 1),
(16, 16, 'img/portfolio/geneaco/cap12.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des images après avoir cliqué sur Ajouter/Rechercher. Le menu utilisation de l\'image est un choix articles/salon, le menu catégorie un choix de sous-répertoires pour faciliter la recherche', 1),
(17, 17, 'img/portfolio/geneaco/cap13.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des documents téléchargeables. On a la liste des existants avec le html à recopier dans les articles pour les utiliser, et on peut en ajouter par le formulaire de haut de page', 1),
(18, 18, 'img/portfolio/geneaco/cap14.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des salons et conférences. La date de l\'événement permet de le faire basculer d\'événement à venir à événement passé à l\'affichage, mais n\'apparaîtra pas (on utilisera la date textuelle)', 1),
(19, 19, 'img/portfolio/geneaco/cap17.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des éléments d\'histoire généalogie : permet de choisir dans lequel des 2 onglets l\'article apparaîtra, et de remplir les 3 critères de rangement à disposition de l\'administrateur', 1),
(20, 20, 'img/portfolio/geneaco/cap18.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des paramètres d\'affichage: texte du bandeau déroulant, et surtout le choix de critère de rangement dans l\'affichage des pages d\'histoire/généalogie. Tout changement est immédiat', 1),
(21, 21, 'img/portfolio/geneaco/cap19.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des inscrits (liste fictive) permettant la mise à jour à réception des cotisations, les modifications sur demande utilisateur, et l\'effacement des données après 3 ans d\'inactivité', 1),
(22, 22, 'img/portfolio/geneaco/cap20.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des commentaires sur travaux afin de pouvoir supprimer ceux qui seraient tendancieux (modération)', 1),
(23, 23, 'img/portfolio/geneaco/cap21.JPG', 'capture écran de la page décrite ci-dessous', 'Page des gestion de la liste des dépouillements (partie haute) : menus additionnels et recherche d\'information', 1),
(24, 24, 'img/portfolio/geneaco/cap22.JPG', 'capture écran de la page décrite ci-dessous', 'Page d\'ajout d\'un élément à la liste des dépouillements, le nombre de rubriques est volontairement très réduit et adapté à leur activité (la date peut comprendre des -- au lieu de chiffres)', 1),
(25, 25, 'img/portfolio/geneaco/cap23.JPG', 'capture écran de la page décrite ci-dessous', 'Exemple 1 de rendu de dépouillement sur liste manuscrite de personnes bénévoles de 1711', 1),
(26, 26, 'img/portfolio/geneaco/cap24.JPG', 'capture écran de la page décrite ci-dessous', 'Exemple 2 de rendu de dépouillement, réduction d\'un tableau de 102 colonnes (dont la plupart étaient vides)', 1),
(27, 27, 'img/portfolio/geneaco/cap25.JPG', 'capture écran de la page décrite ci-dessous', 'Exemple 3 de rendu de dépouillement', 1),
(28, 28, 'img/portfolio/geneaco/cap26.JPG', 'capture écran de la page décrite ci-dessous', 'Exemple 4 de rendu de dépouillement avec un grand nombre de sources (une par album)', 1),
(29, 29, 'img/portfolio/geneaco/cap28.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des articles. Les onglets comprenant un (1) n\'ont qu\'un article possible, il faudra donc le modifier, pour les autres on en ajoute autant qu\'on le souhaite, ils apparaitront en liste', 1),
(30, 30, 'img/portfolio/geneaco/cap29.JPG', 'capture écran de la page décrite ci-dessous', 'Page d\'ajout d\'article. Les outils habituels de génération de HTML ne gérant pas les diacritiques de façon simple, un bouton de conversion des accents rend le contenu plus lisible', 1),
(31, 31, 'img/portfolio/geneaco/cap30.JPG', 'capture écran de la page décrite ci-dessous', 'Page de gestion des articles avec exemples fictifs : à gauche apparaissent les boutons permettant de supprimer, modifier, visualiser l\'article', 1),
(32, 32, 'img/portfolio/geneaco/cap31.JPG', 'capture écran de la page décrite ci-dessous', 'Page de pré-visualisation d\'un article. Si le rendu est satisfaisant on peut le modifier pour le faire passer de Non publiable à Publiable', 1),
(33, 33, 'img/portfolio/geneaco/cap32.JPG', 'capture écran de la page décrite ci-dessous', 'Page de modification d\'article', 1),
(34, 1, 'img/portfolio/rechjob/cap1.JPG', 'capture écran de la page décrite ci-dessous', 'La page d\'accueil avant connexion', 2),
(35, 2, 'img/portfolio/rechjob/cap2.JPG', 'capture écran de la page décrite ci-dessous', 'La page d\'inscription (avant la première utilisation)', 2),
(36, 3, 'img/portfolio/rechjob/cap3.JPG', 'capture écran de la page décrite ci-dessous', 'La page de confirmation d\'inscription (qui pointe directement sur la connexion)', 2),
(37, 4, 'img/portfolio/rechjob/cap4.JPG', 'capture écran de la page décrite ci-dessous', 'Après connexion, on arrive directement sur la page d\'accueil qui liste les candidatures', 2),
(38, 5, 'img/portfolio/rechjob/cap5.JPG', 'capture écran de la page décrite ci-dessous', 'Création d\'une candidature (haut de page)', 2),
(39, 6, 'img/portfolio/rechjob/cap6.JPG', 'capture écran de la page décrite ci-dessous', 'Création d\'une candidature (bas de page), avec les 2 boutons permettant d\'épurer les doubles retours à la ligne souvent contenus dans les annonces recopiées ici', 2),
(40, 7, 'img/portfolio/rechjob/cap7.JPG', 'capture écran de la page décrite ci-dessous', 'Le tableau de candidature fait apparaitre 3 icones associées à une candidature : passer à fermée, modifier, ou ajouter un appel (suite à mail, appel, info trouvée par ailleurs à copier …)', 2),
(41, 8, 'img/portfolio/rechjob/cap8.JPG', 'capture écran de la page décrite ci-dessous', 'L\'icone en haut à gauche permet de lister les sites utilisés avec les indications de user/mot de passe nécessaires pour le suivi', 2),
(42, 9, 'img/portfolio/rechjob/cap9.JPG', 'capture écran de la page décrite ci-dessous', 'Si à gauche d\'une candidature on clique sur l\'icone téléphone, ou sur son titre, on aboutit à cette page qui permet d\'ajouter une information', 2),
(43, 10, 'img/portfolio/rechjob/cap9bis.JPG', 'capture écran de la page décrite ci-dessous', 'Menus d\'ajout d\'information à la candidature  (sens de l\'interaction et son ressenti - positif, neutre, négatif)', 2),
(44, 11, 'img/portfolio/rechjob/cap10.JPG', 'capture écran de la page décrite ci-dessous', 'Page de description de l\'offre après l\'ajout d\'information (on peut masquer le texte d\'une information en cliquant sur la bulle associée ou masquer toutes les informations ajoutées) ', 2),
(45, 12, 'img/portfolio/rechjob/cap11.JPG', 'capture écran de la page décrite ci-dessous', 'Page de description de l\'offre après2 ajouts d\'information, une visible, et une dont le texte est masqué', 2),
(46, 13, 'img/portfolio/rechjob/cap12.JPG', 'capture écran de la page décrite ci-dessous', 'Création de candidature simplifiée quand on utilise un même employeur et/ou un même site pour postuler', 2),
(47, 14, 'img/portfolio/rechjob/cap13.JPG', 'capture écran de la page décrite ci-dessous', 'La deuxième candidature via un même site se voit dans la liste des sites, colonne de droite nombre d\'utilisations', 2),
(48, 15, 'img/portfolio/rechjob/cap14.JPG', 'capture écran de la page décrite ci-dessous', 'Lorsqu\'une offre a été passée à fermé, le compteur en haut de tableau décrémente le nombre de candidatures en cours, ce qui permet de connaitre rapidement le statut de sa recherche', 2),
(49, 16, 'img/portfolio/rechjob/cap15.JPG', 'capture écran de la page décrite ci-dessous', 'Exemple de suppression de retours inutiles : texte brut, tel que recopié', 2),
(50, 17, 'img/portfolio/rechjob/cap16.JPG', 'capture écran de la page décrite ci-dessous', 'Exemple de suppression de retours inutiles : texte après utilisation de ce bouton', 2),
(51, 18, 'img/portfolio/rechjob/cap17.JPG', 'capture écran de la page décrite ci-dessous', 'Exemple de suppression de retours inutiles : vision de l\'information épurée ainsi ajoutée à la candidature', 2);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `proj_id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `proj_ref_name` varchar(7) NOT NULL COMMENT 'nom de référence pour les répertoires associés',
  `proj_name` varchar(100) NOT NULL,
  `proj_date_tri` date NOT NULL,
  `proj_date_aff` varchar(30) NOT NULL,
  `proj_description` text NOT NULL,
  `proj_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`proj_id`),
  KEY `proj_date_tri` (`proj_date_tri`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`proj_id`, `proj_ref_name`, `proj_name`, `proj_date_tri`, `proj_date_aff`, `proj_description`, `proj_url`) VALUES
(1, 'geneaco', 'Site du cercle de généalogie de Conflans Sainte Honorine', '2018-01-01', 'Février 2018', 'Le but de ce site est d\'offrir des outils collaboratifs aux adhérents ainsi qu\'un générateur de pages pour montrer à tous les travaux réalisés et l\'actualité du cercle.\r\nToutes les pages sont gérées par ce \"moteur\", ce qui permet de les modifier facilement et d\'assurer ainsi qu\'il n\'y aura pas de besoin de maintenance.', 'http://geneaconflans.eu'),
(2, 'rechjob', 'Outil d\'aide au suivi de la recherche d\'emploi', '2018-02-20', 'Février 2018', 'La recherche d\'emploi nécessite de noter à la fois à quelles annonces on a répondu, mais aussi quels sites on a utilisé avec l\'identifiant et un \"indice\" sur le mot de passe (chacun ayant ses règles pour les identifiants de connexion et mot de passe, cela devient vite ingérable).\r\nPar cet outil je peux donc retrouver facilement le statut de mes candidatures mais aussi noter tous les échanges (mails, téléphone, entretien), afin de disposer de toutes les informations utiles en un seul emplacement.', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`image_proj_lien`) REFERENCES `projet` (`proj_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
