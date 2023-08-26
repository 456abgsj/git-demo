package com.wang.controller.filmController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.film;
import com.wang.bean.news;
import com.wang.service.serviceimpl.filmserviceimpl;
import com.wang.service.serviceimpl.newsserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class getfilmAction implements Action {

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();
    @Override
    public String execute() throws Exception {
        System.out.println(name);
        filmserviceimpl films=new filmserviceimpl();
        film film1=films.getfilm(name);
        String typename=films.gettype(film1.getTypeid());
        httpServletRequest.setAttribute("name",film1.getName());
       httpServletRequest.setAttribute("address",film1.getAddress());
       httpServletRequest.setAttribute("area",film1.getArea());
       httpServletRequest.setAttribute("author",film1.getAuthor());
       httpServletRequest.setAttribute("introduction",film1.getIntroduction());
       httpServletRequest.setAttribute("time",film1.getTime());
       httpServletRequest.setAttribute("typename",typename);
        return "success2";
    }

}
