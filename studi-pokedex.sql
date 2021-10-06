-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2021 at 04:58 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `studi-pokedex`
--

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
  `type2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `number`, `name`, `description`, `type1`, `type2`) VALUES
(1, 1, 'Bulbizarre', 'Quand il est jeune, il absorbe les nutriments conservés dans son dos pour grandir et se développer.', 1, 2),
(2, 25, 'Pikachu', 'Un Pikachu qui porte la casquette de son partenaire en souvenir des nombreuses régions qu\'ils ont traversées ensemble.', 3, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type1` (`type1`),
  ADD KEY `type2` (`type2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`type1`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`type2`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;