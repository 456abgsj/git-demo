package com.wang.controller.newsController;

import com.opensymphony.xwork2.Action;
import com.wang.service.serviceimpl.newsserviceimpl;

public class deletenews implements Action {

    private String newstitle;

    public deletenews(){}

    public String getNewstitle() {
        return newstitle;
    }

    public void setNewstitle(String newstitle) {
        this.newstitle = newstitle;
    }

    @Override
    public String execute() throws Exception {

        newsserviceimpl newsimpl=new newsserviceimpl();
        newsimpl.deletenews(newstitle);
        return "";
    }
}
