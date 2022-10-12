-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2020 at 02:01 PM
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
-- Indexes for table `igraci`
--
ALTER TABLE `igraci`
  ADD PRIMARY KEY (`sifra`);

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`sifra`);

--
-- Indexes for table `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`sifra`);

--
-- Indexes for table `trener`
--
ALTER TABLE `trener`
  ADD PRIMARY KEY (`sifra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `igraci`
--
ALTER TABLE `igraci`
  MODIFY `sifra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
  MODIFY `sifra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `liga`
--
ALTER TABLE `liga`
  MODIFY `sifra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trener`
--
ALTER TABLE `trener`
  MODIFY `sifra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
