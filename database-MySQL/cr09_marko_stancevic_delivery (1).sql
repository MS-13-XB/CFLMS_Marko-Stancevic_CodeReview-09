-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Jul 2020 um 16:48
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr09_marko_stancevic_delivery`
--
CREATE DATABASE IF NOT EXISTS `cr09_marko_stancevic_delivery` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr09_marko_stancevic_delivery`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `clueup`
--

CREATE TABLE `clueup` (
  `clueup_id` int(11) NOT NULL,
  `paMa_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `clueup`
--

INSERT INTO `clueup` (`clueup_id`, `paMa_id`, `location_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `collect`
--

CREATE TABLE `collect` (
  `collect_id` int(11) NOT NULL,
  `emp_ext_id` int(11) NOT NULL,
  `pro_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `collect`
--

INSERT INTO `collect` (`collect_id`, `emp_ext_id`, `pro_sys_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 2, 5),
(6, 3, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `connect`
--

CREATE TABLE `connect` (
  `connect_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `connect`
--

INSERT INTO `connect` (`connect_id`, `customer_id`, `recipient_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_first_name` varchar(55) DEFAULT NULL,
  `customer_last_name` varchar(55) DEFAULT NULL,
  `customer_DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_first_name`, `customer_last_name`, `customer_DateOfBirth`) VALUES
(1, 'Anastasija', 'Lamic', '1981-06-08'),
(2, 'Leonidas', 'Papadopolos', '1969-08-16'),
(3, 'Khabib', ' Nurmagomedov', '1990-05-19'),
(4, 'Conor', 'McGregor', '1991-03-30'),
(5, 'Morio', 'Hiagaonna', '1960-04-29'),
(6, 'Rika', 'Usami', '1992-07-07');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cus_address`
--

CREATE TABLE `cus_address` (
  `cus_address_id` int(11) NOT NULL,
  `cus_address_streetName` varchar(55) DEFAULT NULL,
  `cus_address_streetNumb` int(11) NOT NULL,
  `cus_address_city` varchar(55) DEFAULT NULL,
  `cus_address_country` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `cus_address`
--

INSERT INTO `cus_address` (`cus_address_id`, `cus_address_streetName`, `cus_address_streetNumb`, `cus_address_city`, `cus_address_country`) VALUES
(1, 'Floridsdorf', 1, 'Vienna', 'Austria'),
(2, 'Franzisgasse', 45, 'Linz', 'Austria'),
(3, 'Goldstrasse', 76, 'Eisenstadt', 'Austria'),
(4, 'Silbergasse', 9, 'Innsbruck', 'Austria'),
(5, 'Juliusplatz', 5, 'Klagenfurt', 'Austria'),
(6, 'Taborstrasse', 117, 'Vienna', 'Austria');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cus_contain`
--

CREATE TABLE `cus_contain` (
  `cus_contain_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `paMa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `cus_contain`
--

INSERT INTO `cus_contain` (`cus_contain_id`, `customer_id`, `paMa_id`) VALUES
(7, 1, 1),
(8, 2, 2),
(9, 3, 3),
(10, 4, 4),
(11, 5, 5),
(12, 6, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cus_lives`
--

CREATE TABLE `cus_lives` (
  `cus_lives_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cus_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `cus_lives`
--

INSERT INTO `cus_lives` (`cus_lives_id`, `customer_id`, `cus_address_id`) VALUES
(1, 6, 1),
(2, 5, 2),
(3, 4, 3),
(4, 3, 4),
(5, 2, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `deliver`
--

CREATE TABLE `deliver` (
  `deliver_id` int(11) NOT NULL,
  `emp_ext_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `deliver`
--

INSERT INTO `deliver` (`deliver_id`, `emp_ext_id`, `recipient_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 2, 5),
(6, 3, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `deposite`
--

CREATE TABLE `deposite` (
  `deposite_id` int(11) NOT NULL,
  `paMa_id` int(11) NOT NULL,
  `pro_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `deposite`
--

INSERT INTO `deposite` (`deposite_id`, `paMa_id`, `pro_sys_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `deseco`
--

CREATE TABLE `deseco` (
  `deseco_id` int(11) NOT NULL,
  `deseco_name` varchar(55) DEFAULT NULL,
  `deseco_NumbOfMA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `deseco`
--

INSERT INTO `deseco` (`deseco_id`, `deseco_name`, `deseco_NumbOfMA`) VALUES
(1, 'HermesExpress', 333);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `deseco_address`
--

CREATE TABLE `deseco_address` (
  `deseco_address_id` int(11) NOT NULL,
  `deseco_address_streetName` varchar(55) DEFAULT NULL,
  `deseco_address_streetNumb` int(11) NOT NULL,
  `deseco_address_city` varchar(55) DEFAULT NULL,
  `deseco_address_country` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `deseco_address`
--

INSERT INTO `deseco_address` (`deseco_address_id`, `deseco_address_streetName`, `deseco_address_streetNumb`, `deseco_address_city`, `deseco_address_country`) VALUES
(1, 'Hasenbergplatz', 13, 'Vienna', 'Austria');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `detailedinformation_package_mail`
--

CREATE TABLE `detailedinformation_package_mail` (
  `deIn_paMa_id` int(11) NOT NULL,
  `deIn_paMa_object` enum('package','mail') DEFAULT NULL,
  `deIn_paMa_length` double NOT NULL,
  `deIn_paMa_width` double NOT NULL,
  `deIn_paMa_height` double NOT NULL,
  `deIn_paMa_weight` double NOT NULL,
  `deIn_paMa_EXPRESS` enum('TRUE','FALSE') DEFAULT NULL,
  `deIn_paMa_receiveInCenter` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `detailedinformation_package_mail`
--

INSERT INTO `detailedinformation_package_mail` (`deIn_paMa_id`, `deIn_paMa_object`, `deIn_paMa_length`, `deIn_paMa_width`, `deIn_paMa_height`, `deIn_paMa_weight`, `deIn_paMa_EXPRESS`, `deIn_paMa_receiveInCenter`) VALUES
(1, 'package', 200, 80, 47, 1, 'TRUE', '2018-07-08'),
(2, 'package', 240, 50, 74, 2, 'TRUE', '2019-06-11'),
(3, 'package', 240, 50, 74, 2, 'FALSE', '0000-00-00'),
(4, 'mail', 260, 72, 15, 224, 'TRUE', '2020-01-02'),
(5, 'package', 310, 20, 74, 4, 'TRUE', '0000-00-00'),
(6, 'mail', 249, 50, 33, 1, 'FALSE', '2013-11-22');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee_extern`
--

CREATE TABLE `employee_extern` (
  `emp_ext_id` int(11) NOT NULL,
  `emp_ext_first_name` varchar(55) DEFAULT NULL,
  `emp_ext_last_name` varchar(55) DEFAULT NULL,
  `emp_ext_DateOfBirth` date DEFAULT NULL,
  `emp_ext_gender` enum('M','F') DEFAULT NULL,
  `emp_ext_hire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `employee_extern`
--

INSERT INTO `employee_extern` (`emp_ext_id`, `emp_ext_first_name`, `emp_ext_last_name`, `emp_ext_DateOfBirth`, `emp_ext_gender`, `emp_ext_hire_date`) VALUES
(1, 'Petar', 'Lucic', '1979-08-03', 'M', '1999-10-02'),
(2, 'Maria', 'Weiss', '1876-06-16', 'F', '1998-03-02'),
(3, 'Ludwig', 'Richard', '0000-00-00', 'M', '1995-12-02');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee_intern`
--

CREATE TABLE `employee_intern` (
  `emp_int_id` int(11) NOT NULL,
  `emp_int_first_name` varchar(55) DEFAULT NULL,
  `emp_int_last_name` varchar(55) DEFAULT NULL,
  `emp_int_DateOfBirth` date DEFAULT NULL,
  `emp_int_gender` enum('M','F') DEFAULT NULL,
  `emp_int_hire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `employee_intern`
--

INSERT INTO `employee_intern` (`emp_int_id`, `emp_int_first_name`, `emp_int_last_name`, `emp_int_DateOfBirth`, `emp_int_gender`, `emp_int_hire_date`) VALUES
(1, 'Ekaterina', 'Galanis', '1980-02-03', 'F', '2005-09-01'),
(2, 'Pavle', 'Markovic', '1985-10-13', 'M', '2010-11-27'),
(3, 'Sarah', 'Schmidt', '1983-04-09', 'F', '2008-07-03');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `have`
--

CREATE TABLE `have` (
  `have_id` int(11) NOT NULL,
  `deseco_id` int(11) NOT NULL,
  `deseco_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `have`
--

INSERT INTO `have` (`have_id`, `deseco_id`, `deseco_address_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `keep`
--

CREATE TABLE `keep` (
  `keep_id` int(11) NOT NULL,
  `deseco_id` int(11) NOT NULL,
  `paMa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `keep`
--

INSERT INTO `keep` (`keep_id`, `deseco_id`, `paMa_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `know`
--

CREATE TABLE `know` (
  `know_id` int(11) NOT NULL,
  `emp_ext_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `know`
--

INSERT INTO `know` (`know_id`, `emp_ext_id`, `location_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 2, 5),
(6, 3, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lead_emp_ext`
--

CREATE TABLE `lead_emp_ext` (
  `lead_emp_ext_id` int(11) NOT NULL,
  `deseco_id` int(11) NOT NULL,
  `emp_ext_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `lead_emp_ext`
--

INSERT INTO `lead_emp_ext` (`lead_emp_ext_id`, `deseco_id`, `emp_ext_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lead_emp_int`
--

CREATE TABLE `lead_emp_int` (
  `lead_emp_int_id` int(11) NOT NULL,
  `deseco_id` int(11) NOT NULL,
  `emp_int_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `lead_emp_int`
--

INSERT INTO `lead_emp_int` (`lead_emp_int_id`, `deseco_id`, `emp_int_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_kind` enum('START','END') DEFAULT NULL,
  `locationi_category` enum('PICKUP','RECEIVE','DELIVERED') DEFAULT NULL,
  `location_streetName` varchar(55) DEFAULT NULL,
  `location_streetNumb` int(11) NOT NULL,
  `location_city` varchar(55) DEFAULT NULL,
  `location_country` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`location_id`, `location_kind`, `locationi_category`, `location_streetName`, `location_streetNumb`, `location_city`, `location_country`) VALUES
(1, 'START', 'PICKUP', 'Taborstrasse', 117, 'Vienna', 'Austria'),
(2, 'START', 'RECEIVE', 'Hasenbergplatz', 13, 'Vienna', 'Austria'),
(3, 'END', 'DELIVERED', 'Handelskai', 211, 'Vienna', 'Austria'),
(4, 'START', 'PICKUP', 'Juliusplatz', 5, 'Klagenfurt', 'Austria'),
(5, 'START', 'RECEIVE', 'Hasenbergplatz', 13, 'Vienna', 'Austria'),
(6, 'START', 'DELIVERED', 'Siemensstrasse', 3, 'Vienna', 'Austria');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `package_mail`
--

CREATE TABLE `package_mail` (
  `paMa_id` int(11) NOT NULL,
  `paMa_status` enum('process','finish') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `package_mail`
--

INSERT INTO `package_mail` (`paMa_id`, `paMa_status`) VALUES
(1, 'process'),
(2, 'finish'),
(3, 'finish'),
(4, 'process'),
(5, 'finish'),
(6, 'finish');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pickup`
--

CREATE TABLE `pickup` (
  `pickup_id` int(11) NOT NULL,
  `emp_ext_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `pickup`
--

INSERT INTO `pickup` (`pickup_id`, `emp_ext_id`, `customer_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 2, 5),
(6, 3, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `possess`
--

CREATE TABLE `possess` (
  `possess_id` int(11) NOT NULL,
  `paMa_id` int(11) NOT NULL,
  `deIn_paMa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `possess`
--

INSERT INTO `possess` (`possess_id`, `paMa_id`, `deIn_paMa_id`) VALUES
(7, 1, 1),
(8, 2, 2),
(9, 3, 3),
(10, 4, 4),
(11, 5, 5),
(12, 6, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `process`
--

CREATE TABLE `process` (
  `process_id` int(11) NOT NULL,
  `paMa_id` int(11) NOT NULL,
  `emp_int_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `process`
--

INSERT INTO `process` (`process_id`, `paMa_id`, `emp_int_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `proc_system`
--

CREATE TABLE `proc_system` (
  `pro_sys_id` int(11) NOT NULL,
  `pro_sys_deposited` datetime DEFAULT NULL,
  `pro_sys_delivered` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `proc_system`
--

INSERT INTO `proc_system` (`pro_sys_id`, `pro_sys_deposited`, `pro_sys_delivered`) VALUES
(1, '2018-07-08 10:45:12', '2018-07-09 09:01:03'),
(2, '2019-06-10 13:09:15', '2019-06-11 07:15:59'),
(3, '2020-01-02 17:05:42', '2020-02-03 11:02:09'),
(4, '2017-10-15 16:23:56', '2017-10-17 12:01:37'),
(5, '2016-03-29 18:03:25', '2016-03-30 04:17:58'),
(6, '2013-11-23 05:13:56', '2013-11-15 13:01:32');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `recipient`
--

CREATE TABLE `recipient` (
  `recipient_id` int(11) NOT NULL,
  `recipient_first_name` varchar(55) DEFAULT NULL,
  `recipient_last_name` varchar(55) DEFAULT NULL,
  `recipient_DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `recipient`
--

INSERT INTO `recipient` (`recipient_id`, `recipient_first_name`, `recipient_last_name`, `recipient_DateOfBirth`) VALUES
(1, 'Antonio', 'Diaz', '1976-09-13'),
(2, 'Sophia', 'Bumalo', '1989-06-03'),
(3, 'Marta', 'Martinocva', '1959-11-25'),
(4, 'Jovan', 'Stanov', '1888-03-04'),
(5, 'Helena', 'Dimitrova', '1987-08-08'),
(6, 'Dimitrije', 'Ivanovic', '1996-03-06');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rec_address`
--

CREATE TABLE `rec_address` (
  `rec_address_id` int(11) NOT NULL,
  `rec_address_streetName` varchar(55) DEFAULT NULL,
  `rec_address_streetNumb` int(11) NOT NULL,
  `rec_address_city` varchar(55) DEFAULT NULL,
  `rec_address_country` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rec_address`
--

INSERT INTO `rec_address` (`rec_address_id`, `rec_address_streetName`, `rec_address_streetNumb`, `rec_address_city`, `rec_address_country`) VALUES
(1, 'Davidgasse', 24, 'Vienna', 'Austria'),
(2, 'Johannespaltz', 7, 'Graz', 'Austria'),
(3, 'Olympiaplatz', 31, 'Vienna', 'Austria'),
(4, 'Rennweg', 67, 'Vienna', 'Austria'),
(5, 'Siemensstrasse', 3, 'Vienna', 'Austria'),
(6, 'Handelskai', 211, 'Vienna', 'Austria'),
(7, 'Davidgasse', 24, 'Vienna', 'Austria'),
(8, 'Johannespaltz', 7, 'Graz', 'Austria'),
(9, 'Olympiaplatz', 31, 'Vienna', 'Austria'),
(10, 'Rennweg', 67, 'Vienna', 'Austria'),
(11, 'Siemensstrasse', 3, 'Vienna', 'Austria'),
(12, 'Handelskai', 211, 'Vienna', 'Austria');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rec_contain`
--

CREATE TABLE `rec_contain` (
  `rec_contain_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `pro_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rec_contain`
--

INSERT INTO `rec_contain` (`rec_contain_id`, `recipient_id`, `pro_sys_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rec_lives`
--

CREATE TABLE `rec_lives` (
  `rec_lives_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `rec_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rec_lives`
--

INSERT INTO `rec_lives` (`rec_lives_id`, `recipient_id`, `rec_address_id`) VALUES
(1, 1, 6),
(2, 2, 5),
(3, 3, 4),
(4, 4, 3),
(5, 5, 2),
(6, 6, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `send`
--

CREATE TABLE `send` (
  `send_id` int(11) NOT NULL,
  `emp_int_id` int(11) NOT NULL,
  `pro_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `send`
--

INSERT INTO `send` (`send_id`, `emp_int_id`, `pro_sys_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `supply`
--

CREATE TABLE `supply` (
  `supply_id` int(11) NOT NULL,
  `emp_ext_id` int(11) NOT NULL,
  `paMa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `supply`
--

INSERT INTO `supply` (`supply_id`, `emp_ext_id`, `paMa_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 2, 5),
(6, 3, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `use`
--

CREATE TABLE `use` (
  `use_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `deseco_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `use`
--

INSERT INTO `use` (`use_id`, `customer_id`, `deseco_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `clueup`
--
ALTER TABLE `clueup`
  ADD PRIMARY KEY (`clueup_id`),
  ADD KEY `paMa_id` (`paMa_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indizes für die Tabelle `collect`
--
ALTER TABLE `collect`
  ADD PRIMARY KEY (`collect_id`),
  ADD KEY `emp_ext_id` (`emp_ext_id`),
  ADD KEY `pro_sys_id` (`pro_sys_id`);

--
-- Indizes für die Tabelle `connect`
--
ALTER TABLE `connect`
  ADD PRIMARY KEY (`connect_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indizes für die Tabelle `cus_address`
--
ALTER TABLE `cus_address`
  ADD PRIMARY KEY (`cus_address_id`);

--
-- Indizes für die Tabelle `cus_contain`
--
ALTER TABLE `cus_contain`
  ADD PRIMARY KEY (`cus_contain_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `paMa_id` (`paMa_id`);

--
-- Indizes für die Tabelle `cus_lives`
--
ALTER TABLE `cus_lives`
  ADD PRIMARY KEY (`cus_lives_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `cus_address_id` (`cus_address_id`);

--
-- Indizes für die Tabelle `deliver`
--
ALTER TABLE `deliver`
  ADD PRIMARY KEY (`deliver_id`),
  ADD KEY `emp_ext_id` (`emp_ext_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indizes für die Tabelle `deposite`
--
ALTER TABLE `deposite`
  ADD PRIMARY KEY (`deposite_id`),
  ADD KEY `paMa_id` (`paMa_id`),
  ADD KEY `pro_sys_id` (`pro_sys_id`);

--
-- Indizes für die Tabelle `deseco`
--
ALTER TABLE `deseco`
  ADD PRIMARY KEY (`deseco_id`);

--
-- Indizes für die Tabelle `deseco_address`
--
ALTER TABLE `deseco_address`
  ADD PRIMARY KEY (`deseco_address_id`);

--
-- Indizes für die Tabelle `detailedinformation_package_mail`
--
ALTER TABLE `detailedinformation_package_mail`
  ADD PRIMARY KEY (`deIn_paMa_id`);

--
-- Indizes für die Tabelle `employee_extern`
--
ALTER TABLE `employee_extern`
  ADD PRIMARY KEY (`emp_ext_id`);

--
-- Indizes für die Tabelle `employee_intern`
--
ALTER TABLE `employee_intern`
  ADD PRIMARY KEY (`emp_int_id`);

--
-- Indizes für die Tabelle `have`
--
ALTER TABLE `have`
  ADD PRIMARY KEY (`have_id`),
  ADD KEY `deseco_id` (`deseco_id`),
  ADD KEY `deseco_address_id` (`deseco_address_id`);

--
-- Indizes für die Tabelle `keep`
--
ALTER TABLE `keep`
  ADD PRIMARY KEY (`keep_id`),
  ADD KEY `deseco_id` (`deseco_id`),
  ADD KEY `paMa_id` (`paMa_id`);

--
-- Indizes für die Tabelle `know`
--
ALTER TABLE `know`
  ADD PRIMARY KEY (`know_id`),
  ADD KEY `emp_ext_id` (`emp_ext_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indizes für die Tabelle `lead_emp_ext`
--
ALTER TABLE `lead_emp_ext`
  ADD PRIMARY KEY (`lead_emp_ext_id`),
  ADD KEY `deseco_id` (`deseco_id`),
  ADD KEY `emp_ext_id` (`emp_ext_id`);

--
-- Indizes für die Tabelle `lead_emp_int`
--
ALTER TABLE `lead_emp_int`
  ADD PRIMARY KEY (`lead_emp_int_id`),
  ADD KEY `deseco_id` (`deseco_id`),
  ADD KEY `emp_int_id` (`emp_int_id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indizes für die Tabelle `package_mail`
--
ALTER TABLE `package_mail`
  ADD PRIMARY KEY (`paMa_id`);

--
-- Indizes für die Tabelle `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`pickup_id`),
  ADD KEY `emp_ext_id` (`emp_ext_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indizes für die Tabelle `possess`
--
ALTER TABLE `possess`
  ADD PRIMARY KEY (`possess_id`),
  ADD KEY `paMa_id` (`paMa_id`),
  ADD KEY `deIn_paMa_id` (`deIn_paMa_id`);

--
-- Indizes für die Tabelle `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`process_id`),
  ADD KEY `paMa_id` (`paMa_id`),
  ADD KEY `emp_int_id` (`emp_int_id`);

--
-- Indizes für die Tabelle `proc_system`
--
ALTER TABLE `proc_system`
  ADD PRIMARY KEY (`pro_sys_id`);

--
-- Indizes für die Tabelle `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`recipient_id`);

--
-- Indizes für die Tabelle `rec_address`
--
ALTER TABLE `rec_address`
  ADD PRIMARY KEY (`rec_address_id`);

--
-- Indizes für die Tabelle `rec_contain`
--
ALTER TABLE `rec_contain`
  ADD PRIMARY KEY (`rec_contain_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `pro_sys_id` (`pro_sys_id`);

--
-- Indizes für die Tabelle `rec_lives`
--
ALTER TABLE `rec_lives`
  ADD PRIMARY KEY (`rec_lives_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `rec_address_id` (`rec_address_id`);

--
-- Indizes für die Tabelle `send`
--
ALTER TABLE `send`
  ADD PRIMARY KEY (`send_id`),
  ADD KEY `emp_int_id` (`emp_int_id`),
  ADD KEY `pro_sys_id` (`pro_sys_id`);

--
-- Indizes für die Tabelle `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`supply_id`),
  ADD KEY `emp_ext_id` (`emp_ext_id`),
  ADD KEY `paMa_id` (`paMa_id`);

--
-- Indizes für die Tabelle `use`
--
ALTER TABLE `use`
  ADD PRIMARY KEY (`use_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `deseco_id` (`deseco_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `clueup`
--
ALTER TABLE `clueup`
  MODIFY `clueup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `collect`
--
ALTER TABLE `collect`
  MODIFY `collect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `connect`
--
ALTER TABLE `connect`
  MODIFY `connect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `cus_address`
--
ALTER TABLE `cus_address`
  MODIFY `cus_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `cus_contain`
--
ALTER TABLE `cus_contain`
  MODIFY `cus_contain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `cus_lives`
--
ALTER TABLE `cus_lives`
  MODIFY `cus_lives_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `deliver`
--
ALTER TABLE `deliver`
  MODIFY `deliver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `deposite`
--
ALTER TABLE `deposite`
  MODIFY `deposite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `deseco`
--
ALTER TABLE `deseco`
  MODIFY `deseco_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `deseco_address`
--
ALTER TABLE `deseco_address`
  MODIFY `deseco_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `detailedinformation_package_mail`
--
ALTER TABLE `detailedinformation_package_mail`
  MODIFY `deIn_paMa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `employee_extern`
--
ALTER TABLE `employee_extern`
  MODIFY `emp_ext_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `employee_intern`
--
ALTER TABLE `employee_intern`
  MODIFY `emp_int_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `have`
--
ALTER TABLE `have`
  MODIFY `have_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `keep`
--
ALTER TABLE `keep`
  MODIFY `keep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `know`
--
ALTER TABLE `know`
  MODIFY `know_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `lead_emp_ext`
--
ALTER TABLE `lead_emp_ext`
  MODIFY `lead_emp_ext_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `lead_emp_int`
--
ALTER TABLE `lead_emp_int`
  MODIFY `lead_emp_int_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `package_mail`
--
ALTER TABLE `package_mail`
  MODIFY `paMa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `pickup`
--
ALTER TABLE `pickup`
  MODIFY `pickup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `possess`
--
ALTER TABLE `possess`
  MODIFY `possess_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `process`
--
ALTER TABLE `process`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `proc_system`
--
ALTER TABLE `proc_system`
  MODIFY `pro_sys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `recipient`
--
ALTER TABLE `recipient`
  MODIFY `recipient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `rec_address`
--
ALTER TABLE `rec_address`
  MODIFY `rec_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `rec_contain`
--
ALTER TABLE `rec_contain`
  MODIFY `rec_contain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `rec_lives`
--
ALTER TABLE `rec_lives`
  MODIFY `rec_lives_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `send`
--
ALTER TABLE `send`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `supply`
--
ALTER TABLE `supply`
  MODIFY `supply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `use`
--
ALTER TABLE `use`
  MODIFY `use_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `clueup`
--
ALTER TABLE `clueup`
  ADD CONSTRAINT `clueup_ibfk_1` FOREIGN KEY (`paMa_id`) REFERENCES `package_mail` (`paMa_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clueup_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `collect`
--
ALTER TABLE `collect`
  ADD CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`emp_ext_id`) REFERENCES `employee_extern` (`emp_ext_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `collect_ibfk_2` FOREIGN KEY (`pro_sys_id`) REFERENCES `proc_system` (`pro_sys_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `connect`
--
ALTER TABLE `connect`
  ADD CONSTRAINT `connect_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `connect_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `cus_contain`
--
ALTER TABLE `cus_contain`
  ADD CONSTRAINT `cus_contain_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cus_contain_ibfk_2` FOREIGN KEY (`paMa_id`) REFERENCES `package_mail` (`paMa_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `cus_lives`
--
ALTER TABLE `cus_lives`
  ADD CONSTRAINT `cus_lives_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cus_lives_ibfk_2` FOREIGN KEY (`cus_address_id`) REFERENCES `cus_address` (`cus_address_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `deliver`
--
ALTER TABLE `deliver`
  ADD CONSTRAINT `deliver_ibfk_1` FOREIGN KEY (`emp_ext_id`) REFERENCES `employee_extern` (`emp_ext_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deliver_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`);

--
-- Constraints der Tabelle `deposite`
--
ALTER TABLE `deposite`
  ADD CONSTRAINT `deposite_ibfk_1` FOREIGN KEY (`paMa_id`) REFERENCES `package_mail` (`paMa_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deposite_ibfk_2` FOREIGN KEY (`pro_sys_id`) REFERENCES `proc_system` (`pro_sys_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `have`
--
ALTER TABLE `have`
  ADD CONSTRAINT `have_ibfk_1` FOREIGN KEY (`deseco_id`) REFERENCES `deseco` (`deseco_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `have_ibfk_2` FOREIGN KEY (`deseco_address_id`) REFERENCES `deseco_address` (`deseco_address_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `keep`
--
ALTER TABLE `keep`
  ADD CONSTRAINT `keep_ibfk_1` FOREIGN KEY (`deseco_id`) REFERENCES `deseco` (`deseco_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keep_ibfk_2` FOREIGN KEY (`paMa_id`) REFERENCES `package_mail` (`paMa_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `know`
--
ALTER TABLE `know`
  ADD CONSTRAINT `know_ibfk_1` FOREIGN KEY (`emp_ext_id`) REFERENCES `employee_extern` (`emp_ext_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `know_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `lead_emp_ext`
--
ALTER TABLE `lead_emp_ext`
  ADD CONSTRAINT `lead_emp_ext_ibfk_1` FOREIGN KEY (`deseco_id`) REFERENCES `deseco` (`deseco_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lead_emp_ext_ibfk_2` FOREIGN KEY (`emp_ext_id`) REFERENCES `employee_extern` (`emp_ext_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `lead_emp_int`
--
ALTER TABLE `lead_emp_int`
  ADD CONSTRAINT `lead_emp_int_ibfk_1` FOREIGN KEY (`deseco_id`) REFERENCES `deseco` (`deseco_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lead_emp_int_ibfk_2` FOREIGN KEY (`emp_int_id`) REFERENCES `employee_intern` (`emp_int_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `pickup`
--
ALTER TABLE `pickup`
  ADD CONSTRAINT `pickup_ibfk_1` FOREIGN KEY (`emp_ext_id`) REFERENCES `employee_extern` (`emp_ext_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pickup_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `possess`
--
ALTER TABLE `possess`
  ADD CONSTRAINT `possess_ibfk_1` FOREIGN KEY (`paMa_id`) REFERENCES `package_mail` (`paMa_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `possess_ibfk_2` FOREIGN KEY (`deIn_paMa_id`) REFERENCES `detailedinformation_package_mail` (`deIn_paMa_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `process`
--
ALTER TABLE `process`
  ADD CONSTRAINT `process_ibfk_1` FOREIGN KEY (`paMa_id`) REFERENCES `package_mail` (`paMa_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `process_ibfk_2` FOREIGN KEY (`emp_int_id`) REFERENCES `employee_intern` (`emp_int_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `rec_contain`
--
ALTER TABLE `rec_contain`
  ADD CONSTRAINT `rec_contain_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rec_contain_ibfk_2` FOREIGN KEY (`pro_sys_id`) REFERENCES `proc_system` (`pro_sys_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `rec_lives`
--
ALTER TABLE `rec_lives`
  ADD CONSTRAINT `rec_lives_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rec_lives_ibfk_2` FOREIGN KEY (`rec_address_id`) REFERENCES `rec_address` (`rec_address_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `send`
--
ALTER TABLE `send`
  ADD CONSTRAINT `send_ibfk_1` FOREIGN KEY (`emp_int_id`) REFERENCES `employee_intern` (`emp_int_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `send_ibfk_2` FOREIGN KEY (`pro_sys_id`) REFERENCES `proc_system` (`pro_sys_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `supply`
--
ALTER TABLE `supply`
  ADD CONSTRAINT `supply_ibfk_1` FOREIGN KEY (`emp_ext_id`) REFERENCES `employee_extern` (`emp_ext_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supply_ibfk_2` FOREIGN KEY (`paMa_id`) REFERENCES `package_mail` (`paMa_id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `use`
--
ALTER TABLE `use`
  ADD CONSTRAINT `use_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `use_ibfk_2` FOREIGN KEY (`deseco_id`) REFERENCES `deseco` (`deseco_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
