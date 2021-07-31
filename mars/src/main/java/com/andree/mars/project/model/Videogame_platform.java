package com.andree.mars.project.model;

public class Videogame_platform {
    private int videogame_platform_id;
    private String descr;

    public Videogame_platform(int videogame_platform_id, String descr) {
        this.videogame_platform_id = videogame_platform_id;
        this.descr = descr;
    }

    public Videogame_platform() {
    }

    public int getVideogame_platform_id() {
        return this.videogame_platform_id;
    }

    public void setVideogame_platform_id(int videogame_platform_id) {
        this.videogame_platform_id = videogame_platform_id;
    }

    public String getDescr() {
        return this.descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

}
