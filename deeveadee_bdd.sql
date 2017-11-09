-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2017 at 04:46 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deeveadee_bdd`
--

-- --------------------------------------------------------

--
-- Table structure for table `Acteur`
--

CREATE TABLE `Acteur` (
  `numA` int(11) NOT NULL,
  `nomA` varchar(255) NOT NULL,
  `prénomA` varchar(255) NOT NULL,
  `âgeA` int(11) NOT NULL,
  `sexeA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Acteur`
--

INSERT INTO `Acteur` (`numA`, `nomA`, `prénomA`, `âgeA`, `sexeA`) VALUES
(1, 'chabat', 'alain', 60, 'homme'),
(2, 'pelletier', 'sebastien', 26, 'pas sur');

-- --------------------------------------------------------

--
-- Table structure for table `Casting`
--

CREATE TABLE `Casting` (
  `dvdC` int(11) NOT NULL,
  `acteurC` int(11) NOT NULL,
  `rôleC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Casting`
--

INSERT INTO `Casting` (`dvdC`, `acteurC`, `rôleC`) VALUES
(1, 1, 'principal'),
(1, 2, 'femme');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_Cl` int(11) NOT NULL,
  `nom_Cl` varchar(255) NOT NULL,
  `prenom_Cl` varchar(255) NOT NULL,
  `identifiants_Cl` varchar(255) NOT NULL,
  `mot_de_passe_Cl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_Cl`, `nom_Cl`, `prenom_Cl`, `identifiants_Cl`, `mot_de_passe_Cl`) VALUES
(112, 'pereira', 'christophe', 'kirikou', 'portugal'),
(1337, 'dark', 'thanic', 'dark', 'dark');

-- --------------------------------------------------------

--
-- Table structure for table `Dvd`
--

CREATE TABLE `Dvd` (
  `numD` int(11) NOT NULL,
  `titreD` varchar(255) NOT NULL,
  `auteurD` varchar(255) NOT NULL,
  `annéeD` varchar(255) NOT NULL,
  `catégorieD` varchar(255) NOT NULL,
  `dateAchatD` date NOT NULL,
  `nombreD` int(11) NOT NULL,
  `societeD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Dvd`
--

INSERT INTO `Dvd` (`numD`, `titreD`, `auteurD`, `annéeD`, `catégorieD`, `dateAchatD`, `nombreD`, `societeD`) VALUES
(1, 'TenaciousD', 'Jack Black', '2006', 'Comedie', '2017-02-21', 10, 1),
(2, 'DeathGasm', ' Jason Lei Howden', '2015', 'Comedie Horror Metal', '2016-12-24', 5, 1),
(3, 'Rock Academy', 'Jack Black', '2004', 'Musique', '0000-00-00', 10, 1),
(4, 'Evil Dead', 'Sam Raimi', '1981', 'Horror', '0000-00-00', 5, 1),
(6, '31', 'Rob Zombie', '2016', 'Horror', '0000-00-00', 5, 1),
(7, 'L\'Exorciste', 'William Friedkin', '1973', 'Horror', '0000-00-00', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Emprunt`
--

CREATE TABLE `Emprunt` (
  `dvdE` int(11) NOT NULL,
  `dateE` date NOT NULL,
  `clientE` int(11) NOT NULL,
  `duréeE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Emprunt`
--

INSERT INTO `Emprunt` (`dvdE`, `dateE`, `clientE`, `duréeE`) VALUES
(1, '2017-06-21', 1337, 12),
(1, '2017-06-30', 112, 30);

-- --------------------------------------------------------

--
-- Table structure for table `Société`
--

CREATE TABLE `Société` (
  `numS` int(11) NOT NULL,
  `nomS` varchar(255) NOT NULL,
  `rueS` varchar(255) NOT NULL,
  `villeS` varchar(255) NOT NULL,
  `directeurS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Société`
--

INSERT INTO `Société` (`numS`, `nomS`, `rueS`, `villeS`, `directeurS`) VALUES
(1, 'DVDStore', 'du four', 'paris', 'durans'),
(2, 'TARARATA', 'TOROTOTO', 'PARIS', 'MOI');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Acteur`
--
ALTER TABLE `Acteur`
  ADD PRIMARY KEY (`numA`);

--
-- Indexes for table `Casting`
--
ALTER TABLE `Casting`
  ADD UNIQUE KEY `acteurC` (`acteurC`),
  ADD KEY `dvdC` (`dvdC`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_Cl`);

--
-- Indexes for table `Dvd`
--
ALTER TABLE `Dvd`
  ADD PRIMARY KEY (`numD`),
  ADD KEY `societeD` (`societeD`);

--
-- Indexes for table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD KEY `dvdE` (`dvdE`),
  ADD KEY `clientE` (`clientE`);

--
-- Indexes for table `Société`
--
ALTER TABLE `Société`
  ADD PRIMARY KEY (`numS`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Acteur`
--
ALTER TABLE `Acteur`
  MODIFY `numA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_Cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1338;
--
-- AUTO_INCREMENT for table `Dvd`
--
ALTER TABLE `Dvd`
  MODIFY `numD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Société`
--
ALTER TABLE `Société`
  MODIFY `numS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Casting`
--
ALTER TABLE `Casting`
  ADD CONSTRAINT `Casting_ibfk_2` FOREIGN KEY (`acteurC`) REFERENCES `Acteur` (`numA`),
  ADD CONSTRAINT `Casting_ibfk_3` FOREIGN KEY (`dvdC`) REFERENCES `Dvd` (`numD`);

--
-- Constraints for table `Dvd`
--
ALTER TABLE `Dvd`
  ADD CONSTRAINT `Dvd_ibfk_1` FOREIGN KEY (`societeD`) REFERENCES `Société` (`numS`);

--
-- Constraints for table `Emprunt`
--
ALTER TABLE `Emprunt`
  ADD CONSTRAINT `Emprunt_ibfk_1` FOREIGN KEY (`dvdE`) REFERENCES `Dvd` (`numD`),
  ADD CONSTRAINT `Emprunt_ibfk_2` FOREIGN KEY (`clientE`) REFERENCES `client` (`id_Cl`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
