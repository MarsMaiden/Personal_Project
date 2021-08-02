USE db_mars;

SELECT 
CONCAT('TRUNCATE TABLE ',TABLE_NAME,';') AS truncateCommand
FROM information_schema.TABLES 
WHERE TABLE_SCHEMA = 'db_mars';

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
    ("GOG"), ("Epic"), ("PlayStation"), ("Origin"), ("Ubisoft");

INSERT INTO book_genre (descr) VALUES ("Light Novel"),
    ("Fantasy"), ("Biography"), ("Science"), ("Auto ayuda");

INSERT INTO status (descr) VALUES ("Not Started"), ("In-Progress"),
    ("Finished");

INSERT INTO game (title, release_date, price, purchase_date, status, start_date, finish_date, cover) VALUES
    ("Garry's Mod", '2006-11-29', 8.32, '2016-01-02', 3, '2016-01-02','2016-01-02', "https://cdn.thegamesdb.net/images/original/boxart/front/8506-1.jpg"),
    ("Assassin's Creed Unity", '2014-10-28', 44.45, '2016-04-30', 2, '2016-04-30', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19850-1.jpg"),
    ("Batman: Arkham City", '2011-11-25', 7.87, '2016-05-21', 3, '2016-05-21', '2019-05-21', "https://cdn.thegamesdb.net/images/original/boxart/front/190-1.jpg"),
    ("Resident Evil 6 Complete", '2013-03-23', 26.23, '2016-06-15', 2, '2016-06-15', NULL, "https://www.mobygames.com/images/covers/l/321135-resident-evil-6-playstation-3-front-cover.jpg"),
    ("Limbo", '2011-08-02', 0, '2016-06-21',1, NULL, NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/5950-2.jpg"),
    ("Batman Arkham Asylum GOTY", '2009-09-15', 9.67, '2016-08-17', 3, '2016-08-17', '2019-08-17',"https://cdn.thegamesdb.net/images/original/boxart/front/190-1.jpg"),
    ("Resident Evil 4 Ultimate HD Edition", '2014-02-27', 21.10, '2016-08-03', 3, '2016-08-03', '2019-07-18', "https://cdn.thegamesdb.net/images/original/boxart/front/19786-1.jpg"),
    ("Saints Row IV National Treasure Edition", '2014-07-08', 20.10, '2016-09-02', 2, '2016-09-02', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/75681-1.jpg");
    
INSERT INTO game_genre VALUES (1,4), (1,5), (2,2), (3,2), (4,2), (4,3);