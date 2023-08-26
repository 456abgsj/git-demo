package com.wang.service.serviceimpl;

import com.wang.dao.crud;
import com.wang.service.typeservice;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class typeserviceimpl implements typeservice {


    ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext_dao.xml");
    com.wang.dao.crud crud= applicationContext.getBean(crud.class);

    @Override
    public List<?> gettypes() {
     return crud.gettypes();
    }

    @Override
    public String addtype(String typename) {
        return crud.settype(typename);
    }

    @Override
    public String updatetype(int typeid, String typename) {
        return crud.updatetype(typeid,typename);
    }

    @Override
    public String deltype(int typeid) {
        return crud.deltype(typeid);
    }


}
