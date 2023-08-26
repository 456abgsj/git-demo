package com.wang.controller;

import com.opensymphony.xwork2.Action;
import com.wang.service.serviceimpl.adminserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class LoginAction implements Action {
    private String username;
    private String password;
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

    private String message="input";
    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();


    @Override
    public String execute() throws Exception {

            adminserviceimpl a=new adminserviceimpl();
            int i= a.login(username,password);
            httpServletRequest.setAttribute("i",i);

            if (i==1) {
                message = "success";   // 登陆成功
            }
            else{
                httpServletRequest.setAttribute("message",i);
            }

            return message;
        }
    }
