package com.wang.controller.newsController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.news;
import com.wang.service.serviceimpl.newsserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class getallnewsAction implements Action {

    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();

    @Override
    public String execute() throws Exception {


        newsserviceimpl news=new newsserviceimpl();
        List<news> newsList=news.getallnews();
        httpServletRequest.setAttribute("newslist",newsList);
        return "";
    }
}
