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
-- Table structure for table `igraci`
--

CREATE TABLE `igraci` (
  `sifra` int(11) NOT NULL,
  `ime` varchar(15) NOT NULL,
  `prez` varchar(25) NOT NULL,
  `broj` int(11) NOT NULL,
  `klub` int(11) NOT NULL,
  `golovi` int(11) DEFAULT 0,
  `pozicija` varchar(15) DEFAULT NULL,
  `datugovor` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `igraci`
--

INSERT INTO `igraci` (`sifra`, `ime`, `prez`, `broj`, `klub`, `golovi`, `pozicija`, `datugovor`) VALUES
(1, 'Lucas', 'Moura', 27, 6, 35, 'Desno krilo', '2024-06-30'),
(2, 'Nemanja', 'Pušara', 13, 11, 5, 'Lijevo krilo', '2022-05-30'),
(3, 'Mirko', 'Marić', 24, 20, 0, 'Napadac', NULL),
(4, 'Antonio', 'Čolak', 17, 12, 0, 'Napadac', NULL),
(5, 'Lionel', 'Messi', 10, 2, 138, 'Napadac', '2021-06-30'),
(6, 'Luis', 'Suárez', 9, 2, 113, 'Napadac', '2021-06-30'),
(7, 'Zajko', 'Zeba', 28, 9, 0, 'Centar', NULL),
(8, 'Edin', 'Dzeko', 9, 15, 107, 'Napadac', '2021-06-30'),
(9, 'Chris', 'Smalling', 6, 15, 0, 'Odbrana', NULL),
(10, 'Jean-Clair', 'Todibo', 21, 18, 5, 'Odbrana', '2022-01-01'),
(11, 'Amer', 'Bekić', 11, 13, 1, 'Centar', '2022-05-03'),
(12, 'Pierre-Emerick', 'Aubameyang', 14, 4, 0, 'Odbrana', NULL),
(13, 'Diego', 'Carlos', 20, 7, 0, 'Odbrana', NULL),
(14, 'Marcos', 'Llorente', 14, 17, 12, 'Centar', '2023-03-30'),
(15, 'João', 'Félix', 7, 17, 10, 'Odbrana', '2024-06-02'),
(16, 'Islam', 'Slimani', 20, 8, 8, 'Centar', '2022-06-30'),
(17, 'Romelu', 'Lukaku', 9, 5, 0, 'Odbrana', NULL),
(18, 'Bojan', 'Gočanin', 4, 10, 0, 'Centar', NULL),
(19, 'Elvedin', 'Aletic', 3, 14, 0, 'Centar', '2023-03-12'),
(20, 'Bartłomiej', 'Drągowski', 69, 16, 0, 'Golman', '2024-04-04'),
(21, 'Erling Braut', 'Håland', 17, 3, 0, 'Centar', NULL),
(22, 'Jonas', 'Hupe', 20, 3, 0, 'Golman', NULL),
(23, 'Exequiel', 'Palacios', 25, 19, 0, 'Centar', '2021-01-01'),
(24, 'Edmond', 'Tapsoba', 12, 19, 3, 'Odbrana', '2024-02-09'),
(25, 'Ermin', 'Zec', 10, 1, 0, 'Napadac', NULL),
(26, 'Semir', 'Štilić', 14, 1, 0, 'Centar', NULL),
(27, 'Frane', 'Ikić', 5, 1, 0, 'Odbrana', NULL),
(28, 'Vedran', 'Kjosevski', 13, 1, 0, 'Golman', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `igraci`
--
ALTER TABLE `igraci`
  ADD PRIMARY KEY (`sifra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `igraci`
--
ALTER TABLE `igraci`
  MODIFY `sifra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
