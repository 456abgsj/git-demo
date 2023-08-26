package com.wang.bean;


import org.springframework.stereotype.Component;

@Component
public class type {

    private int typeid;
    private String typename;

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    @Override
    public String toString() {
        return "type{" +
                "typeid=" + typeid +
                ", typename='" + typename + '\'' +
                '}';
    }
}
