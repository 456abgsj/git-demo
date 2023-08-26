package com.wang.controller.newsController;

import com.opensymphony.xwork2.ActionSupport;


import org.apache.struts2.ServletActionContext;
import org.json.JSONObject;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;

public class testAction extends ActionSupport {



    MultipartFile pimage;


    String saveFileName="";

    private String data;

    String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public MultipartFile getPimage() {
        return pimage;
    }

    public void setPimage(MultipartFile pimage) {
        this.pimage = pimage;
    }

    HttpServletRequest request= ServletActionContext.getRequest();

    public String jsonTest() {
        System.out.println(name);

        return SUCCESS;
    }
}
