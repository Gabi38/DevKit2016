-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 20 Septembre 2015 à 23:04
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.6.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `devkit2016`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `utilisateurId` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateurCreated` datetime NOT NULL,
  `utilisateurChanged` datetime NOT NULL,
  `utilisateurRole` int(11) NOT NULL,
  `utilisateurNom` varchar(256) CHARACTER SET utf8 NOT NULL,
  `utilisateurPrenom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `utilisateurEtat` int(11) NOT NULL,
  `utilisateurEmail` varchar(160) CHARACTER SET utf8 NOT NULL,
  `utilisateurPasse` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`utilisateurId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`utilisateurId`, `utilisateurCreated`, `utilisateurChanged`, `utilisateurRole`, `utilisateurNom`, `utilisateurPrenom`, `utilisateurEtat`, `utilisateurEmail`, `utilisateurPasse`) VALUES
(1, '2015-06-13 00:00:00', '0000-00-00 00:00:00', 1, 'Pinelli', 'luc', 1, 'admin@colocarts.com', '1fab942889e352164e44b08114b857111955d31e');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_role`
--

CREATE TABLE IF NOT EXISTS `utilisateur_role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleNom` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `utilisateur_role`
--

INSERT INTO `utilisateur_role` (`roleId`, `roleNom`) VALUES
(1, 'Administrateur');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
