package com.andree.mars.project.model;

import java.sql.Date;

public class Game {
    private int game_id;
    private String cod;
    private String title;
    private Status status;
    private Date release_date;
    private double price;
    private Date purchase_date;
    private Date start_date;
    private Date finish_date;
    private String cover;

    public Game(int game_id, String cod, String title, Status status, Date release_date, double price,
            Date purchase_date, Date start_date, Date finish_date, String cover) {
        this.game_id = game_id;
        this.cod = cod;
        this.title = title;
        this.status = status;
        this.release_date = release_date;
        this.price = price;
        this.purchase_date = purchase_date;
        this.start_date = start_date;
        this.finish_date = finish_date;
        this.cover = cover;
    }

    public Game() {
    }

    public int getGame_id() {
        return this.game_id;
    }

    public void setGame_id(int game_id) {
        this.game_id = game_id;
    }

    public String getCod() {
        return this.cod;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Status getStatus() {
        return this.status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Date getRelease_date() {
        return this.release_date;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public double getPrice() {
        return this.price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getPurchase_date() {
        return this.purchase_date;
    }

    public void setPurchase_date(Date purchase_date) {
        this.purchase_date = purchase_date;
    }

    public Date getStart_date() {
        return this.start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getFinish_date() {
        return this.finish_date;
    }

    public void setFinish_date(Date finish_date) {
        this.finish_date = finish_date;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

}