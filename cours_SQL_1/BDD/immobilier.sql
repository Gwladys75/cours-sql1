-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 mai 2023 à 05:23
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `immobilier`
--
CREATE DATABASE IF NOT EXISTS `immobilier` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `immobilier`;

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `id_agence` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `agence`
--

INSERT INTO `agence` (`id_agence`, `nom`, `adresse`) VALUES
(257400, 'logic-immo', 'rue logic'),
(383505, 'century21', 'rue century'),
(504585, 'laforet', 'rue laforet'),
(544688, 'fnaim', 'rue fnaim'),
(608870, 'orpi', 'rue orpi'),
(654178, 'foncia', 'rue foncia'),
(654658, 'guy-hoquet', 'rue guy-hoquet'),
(654893, 'seloger', 'rue seloger'),
(692702, 'bouygues immobilier', 'rue bouygues');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `id_demande` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `budget` float NOT NULL,
  `superficie` float NOT NULL,
  `categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`id_demande`, `id_personne`, `genre`, `ville`, `budget`, `superficie`, `categorie`) VALUES
(1, 1, 'appartement', 'paris', 530000, 120, 'vente'),
(2, 3, 'appartement', 'bordeaux', 120000, 18, 'vente'),
(3, 4, 'appartement', 'bordeaux', 145000, 21, 'vente'),
(4, 5, 'appartement', 'bordeaux', 152000, 26, 'vente'),
(5, 6, 'appartement', 'lyon', 200000, 55, 'vente'),
(6, 7, 'appartement', 'paris', 400000, 55, 'vente'),
(7, 9, 'appartement', 'paris', 171000, 40, 'vente'),
(8, 13, 'appartement', 'paris', 163000, 25, 'vente'),
(9, 16, 'appartement', 'paris', 132000, 15, 'vente'),
(10, 19, 'appartement', 'paris', 350000, 80, 'vente'),
(11, 22, 'appartement', 'lyon', 600, 20, 'location'),
(12, 25, 'appartement', 'lyon', 188000, 65, 'vente'),
(13, 27, 'appartement', 'paris', 400, 15, 'location'),
(14, 28, 'appartement', 'paris', 330500, 100, 'vente'),
(15, 31, 'appartement', 'paris', 90000, 15, 'vente'),
(16, 32, 'appartement', 'lyon', 123800, 21, 'vente'),
(17, 35, 'appartement', 'lyon', 1200, 70, 'vente'),
(18, 37, 'appartement', 'lyon', 1500, 100, 'vente'),
(19, 43, 'appartement', 'paris', 600, 20, 'location'),
(20, 44, 'appartement', 'paris', 750, 30, 'location'),
(21, 45, 'appartement', 'bordeaux', 680, 30, 'location'),
(22, 46, 'appartement', 'bordeaux', 213000, 40, 'vente'),
(23, 47, 'appartement', 'bordeaux', 700, 45, 'location'),
(24, 48, 'appartement', 'paris', 195000, 40, 'vente'),
(25, 49, 'appartement', 'paris', 250000, 60, 'vente'),
(26, 50, 'appartement', 'lyon', 110000, 12, 'vente'),
(27, 51, 'appartement', 'lyon', 500, 17, 'location'),
(28, 52, 'appartement', 'paris', 800, 40, 'location'),
(29, 53, 'appartement', 'paris', 850, 50, 'location'),
(30, 54, 'appartement', 'paris', 177000, 40, 'vente'),
(31, 55, 'appartement', 'paris', 630, 20, 'location');

-- --------------------------------------------------------

--
-- Structure de la table `logement`
--

CREATE TABLE `logement` (
  `id_logement` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `prix` float NOT NULL,
  `superficie` float NOT NULL,
  `categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logement`
--

INSERT INTO `logement` (`id_logement`, `genre`, `ville`, `prix`, `superficie`, `categorie`) VALUES
(5067, 'appartement', 'paris', 685000, 61, 'vente'),
(5089, 'appartement', 'paris', 115000, 15, 'vente'),
(5091, 'maison', 'paris', 1510000, 130, 'vente'),
(5122, 'appartement', 'bordeaux', 550, 17, 'location'),
(5189, 'appartement', 'lyon', 420, 14, 'location'),
(5245, 'appartement', 'paris', 360000, 40, 'vente'),
(5246, 'appartement', 'paris', 970, 35, 'location'),
(5249, 'appartement', 'lyon', 110000, 16, 'vente'),
(5269, 'appartement', 'bordeaux', 171500, 33, 'vente'),
(5278, 'appartement', 'paris', 802000, 90, 'vente'),
(5324, 'appartement', 'lyon', 1090, 31, 'location'),
(5336, 'appartement', 'bordeaux', 229600, 27, 'vente'),
(5378, 'appartement', 'bordeaux', 121900, 26, 'vente'),
(5412, 'appartement', 'paris', 1680, 40, 'location'),
(5636, 'appartement', 'paris', 370000, 37, 'vente'),
(5661, 'appartement', 'bordeaux', 248600, 36, 'vente'),
(5723, 'maison', 'bordeaux', 370600, 45, 'vente'),
(5770, 'appartement', 'paris', 339000, 38, 'vente'),
(5778, 'appartement', 'bordeaux', 228600, 43, 'vente'),
(5779, 'appartement', 'paris', 1310000, 105, 'vente'),
(5786, 'appartement', 'paris', 570, 20, 'location'),
(5860, 'appartement', 'bordeaux', 98000, 18, 'vente'),
(5869, 'appartement', 'lyon', 683600, 60, 'vente'),
(5873, 'appartement', 'lyon', 676700, 65, 'vente'),
(5898, 'appartement', 'paris', 1890, 40, 'location'),
(5961, 'appartement', 'bordeaux', 2650, 45, 'location'),
(5963, 'appartement', 'paris', 520000, 60, 'vente'),
(5964, 'appartement', 'paris', 280000, 38, 'vente');

-- --------------------------------------------------------

--
-- Structure de la table `logement_agence`
--

CREATE TABLE `logement_agence` (
  `id_logement_agence` int(11) NOT NULL,
  `id_agence` int(11) NOT NULL,
  `id_logement` int(11) NOT NULL,
  `frais` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logement_agence`
