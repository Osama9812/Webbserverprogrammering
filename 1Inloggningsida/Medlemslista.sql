-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2019 at 10:34 AM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_register`
--

-- --------------------------------------------------------

--
-- Table structure for table `Medlemslista`
--

CREATE TABLE `Medlemslista` (
  `nyckel` int(50) NOT NULL COMMENT 'Unikt index',
  `fnamn` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Förnamn',
  `enamn` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Eftenamn',
  `tfn` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Telefonnummer',
  `anvandnamn` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Användarnamn',
  `password` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Password',
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `Medlemslista`
--

INSERT INTO `Medlemslista` (`nyckel`, `fnamn`, `enamn`, `tfn`, `anvandnamn`, `password`, `admin`) VALUES
(1, 'Osama', 'abomogdub', '93211239', 'osama.123', '$2y$10$prs.I9wXuyofcpLnYxev7O/PPe3Dl5izbUrgJNr3Z8vAPntDN3QuC', 0),
(2, 'test', 'test', '123', 'test', '$2y$10$6bpVEBXx4xyIafu4dT17zegCfYThNhIIyXJYhqyY4o5dcZiZl0ptS', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Medlemslista`
--
ALTER TABLE `Medlemslista`
  ADD PRIMARY KEY (`nyckel`),
  ADD UNIQUE KEY `anvandnamn` (`anvandnamn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Medlemslista`
--
ALTER TABLE `Medlemslista`
  MODIFY `nyckel` int(50) NOT NULL AUTO_INCREMENT COMMENT 'Unikt index', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
