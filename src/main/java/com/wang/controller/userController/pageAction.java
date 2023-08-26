package com.wang.controller.userController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.film;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.swing.*;
import java.util.List;

public class pageAction implements Action {

    Integer size;

    List<film> films;

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public List<film> getFilms() {
        return films;
    }

    public void setFilms(List<film> films) {
        this.films = films;
    }

    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();

    @Override
    public String execute() throws Exception {

        httpServletRequest.setAttribute("films",films);
        httpServletRequest.setAttribute("size",size);
        return "good";
    }
}
