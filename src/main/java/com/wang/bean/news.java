package com.wang.bean;

import org.springframework.stereotype.Component;

import javax.persistence.criteria.CriteriaBuilder;


@Component
public class news {

    private Integer newsid;

    private String title;

    private String author;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    private String message;

    private String url;

    public news(){}


    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "news{" +
                "title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
