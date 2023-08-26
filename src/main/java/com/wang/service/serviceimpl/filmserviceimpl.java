package com.wang.service.serviceimpl;

import com.wang.bean.film;
import com.wang.dao.crud;
import com.wang.service.filmservice;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;
import java.util.List;

public class filmserviceimpl implements filmservice {



    ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext_dao.xml");
    com.wang.dao.crud crud= applicationContext.getBean(crud.class);

    @Override
    public List<?> getfilms() {
        return crud.getfilms();
    }

    @Override
    public String setfilm(String name, String author, String introduction, String area, String address, String time, int typeid) {
        return crud.setfilm(name, author,  introduction, area, address,  time, typeid);
    }

    @Override
    public String delfilm(String name) {
        return crud.delfilm(name);
    }

    @Override
    public String updatefilm( String name, String author, String introduction, String area, String address, String time, int typeid) {
        return crud.updatefilm(name,author,introduction,area,address,time,typeid);
    }

    @Override
    public film getfilm(String name){
        return crud.getfilm(name);
    }

    @Override
    public String gettype(int typeid) {
        return crud.gettype(typeid);
    }
    @Override
    public int gettype(String typename){
        return crud.gettype(typename);
    }

}
