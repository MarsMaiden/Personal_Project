package com.mars.project.model;

public class Game_platform {
    private Game game;
    private Videogame_platform videogame_platform;

    public Game_platform(Game game, Videogame_platform videogame_platform) {
        this.game = game;
        this.videogame_platform = videogame_platform;
    }

    public Game_platform() {
    }

    public Game getGame() {
        return this.game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public Videogame_platform getVideogame_platform() {
        return this.videogame_platform;
    }

    public void setVideogame_platform(Videogame_platform videogame_platform) {
        this.videogame_platform = videogame_platform;
    }

}
