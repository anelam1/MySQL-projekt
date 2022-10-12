-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2020 at 02:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anela`
--

-- --------------------------------------------------------

--
-- Table structure for table `liga`
--

CREATE TABLE `liga` (
  `sifra` int(11) NOT NULL,
  `naziv` varchar(25) NOT NULL,
  `prvak` varchar(25) NOT NULL,
  `brklubova` int(11) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `liga`
--

INSERT INTO `liga` (`sifra`, `naziv`, `prvak`, `brklubova`) VALUES
(1, 'Premijer liga BiH', 'Sarajevo', 12),
(2, 'La Liga', 'Real Madrid', 20),
(3, 'Bundesliga', 'FC Bayern Munich', 18),
(4, 'Premijer Liga', 'Manchester United', 20),
(5, 'Serie A', 'Juventus', 20),
(6, 'Liga Šampiona', 'Liverpool', 32),
(7, 'Evropska Liga', 'Chelsea', 160),
(8, 'Liga 1', 'Paris Saint-Germain', 20),
(9, 'Prva liga FBiH', 'FK Velez', 16),
(10, 'Prva Liga Srbije', 'TSC Bačka Topola', 16),
(11, 'Prva Liga RS', 'FK Borac Banja Luka', 10),
(12, 'Prva Hrvatska Liga', 'GNK Dinamo Zagreb', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`sifra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `liga`
--
ALTER TABLE `liga`
  MODIFY `sifra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
