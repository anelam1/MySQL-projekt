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
-- Table structure for table `trener`
--

CREATE TABLE `trener` (
  `sifra` int(11) NOT NULL,
  `ime` varchar(15) NOT NULL,
  `prez` varchar(25) NOT NULL,
  `klub` varchar(30) NOT NULL,
  `datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trener`
--

INSERT INTO `trener` (`sifra`, `ime`, `prez`, `klub`, `datum`) VALUES
(1, 'Ivica', 'Kulešević', '20', '2019-01-01'),
(2, 'Quique', 'Setién', '2', NULL),
(3, 'Julen', 'Lopetegui', '7', '2019-06-07'),
(4, 'David', 'Wagner', '18', '2019-02-04'),
(5, 'Paulo', 'Fonseca', '15', '2019-08-10'),
(6, 'Milan', 'Gutović', '11', '2018-06-09'),
(7, 'Darko', 'Vojvodić', '9', '2019-10-10'),
(8, 'Mikel', 'Arteta', '4', NULL),
(9, 'Vlado', 'Jagodić', '13', '2018-05-06'),
(10, 'Amar', 'Osim', '1', NULL),
(11, 'Antonio', 'Conte', '5', '2018-09-26'),
(12, 'Giuseppe', 'Iachini', '16', '2018-07-07'),
(13, 'Lucien', 'Favre', '3', '2019-03-17'),
(14, 'José', 'Mourinho', '6', NULL),
(15, 'Robert', 'Moreno', '8', '2019-12-06'),
(16, 'Aleksandar', 'Stanković', '10', '2019-06-06'),
(17, 'Simon', 'Rožman', '12', '2018-12-12'),
(18, 'Vule', 'Trivunović', '14', NULL),
(19, 'Diego', 'Simeone', '17', NULL),
(20, 'Peter', 'Bosz', '19', '2018-08-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trener`
--
ALTER TABLE `trener`
  ADD PRIMARY KEY (`sifra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trener`
--
ALTER TABLE `trener`
  MODIFY `sifra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
