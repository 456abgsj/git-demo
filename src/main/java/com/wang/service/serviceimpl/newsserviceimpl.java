package com.wang.service.serviceimpl;

import com.wang.bean.news;
import com.wang.dao.crud;
import com.wang.service.newsservice;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


public class newsserviceimpl implements newsservice {

    ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext_dao.xml");
    crud crud= context.getBean(crud.class);
    @Override
    public void addnews(String title,String author,String message,String url) {
        crud.addnews(title,author,message,url);
    }

    @Override
    public void deletenews(String title) {
      crud.deletenews(title);
    }

    @Override
    public void changenews(String title,String author,String detail,String url) {
     crud.change(title,author,detail,url);
    }

    @Override
    public List<news> selectnews(String title) {
     return crud.selectnews(title);
    }

    @Override
    public List<news> getallnews() {
        return crud.getallnews();
    }
}
