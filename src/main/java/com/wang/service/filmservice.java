package com.wang.service;

import com.wang.bean.film;

import java.util.Date;
import java.util.List;

public interface filmservice {

    public List<?> getfilms();


    public String setfilm(String name, String author, String introduction,
                          String area, String address, String time, int typeid);

    public String delfilm(String name);

    public String updatefilm(String name, String author, String introduction,
                             String area, String address,String time,int typeid) ;

    public film getfilm(String name);

    //获取单个类型
    public String gettype(int typeid);

    public int gettype(String typename);

}
