package com.mars.project.model;

public class Videogame_genre {
    private int videogame_genre_id;
    private String descr;

    public Videogame_genre(int videogame_genre_id, String descr) {
        this.videogame_genre_id = videogame_genre_id;
        this.descr = descr;
    }

    public Videogame_genre() {
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

}
