-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 27, 2019 at 12:43 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `oneliners`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, 'Paul Wallin'),
(2, 'Annan Author'),
(3, 'Edvard');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'humour'),
(2, 'politics'),
(3, 'history'),
(4, 'school'),
(5, 'sport');

-- --------------------------------------------------------

--
-- Table structure for table `categorytype`
--

CREATE TABLE `categorytype` (
  `lineid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorytype`
--

INSERT INTO `categorytype` (`lineid`, `categoryid`) VALUES
(4, 1),
(4, 2),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `authid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email`, `authid`) VALUES
(1, 'paul@wallin.fi', 1),
(2, 'paul.wallin@prakticum.fi', 1),
(3, 'annan@author.fi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oneliners`
--

CREATE TABLE `oneliners` (
  `id` int(11) NOT NULL,
  `oneliner` text COLLATE utf8_unicode_ci NOT NULL,
  `saidbyid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oneliners`
--

INSERT INTO `oneliners` (`id`, `oneliner`, `saidbyid`, `authorid`) VALUES
(1, 'Chains of habit are too light to be felt until they are too heavy to be broken.', 1, 1),
(2, 'Challenges can be stepping stones or stumbling blocks. It\'s just a matter of how you view them.\r\nChange your thoughts and you change your world.', 1, 1),
(3, 'Character is like a tree and reputation like a shadow. The shadow is what we think of it; the tree is the real thing.', 2, 2),
(4, 'One onliner', 2, 1),
(5, 'Another oneliner...', 1, 2),
(6, 'test line', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `saidby`
--

CREATE TABLE `saidby` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `saidby`
--

INSERT INTO `saidby` (`id`, `name`) VALUES
(1, 'JFK'),
(2, 'Some One');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oneliners`
--
ALTER TABLE `oneliners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saidby`
--
ALTER TABLE `saidby`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oneliners`
--
ALTER TABLE `oneliners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `saidby`
--
ALTER TABLE `saidby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
