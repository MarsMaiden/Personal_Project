package com.mars.project.model;

public class Book_Genre {
    private int book_genre_id;
    private String descr;

    public Book_Genre(int book_genre_id, String descr) {
        this.book_genre_id = book_genre_id;
        this.descr = descr;
    }

    public Book_Genre() {
    }

    public int getBook_genre_id() {
        return this.book_genre_id;
    }

    public void setBook_genre_id(int book_genre_id) {
        this.book_genre_id = book_genre_id;
    }

    public String getDescr() {
        return this.descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

}