--

INSERT INTO `logement_agence` (`id_logement_agence`, `id_agence`, `id_logement`, `frais`) VALUES
(1, 257400, 5067, 34250),
(2, 383505, 5067, 30000),
(3, 257400, 5089, 5750),
(4, 692702, 5089, 7623),
(5, 654178, 5091, 75500),
(6, 544688, 5091, 56050),
(7, 654893, 5122, 700),
(8, 608870, 5189, 350),
(9, 257400, 5245, 18856),
(10, 544688, 5245, 14230),
(11, 608870, 5246, 730),
(12, 257400, 5249, 5500),
(13, 608870, 5249, 7625),
(14, 257400, 5269, 9500),
(15, 544688, 5269, 8575),
(16, 544688, 5278, 25689),
(17, 608870, 5278, 40100),
(18, 544688, 5324, 600),
(19, 544688, 5336, 9542),
(20, 608870, 5336, 11480),
(21, 504585, 5378, 8652),
(22, 608870, 5378, 6095),
(23, 257400, 5412, 680),
(24, 544688, 5636, 18500),
(25, 608870, 5636, 13654),
(26, 654893, 5661, 9462),
(27, 654178, 5661, 11656),
(28, 608870, 5723, 16233),
(29, 504585, 5723, 19654),
(30, 692702, 5770, 13655),
(31, 654178, 5770, 16950),
(32, 383505, 5778, 11430),
(33, 654658, 5778, 12655),
(34, 654178, 5779, 65500),
(35, 654658, 5779, 45032),
(36, 654178, 5786, 898),
(37, 383505, 5786, 520),
(38, 257400, 5860, 4900),
(39, 654658, 5860, 8905),
(40, 544688, 5869, 23685),
(41, 654893, 5869, 34180),
(42, 257400, 5873, 33835),
(43, 257400, 5898, 900),
(44, 383505, 5898, 250),
(45, 692702, 5898, 1300),
(46, 257400, 5961, 1240),
(47, 504585, 5961, 300),
(48, 692702, 5961, 890),
(49, 257400, 5963, 27542),
(50, 692702, 5963, 26000),
(51, 383505, 5963, 18455);

-- --------------------------------------------------------

--
-- Structure de la table `logement_personne`
--

