package com.wang.controller.filmController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.film;
import com.wang.service.serviceimpl.filmserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class getallfilmAction implements Action {
    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();

    @Override
    public String execute() throws Exception {


        return "success7";
    }
}
