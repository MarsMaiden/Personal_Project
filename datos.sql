USE db_mars;

-- SELECT 
-- CONCAT('TRUNCATE TABLE ',TABLE_NAME,';') AS truncateCommand
-- FROM information_schema.TABLES 
-- WHERE TABLE_SCHEMA = 'db_mars';

SET FOREIGN_KEY_CHECKS = 0;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-08-2021 a las 09:02:19
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_mars`
--

--
-- Truncar tablas antes de insertar `book`
--

TRUNCATE TABLE `book`;
--
-- Truncar tablas antes de insertar `book_genre`
--

TRUNCATE TABLE `book_genre`;
--
-- Volcado de datos para la tabla `book_genre`
--

INSERT INTO `book_genre` (`book_genre_id`, `descr`) VALUES
(1, 'Light Novel'),
(2, 'Fantasy'),
(3, 'Biography'),
(4, 'Science'),
(5, 'Auto ayuda');

--
-- Truncar tablas antes de insertar `game`
--

TRUNCATE TABLE `game`;
--
-- Volcado de datos para la tabla `game`
--

INSERT INTO `game` (`game_id`, `cod`, `title`, `status`, `release_date`, `price`, `purchase_date`, `start_date`, `finish_date`, `cover`) VALUES
(1, 'G-0001', 'Garry\'s Mod', 4, '2006-11-29', '8.32', '2016-01-02', '2016-01-02', '2016-01-02', 'https://cdn.thegamesdb.net/images/original/boxart/front/8506-1.jpg'),
(2, 'G-0002', 'Assassin\'s Creed Unity', 2, '2014-10-28', '44.45', '2016-04-30', '2016-04-30', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/19850-1.jpg'),
(3, 'G-0003', 'Batman: Arkham City', 3, '2011-11-25', '7.87', '2016-05-21', '2016-05-21', '2019-05-21', 'https://cdn.thegamesdb.net/images/original/boxart/front/931-1.jpg'),
(4, 'G-0004', 'Resident Evil 6 Complete', 2, '2013-03-23', '26.23', '2016-06-15', '2016-06-15', NULL, 'https://www.mobygames.com/images/covers/l/321135-resident-evil-6-playstation-3-front-cover.jpg'),
(5, 'G-0005', 'Limbo', 1, '2011-08-02', '0.00', '2016-06-21', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/5950-2.jpg'),
(6, 'G-0006', 'Batman Arkham Asylum GOTY', 3, '2009-09-15', '9.67', '2016-08-17', '2016-08-17', '2019-08-17', 'https://cdn.thegamesdb.net/images/original/boxart/front/190-1.jpg'),
(7, 'G-0007', 'Resident Evil 4 Ultimate HD Edition', 3, '2014-02-27', '21.10', '2016-08-03', '2016-08-03', '2019-07-18', 'https://cdn.thegamesdb.net/images/original/boxart/front/19786-1.jpg'),
(8, 'G-0008', 'Saints Row IV National Treasure Edition', 2, '2014-07-08', '20.10', '2016-09-02', '2016-09-02', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/75681-1.jpg'),
(9, 'G-0009', 'Batman: Arkham Knight Premium Edition', 2, '2015-06-23', '37.98', '2016-10-14', '2018-10-14', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/21456-1.jpg'),
(10, 'G-0010', 'Left 4 Dead', 4, '2008-11-17', '9.36', '2016-10-31', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/22-1.jpg'),
(11, 'G-0011', 'Left 4 Dead 2', 4, '2009-11-16', '7.49', '2016-10-31', '2016-10-31', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/855-1.jpg'),
(12, 'G-0012', 'Assassin\'s Creed II: Deluxe Edition', 3, '2009-11-17', '28.97', '2016-11-16', '2016-11-16', '2020-04-15', 'https://cdn.thegamesdb.net/images/original/boxart/front/318-2.jpg'),
(13, 'G-0013', 'Dead Space', 3, '2008-10-14', '0.00', '2016-11-13', '2016-11-13', '2021-04-23', 'https://cdn.thegamesdb.net/images/original/boxart/front/14-2.jpg'),
(14, 'G-0014', 'The Witcher 2: Assassins of Kings Enhanced Edition', 3, '2011-05-17', '0.00', '2016-11-13', '2017-10-01', '2017-11-20', 'https://cdn.thegamesdb.net/images/original/boxart/front/61268-1.jpg'),
(15, 'G-0015', 'Grand Theft Auto: San Andreas', 3, '2005-06-07', '13.98', '2016-11-28', '2016-11-28', '2021-04-04', 'https://cdn.thegamesdb.net/images/original/boxart/front/790-1.jpg'),
(16, 'G-0016', 'The Witcher: Enhanced Edition', 3, '2008-09-16', '4.19', '2016-11-28', '2016-11-28', '2017-09-30', 'https://cdn.thegamesdb.net/images/original/boxart/front/55048-1.jpg'),
(17, 'G-0017', 'Batman Arkham Origins', 2, '2013-10-25', '38.08', '2016-11-29', '2017-02-13', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/17645-1.jpg'),
(18, 'G-0018', 'Dark Souls Prepare To Die Edition', 2, '2012-08-24', '16.57', '2016-12-20', '2016-12-20', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/10272-1.jpg'),
(19, 'G-0019', 'Team Fortress Classic', 4, '1999-06-30', '1.79', '2016-12-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/11038-1.jpg'),
(20, 'G-0020', 'Opposing Force', 1, '1999-11-01', '1.79', '2016-12-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/6459-1.jpg'),
(21, 'G-0021', 'Half-Life', 2, '1998-11-19', '3.35', '2016-12-22', '2016-12-22', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/647-1.jpg'),
(22, 'G-0022', 'Half-Life: Blue Shift', 1, '2001-06-12', '1.79', '2016-12-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/6458-1.jpg'),
(23, 'G-0023', 'Half-Life 2', 1, '2004-11-16', '3.35', '2016-12-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/11038-1.jpg'),
(24, 'G-0024', 'Half-Life 1: Source', 4, '2004-06-01', '3.35', '2016-12-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18172-1.jpg'),
(25, 'G-0025', 'Half-Life 2: Episode One', 1, '2006-06-01', '2.75', '2016-12-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/1547-1.jpg'),
(26, 'G-0026', 'Half-Life 2: Episode Two', 1, '2007-10-10', '2.75', '2016-12-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/1548-1.jpg'),
(27, 'G-0027', 'Resident Evil Revelations 2 - Episode One: Penal Colony', 1, '2015-02-25', '2.55', '2016-12-25', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/71750-1.jpg'),
(28, 'G-0028', 'Bioshock', 3, '2007-08-21', '21.23', '2017-02-13', '2017-10-13', '2017-12-27', 'https://cdn.thegamesdb.net/images/original/boxart/front/13-1.jpg'),
(29, 'G-0029', 'Saints Row: The Third', 1, '2011-11-01', '9.98', '2017-02-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/2587-1.jpg'),
(30, 'G-0030', 'Spec Ops: The Line', 3, '2012-06-26', '14.79', '2017-03-19', '2017-10-19', '2019-07-29', 'https://cdn.thegamesdb.net/images/original/boxart/front/9357-1.jpg'),
(31, 'G-0031', 'Alan Wake', 3, '2012-02-16', '9.29', '2017-05-14', '2020-08-02', '2020-08-12', 'https://cdn.thegamesdb.net/images/original/boxart/front/9171-1.jpg'),
(32, 'G-0032', 'Alan Wake\'s American Nightmare', 1, '2012-05-22', '0.00', '2017-05-14', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/10763-1.jpg'),
(33, 'G-0033', 'PAYDAY 2', 4, '2013-08-15', '0.00', '2017-06-08', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/17115-1.jpg'),
(34, 'G-0034', 'Killing Floor', 4, '2009-05-14', '0.00', '2017-06-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/950-1.jpg'),
(35, 'G-0035', 'Watch_Dogs', 3, '2014-05-27', '29.99', '2017-06-22', '2017-06-25', '2020-07-29', 'https://cdn.thegamesdb.net/images/original/boxart/front/10284-1.jpg'),
(36, 'G-0036', 'Portal', 1, '2007-10-09', '2.09', '2017-06-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/158-1.jpg'),
(37, 'G-0037', 'Portal 2', 1, '2011-04-19', '3.74', '2017-06-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/914-1.jpg'),
(38, 'G-0038', 'Tomb Raider', 3, '2013-03-05', '19.39', '2017-06-23', '2017-08-02', '2018-08-14', 'https://cdn.thegamesdb.net/images/original/boxart/front/2756-1.jpg'),
(39, 'G-0039', 'Counter-Strike: Condition Zero', 4, '2004-03-23', '6.98', '2017-06-28', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/7807-1.jpg'),
(40, 'G-0040', 'Borderlands 2 Game of the Year', 2, '2012-09-18', '35.54', '2017-07-04', '2019-04-01', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/5647-1.jpg'),
(41, 'G-0041', 'Umbrella Corps', 4, '2016-06-21', '0.00', '2017-07-17', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/37300-1.jpg'),
(42, 'G-0042', 'DmC Devil May Cry', 2, '2013-01-15', '3.16', '2017-07-17', '2017-08-17', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/6431-1.png'),
(43, 'G-0043', 'Strider', 1, '2014-02-18', '0.00', '2017-07-17', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/19644-1.jpg'),
(44, 'G-0044', 'Shadow Warrior: Special Edition', 1, '2013-09-23', '0.00', '2017-07-20', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/17861-1.jpg'),
(45, 'G-0045', 'Outlast Deluxe Edition', 1, '2013-09-04', '0.00', '2017-07-21', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/17769-1.jpg'),
(46, 'G-0046', 'The Witcher 3: Wild Hunt - Game of the Year Edition', 3, '2015-05-19', '47.98', '2017-10-16', '2017-10-15', '2017-12-28', 'https://cdn.thegamesdb.net/images/original/boxart/front/33255-1.jpg'),
(47, 'G-0047', 'Comix Zone', 3, '1996-02-01', '4.47', '2017-11-22', '2017-11-22', '2017-11-23', 'https://cdn.thegamesdb.net/images/original/boxart/front/87089-1.jpg'),
(48, 'G-0048', 'Company of Heroes 2', 1, '2013-06-25', '0.00', '2017-12-14', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/16965-1.jpg'),
(49, 'G-0049', 'Assassin\'s Creed Brotherhood Deluxe', 3, '2010-11-16', '23.99', '2017-12-22', '2018-01-23', '2018-03-01', 'https://cdn.thegamesdb.net/images/original/boxart/front/1802-1.jpg'),
(50, 'G-0050', 'Fallout 3 - Game of the Year', 3, '2008-10-28', '24.97', '2017-12-25', '2018-08-04', '2018-12-12', 'https://cdn.thegamesdb.net/images/original/boxart/front/86-1.jpg'),
(51, 'G-0051', 'Manhunt', 1, '2004-04-20', '0.00', '2018-01-31', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/5284-1.jpg'),
(52, 'G-0052', 'Grand Theft Auto: Vice City', 1, '2003-05-12', '3.34', '2018-01-31', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/789-1.jpg'),
(53, 'G-0053', 'Grand Theft Auto III', 1, '2002-05-20', '0.00', '2018-01-31', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/788-1.jpg'),
(54, 'G-0054', 'Max Payne', 1, '2001-07-23', '0.00', '2018-01-31', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/780-1.jpg'),
(55, 'G-0055', 'Unreal Gold', 1, '1998-04-30', '0.00', '2018-05-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/42219-1.jpg'),
(56, 'G-0056', 'Assassin\'s Creed Revelations - Gold Edition', 3, '2011-11-15', '23.99', '2018-07-01', '2020-02-07', '2020-05-01', 'https://cdn.thegamesdb.net/images/original/boxart/front/3595-1.jpg'),
(57, 'G-0057', 'Rust', 4, '2013-12-11', '15.25', '2018-07-04', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/19092-1.png'),
(58, 'G-0058', 'For Honor', 1, '2017-02-14', '0.00', '2018-08-26', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/39931-1.jpg'),
(59, 'G-0059', 'The Crew', 1, '2014-11-11', '0.00', '2016-12-18', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/20805-1.jpg'),
(60, 'G-0060', 'Assassin\'s Creed III', 1, '2012-11-20', '0.00', '2016-12-18', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/9302-1.jpg'),
(61, 'G-0061', 'World in Conflict', 1, '2007-09-18', '0.00', '2017-12-18', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/5968-1.jpg'),
(62, 'G-0062', 'Assassin\'s Creed IV: Black Flag', 1, '2013-11-19', '0.00', '2017-12-12', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/16252-1.jpg'),
(63, 'G-0063', 'Middle-earth: Shadow of Mordor', 1, '2014-09-30', '3.49', '2018-11-02', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18857-1.jpg'),
(64, 'G-0064', 'Scribblenauts Unlimited', 1, '2012-11-20', '0.00', '2018-11-02', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/13872-1.jpg'),
(65, 'G-0065', 'Metal Gear Solid V: Ground Zeroes', 1, '2014-12-18', '0.00', '2018-12-25', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/25164-1.jpg'),
(66, 'G-0066', 'Metal Gear Solid V: The Phantom Pain', 1, '2015-09-01', '33.43', '2018-12-25', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/23507-1.jpg'),
(67, 'G-0067', 'Overwatch', 4, '2016-05-24', '0.00', '2018-10-15', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/32185-1.jpg'),
(68, 'G-0068', 'A Story About My Uncle', 1, '2014-05-25', '0.00', '2019-01-13', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/21324-1.jpg'),
(69, 'G-0069', 'Watch_Dogs2 Gold Edition', 1, '2016-11-15', '31.99', '2019-02-08', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/86862-1.jpg'),
(70, 'G-0070', 'ENSLAVED: Odyssey to the West', 1, '2013-11-25', '0.00', '2019-04-06', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18206-1.jpg'),
(71, 'G-0071', 'Impact Winter	', 1, '2017-05-22', '3.47', '2019-04-07', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/69330-1.jpg'),
(72, 'G-0072', 'Borderlands: The Pre-Sequel', 1, '2014-10-17', '11.87', '2019-04-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/23463-1.jpg'),
(73, 'G-0073', 'Grand Theft Auto V', 2, '2015-04-13', '66.63', '2019-05-15', '2019-05-20', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/20952-1.jpg'),
(74, 'G-0074', 'Sleeping Dogs: Definitive Edition', 1, '2012-08-14', '6.00', '2019-06-29', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/10386-2.jpg'),
(75, 'G-0075', 'Day of Defeat: Source', 4, '2005-09-26', '0.99', '2019-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/4199-2.jpg'),
(76, 'G-0076', 'Day of Defeat', 1, '2003-05-01', '0.57', '2017-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18097-1.jpg'),
(77, 'G-0077', 'Deathmatch Classic', 4, '2001-06-01', '0.57', '2019-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18098-1.png'),
(78, 'G-0078', 'Ricochet', 4, '2000-11-01', '0.57', '2019-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/9108-1.jpg'),
(79, 'G-0079', 'Counter-Strike: Source', 4, '2004-11-04', '0.99', '2019-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/3372-1.jpg'),
(80, 'G-0080', 'The Lab', 1, '2016-04-05', '0.00', '2019-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/66992-1.jpg'),
(81, 'G-0081', 'Fallout New Vegas Ultimate', 3, '2010-10-19', '12.48', '2019-07-27', '2019-12-23', '2020-04-12', 'https://cdn.thegamesdb.net/images/original/boxart/front/60281-1.jpg'),
(82, 'G-0082', 'Fallout 4: Game of the Year Edition', 1, '2015-11-10', '47.47', '2019-07-27', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/29227-1.jpg'),
(83, 'G-0083', 'DiRT Rally', 4, '2015-12-07', '0.00', '2019-09-14', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/33513-1.jpg'),
(84, 'G-0084', 'Destiny 2', 4, '2017-10-24', '0.00', '2019-10-03', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/50624-1.jpg'),
(85, 'G-0085', 'Rise of the Tomb Raider: 20 Year Celebration', 3, '2016-01-28', '28.50', '2019-12-26', '2020-09-20', '2020-12-26', 'https://cdn.thegamesdb.net/images/original/boxart/front/34835-1.jpg'),
(86, 'G-0086', 'Metro 2033 Redux', 3, '2014-08-25', '9.36', '2020-01-25', '2020-12-23', '2021-01-12', 'https://cdn.thegamesdb.net/images/original/boxart/front/27774-1.jpg'),
(87, 'G-0087', 'Metro Last Light Redux', 1, '2014-08-25', '9.36', '2020-01-25', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/27777-1.jpg'),
(88, 'G-0088', 'South Park: The Stick of Truth', 1, '2014-03-04', '8.09', '2020-02-21', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/19779-1.jpg'),
(89, 'G-0089', 'South Park The Fractured But Whole', 1, '2017-10-17', '13.50', '2020-02-21', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/51672-1.jpg'),
(90, 'G-0090', 'Black Desert Online', 4, '2014-12-12', '0.00', '2020-02-29', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/35464-1.jpg'),
(91, 'G-0091', 'Alien: Isolation Collection', 1, '2014-10-07', '31.73', '2020-04-26', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/19563-1.jpg'),
(92, 'G-0092', 'Total War: Shogun 2', 1, '2011-03-15', '0.00', '2020-04-27', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/918-2.jpg'),
(93, 'G-0093', 'Resident Evil HD Remaster', 2, '2015-01-20', '0.00', '2020-05-06', '2021-02-10', NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/24957-1.jpg'),
(94, 'G-0094', 'Resident Evil 0: HD Remaster', 1, '2016-01-19', '32.75', '2020-05-06', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/32264-1.jpg'),
(95, 'G-0095', 'Injustice: Gods Among Us Ultimate Edition', 1, '2013-11-12', '0.00', '2020-06-19', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/19101-1.png'),
(96, 'G-0096', 'F1 2018', 1, '2018-08-24', '0.00', '2020-08-08', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/70501-1.jpg'),
(97, 'G-0097', 'Fall Guys: Ultimate Knockout', 4, '2020-08-04', '37.00', '2020-08-13', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/76338-1.jpg'),
(98, 'G-0098', 'Bayonetta', 1, '2017-04-11', '12.48', '2020-10-16', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/44157-1.jpg'),
(99, 'G-0099', 'Grand Theft Auto IV: The Complete Edition', 1, '2020-03-25', '20.09', '2020-12-31', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/88462-1.jpg'),
(100, 'G-0100', 'Resident Evil Revelations', 1, '2013-05-21', '32.79', '2021-02-15', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/15186-1.jpg'),
(101, 'G-0101', 'Shadow of the Tomb Raider', 1, '2018-09-14', '39.57', '2021-02-15', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/53994-1.jpg'),
(102, 'G-0102', 'Assassin\'s Creed', 3, '2008-04-09', '17.99', '2021-03-24', '2021-03-24', '2021-05-09', 'https://cdn.thegamesdb.net/images/original/boxart/front/12-1.jpg'),
(103, 'G-0103', 'Resident Evil 5 Gold Edition', 1, '2009-09-15', '24.59', '2021-04-18', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/57-2.jpg'),
(104, 'G-0104', 'Little Nightmares', 1, '2017-04-28', '0.00', '2021-05-28', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/51981-1.jpg'),
(105, 'G-0105', 'BioShock 2', 1, '2010-02-09', '29.99', '2021-07-08', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/649-2.jpg'),
(106, 'G-0106', 'BioShock Infinite', 1, '2013-03-26', '0.00', '2021-07-08', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/936-1.jpg'),
(107, 'G-0107', 'Assassin\'s Creed Chronicles: China', 1, '2015-04-22', '0.00', '2021-02-16', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/27437-1.jpg'),
(108, 'G-0108', 'Far Cry 3', 1, '2012-12-04', '0.00', '2020-09-01', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/4419-2.jpg'),
(109, 'G-0109', 'Tom Clancy\'s The Division', 1, '2016-03-08', '0.00', '2020-09-01', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18902-1.jpg'),
(110, 'G-0110', 'Uncharted: The Nathan Drake Collection', 1, '2015-10-07', '0.00', '2020-04-17', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/31758-1.jpg'),
(111, 'G-0111', 'Journey', 1, '2015-07-21', '0.00', '2020-04-17', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/53113-1.jpg'),
(112, 'G-0112', 'FINAL FANTASY XIV Online', 4, '2017-06-20', '0.00', '2020-05-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/56035-1.jpg'),
(113, 'G-0113', 'Subnautica', 1, '2018-12-04', '0.00', '2021-03-29', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/62243-1.jpg'),
(114, 'G-0114', 'The Witness', 1, '2016-01-26', '0.00', '2021-03-29', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/17111-1.jpg'),
(115, 'G-0115', 'ASTRO BOT Rescue Mission', 1, '2018-10-02', '0.00', '2021-03-29', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/61209-1.jpg'),
(116, 'G-0116', 'Horizon Zero Dawn: Complete Edition', 1, '2017-12-05', '0.00', '2021-04-20', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/51667-1.jpg'),
(117, 'G-0117', 'Battlefield 1', 4, '2016-10-21', '0.00', '2021-07-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/36615-1.jpg'),
(118, 'G-0118', 'Battlefield V', 4, '2018-11-20', '0.00', '2021-08-02', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/55756-1.jpg'),
(119, 'G-0119', 'Battlefield 3', 4, '2011-10-25', '0.00', '2020-12-02', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/2599-1.jpg'),
(120, 'G-0120', 'Battlefield 4', 4, '2013-10-29', '0.00', '2021-06-02', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/16691-1.jpg'),
(121, 'G-0121', 'LEGO Batman: The Videogame', 1, '2008-09-23', '0.00', '2019-09-20', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/8972-1.jpg'),
(122, 'G-0122', 'EGO Batman 2: DC Super Heroes', 1, '2012-06-19', '0.00', '2019-09-20', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/10668-1.jpg'),
(123, 'G-0123', 'LEGO Batman 3: Beyond Gotham', 1, '2014-11-11', '0.00', '2019-09-20', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/25080-1.jpg'),
(124, 'G-0124', 'Q.U.B.E. 2', 1, '2018-03-13', '0.00', '2019-10-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/53849-1.jpg'),
(125, 'G-0125', 'Layers of Fear', 1, '2016-02-15', '0.00', '2019-10-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/50396-1.jpg'),
(126, 'G-0126', 'Assassins Creed Syndicate', 1, '2015-10-23', '0.00', '2020-02-21', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/30645-1.jpg'),
(127, 'G-0127', 'The Stanley Parable', 1, '2013-10-17', '0.00', '2020-03-20', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18045-1.jpg'),
(128, 'G-0128', 'World War Z', 4, '2019-04-16', '0.00', '2020-03-26', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/67829-1.jpg'),
(129, 'G-0129', 'Just Cause 4', 1, '2018-12-04', '0.00', '2020-04-17', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/61061-1.jpg'),
(130, 'G-0130', 'Amnesia: The Dark Descent', 1, '2010-09-08', '0.00', '2020-04-30', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/2547-1.jpg'),
(131, 'G-0131', 'Sid Meier\'s Civilization VI', 1, '2016-10-21', '0.00', '2020-05-21', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/36612-1.jpg'),
(132, 'G-0132', 'Overcooked', 4, '2016-08-03', '0.00', '2020-06-07', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/38546-1.jpg'),
(133, 'G-0133', 'ARK: Survival Evolved', 4, '2015-06-02', '0.00', '2020-06-11', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/28903-1.jpg'),
(134, 'G-0134', 'SAMURAI SHODOWN NEOGEO COLLECTION', 4, '2020-06-11', '0.00', '2020-06-11', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/73497-1.jpg'),
(135, 'G-0135', 'Pathway', 1, '2019-04-11', '0.00', '2020-06-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/64303-1.jpg'),
(136, 'G-0136', 'AER Memories of Old', 1, '2017-10-25', '0.00', '2020-06-26', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/60255-1.jpg'),
(137, 'G-0137', 'Stranger Things 3: The Game', 1, '2019-07-04', '0.00', '2020-06-26', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/62541-1.jpg'),
(138, 'G-0138', 'Hue', 1, '2016-08-30', '0.00', '2020-07-02', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/54560-1.jpg'),
(139, 'G-0139', 'Killing Floor 2', 4, '2015-04-21', '0.00', '2020-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/27439-1.jpg'),
(140, 'G-0140', 'Lifeless Planet: Premier Edition', 1, '2014-06-06', '0.00', '2020-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/78180-1.jpg'),
(141, 'G-0141', 'The Escapists 2', 4, '2017-08-21', '0.00', '2020-07-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/61326-1.jpg'),
(142, 'G-0142', 'Torchlight II', 4, '2012-09-20', '0.00', '2020-07-17', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/11499-1.jpg'),
(143, 'G-0143', 'Tacoma', 1, '2017-08-01', '0.00', '2020-07-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/48254-1.jpg'),
(144, 'G-0144', 'Next Up Hero', 1, '2018-01-11', '0.00', '2020-07-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/74984-1.jpg'),
(145, 'G-0145', 'Superbrothers: Sword & Sworcery EP', 1, '2012-04-16', '0.00', '2020-08-03', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/9664-1.jpg'),
(146, 'G-0146', 'Barony', 1, '2015-05-20', '0.00', '2020-08-03', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/75305-1.jpg'),
(147, 'G-0147', '20XX', 1, '2014-11-25', '0.00', '2020-08-03', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/34782-1.jpg'),
(148, 'G-0148', 'Remnant: From the Ashes', 1, '2019-08-20', '0.00', '2020-08-18', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/65895-1.jpg'),
(149, 'G-0149', 'The Alto Collection', 1, '2020-08-13', '0.00', '2020-08-18', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/75786-1.jpg'),
(150, 'G-0150', 'God\'s Trigger', 1, '2019-04-18', '0.00', '2020-08-21', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/69761-1.jpg'),
(151, 'G-0151', 'Enter The Gungeon', 4, '2016-04-05', '0.00', '2020-08-21', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/37145-1.jpg'),
(152, 'G-0152', 'HITMAN', 1, '2016-03-11', '0.00', '2020-08-27', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/44303-1.jpg'),
(153, 'G-0153', 'Shadowrun Collection', 1, '2015-01-01', '0.00', '2020-08-27', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/87286-1.jpg'),
(154, 'G-0154', 'Into The Breach', 1, '2018-02-27', '0.00', '2020-09-05', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/53585-1.jpg'),
(155, 'G-0155', 'Football Manager 2020', 1, '2019-11-19', '0.00', '2020-09-17', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/68765-1.jpg'),
(156, 'G-0156', 'Rocket League', 4, '2015-07-07', '0.00', '2020-09-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/29478-1.jpg'),
(157, 'G-0157', 'ABZU', 1, '2016-08-02', '0.00', '2020-10-13', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/37529-1.jpg'),
(158, 'G-0158', 'Amnesia: A Machine for Pigs', 1, '2013-09-10', '0.00', '2020-10-16', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/17640-1.jpg'),
(159, 'G-0159', 'Layers of Fear 2', 1, '2019-05-28', '0.00', '2020-10-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/64890-1.jpg'),
(160, 'G-0160', 'Dungeons 3', 4, '2017-10-13', '0.00', '2020-11-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/55083-1.jpg'),
(161, 'G-0161', 'Cities: Skylines', 1, '2015-03-10', '0.00', '2020-12-17', NULL, NULL, 'Cities: Skylines'),
(162, 'G-0162', 'The Long Dark', 1, '2017-08-01', '0.00', '2020-12-19', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/23617-1.jpg'),
(163, 'G-0163', 'Tropico 5', 4, '2014-05-23', '0.00', '2020-12-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/19998-1.jpg'),
(164, 'G-0164', 'Inside', 1, '2016-06-29', '0.00', '2020-12-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/38031-1.jpg'),
(165, 'G-0165', 'Darkest Dungeon', 1, '2016-01-19', '0.00', '2020-12-25', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/25806-1.jpg'),
(166, 'G-0166', 'STAR WARS Battlefront II', 4, '2017-11-17', '0.00', '2021-01-14', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/54115-1.jpg'),
(167, 'G-0167', 'Rage 2', 1, '2019-05-13', '0.00', '2021-02-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/61224-1.jpg'),
(168, 'G-0168', 'The Fall', 1, '2014-05-30', '0.00', '2021-03-23', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/21303-1.jpg'),
(169, 'G-0169', 'Deponia: The Complete Journey', 1, '2014-07-08', '0.00', '2021-04-20', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/22649-1.jpg'),
(170, 'G-0170', 'Ken Follett\'s The Pillars of the Earth', 1, '2017-08-15', '0.00', '2021-04-20', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/61920-1.jpg'),
(171, 'G-0171', 'Among Us', 4, '2018-08-18', '0.00', '2021-05-28', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/77267-1.jpg'),
(172, 'G-0172', 'Frostpunk', 1, '2018-04-24', '0.00', '2021-06-03', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/54996-1.jpg'),
(173, 'G-0173', 'Control', 1, '2019-08-27', '0.00', '2021-06-10', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/64817-1.jpg'),
(174, 'G-0174', 'Genshin Impact', 4, '2020-09-28', '0.00', '2021-06-10', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/78243-1.jpg'),
(175, 'G-0175', 'Sonic Mania', 1, '2017-08-29', '0.00', '2021-06-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/46074-1.jpg'),
(176, 'G-0176', 'The Elder Scrolls IV: Oblivion - Game of the Year Edition Deluxe', 1, '2006-03-20', '10.67', '2019-12-31', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/60283-1.jpg'),
(177, 'G-0177', 'The Evil Within', 1, '2014-10-21', '15.10', '2020-05-29', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18859-1.jpg'),
(178, 'G-0178', 'Hellblade: Senua\'s Sacrifice', 1, '2017-08-08', '14.40', '2020-06-03', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/48347-1.jpg'),
(179, 'G-0179', 'Mirror\'s Edge', 1, '2009-01-13', '0.00', '2020-06-05', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/7635-1.jpg'),
(180, 'G-0180', 'Eye of the Beholder', 1, '1991-01-01', '0.00', '2020-06-19', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/20984-1.png'),
(181, 'G-0181', 'Eye of the Beholder II: The Legend of Darkmoon', 1, '1991-01-01', '0.00', '2020-06-19', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/20993-1.png'),
(182, 'G-0182', 'Eye of the Beholder III: Assault on Myth Drannor', 1, '1993-01-01', '0.00', '2020-06-19', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/20994-1.png'),
(183, 'G-0183', 'Serious Sam: The First Encounter', 1, '2001-03-23', '0.00', '2020-08-24', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/5532-1.jpg'),
(184, 'G-0184', 'Cyberpunk 2077', 1, '2020-12-10', '147.10', '2020-12-09', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/14517-1.jpg'),
(185, 'G-0185', 'Prison Architect', 1, '2012-09-25', '0.00', '2020-12-17', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/17162-1.jpg'),
(186, 'G-0186', 'Brigador: Up-Armored Deluxe', 1, '2016-06-02', '0.00', '2020-12-22', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/50152-1.jpg'),
(187, 'G-0187', 'PAC-MAN Championship Edition DX+', 4, '2013-09-24', '0.00', '2019-04-06', NULL, NULL, 'https://cdn.thegamesdb.net/images/original/boxart/front/18345-1.jpg');

--
-- Truncar tablas antes de insertar `game_genre`
--

TRUNCATE TABLE `game_genre`;
--
-- Volcado de datos para la tabla `game_genre`
--

INSERT INTO `game_genre` (`game_id`, `videogame_genre_id`) VALUES
(2, 2),
(3, 2),
(4, 2),
(4, 3),
(1, 4),
(1, 5);

--
-- Truncar tablas antes de insertar `game_platform`
--

TRUNCATE TABLE `game_platform`;
--
-- Truncar tablas antes de insertar `status`
--

TRUNCATE TABLE `status`;
--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`status_id`, `descr`) VALUES
(1, 'Not Started'),
(2, 'In-Progress'),
(3, 'Finished'),
(4, 'Online');

--
-- Truncar tablas antes de insertar `videogame_genre`
--

TRUNCATE TABLE `videogame_genre`;
--
-- Volcado de datos para la tabla `videogame_genre`
--

INSERT INTO `videogame_genre` (`videogame_genre_id`, `descr`) VALUES
(1, 'RPG'),
(2, 'Adventure'),
(3, 'Shooter'),
(4, 'Simulator'),
(5, 'Indie');

--
-- Truncar tablas antes de insertar `videogame_platform`
--

TRUNCATE TABLE `videogame_platform`;
--
-- Volcado de datos para la tabla `videogame_platform`
--

INSERT INTO `videogame_platform` (`videogame_platform_id`, `descr`) VALUES
(1, 'Steam'),
(2, 'GOG'),
(3, 'Epic'),
(4, 'PlayStation'),
(5, 'Origin'),
(6, 'Ubisoft'),
(7, 'Battle.net');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SET FOREIGN_KEY_CHECKS = 1;