-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2019 at 11:57 AM
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
-- Table structure for table `favlag`
--

CREATE TABLE `favlag` (
  `nyckel` int(11) NOT NULL,
  `fotlag` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `suportrar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `favlag`
--

INSERT INTO `favlag` (`nyckel`, `fotlag`, `suportrar`) VALUES
(1, '', 0),
(6, 'Barca', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Fotbollslag`
--

CREATE TABLE `Fotbollslag` (
  `nyckel` int(10) UNSIGNED NOT NULL COMMENT 'Unikt index',
  `fnamn` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Förnamn',
  `enamn` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Eftenamn',
  `Favoritfotbollslag` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Favoritfotbollslag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `Fotbollslag`
--

INSERT INTO `Fotbollslag` (`nyckel`, `fnamn`, `enamn`, `Favoritfotbollslag`) VALUES
(4, 'osama', 'osam', 'kla'),
(12, 'ahmad', 'osam', 'Spurs'),
(14, '', '', 'Spurs'),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', '');

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
(2, 'test', 'test', '123', 'test', '$2y$10$6bpVEBXx4xyIafu4dT17zegCfYThNhIIyXJYhqyY4o5dcZiZl0ptS', 0),
(9, '', '', '', 'ww', '', 0),
(11, 'gg', 'gg', '123', 'gg', 'gg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `nyckel` int(10) UNSIGNED NOT NULL COMMENT 'Unikt index',
  `fnamn` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Förnamn',
  `enamn` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Eftenamn',
  `tfn` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL COMMENT 'Telefonnummer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`nyckel`, `fnamn`, `enamn`, `tfn`) VALUES
(1, 'Stina', 'Script', '12345662'),
(3, 'Nynamn', 'Karlsson', '010-322322'),
(4, 'Nynamn', 'karlsson', '0320-102313'),
(5, 'Ingemer', 'Cesar', '01231341'),
(6, 'Kalle', 'Karlsson', '0000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favlag`
--
ALTER TABLE `favlag`
  ADD PRIMARY KEY (`nyckel`),
  ADD UNIQUE KEY `nyckel` (`nyckel`),
  ADD UNIQUE KEY `fotlag` (`fotlag`);

--
-- Indexes for table `Fotbollslag`
--
ALTER TABLE `Fotbollslag`
  ADD PRIMARY KEY (`nyckel`) USING BTREE;

--
-- Indexes for table `Medlemslista`
--
ALTER TABLE `Medlemslista`
  ADD PRIMARY KEY (`nyckel`),
  ADD UNIQUE KEY `anvandnamn` (`anvandnamn`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`nyckel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favlag`
--
ALTER TABLE `favlag`
  MODIFY `nyckel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Fotbollslag`
--
ALTER TABLE `Fotbollslag`
  MODIFY `nyckel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unikt index', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Medlemslista`
--
ALTER TABLE `Medlemslista`
  MODIFY `nyckel` int(50) NOT NULL AUTO_INCREMENT COMMENT 'Unikt index', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `nyckel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unikt index', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
