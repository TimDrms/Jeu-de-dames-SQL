-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 01 mai 2022 à 14:31
-- Version du serveur :  10.5.12-MariaDB
-- Version de PHP : 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `id18651146_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `coups`
--

CREATE TABLE `coups` (
  `id_case` int(11) NOT NULL,
  `case_abscisse` tinyint(4) NOT NULL,
  `case_ordonnee` tinyint(4) NOT NULL,
  `valeur` tinyint(4) NOT NULL,
  `etat` tinyint(4) NOT NULL,
  `id_partie` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `coups`
--

INSERT INTO `coups` (`id_case`, `case_abscisse`, `case_ordonnee`, `valeur`, `etat`, `id_partie`) VALUES
(1, 1, 1, 1, 0, 28),
(2, 3, 1, 1, 0, 28),
(3, 5, 1, 1, 0, 28),
(4, 7, 1, 1, 0, 28),
(5, 9, 1, 1, 0, 28),
(6, 2, 2, 1, 0, 28),
(7, 4, 2, 1, 0, 28),
(8, 6, 2, 1, 0, 28),
(9, 8, 2, 1, 0, 28),
(10, 10, 2, 1, 0, 28),
(11, 1, 3, 1, 0, 28),
(12, 3, 3, 1, 0, 28),
(13, 5, 3, 1, 0, 28),
(14, 7, 3, 1, 0, 28),
(15, 9, 3, 1, 0, 28),
(16, 2, 4, 1, 0, 28),
(17, 4, 4, 1, 0, 28),
(18, 6, 4, 1, 0, 28),
(19, 8, 4, 1, 0, 28),
(20, 10, 4, 1, 0, 28),
(21, 1, 5, 0, 0, 28),
(22, 3, 5, 0, 0, 28),
(23, 5, 5, 0, 0, 28),
(24, 7, 5, 0, 0, 28),
(25, 9, 5, 0, 0, 28),
(26, 2, 6, 0, 0, 28),
(27, 4, 6, 0, 0, 28),
(28, 6, 6, 0, 0, 28),
(29, 8, 6, 0, 0, 28),
(30, 10, 6, 0, 0, 28),
(31, 1, 7, 2, 0, 28),
(32, 3, 7, 2, 0, 28),
(33, 5, 7, 2, 0, 28),
(34, 7, 7, 2, 0, 28),
(35, 9, 7, 2, 0, 28),
(36, 2, 8, 2, 0, 28),
(37, 4, 8, 2, 0, 28),
(38, 6, 8, 2, 0, 28),
(39, 8, 8, 2, 0, 28),
(40, 10, 8, 2, 0, 28),
(41, 1, 9, 2, 0, 28),
(42, 3, 9, 2, 0, 28),
(43, 5, 9, 2, 0, 28),
(44, 7, 9, 2, 0, 28),
(45, 9, 9, 2, 0, 28),
(46, 2, 10, 2, 0, 28),
(47, 4, 10, 2, 0, 28),
(48, 6, 10, 2, 0, 28),
(49, 8, 10, 2, 0, 28),
(50, 10, 10, 2, 0, 28);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(100) DEFAULT 0,
  `mdp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`id`, `nom`, `prenom`, `pseudo`, `rank`, `mdp`, `date_naissance`, `mail`) VALUES
(1, 'Darmoise', 'Timothé', 'Tim', 800, '$2y$12$UUTGlgUsixET6/0agtUC3eAL9kHchahFfODVytNMulA8VxGXhmLI.', '2003-06-29', 'timothe.darmoise@gmail.com'),
(2, 'Fleuret', 'Gabriel', 'Gab', 600, '$2y$12$GZxiOHwZ3kccCnSMg4EEeOHu7.VyoFwY9fJEuYgSanY6aJBpl4C9W', '2003-06-29', 'gab@gmail.com'),
(4, 'Legouix', 'Anatole', 'anatole', 50, '$2y$12$VSDLfog2WSpUZMyf972AVekfWGgugx7//dDY9Y.20t0fr6ZkFtC5m', '2003-10-25', 'mail@domain.com');


-- --------------------------------------------------------

--
-- Structure de la table `partie`
--

CREATE TABLE `partie` (
  `id` int(11) NOT NULL,
  `cle_connection` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_joueur1` int(11) NOT NULL,
  `id_joueur2` int(11) NOT NULL,
  `score_joueur1` int(11) NOT NULL,
  `score_joueur2` int(11) NOT NULL,
  `coup` int(100) DEFAULT NULL,
  `date_partie` date DEFAULT current_timestamp(),
  `statut` tinyint(4) NOT NULL,
  `couleur` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `partie`
--

INSERT INTO `partie` (`id`, `cle_connection`, `id_joueur1`, `id_joueur2`, `score_joueur1`, `score_joueur2`, `coup`, `date_partie`, `statut`, `couleur`) VALUES
(1, 'LPMsx', 2, 3, 0, 0, 0, '2022-04-22', 1, 0),
(2, '9XM2R', 1, 3, 0, 0, 0, '2022-04-23', 1, 0),
(3, 'eZ1ak', 1, 3, 0, 0, 1, '2022-04-25', 0, 0),
(4, 'iZSMC', 1, 4, 1, 0, 10, '2022-04-25', 0, 0),
(5, 'gSxUA', 3, 3, 0, 0, 1, '2022-04-25', 1, 0),
(6, 'GCkhO', 3, 3, 0, 0, 0, '2022-04-25', 0, 0),
(7, 'AmsGJ', 3, 3, 0, 0, 0, '2022-04-25', 0, 0),
(8, '1vzfJ', 3, 3, 0, 0, 0, '2022-04-25', 0, 0),
(9, '5D0Ta', 3, 3, 0, 0, 0, '2022-04-25', 0, 0),
(10, 'QegOv', 3, 3, 0, 0, 0, '2022-04-25', 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `coups`
--
ALTER TABLE `coups`
  ADD PRIMARY KEY (`id_case`),
  ADD KEY `id_partie` (`id_partie`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partie`
--
ALTER TABLE `partie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_joueur1` (`id_joueur1`),
  ADD KEY `id_joueur2` (`id_joueur2`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `coups`
--
ALTER TABLE `coups`
  MODIFY `id_case` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `partie`
--
ALTER TABLE `partie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

--
-- Ajout des clés étrangères
--

ALTER TABLE Partie ADD FOREIGN KEY (id_joueur1) REFERENCES Joueur(id);
ALTER TABLE Partie ADD FOREIGN KEY (id_joueur2) REFERENCES Joueur(id);
ALTER TABLE Coups ADD FOREIGN KEY (id_partie) REFERENCES Partie(id);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
