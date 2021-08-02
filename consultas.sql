USE db_mars;

SELECT game.title, status.descr FROM db_mars.game
    INNER JOIN status ON game.status = status.status_id;