CREATE TABLE `logement_personne` (
  `id_logement_personne` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `id_logement` int(11) NOT NULL,
  `frais` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logement_personne`
--

INSERT INTO `logement_personne` (`id_logement_personne`, `id_personne`, `id_logement`, `frais`) VALUES
(1, 40, 5067, 0),
(2, 41, 5089, 0),
(3, 42, 5091, 0),
(4, 2, 5122, 0),
(5, 39, 5189, 0),
(6, 7, 5245, 0),
(7, 8, 5246, 0),
(8, 10, 5249, 0),
(9, 18, 5269, 0),
(10, 21, 5278, 0),
(11, 17, 5324, 0),
(12, 36, 5336, 0),
(13, 20, 5378, 0),
(14, 29, 5412, 0),
(15, 24, 5636, 0),
(16, 34, 5661, 0),
(17, 14, 5723, 0),
(18, 57, 5770, 0),
(19, 26, 5778, 0),
(20, 56, 5779, 0),
(21, 12, 5786, 0),
(22, 11, 5860, 0),
(23, 23, 5869, 0),
(24, 38, 5873, 0),
(25, 33, 5898, 0),
(26, 15, 5961, 0),
(27, 30, 5963, 0),
(28, 56, 5964, 0);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id_personne` int(11) NOT NULL,
  `prenom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id_personne`, `prenom`) VALUES
(1, 'william'),
(2, 'gaetan'),
(3, 'mehdi'),
(4, 'charles'),
(5, 'brigitte'),
(6, 'sarah'),
(7, 'lucas'),
(8, 'quentin'),
(9, 'patrick'),
(10, 'emmanuel'),
(11, 'elodie'),
(12, 'agathe'),
(13, 'valentine'),
(14, 'charlotte'),
(15, 'alice'),
(16, 'samuel'),
(17, 'mathieu'),
(18, 'noemie'),
(19, 'simon'),
(20, 'florian'),
(21, 'clement'),
(22, 'yvon'),
(23, 'lea'),
(24, 'chloe'),
(25, 'camille'),
(26, 'alexandre'),
(27, 'julie'),
(28, 'leo'),
(29, 'antoine'),
(30, 'lola'),
(31, 'celia'),
(32, 'anna'),
(33, 'caroline'),
(34, 'adele'),
(35, 'sabrina'),
(36, 'nathalie'),
(37, 'franck'),
(38, 'tom'),
(39, 'johan'),
(40, 'priscillia'),
(41, 'assia'),
(42, 'nathan'),
(43, 'aurore'),
(44, 'marie'),
(45, 'oceane'),
(46, 'enzo'),
(47, 'ines'),
(48, 'hugo'),
(49, 'jonathan'),
(50, 'axelle'),
(51, 'morgane'),
(52, 'melissa'),
(53, 'kevin'),
(54, 'ophelie'),
(55, 'victoria'),
(56, 'alexis'),
(57, 'robin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`id_agence`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`id_demande`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Index pour la table `logement`
--
ALTER TABLE `logement`
  ADD PRIMARY KEY (`id_logement`);

--
-- Index pour la table `logement_agence`
--
ALTER TABLE `logement_agence`
  ADD PRIMARY KEY (`id_logement_agence`),
  ADD KEY `id_agence` (`id_agence`),
  ADD KEY `id_logement` (`id_logement`);

--
-- Index pour la table `logement_personne`
--
ALTER TABLE `logement_personne`
  ADD PRIMARY KEY (`id_logement_personne`),
  ADD KEY `id_personne` (`id_personne`),
  ADD KEY `id_logement` (`id_logement`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id_personne`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agence`
--
ALTER TABLE `agence`
  MODIFY `id_agence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692703;

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `id_demande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `logement`
--
ALTER TABLE `logement`
  MODIFY `id_logement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5965;

--
-- AUTO_INCREMENT pour la table `logement_agence`
--
ALTER TABLE `logement_agence`
  MODIFY `id_logement_agence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `logement_personne`
--
ALTER TABLE `logement_personne`
  MODIFY `id_logement_personne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id_personne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `demande_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`);

--
-- Contraintes pour la table `logement_agence`
--
ALTER TABLE `logement_agence`
  ADD CONSTRAINT `logement_agence_ibfk_1` FOREIGN KEY (`id_logement`) REFERENCES `logement` (`id_logement`),
  ADD CONSTRAINT `logement_agence_ibfk_2` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`);

--
-- Contraintes pour la table `logement_personne`
--
ALTER TABLE `logement_personne`
  ADD CONSTRAINT `logement_personne_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`),
  ADD CONSTRAINT `logement_personne_ibfk_2` FOREIGN KEY (`id_logement`) REFERENCES `logement` (`id_logement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
