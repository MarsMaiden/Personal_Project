package com.mars.project.model;

import java.util.ArrayList;
import java.util.List;

public class Platform {
    private int platform_id;
    private String descr;
    private List<Game> games = new ArrayList<>();

    public Platform(int platform_id, String descr, List<Game> games) {
        this.platform_id = platform_id;
        this.descr = descr;
        this.games = games;
    }

    public Platform() {
    }

    public int getPlatform_id() {
        return this.platform_id;
    }

    public void setPlatform_id(int platform_id) {
        this.platform_id = platform_id;
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
