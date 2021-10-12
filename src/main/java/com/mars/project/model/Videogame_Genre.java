package com.mars.project.model;

import java.util.ArrayList;
import java.util.List;

public class Videogame_Genre {
    private int videogame_genre_id;
    private String descr;
    private List<Game> games = new ArrayList<>();

    public Videogame_Genre(int videogame_genre_id, String descr, List<Game> games) {
        this.videogame_genre_id = videogame_genre_id;
        this.descr = descr;
        this.games = games;
    }

    public Videogame_Genre() {
    }

    public int getVideogame_genre_id() {
        return this.videogame_genre_id;
    }

    public void setVideogame_genre_id(int videogame_genre_id) {
        this.videogame_genre_id = videogame_genre_id;
    }

    public String getDescr() {
        return this.descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public List<Game> getGames() {
        return this.games;
    }

    public void setGames(List<Game> games) {
        this.games = games;
    }

}
