package com.wang.controller.typeController;

import com.opensymphony.xwork2.Action;
import com.wang.bean.type;
import com.wang.service.serviceimpl.typeserviceimpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class getalltypeController implements Action {


    HttpServletRequest httpServletRequest= ServletActionContext.getRequest();
    @Override
    public String execute() throws Exception {
        typeserviceimpl typeimpl=new typeserviceimpl();
        List<type> typeList= (List<type>) typeimpl.gettypes();


        String []type=new String[typeList.size()];
        for (int i = 0; i <typeList.size(); i++) {
            type[i]=typeList.get(i).getTypename();
        }

        httpServletRequest.setAttribute("typename",type);
        return "success";
    }
}
