-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2021 at 05:58 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `studi-pokedex`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `path`) VALUES
(1, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(2, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(3, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(4, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(5, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(6, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(7, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(8, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(9, 'Carabaffe-RFVF.png', 'upload/Carabaffe-RFVF.png'),
(10, 'Carabaffe-RFVF.png', 'upload/Carabaffe-RFVF.png'),
(11, 'Carabaffe-RFVF.png', 'upload/Carabaffe-RFVF.png'),
(12, 'Carabaffe-RFVF.png', 'upload/Carabaffe-RFVF.png'),
(13, 'Carabaffe-RFVF.png', 'upload/Carabaffe-RFVF.png'),
(14, '250px-Tortank-RFVF.png', 'upload/250px-Tortank-RFVF.png'),
(15, '250px-Carapuce-RFVF.png', 'upload/250px-Carapuce-RFVF.png'),
(16, 'Carabaffe-RFVF.png', 'upload/Carabaffe-RFVF.png');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `type1` int(11) NOT NULL,
  `type2` int(11) DEFAULT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `number`, `name`, `description`, `type1`, `type2`, `image`) VALUES
(7, 8, 'Carabaffe', 'Il se sert habilement de sa queue et de ses oreilles touffues pour garder son équilibre sous l\'eau.', 6, NULL, 16),
(8, 8, 'Carabaffe', 'Il se sert habilement de sa queue et de ses oreilles touffues pour garder son équilibre sous l\'eau.', 6, NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `color`) VALUES
(1, 'Plante', '#7AC74C'),
(2, 'Poison', '#A33EA1'),
(3, 'Electrik', '#F7D02C'),
(4, 'Feu', '#EE8130'),
(5, 'Vol', '#A98FF3'),
(6, 'Eau', '#6390F0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type1` (`type1`),
  ADD KEY `type2` (`type2`),
  ADD KEY `image` (`image`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`type1`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`type2`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemon_ibfk_3` FOREIGN KEY (`image`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
