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
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `sifra` int(11) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `igraci` int(11) DEFAULT NULL,
  `brtitula` int(11) DEFAULT NULL,
  `datum` date NOT NULL,
  `liga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`sifra`, `ime`, `igraci`, `brtitula`, `datum`, `liga`) VALUES
(1, 'FK Zeljeznicar', 26, 16, '1921-09-17', 1),
(2, 'FC Barcelona', 30, 89, '1899-11-29', 2),
(3, 'Borussia Dortmund', 29, 12, '1909-12-19', 3),
(4, 'FC Arsenal', 32, 10, '1992-02-20', 4),
(5, 'Inter Milan', 25, 17, '1908-03-09', 5),
(6, 'Tottenham', 33, 26, '1882-09-05', 6),
(7, 'Sevilla', 36, 16, '1892-01-25', 7),
(8, 'AS Monaco FC', 22, 9, '1924-08-24', 8),
(9, 'FK Olimpik', 20, 3, '1993-09-11', 9),
(10, 'FK Metalac Gornji Milanovac', 29, 5, '2004-09-17', 10),
(11, 'FK Slavija Sarajevo', 30, 6, '1908-10-18', 11),
(12, 'HNK Rijeka', 22, 4, '1992-09-26', 12),
(13, 'FK Sloboda Tuzla', 32, 5, '1919-11-29', 1),
(14, 'NK GOŠK Gabela', NULL, NULL, '1919-01-01', 1),
(15, 'A.S. Roma', NULL, 20, '1927-07-07', 5),
(16, 'ACF Fiorentina', NULL, NULL, '1919-03-01', 5),
(17, 'Atlético Madrid', 35, NULL, '1903-04-26', 6),
(18, 'FC Schalke 04', NULL, NULL, '1904-05-04', 3),
(19, 'Bayer 04 Leverkusen', 30, NULL, '1904-07-01', 3),
(20, 'NK Osijek', NULL, NULL, '1949-06-26', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`sifra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
  MODIFY `sifra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
