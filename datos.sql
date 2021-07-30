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

INSERT INTO game (title, price, purchase_date, status, start_date, finish_date, cover) VALUES
    ("Garry's Mod", 8.32, '2016-01-02', 3, '2016-01-02','2016-01-02', "https://cdn.thegamesdb.net/images/original/boxart/front/8506-1.jpg"),
    ("Assassin's Creed Unity", 44.45, '2016-04-30', 2, '2016-04-30', NULL, "https://cdn.thegamesdb.net/images/original/boxart/front/19850-1.jpg"),
    ("Batman: Arkham City", 7.87, '2016-05-21', 3, '2016-05-21', '2019-05-21', "https://cdn.thegamesdb.net/images/original/boxart/front/190-1.jpg"),
    ("Resident Evil 6 Complete", 26.23, '2016-06-15', 2, '2016-06-15', NULL, "https://www.mobygames.com/images/covers/l/321135-resident-evil-6-playstation-3-front-cover.jpg");
    
INSERT INTO game_genre VALUES (1,4), (1,5), (2,2), (3,2), (4,2), (4,3);