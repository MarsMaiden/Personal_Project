package com.andree.mars.project.model;

import java.sql.Date;

public class Book {
    private int book_id;
    private String cod;
    private String title;
    private Status status;
    private Date release_date;
    private Book_genre book_genre;
    private int pages;
    private Date start_date;
    private Date finish_date;
    private String cover;

    public Book(int book_id, String cod, String title, Status status, Date release_date, Book_genre book_genre,
            int pages, Date start_date, Date finish_date, String cover) {
        this.book_id = book_id;
        this.cod = cod;
        this.title = title;
        this.status = status;
        this.release_date = release_date;
        this.book_genre = book_genre;
        this.pages = pages;
        this.start_date = start_date;
        this.finish_date = finish_date;
        this.cover = cover;
    }

    public Book() {
    }

    public int getBook_id() {
        return this.book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
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

    public Book_genre getBook_genre() {
        return this.book_genre;
    }

    public void setBook_genre(Book_genre book_genre) {
        this.book_genre = book_genre;
    }

    public int getPages() {
        return this.pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
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
