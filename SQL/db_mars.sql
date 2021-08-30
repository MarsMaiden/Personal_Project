DROP DATABASE IF EXISTS db_mars;

CREATE DATABASE db_mars;

USE db_mars;

DROP TABLE IF EXISTS game;
CREATE TABLE game(
    game_id INT PRIMARY KEY AUTO_INCREMENT,
    cod VARCHAR(6),
    title VARCHAR(255),
    status INT,
    release_date DATE,
    price DECIMAL(6,2),
    purchase_date DATE,
    start_date DATE,
    finish_date DATE,
    cover LONGTEXT
) ENGINE=InnoDB;

DROP TABLE IF EXISTS videogame_genre;
CREATE TABLE videogame_genre(
    videogame_genre_id INT PRIMARY KEY AUTO_INCREMENT,
    descr VARCHAR(255)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS platform;
CREATE TABLE platform(
    platform_id INT PRIMARY KEY AUTO_INCREMENT,
    descr VARCHAR(255)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS game_genre;
CREATE TABLE game_genre(
    game_id INT,
    videogame_genre_id INT,
    PRIMARY KEY (game_id, videogame_genre_id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS game_platform;
CREATE TABLE game_platform(
    game_id INT,
    platform_id INT,
    PRIMARY KEY (game_id, platform_id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS book;
CREATE TABLE book(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    cod VARCHAR(6),
    title VARCHAR(255),
    status INT,
    release_date DATE,
    genre INT,
    pages INT,
    start_date DATE,
    finish_date DATE,
    cover LONGTEXT
) ENGINE=InnoDB;

DROP TABLE IF EXISTS book_genre;
CREATE TABLE book_genre(
    book_genre_id INT PRIMARY KEY AUTO_INCREMENT,
    descr VARCHAR(255)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS status;
CREATE TABLE status(
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    descr VARCHAR(255)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS health;
CREATE TABLE health(
    health_id INT PRIMARY KEY AUTO_INCREMENT,
    input_date DATE,
    weight DECIMAL(3,1),
    cycling DECIMAL(5,2)
) ENGINE=InnoDB;

ALTER TABLE game
    ADD FOREIGN KEY (status) REFERENCES status(status_id);

ALTER TABLE book
    ADD FOREIGN KEY (status) REFERENCES status(status_id),
    ADD FOREIGN KEY (genre) REFERENCES book_genre(book_genre_id);

ALTER TABLE game_genre
    ADD FOREIGN KEY (game_id) REFERENCES game(game_id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    ADD FOREIGN KEY (videogame_genre_id) REFERENCES videogame_genre(videogame_genre_id)
    ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE game_platform
    ADD FOREIGN KEY (game_id) REFERENCES game(game_id)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    ADD FOREIGN KEY (platform_id) REFERENCES platform(platform_id)
    ON DELETE RESTRICT ON UPDATE CASCADE;

DROP TRIGGER IF EXISTS insert_game_code;
DELIMITER $$
CREATE TRIGGER insert_game_code BEFORE INSERT ON game FOR EACH ROW
    BEGIN
        SET @GAME_CODE = CONCAT('G-', LPAD((SELECT MAX(game_id) from game) + 1 , 4, '0'));
        IF @GAME_CODE IS NULL THEN
            SET NEW.COD = 'G-0001';
        ELSE
            SET NEW.COD = @GAME_CODE;
        END IF; 
    END$$
DELIMITER ;

DROP TRIGGER IF EXISTS insert_book_code;
DELIMITER $$
CREATE TRIGGER insert_book_code BEFORE INSERT ON book FOR EACH ROW
    BEGIN
        SET @BOOK_CODE = CONCAT('B-', LPAD((SELECT MAX(book_id) from book) + 1 , 4, '0'));
        IF @BOOK_CODE IS NULL THEN
            SET NEW.COD = 'B-0001';
        ELSE
            SET NEW.COD = @BOOK_CODE;
        END IF; 
    END$$
DELIMITER ;

DROP TRIGGER IF EXISTS update_game_finished;
DELIMITER $$
CREATE TRIGGER update_game_finished BEFORE UPDATE ON game FOR EACH ROW
    BEGIN
		SET @DATE = CURDATE();
        IF NEW.status <> OLD.status THEN
            SET NEW.finish_date = @DATE;
        END IF;
    END$$
DELIMITER ;