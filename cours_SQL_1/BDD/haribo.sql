-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 mai 2023 à 05:26
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `haribo`
--
CREATE DATABASE IF NOT EXISTS `haribo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `haribo`;

-- --------------------------------------------------------

--
-- Structure de la table `bonbons`
--

CREATE TABLE `bonbons` (
  `id_bonbon` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `saveur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bonbons`
--

INSERT INTO `bonbons` (`id_bonbon`, `nom`, `saveur`) VALUES
(1, 'dragibus', 'cola'),
(2, 'tagada', 'fraise'),
(3, 'bams', 'banane'),
(4, 'rotella', 'reglisse'),
(5, 'floppys', 'sucre'),
(6, 'rainbollows', 'marshmallow'),
(7, 'bigharri', 'cerise'),
(8, 'oursor', 'fruits'),
(9, 'croco', 'fruits'),
(10, 'oeufoplat', 'guimauve'),
(11, 'flanbotti', 'caramel'),
(12, 'tagada', 'purple');

-- --------------------------------------------------------

--
-- Structure de la table `mange_bonbon`
--

CREATE TABLE `mange_bonbon` (
  `id_mange_bonbon` int(11) NOT NULL,
  `id_bonbon` int(11) DEFAULT NULL,
  `id_stagiaire` int(11) DEFAULT NULL,
  `date_manger` date NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mange_bonbon`
--

INSERT INTO `mange_bonbon` (`id_mange_bonbon`, `id_bonbon`, `id_stagiaire`, `date_manger`, `quantite`) VALUES
(1, 4, 7, '2018-12-20', 12),
(2, 1, 1, '2018-12-05', 2),
(3, 2, 2, '2018-12-03', 6),
(4, 3, 3, '2018-12-04', 9),
(5, 5, 4, '2018-12-15', 10),
(6, 6, 5, '2018-12-18', 7),
(7, 7, 6, '2018-12-22', 3),
(8, 8, 8, '2018-12-25', 2),
(9, 9, 9, '2018-12-24', 5),
(10, 10, 10, '2018-12-01', 5),
(11, 11, 11, '2018-12-06', 12),
(12, 12, 35, '2018-09-15', 1);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires`
--

CREATE TABLE `stagiaires` (
  `id_stagiaire` int(11) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `yeux` varchar(30) DEFAULT NULL,
  `genre` enum('m','f') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires`
--

INSERT INTO `stagiaires` (`id_stagiaire`, `prenom`, `yeux`, `genre`) VALUES
(1, 'jhordan', 'marron', 'm'),
(2, 'MohamedA', 'marron', 'm'),
(3, 'Anas', 'marron', 'm'),
(4, 'MohamedB', 'marron', 'm'),
(5, 'Mehdi', 'marron', 'm'),
(6, 'Mathieu', 'marron', 'm'),
(7, 'Hakim', 'marron', 'm'),
(8, 'Sonia', 'marron', 'f'),
(9, 'Julie', 'marron', 'f'),
(10, 'Assa', 'marron', 'f'),
(11, 'Magalie', 'marron', 'f'),
(12, 'Yvette', 'marron', 'f'),
(35, 'Patrick', 'vert', 'm'),
(36, 'Mila', 'bleu', 'f');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bonbons`
--
ALTER TABLE `bonbons`
  ADD PRIMARY KEY (`id_bonbon`);

--
-- Index pour la table `mange_bonbon`
--
ALTER TABLE `mange_bonbon`
  ADD PRIMARY KEY (`id_mange_bonbon`);

--
-- Index pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD PRIMARY KEY (`id_stagiaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bonbons`
--
ALTER TABLE `bonbons`
  MODIFY `id_bonbon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `mange_bonbon`
--
ALTER TABLE `mange_bonbon`
  MODIFY `id_mange_bonbon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  MODIFY `id_stagiaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
