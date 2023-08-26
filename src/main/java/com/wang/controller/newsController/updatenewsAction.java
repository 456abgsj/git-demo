package com.wang.controller.newsController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.news;
import com.wang.service.serviceimpl.newsserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class updatenewsAction implements Action {

    private String title;

    private String author;

    private String message;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    private String url;

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

    public updatenewsAction(){}



    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();

    @Override
    public String execute() throws Exception {
        newsserviceimpl newimpl=new newsserviceimpl();
        if(getUrl().equals("dashabi")){
            newimpl.deletenews(title);
        }else{

        newimpl.changenews(title,author,message,url);}
        return "SUCCESS";
    }
}
