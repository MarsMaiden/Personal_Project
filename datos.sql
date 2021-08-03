USE db_mars;

--SELECT 
--CONCAT('TRUNCATE TABLE ',TABLE_NAME,';') AS truncateCommand
--FROM information_schema.TABLES 
--WHERE TABLE_SCHEMA = 'db_mars';

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE book;
TRUNCATE TABLE book_genre;
TRUNCATE TABLE game;
TRUNCATE TABLE game_genre;
TRUNCATE TABLE game_platform;
TRUNCATE TABLE status;
TRUNCATE TABLE videogame_genre;
TRUNCATE TABLE videogame_platform;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO videogame_genre (descr) VALUES ("RPG"),
    ("Adventure"), ("Shooter"), ("Simulator"), ("Indie");

INSERT INTO videogame_platform (descr) VALUES ("Steam"),
    ("GOG"), ("Epic"), ("PlayStation"), ("Origin"), ("Ubisoft"), ("Battle.net");

INSERT INTO book_genre (descr) VALUES ("Light Novel"),
    ("Fantasy"), ("Biography"), ("Science"), ("Auto ayuda");

INSERT INTO status (descr) VALUES ("Not Started"), ("In-Progress"),
    ("Finished"), ("Online");

INSERT INTO game (title, status, release_date, price, purchase_date, start_date, finish_date, cover) VALUES
    ("Garry's Mod", 4, '2006-11-29', 8.32, '2016-01-02 13:08', '2016-01-02','2016-01-02', "https://cdn.thegamesdb.net/images/original/boxart/front/8506-1.jpg"),
    ("Assassin's Creed Unity", 2, '2014-10-28', 44.45, '2016-04-30 16:56', '2016-04-30', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19850-1.jpg"),
    ("Batman: Arkham City", 3, '2011-11-25', 7.87, '2016-05-21 18:49', '2016-05-21', '2019-05-21', "https://cdn.thegamesdb.net/images/original/boxart/front/931-1.jpg"),
    ("Resident Evil 6 Complete", 2, '2013-03-23', 26.23, '2016-06-15 23:21', '2016-06-15', NULL, "https://www.mobygames.com/images/covers/l/321135-resident-evil-6-playstation-3-front-cover.jpg"),
    ("Limbo", 1, '2011-08-02', 0, '2016-06-21', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/5950-2.jpg"),
    ("Batman Arkham Asylum GOTY", 3, '2009-09-15', 9.67, '2016-08-17 19:44', '2016-08-17', '2019-08-17',"https://cdn.thegamesdb.net/images/original/boxart/front/190-1.jpg"),
    ("Resident Evil 4 Ultimate HD Edition", 3, '2014-02-27', 21.10, '2016-08-03 19:44', '2016-08-03', '2019-07-18', "https://cdn.thegamesdb.net/images/original/boxart/front/19786-1.jpg"),
    ("Saints Row IV National Treasure Edition", 2, '2014-07-08', 20.10, '2016-09-02 19:30', '2016-09-02', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/75681-1.jpg"),
    ("Batman: Arkham Knight Premium Edition", 2, '2015-06-23', 37.98, '2016-10-14 23:55', '2018-10-14', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/21456-1.jpg"),
    ("Left 4 Dead", 4, '2008-11-17', 9.36, '2016-10-31 13:34', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/22-1.jpg"),
    ("Left 4 Dead 2", 4, '2009-11-16', 7.49, '2016-10-31 13:34', '2016-10-31', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/855-1.jpg"),
    ("Assassin's Creed II: Deluxe Edition", 3, '2009-11-17', 28.97, '2016-11-16 13:39', '2016-11-16', '2020-04-15', "https://cdn.thegamesdb.net/images/original/boxart/front/318-2.jpg"),
    ("Dead Space", 3, '2008-10-14', 0.0, '2016-11-13 11:58', '2016-11-13', '2021-04-23', "https://cdn.thegamesdb.net/images/original/boxart/front/14-2.jpg"),
    ("The Witcher 2: Assassins of Kings Enhanced Edition", 3, '2011-05-17', 0.0, '2016-11-13', '2017-10-01', '2017-11-20', "https://cdn.thegamesdb.net/images/original/boxart/front/61268-1.jpg"),
    ("Grand Theft Auto: San Andreas", 3, '2005-06-07', 13.98, '2016-11-28 20:46', '2016-11-28', '2021-04-04', "https://cdn.thegamesdb.net/images/original/boxart/front/790-1.jpg"),
    ("The Witcher: Enhanced Edition", 3, '2008-09-16', 4.19, '2016-11-28 21:08', '2016-11-28', '2017-09-30', "https://cdn.thegamesdb.net/images/original/boxart/front/55048-1.jpg"),
    ("Batman Arkham Origins", 2, '2013-10-25', 38.08, '2016-11-29 05:33', '2017-02-13', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/17645-1.jpg"),
    ("Dark Souls Prepare To Die Edition", 2, '2012-08-24', 16.57, '2016-12-20 21:15', '2016-12-20', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/10272-1.jpg"),
    ("Team Fortress Classic", 4, '1999-06-30', 1.79, '2016-12-22 23:37', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/11038-1.jpg"),
    ("Opposing Force", 1, '1999-11-01', 1.79, '2016-12-22 23:37', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/6459-1.jpg"),
    ("Half-Life", 2, '1998-11-19', 3.35, '2016-12-22 23:37', '2016-12-22', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/647-1.jpg"),
    ("Half-Life: Blue Shift", 1, '2001-06-12', 1.79, '2016-12-22 23:37', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/6458-1.jpg"),
    ("Half-Life 2", 1, '2004-11-16', 3.35, '2016-12-22 23:37', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/11038-1.jpg"),
    ("Half-Life 1: Source", 4, '2004-06-01', 3.35, '2016-12-22 23:37', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/18172-1.jpg"),
    ("Half-Life 2: Episode One", 1, '2006-06-01', 2.75, '2016-12-22 23:37', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/1547-1.jpg"),
    ("Half-Life 2: Episode Two", 1, '2007-10-10', 2.75, '2016-12-22 23:37', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/1548-1.jpg"),
    ("Resident Evil Revelations 2 - Episode One: Penal Colony", 1, '2015-02-25', 2.55, '2016-12-25 17:33', NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/71750-1.jpg"),
    ("Bioshock", 3, '2007-08-21', 21.23, '2017-02-13 00:39', '2017-10-13', '2017-12-27', "https://cdn.thegamesdb.net/images/original/boxart/front/13-1.jpg");


    
INSERT INTO game_genre VALUES (1,4), (1,5), (2,2), (3,2), (4,2), (4,3);