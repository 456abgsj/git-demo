package com.wang.controller.userController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.film;
import com.wang.service.serviceimpl.adminserviceimpl;
import com.wang.service.serviceimpl.filmserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.jms.Session;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.spi.http.HttpContext;
import java.util.ArrayList;
import java.util.List;

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

    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();
    private String message="input";


ServletContext context=httpServletRequest.getServletContext();
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

           filmserviceimpl films=new filmserviceimpl();
           List<film> filmList= (List<film>) films.getfilms();
           int size=filmList.size();
           httpServletRequest.setAttribute("size",size);
           httpServletRequest.setAttribute("filmlist",filmList);
            return message;
        }
    }
