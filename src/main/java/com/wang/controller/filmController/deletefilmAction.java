package com.wang.controller.filmController;

import com.opensymphony.xwork2.Action;
import com.wang.service.serviceimpl.filmserviceimpl;
import com.wang.service.serviceimpl.newsserviceimpl;

public class deletefilmAction implements Action {

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public deletefilmAction(){}
    @Override
    public String execute() throws Exception {

        filmserviceimpl f=new filmserviceimpl();
        f.delfilm(name);
        return "";
    }
}
