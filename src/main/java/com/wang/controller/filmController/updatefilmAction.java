package com.wang.controller.filmController;

import com.opensymphony.xwork2.Action;
import com.wang.service.serviceimpl.filmserviceimpl;
import com.wang.service.serviceimpl.newsserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

public class updatefilmAction implements Action {
    private int filmid;

    public int getFilmid() {
        return filmid;
    }

    public void setFilmid(int filmid) {
        this.filmid = filmid;
    }

    private String name;

    private String author;

    private String introduction;

    private String address;


    private String time;

    private String area;

    private String typename;

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public updatefilmAction(){}
    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();

    @Override
    public String execute() throws Exception {
        filmserviceimpl f=new filmserviceimpl();
        if(getAddress().equals("dashabi")){
            System.out.println(getTypename());
            System.out.println(getAddress());
            System.out.println(getArea());
            System.out.println(getIntroduction());
            System.out.println(getTime());
            System.out.println(getTypename());
            System.out.println(name);
            f.delfilm(name);
        }else {
            int typeid = f.gettype(typename);
            System.out.println(typeid);
            System.out.println(getTypename());
            System.out.println(getAddress());
            System.out.println(getArea());
            System.out.println(getIntroduction());
            System.out.println(getTime());
            f.updatefilm( name, author, introduction, area, address, time, typeid);
        }
        return "success3";
    }
}


//    public String updatefilm(int filmid, String name, String author, String introduction,
//                             String area, String address,Date time,int typeid){
