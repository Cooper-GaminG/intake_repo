-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 02 jul 2021 om 21:12
-- Serverversie: 10.4.14-MariaDB
-- PHP-versie: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intakebieb`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `origin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `author`
--

INSERT INTO `author` (`author_id`, `name`, `age`, `origin`) VALUES
(4, 'John Smiths', 51, 'Canada'),
(5, 'Jessica de Fries', 32, 'The Netherlands'),
(6, 'Mark Cooper', 35, 'United States'),
(7, 'Alex Riley', 27, 'United Kingdom'),
(8, 'Oscar Mills', 54, 'United States'),
(9, 'Kieran Moss', 42, 'Ireland'),
(10, 'Samuel Cervant', 62, 'France'),
(11, 'Matt Lawyer', 30, 'Australia'),
(12, 'Thomas Schneider', 52, 'Germany'),
(13, 'Sasha Fisher', 24, 'United States');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`) VALUES
(1, 'The Edge', 'John Smiths', 'Horror'),
(2, 'Vanguard', 'John Smiths', 'World War II'),
(3, 'Snowbird', 'Jessica de Fries', 'Fantasy'),
(4, 'The Isle', 'Jessica de Fries', 'Fantasy'),
(5, '2062', 'Mark Cooper', 'Sci-Fi'),
(7, 'The Hunt', 'Mark Cooper', 'Horror'),
(8, 'Fresh Meat', 'Alex Riley', 'Drama'),
(9, 'Dream', 'Alex Riley', 'Drama'),
(10, 'Redemption', 'Oscar Mills', 'Western'),
(11, 'A Journey Too Far', 'Oscar Mills', 'Western'),
(12, 'A Happy Place', 'Kieran Moss', 'Fantasy'),
(13, 'The Big Adventure', 'Kieran Moss', 'Children'),
(14, 'Paris', 'Samuel Cervant', 'Drama'),
(15, 'Abroad', 'Samuel Cervant', 'Drama'),
(16, 'Solitary', 'Matt Lawyer', 'Mystery'),
(17, 'Sound of Silence', 'Matt Lawyer', 'Mystery'),
(18, 'Legal Trouble', 'Thomas Schneider', 'Comedy'),
(19, 'Halloween', 'Thomas Schneider', 'Comedy'),
(20, 'Bravery', 'Sasha Fisher', 'World War II'),
(21, 'Invasion', 'Sasha Fisher', 'Sci-Fi');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `birthdate`) VALUES
(3, 'Emily Johnson', 'ejonhson99@gmail.com', '22 Almondstreet', '23-05-1999'),
(4, 'Jay Rich', 'richy89@gmail.com', '16 Westmanstreet', '19-07-1989'),
(11, 'Richard Jacobs', 'Jacobs23@gmail.com', '93 Edmondstreet', '23-02-1967'),
(12, 'Henry Davids', 'henryd@gmail.com', '3 Quarterstreet', '12-06-1975'),
(13, 'Mary Judith', 'Mjudith@gmail.com', '17 Breakstreet', '05-10-1969'),
(14, 'Ann Smith', 'as82@gmail.com', '6 Bakerstreet', '24-12-1982'),
(15, 'Jess Miller', 'Jessy01@gmail.com', '98 Butcherstreet', '07-09-2001'),
(16, 'Johnny Philips', 'mrphilips@gmail.com', '45 Alamostreet', '08-05-1999'),
(17, 'Frank Akanji', 'franky22@gmail.com', '76 Cornerstreet', '22-11-1990'),
(18, 'Micheal Thompson', 'ThompsonM@gmail.com', '36 Clubmanstreet', '29-04-1980');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `history`
--

INSERT INTO `history` (`id`, `customer_name`, `book_title`, `author`, `email`, `date`) VALUES
(1, 'Emily Johnson', 'The Hunt', 'Mark Cooper', 'ejonhson99@gmail.com', '2021-07-15'),
(2, 'Emily Johnson', 'Dream', 'Alex Riley', 'ejohnson99@gmail.com', '2021-07-15'),
(3, 'Emily Johnson', 'Fresh Meat', 'Alex Riley', 'ejohnson99@gmail.com', '2021-07-07'),
(4, 'Emily Johnson', 'Solitary', 'Matt Lawyer', 'ejohnson99@gmail.com', '2021-07-07'),
(5, 'Emily Johnson', 'Sound of Silence', 'Matt Lawyer', 'ejohnson99@gmail.com', '2021-06-30'),
(6, 'Jay Rich', 'Vanguard', 'John Smiths', 'richy89@gmail.com', '2021-07-06'),
(7, 'Jay Rich', 'A Journey Too Far', 'Oscar Mills', 'richy89@gmail.com', '2021-07-06'),
(8, 'Jay Rich', 'Redemption', 'Oscar Mills', 'richy89@gmail.com', '2021-06-16'),
(9, 'Jay Rich', 'Bravery', 'Sasha Fisher', 'richy89@gmail.com', '2021-06-23'),
(10, 'Jay Rich', 'The Edge', 'John Smiths', 'richy89@gmail.com', '2021-05-12'),
(11, 'Richard Jacobs', 'Snowbird', 'Jessica de Fries', 'Jacobs23@gmail.com', '2021-06-04'),
(12, 'Richard Jacobs', '2062', 'Mark Cooper', 'Jacobs23@gmail.com', '2021-06-11'),
(13, 'Richard Jacobs', 'Invasion', 'Sasha Fisher', 'Jacobs23@gmail.com', '2021-06-18'),
(14, 'Richard Jacobs', 'A Happy Place', 'Kieran Moss', 'Jacobs23@gmail.com', '2021-06-25'),
(15, 'Richard Jacobs', 'Vanguard', 'John Smiths', 'Jacobs23@gmail.com', '2021-07-02'),
(16, 'Henry Davids', 'Dream', 'Alex Riley', 'henryd@gmail.com', '2021-05-24'),
(17, 'Henry Davids', 'Paris', 'Samuel Cervant', 'henryd@gmail.com', '2021-06-28'),
(18, 'Henry Davids', 'Abroad', 'Samuel Cervant', 'henryd@gmail.com', '2021-07-05'),
(19, 'Henry Davids', 'Fresh Meat', 'Alex Riley', 'henryd@gmail.com', '2021-07-12'),
(20, 'Henry Davids', 'Bravery', 'Sasha Fisher', 'henryd@gmail.com', '2021-07-19'),
(21, 'Mary Judith', 'Paris', 'Samuel Cervant', 'Mjudith@gmail.com', '2021-04-15'),
(22, 'Mary Judith', 'Solitary', 'Matt Lawyer', 'Mjudith@gmail.com', '2021-04-22'),
(23, 'Mary Judith', 'Snowbird', 'Jessica de Fries', 'Mjudith@gmail.com', '2021-04-29'),
(24, 'Mary Judith', 'Dream', 'Alex Riley', 'Mjudith@gmail.com', '2021-05-06'),
(25, 'Mary Judith', 'The Isle', 'Jessica de Fries', 'Mjudith@gmail.com', '2021-05-13'),
(26, 'Ann Smith', 'Fresh Meat', 'Alex Riley', 'as82@gmail.com', '2021-03-02'),
(27, 'Ann Smith', 'Legal Trouble', 'Thomas Schneider', 'as82@gmail.com', '2021-03-16'),
(28, 'Ann Smith', 'Halloween', 'Thomas Schneider', 'as82@gmail.com', '2021-03-30'),
(29, 'Ann Smith', 'A Happy Place', 'Kieran Moss', 'as82@gmail.com', '2021-04-13'),
(30, 'Ann Smith', 'The Big Adventure', 'Kieran Moss', 'as82@gmail.com', '2021-04-27'),
(31, 'Jess Miller', 'Invasion', 'Sasha Fisher', 'Jessy01@gmail.com', '2021-02-26'),
(32, 'Jess Miller', 'Solitary', 'Matt Lawyer', 'Jessy01@gmail.com', '2021-03-05'),
(33, 'Jess Miller', 'Sound of Silence', 'Matt Lawyer', 'Jessy01@gmail.com', '2021-03-12'),
(34, 'Jess Miller', 'The Edge', 'John Smiths', 'Jessy01@gmail.com', '2021-03-19'),
(35, 'Jess Miller', '2062', 'Mark Cooper', 'Jessy01@gmail.com', '2021-03-26'),
(36, 'Johnny Philips', 'Vanguard', 'John Smiths', 'mrphilips@gmail.com', '2021-06-08'),
(37, 'Johnny Philips', 'Redemption', 'Oscar Mills', 'mrphilips@gmail.com', '2021-07-07'),
(38, 'Johnny Philips', 'A Journey Too Far', 'Oscar Mills', 'mrphilips@gmail.com', '2021-05-12'),
(39, 'Johnny Philips', 'Bravery', 'Sasha Fisher', 'mrphilips@gmail.com', '2021-05-17'),
(40, 'Johnny Philips', 'Legal Trouble', 'Thomas Schneider', 'mrphilips@gmail.com', '2021-06-26'),
(41, 'Frank Akanji', 'Abroad', 'Samuel Cervant', 'franky22@gmail.com', '2021-07-11'),
(42, 'Frank Akanji', 'Paris', 'Samuel Cervant', 'franky22@gmail.com', '2021-06-16'),
(43, 'Frank Akanji', 'Sound of Silence', 'Matt Lawyer', 'franky22@gmail.com', '2021-06-03'),
(44, 'Frank Akanji', 'Bravery', 'Sasha Fisher', 'franky22@gmail.com', '2021-05-19'),
(45, 'Frank Akanji', 'The Hunt', 'Mark Cooper', 'franky22@gmail.com', '2021-05-01'),
(46, 'Micheal Thompson', 'Snowbird', 'Jessica de Fries', 'ThompsonM@gmail.com', '2021-07-01'),
(47, 'Micheal Thompson', 'A Happy Place', 'Kieran Moss', 'ThompsonM@gmail.com', '2021-06-17'),
(48, 'Micheal Thompson', 'The Big Adventure', 'Kieran Moss', 'ThompsonM@gmail.com', '2021-06-12'),
(49, 'Micheal Thompson', 'Invasion', 'Sasha Fisher', 'ThompsonM@gmail.com', '2021-06-30'),
(50, 'Micheal Thompson', 'Legal Trouble', 'Thomas Schneider', 'ThompsonM@gmail.com', '2021-06-03');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexen voor tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
