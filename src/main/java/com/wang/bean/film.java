package com.wang.bean;

import org.springframework.stereotype.Component;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.Date;


@Component
public class film {

    private Integer filmid;

    private String name;

    private String author;

    private String introduction;

    private String address;


    private String time;

    private String area;

    private int typeid;

    public int getTypeid() {
        return typeid;
    }


    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public film(){}

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public Integer getFilmid() {
        return filmid;
    }

    public void setFilmid(Integer filmid) {
        this.filmid = filmid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    @Override
    public String toString() {
        return "film{" +
                "filmid=" + filmid +
                ", name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", introduction='" + introduction + '\'' +
                ", address='" + address + '\'' +
                ", time=" + time +
                ", area='" + area + '\'' +
                ", typeid=" + typeid +
                '}';
    }
}
