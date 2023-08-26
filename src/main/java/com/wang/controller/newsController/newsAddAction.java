package com.wang.controller.newsController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.news;
import com.wang.service.serviceimpl.newsserviceimpl;
import org.springframework.web.multipart.MultipartFile;

public class newsAddAction implements Action {

    private String url;

    private String title;

    private String author;

    private String message;

    public newsAddAction(){}

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }


    @Override
    public String execute() throws Exception {
        newsserviceimpl newi=new newsserviceimpl();
        newi.addnews(title,author,message,url);
        return "success2";
    }
}
