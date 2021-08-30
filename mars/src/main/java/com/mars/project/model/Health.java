package com.mars.project.model;

import java.sql.Date;

public class Health {
    private int health_id;
    private Date input_date;
    private double weight;
    private double cycling;

    public Health(int health_id, Date input_date, double weight, double cycling) {
        this.health_id = health_id;
        this.input_date = input_date;
        this.weight = weight;
        this.cycling = cycling;
    }

    public Health() {
    }

    public int getHealth_id() {
        return this.health_id;
    }

    public void setHealth_id(int health_id) {
        this.health_id = health_id;
    }

    public Date getInput_date() {
        return this.input_date;
    }

    public void setInput_date(Date input_date) {
        this.input_date = input_date;
    }

    public double getWeight() {
        return this.weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getCycling() {
        return this.cycling;
    }

    public void setCycling(double cycling) {
        this.cycling = cycling;
    }

}