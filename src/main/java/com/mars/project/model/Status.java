package com.mars.project.model;

public class Status {
    private int status_id;
    private String descr;

    public Status(int status_id, String descr) {
        this.status_id = status_id;
        this.descr = descr;
    }

    public Status() {
        super();
    }

    public int getStatus_id() {
        return this.status_id;
    }

    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }

    public String getDescr() {
        return this.descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

}