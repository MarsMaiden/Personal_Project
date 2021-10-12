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

INSERT INTO `game` (`title`, `status`, `release_date`, `price`, `purchase_date`, `start_date`, `finish_date`, `cover`) VALUES
("Garry's Mod", 4, '2006-11-29', 8.32, '2016-1-2', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/8506-1.jpg"),
("Assassin's Creed Unity", 2, '2014-10-28', 44.45, '2016-4-30', '2016-4-30', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19850-1.jpg"),
("Batman: Arkham City", 3, '2011-11-25', 7.87, '2016-5-21', '2016-5-21', '2019-5-21', "https://cdn.thegamesdb.net/images/original/boxart/front/931-1.jpg"),
("Resident Evil 6 Complete", 2, '2013-3-23', 26.23, '2016-6-15', '2016-6-15', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/15189-1.jpg"),
("Limbo", 1, '2011-8-2', 0, '2016-6-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/5950-2.jpg"),
("Resident Evil 4 Ultimate HD Edition", 3, '2014-2-27', 21.1, '2016-8-3', '2016-8-3', '2019-7-18', "https://cdn.thegamesdb.net/images/original/boxart/front/19786-1.jpg"),
("Batman Arkham Asylum GOTY", 3, '2009-9-15', 9.67, '2016-8-17', '2016-8-17', '2019-8-17', "https://cdn.thegamesdb.net/images/original/boxart/front/190-1.jpg"),
("Saints Row IV National Treasure Edition", 2, '2014-7-8', 20.1, '2016-9-2', '2016-9-2', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/75681-1.jpg"),
("Batman: Arkham Knight Premium Edition", 2, '2015-6-23', 37.98, '2016-10-14', '2018-10-14', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/21456-1.jpg"),
("Left 4 Dead", 4, '2008-11-17', 9.36, '2016-10-31', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/22-1.jpg"),
("Left 4 Dead 2", 4, '2009-11-16', 7.49, '2016-10-31', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/855-1.jpg"),
("Dead Space", 3, '2008-10-14', 0, '2016-11-13', '2016-11-13', '2021-4-23', "https://cdn.thegamesdb.net/images/original/boxart/front/14-2.jpg"),
("The Witcher 2: Assassins of Kings Enhanced Edition", 3, '2011-5-17', 0, '2016-11-13', '2017-10-1', '2017-11-20', "https://cdn.thegamesdb.net/images/original/boxart/front/61268-1.jpg"),
("Assassin's Creed II: Deluxe Edition", 3, '2009-11-17', 28.97, '2016-11-16', '2016-11-16', '2020-4-15', "https://cdn.thegamesdb.net/images/original/boxart/front/318-2.jpg"),
("Grand Theft Auto: San Andreas", 3, '2005-6-7', 13.98, '2016-11-28', '2016-11-28', '2021-4-4', "https://cdn.thegamesdb.net/images/original/boxart/front/790-1.jpg"),
("The Witcher: Enhanced Edition", 3, '2008-9-16', 4.19, '2016-11-28', '2016-11-28', '2017-9-30', "https://cdn.thegamesdb.net/images/original/boxart/front/55048-1.jpg"),
("Batman Arkham Origins", 2, '2013-10-25', 38.08, '2016-11-29', '2017-2-13', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/17645-1.jpg"),
("The Crew", 1, '2014-11-11', 0, '2016-12-18', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/20805-1.jpg"),
("Assassin's Creed III", 1, '2012-11-20', 0, '2016-12-18', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/9302-1.jpg"),
("Dark Souls Prepare To Die Edition", 2, '2012-8-24', 16.57, '2016-12-20', '2016-12-20', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/10272-1.jpg"),
("Team Fortress Classic", 4, '1999-6-30', 1.79, '2016-12-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/11038-1.jpg"),
("Opposing Force", 1, '1999-11-1', 1.79, '2016-12-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/6459-1.jpg"),
("Half-Life", 2, '1998-11-19', 3.35, '2016-12-22', '2016-12-22', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/647-1.jpg"),
("Half-Life: Blue Shift", 1, '2001-6-12', 1.79, '2016-12-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/6458-1.jpg"),
("Half-Life 2", 1, '2004-11-16', 3.35, '2016-12-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/11038-1.jpg"),
("Half-Life 1: Source", 4, '2004-6-1', 3.35, '2016-12-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18172-1.jpg"),
("Half-Life 2: Episode One", 1, '2006-6-1', 2.75, '2016-12-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/1547-1.jpg"),
("Half-Life 2: Episode Two", 1, '2007-10-10', 2.75, '2016-12-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/1548-1.jpg"),
("Resident Evil Revelations 2 - Episode One: Penal Colony", 1, '2015-2-25', 2.55, '2016-12-25', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/71750-1.jpg"),
("Bioshock", 3, '2007-8-21', 21.23, '2017-2-13', '2017-10-13', '2017-12-27', "https://cdn.thegamesdb.net/images/original/boxart/front/13-1.jpg"),
("Saints Row: The Third", 1, '2011-11-1', 9.98, '2017-2-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/2587-1.jpg"),
("Spec Ops: The Line", 3, '2012-6-26', 14.79, '2017-3-19', '2017-10-19', '2019-7-29', "https://cdn.thegamesdb.net/images/original/boxart/front/9357-1.jpg"),
("Alan Wake", 3, '2012-2-16', 9.29, '2017-5-14', '2020-8-2', '2020-8-12', "https://cdn.thegamesdb.net/images/original/boxart/front/9171-1.jpg"),
("Alan Wake's American Nightmare", 1, '2012-5-22', 0, '2017-5-14', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/10763-1.jpg"),
("PAYDAY 2", 4, '2013-8-15', 0, '2017-6-8', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/17115-1.jpg"),
("Killing Floor", 4, '2009-5-14', 0, '2017-6-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/950-1.jpg"),
("Watch_Dogs", 3, '2014-5-27', 29.99, '2017-6-22', '2017-6-25', '2020-7-29', "https://cdn.thegamesdb.net/images/original/boxart/front/10284-1.jpg"),
("Portal", 1, '2007-10-9', 2.09, '2017-6-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/158-1.jpg"),
("Portal 2", 1, '2011-4-19', 3.74, '2017-6-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/914-1.jpg"),
("Tomb Raider", 3, '2013-3-5', 19.39, '2017-6-23', '2017-8-2', '2018-8-14', "https://cdn.thegamesdb.net/images/original/boxart/front/2756-1.jpg"),
("Counter-Strike: Condition Zero", 4, '2004-3-23', 6.98, '2017-6-28', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/7807-1.jpg"),
("Borderlands 2 Game of the Year", 2, '2012-9-18', 35.54, '2017-7-4', '2019-4-1', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/5647-1.jpg"),
("Day of Defeat", 1, '2003-5-1', 0.57, '2017-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18097-1.jpg"),
("Umbrella Corps", 4, '2016-6-21', 0, '2017-7-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/37300-1.jpg"),
("DmC Devil May Cry", 2, '2013-1-15', 3.16, '2017-7-17', '2017-8-17', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/6431-1.png"),
("Strider", 1, '2014-2-18', 0, '2017-7-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19644-1.jpg"),
("Shadow Warrior: Special Edition", 1, '2013-9-23', 0, '2017-7-20', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/17861-1.jpg"),
("Outlast Deluxe Edition", 1, '2013-9-4', 0, '2017-7-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/17769-1.jpg"),
("The Witcher 3: Wild Hunt - Game of the Year Edition", 3, '2015-5-19', 47.98, '2017-10-16', '2017-10-15', '2017-12-28', "https://cdn.thegamesdb.net/images/original/boxart/front/33255-1.jpg"),
("Comix Zone", 3, '1996-2-1', 4.47, '2017-11-22', '2017-11-22', '2017-11-23', "https://cdn.thegamesdb.net/images/original/boxart/front/87089-1.jpg"),
("Assassin's Creed IV: Black Flag", 1, '2013-11-19', 0, '2017-12-12', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/16252-1.jpg"),
("Company of Heroes 2", 1, '2013-6-25', 0, '2017-12-14', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/16965-1.jpg"),
("World in Conflict", 1, '2007-9-18', 0, '2017-12-18', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/5968-1.jpg"),
("Assassin's Creed Brotherhood Deluxe", 3, '2010-11-16', 23.99, '2017-12-22', '2018-1-23', '2018-3-1', "https://cdn.thegamesdb.net/images/original/boxart/front/1802-1.jpg"),
("Fallout 3 - Game of the Year", 3, '2008-10-28', 24.97, '2017-12-25', '2018-8-4', '2018-12-12', "https://cdn.thegamesdb.net/images/original/boxart/front/86-1.jpg"),
("Manhunt", 1, '2004-4-20', 0, '2018-1-31', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/5284-1.jpg"),
("Grand Theft Auto: Vice City", 1, '2003-5-12', 3.34, '2018-1-31', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/789-1.jpg"),
("Grand Theft Auto III", 1, '2002-5-20', 0, '2018-1-31', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/788-1.jpg"),
("Max Payne", 1, '2001-7-23', 0, '2018-1-31', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/780-1.jpg"),
("Unreal Gold", 1, '1998-4-30', 0, '2018-5-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/42219-1.jpg"),
("Assassin's Creed Revelations - Gold Edition", 3, '2011-11-15', 23.99, '2018-7-1', '2020-2-7', '2020-5-1', "https://cdn.thegamesdb.net/images/original/boxart/front/3595-1.jpg"),
("Rust", 4, '2013-12-11', 15.25, '2018-7-4', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19092-1.png"),
("For Honor", 1, '2017-2-14', 0, '2018-8-26', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/39931-1.jpg"),
("Overwatch", 4, '2016-5-24', 0, '2018-10-15', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/32185-1.jpg"),
("Middle-earth: Shadow of Mordor", 1, '2014-9-30', 3.49, '2018-11-2', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18857-1.jpg"),
("Scribblenauts Unlimited", 1, '2012-11-20', 0, '2018-11-2', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/13872-1.jpg"),
("Metal Gear Solid V: Ground Zeroes", 1, '2014-12-18', 0, '2018-12-25', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/25164-1.jpg"),
("Metal Gear Solid V: The Phantom Pain", 1, '2015-9-1', 33.43, '2018-12-25', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/23507-1.jpg"),
("A Story About My Uncle", 1, '2014-5-25', 0, '2019-1-13', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/21324-1.jpg"),
("Watch_Dogs2 Gold Edition", 1, '2016-11-15', 31.99, '2019-2-8', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/86862-1.jpg"),
("ENSLAVED: Odyssey to the West", 1, '2013-11-25', 0, '2019-4-6', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18206-1.jpg"),
("PAC-MAN Championship Edition DX+", 4, '2013-9-24', 0, '2019-4-6', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18345-1.jpg"),
("Impact Winter", 1, '2017-5-22', 3.47, '2019-4-7', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/69330-1.jpg"),
("Borderlands: The Pre-Sequel", 1, '2014-10-17', 11.87, '2019-4-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/23463-1.jpg"),
("Grand Theft Auto V", 2, '2015-4-13', 66.63, '2019-5-15', '2019-5-20', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/20952-1.jpg"),
("Sleeping Dogs: Definitive Edition", 1, '2012-8-14', 6, '2019-6-29', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/10386-2.jpg"),
("Day of Defeat: Source", 4, '2005-9-26', 0.99, '2019-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/4199-2.jpg"),
("Deathmatch Classic", 4, '2001-6-1', 0.57, '2019-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18098-1.png"),
("Ricochet", 4, '2000-11-1', 0.57, '2019-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/9108-1.jpg"),
("Counter-Strike: Source", 4, '2004-11-4', 0.99, '2019-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/3372-1.jpg"),
("The Lab", 1, '2016-4-5', 0, '2019-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/66992-1.jpg"),
("Fallout New Vegas Ultimate", 3, '2010-10-19', 12.48, '2019-7-27', '2019-12-23', '2020-4-12', "https://cdn.thegamesdb.net/images/original/boxart/front/60281-1.jpg"),
("Fallout 4: Game of the Year Edition", 1, '2015-11-10', 47.47, '2019-7-27', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/29227-1.jpg"),
("DiRT Rally", 4, '2015-12-7', 0, '2019-9-14', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/33513-1.jpg"),
("LEGO Batman: The Videogame", 1, '2008-9-23', 0, '2019-9-20', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/8972-1.jpg"),
("EGO Batman 2: DC Super Heroes", 1, '2012-6-19', 0, '2019-9-20', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/10668-1.jpg"),
("LEGO Batman 3: Beyond Gotham", 1, '2014-11-11', 0, '2019-9-20', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/25080-1.jpg"),
("Destiny 2", 4, '2017-10-24', 0, '2019-10-3', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/50624-1.jpg"),
("Q.U.B.E. 2", 1, '2018-3-13', 0, '2019-10-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/53849-1.jpg"),
("Layers of Fear", 1, '2016-2-15', 0, '2019-10-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/50396-1.jpg"),
("Rise of the Tomb Raider: 20 Year Celebration", 3, '2016-1-28', 28.5, '2019-12-26', '2020-9-20', '2020-12-26', "https://cdn.thegamesdb.net/images/original/boxart/front/34835-1.jpg"),
("The Elder Scrolls IV: Oblivion - Game of the Year Edition Deluxe", 1, '2006-3-20', 10.67, '2019-12-31', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/60283-1.jpg"),
("Metro 2033 Redux", 3, '2014-8-25', 9.36, '2020-1-25', '2020-12-23', '2021-1-12', "https://cdn.thegamesdb.net/images/original/boxart/front/27774-1.jpg"),
("Metro Last Light Redux", 1, '2014-8-25', 9.36, '2020-1-25', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/27777-1.jpg"),
("South Park: The Stick of Truth", 1, '2014-3-4', 8.09, '2020-2-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19779-1.jpg"),
("South Park The Fractured But Whole", 1, '2017-10-17', 13.5, '2020-2-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/51672-1.jpg"),
("Assassins Creed Syndicate", 1, '2015-10-23', 0, '2020-2-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/30645-1.jpg"),
("Black Desert Online", 4, '2014-12-12', 0, '2020-2-29', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/35464-1.jpg"),
("The Stanley Parable", 1, '2013-10-17', 0, '2020-3-20', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18045-1.jpg"),
("World War Z", 4, '2019-4-16', 0, '2020-3-26', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/67829-1.jpg"),
("Uncharted: The Nathan Drake Collection", 1, '2015-10-7', 0, '2020-4-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/31758-1.jpg"),
("Journey", 1, '2015-7-21', 0, '2020-4-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/53113-1.jpg"),
("Just Cause 4", 1, '2018-12-4', 0, '2020-4-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/61061-1.jpg"),
("Alien: Isolation Collection", 1, '2014-10-7', 31.73, '2020-4-26', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19563-1.jpg"),
("Total War: Shogun 2", 1, '2011-3-15', 0, '2020-4-27', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/918-2.jpg"),
("Amnesia: The Dark Descent", 1, '2010-9-8', 0, '2020-4-30', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/2547-1.jpg"),
("Resident Evil HD Remaster", 2, '2015-1-20', 0, '2020-5-6', '2021-2-10', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/24957-1.jpg"),
("Resident Evil 0: HD Remaster", 1, '2016-1-19', 32.75, '2020-5-6', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/32264-1.jpg"),
("Sid Meier's Civilization VI", 1, '2016-10-21', 0, '2020-5-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/36612-1.jpg"),
("FINAL FANTASY XIV Online", 4, '2017-6-20', 0, '2020-5-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/56035-1.jpg"),
("The Evil Within", 1, '2014-10-21', 15.1, '2020-5-29', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18859-1.jpg"),
("Hellblade: Senua's Sacrifice", 1, '2017-8-8', 14.4, '2020-6-3', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/48347-1.jpg"),
("Mirror's Edge", 1, '2009-1-13', 0, '2020-6-5', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/7635-1.jpg"),
("Overcooked", 4, '2016-8-3', 0, '2020-6-7', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/38546-1.jpg"),
("ARK: Survival Evolved", 4, '2015-6-2', 0, '2020-6-11', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/28903-1.jpg"),
("SAMURAI SHODOWN NEOGEO COLLECTION", 4, '2020-6-11', 0, '2020-6-11', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/73497-1.jpg"),
("Injustice: Gods Among Us Ultimate Edition", 1, '2013-11-12', 0, '2020-6-19', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19101-1.png"),
("Eye of the Beholder", 1, '1991-1-1', 0, '2020-6-19', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/20984-1.png"),
("Eye of the Beholder II: The Legend of Darkmoon", 1, '1991-1-1', 0, '2020-6-19', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/20993-1.png"),
("Eye of the Beholder III: Assault on Myth Drannor", 1, '1993-1-1', 0, '2020-6-19', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/20994-1.png"),
("Pathway", 1, '2019-4-11', 0, '2020-6-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/64303-1.jpg"),
("AER Memories of Old", 1, '2017-10-25', 0, '2020-6-26', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/60255-1.jpg"),
("Stranger Things 3: The Game", 1, '2019-7-4', 0, '2020-6-26', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/62541-1.jpg"),
("Hue", 1, '2016-8-30', 0, '2020-7-2', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/54560-1.jpg"),
("Killing Floor 2", 4, '2015-4-21', 0, '2020-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/27439-1.jpg"),
("Lifeless Planet: Premier Edition", 1, '2014-6-6', 0, '2020-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/78180-1.jpg"),
("The Escapists 2", 4, '2017-8-21', 0, '2020-7-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/61326-1.jpg"),
("Torchlight II", 4, '2012-9-20', 0, '2020-7-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/11499-1.jpg"),
("Tacoma", 1, '2017-8-1', 0, '2020-7-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/48254-1.jpg"),
("Next Up Hero", 1, '2018-1-11', 0, '2020-7-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/74984-1.jpg"),
("Superbrothers: Sword & Sworcery EP", 1, '2012-4-16', 0, '2020-8-3', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/9664-1.jpg"),
("Barony", 1, '2015-5-20', 0, '2020-8-3', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/75305-1.jpg"),
("20XX", 1, '2014-11-25', 0, '2020-8-3', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/34782-1.jpg"),
("F1 2018", 1, '2018-8-24', 0, '2020-8-8', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/70501-1.jpg"),
("Fall Guys: Ultimate Knockout", 4, '2020-8-4', 37, '2020-8-13', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/76338-1.jpg"),
("Remnant: From the Ashes", 1, '2019-8-20', 0, '2020-8-18', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/65895-1.jpg"),
("The Alto Collection", 1, '2020-8-13', 0, '2020-8-18', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/75786-1.jpg"),
("God's Trigger", 1, '2019-4-18', 0, '2020-8-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/69761-1.jpg"),
("Enter The Gungeon", 4, '2016-4-5', 0, '2020-8-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/37145-1.jpg"),
("Serious Sam: The First Encounter", 1, '2001-3-23', 0, '2020-8-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/5532-1.jpg"),
("HITMAN", 1, '2016-3-11', 0, '2020-8-27', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/44303-1.jpg"),
("Shadowrun Collection", 1, '2015-1-1', 0, '2020-8-27', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/87286-1.jpg"),
("Far Cry 3", 1, '2012-12-4', 0, '2020-9-1', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/4419-2.jpg"),
("Tom Clancy's The Division", 1, '2016-3-8', 0, '2020-9-1', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18902-1.jpg"),
("Into The Breach", 1, '2018-2-27', 0, '2020-9-5', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/53585-1.jpg"),
("Football Manager 2020", 1, '2019-11-19', 0, '2020-9-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/68765-1.jpg"),
("Rocket League", 4, '2015-7-7', 0, '2020-9-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/29478-1.jpg"),
("ABZU", 1, '2016-8-2', 0, '2020-10-13', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/37529-1.jpg"),
("Bayonetta", 1, '2017-4-11', 12.48, '2020-10-16', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/44157-1.jpg"),
("Amnesia: A Machine for Pigs", 1, '2013-9-10', 0, '2020-10-16', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/17640-1.jpg"),
("Layers of Fear 2", 1, '2019-5-28', 0, '2020-10-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/64890-1.jpg"),
("Dungeons 3", 4, '2017-10-13', 0, '2020-11-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/55083-1.jpg"),
("Battlefield 3", 4, '2011-10-25', 0, '2020-12-2', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/2599-1.jpg"),
("Cyberpunk 2077", 1, '2020-12-10', 147.1, '2020-12-9', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/14517-1.jpg"),
("Cities: Skylines", 1, '2015-3-10', 0, '2020-12-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/25473-1.jpg"),
("Prison Architect", 1, '2012-9-25', 0, '2020-12-17', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/17162-1.jpg"),
("The Long Dark", 1, '2017-8-1', 0, '2020-12-19', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/23617-1.jpg"),
("Brigador: Up-Armored Deluxe", 1, '2016-6-2', 0, '2020-12-22', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/50152-1.jpg"),
("Tropico 5", 4, '2014-5-23', 0, '2020-12-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19998-1.jpg"),
("Inside", 1, '2016-6-29', 0, '2020-12-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/38031-1.jpg"),
("Darkest Dungeon", 1, '2016-1-19', 0, '2020-12-25', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/25806-1.jpg"),
("Grand Theft Auto IV: The Complete Edition", 1, '2020-3-25', 20.09, '2020-12-31', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/88462-1.jpg"),
("STAR WARS Battlefront II", 4, '2017-11-17', 0, '2021-1-14', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/54115-1.jpg"),
("Resident Evil Revelations", 1, '2013-5-21', 32.79, '2021-2-15', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/15186-1.jpg"),
("Shadow of the Tomb Raider", 1, '2018-9-14', 39.57, '2021-2-15', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/53994-1.jpg"),
("Assassin's Creed Chronicles: China", 1, '2015-4-22', 0, '2021-2-16', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/27437-1.jpg"),
("Rage 2", 1, '2019-5-13', 0, '2021-2-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/61224-1.jpg"),
("The Fall", 1, '2014-5-30', 0, '2021-3-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/21303-1.jpg"),
("Assassin's Creed", 3, '2008-4-9', 17.99, '2021-3-24', '2021-3-24', '2021-5-9', "https://cdn.thegamesdb.net/images/original/boxart/front/12-1.jpg"),
("Subnautica", 1, '2018-12-4', 0, '2021-3-29', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/62243-1.jpg"),
("The Witness", 1, '2016-1-26', 0, '2021-3-29', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/17111-1.jpg"),
("ASTRO BOT Rescue Mission", 1, '2018-10-2', 0, '2021-3-29', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/61209-1.jpg"),
("Resident Evil 5 Gold Edition", 1, '2009-9-15', 24.59, '2021-4-18', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/57-2.jpg"),
("Horizon Zero Dawn: Complete Edition", 1, '2017-12-5', 0, '2021-4-20', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/51667-1.jpg"),
("Deponia: The Complete Journey", 1, '2014-7-8', 0, '2021-4-20', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/22649-1.jpg"),
("Ken Follett's The Pillars of the Earth", 1, '2017-8-15', 0, '2021-4-20', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/61920-1.jpg"),
("Little Nightmares", 1, '2017-4-28', 0, '2021-5-28', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/51981-1.jpg"),
("Among Us", 4, '2018-8-18', 0, '2021-5-28', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/77267-1.jpg"),
("Battlefield 4", 4, '2013-10-29', 0, '2021-6-2', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/16691-1.jpg"),
("Frostpunk", 1, '2018-4-24', 0, '2021-6-3', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/54996-1.jpg"),
("Control", 1, '2019-8-27', 0, '2021-6-10', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/64817-1.jpg"),
("Genshin Impact", 4, '2020-9-28', 0, '2021-6-10', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/78243-1.jpg"),
("Sonic Mania", 1, '2017-8-29', 0, '2021-6-24', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/46074-1.jpg"),
("BioShock 2", 1, '2010-2-9', 29.99, '2021-7-8', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/649-2.jpg"),
("BioShock Infinite", 1, '2013-3-26', 0, '2021-7-8', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/936-1.jpg"),
("Battlefield 1", 4, '2016-10-21', 0, '2021-7-23', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/36615-1.jpg"),
("Battlefield V", 4, '2018-11-20', 0, '2021-8-2', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/55756-1.jpg");

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