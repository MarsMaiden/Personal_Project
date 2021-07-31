package com.andree.mars.project.model;

public class Game_genre {
    private Game game;
    private Videogame_genre videogame_genre;

    public Game_genre(Game game, Videogame_genre videogame_genre) {
        this.game = game;
        this.videogame_genre = videogame_genre;
    }

    public Game_genre() {
    }

    public Game getGame() {
        return this.game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public Videogame_genre getVideogame_genre() {
        return this.videogame_genre;
    }

    public void setVideogame_genre(Videogame_genre videogame_genre) {
        this.videogame_genre = videogame_genre;
    }

}
