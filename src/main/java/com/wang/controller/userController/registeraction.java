package com.wang.controller.userController;

import com.opensymphony.xwork2.Action;
import com.wang.service.serviceimpl.adminserviceimpl;

import javax.swing.*;

public class registeraction implements Action {

    String username;
    String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @Override
    public String execute() throws Exception {
         adminserviceimpl a=new adminserviceimpl();
         a.register(username,password);
         return "success1";
    }
}
