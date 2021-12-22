USE db_mars;

SELECT * FROM db_mars.game 
INNER JOIN status ON game.status = status.status_id
WHERE game_id = 1 ORDER BY game.cod;

SELECT game.title, platform.descr FROM db_mars.game_platform
INNER JOIN game ON game_platform.game_id = game.game_id
INNER JOIN platform ON game_platform.platform_id = platform.platform_id
WHERE game.game_id = 2;


SELECT game.game_id,game.cod, game.title, status.descr, game.cover FROM db_mars.game
INNER JOIN status ON game.status = status.status_id ORDER BY game.cod;

SELECT * FROM db_mars.status;

SELECT db_mars.game.cod FROM db_mars.game WHERE db_mars.game.cod = "G-0001";

SELECT db_mars.game.game_id FROM db_mars.game WHERE db_mars.game.cod = "G-0001";

SELECT @game_id_update:=db_mars.game.game_id FROM db_mars.game WHERE db_mars.game.cod = "G-0001";
UPDATE db_mars.game SET db_mars.game.title = "Change 2" WHERE db_mars.game.game_id = @game_id_update;

SELECT db_mars.game.title FROM db_mars.game WHERE db_mars.game.cod = "G-0001";

SELECT game.cod FROM db_mars.game
WHERE game.game_id = 1;

SELECT game.cod, game.title, game.price, status.descr,
DATE_FORMAT(game.release_date,'%d/%m/%Y') AS release_date,
DATE_FORMAT(game.purchase_date,'%d/%m/%Y') AS purchase_date,
DATE_FORMAT(game.start_date,'%d/%m/%Y') AS start_date,
DATE_FORMAT(game.finish_date,'%d/%m/%Y') AS finish_date,
game.cover FROM db_mars.game 
INNER JOIN status ON game.status = status.status_id
WHERE game_id = 1;

COUNT(cod) as CANTIDAD

SELECT YEAR(release_date), STATUS.descr, count(cod),
SUM(IF(STATUS.descr="Finished",price, 0)) AS SUMA
FROM db_mars.game
INNER JOIN status ON game.status = status.status_id
GROUP BY status
ORDER BY YEAR(release_date), STATUS.descr ASC;

