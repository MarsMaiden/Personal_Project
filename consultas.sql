USE db_mars;

SELECT game.cod, game.title, status.descr, game.cover FROM db_mars.game
INNER JOIN status ON game.status = status.status_id ORDER BY game.cod;