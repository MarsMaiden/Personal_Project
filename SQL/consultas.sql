USE db_mars;

SELECT * FROM db_mars.game 
INNER JOIN status ON game.status = status.status_id
WHERE game_id = 1 ORDER BY game.cod;

SELECT game.title, videogame_platform.descr FROM db_mars.game_platform
INNER JOIN game ON game_platform.game_id = game.game_id
INNER JOIN videogame_platform ON game_platform.videogame_platform_id = videogame_platform.videogame_platform_id
WHERE game.game_id = 2;


SELECT game.game_id,game.cod, game.title, status.descr, game.cover FROM db_mars.game
INNER JOIN status ON game.status = status.status_id ORDER BY game.cod;

SELECT * FROM db_mars.status;

SELECT db_mars.game.cod FROM db_mars.game WHERE db_mars.game.cod = "G-0001";

SELECT db_mars.game.game_id FROM db_mars.game WHERE db_mars.game.cod = "G-0001";

SELECT @game_id_update:=db_mars.game.game_id FROM db_mars.game WHERE db_mars.game.cod = "G-0001";
UPDATE db_mars.game SET db_mars.game.title = "Change 2" WHERE db_mars.game.game_id = @game_id_update;

SELECT db_mars.game.title FROM db_mars.game WHERE db_mars.game.cod = "G-0001";

