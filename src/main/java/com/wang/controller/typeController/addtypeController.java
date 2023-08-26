package com.wang.controller.typeController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.type;
import com.wang.service.serviceimpl.typeserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class addtypeController implements Action{

    private String typename;

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }




    @Override
    public String execute() throws Exception {
        typeserviceimpl typeimpl=new typeserviceimpl();
        typeimpl.addtype(typename);
        return "";
    }
}
