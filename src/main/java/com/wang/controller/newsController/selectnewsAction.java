package com.wang.controller.newsController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.news;
import com.wang.service.serviceimpl.newsserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class selectnewsAction implements Action {

   private String newsname;

    public String getNewsname() {
        return newsname;
    }

    public void setNewsname(String newsname) {
        this.newsname = newsname;
    }
    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();
    @Override
    public String execute() throws Exception {
        System.out.println(newsname);
        newsserviceimpl news=new newsserviceimpl();
       List<com.wang.bean.news> newsList= news.selectnews(newsname);
       httpServletRequest.setAttribute("title",newsList.get(0).getTitle());
       httpServletRequest.setAttribute("author",newsList.get(0).getAuthor());
        httpServletRequest.setAttribute("message",newsList.get(0).getMessage());
        httpServletRequest.setAttribute("url",newsList.get(0).getUrl());
        return "SUCCESS";
    }
}
