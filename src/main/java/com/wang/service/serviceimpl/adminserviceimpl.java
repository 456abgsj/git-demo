package com.wang.service.serviceimpl;

import com.wang.dao.crud;
import com.wang.service.adminservice;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Component
public class adminserviceimpl implements adminservice {

    ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext_dao.xml");
    crud crud= applicationContext.getBean(crud.class);
    @Override
    public Integer login(String username, String password) {
       return   crud.isexist(username,password);
    }

    @Override
    public void register(String username, String password) {
        int i=check(password);
        if(i==0) {
            crud.saveuser(username, password);
        }
    }

    public int check(String password){
        int a=password.length();

        if (a>=5&&a<=12){
            for (int i = 0; i <a; i++) {
                if (!Character.isDigit(password.charAt(i))){
                    if (!((password.charAt(i)>='a'&&password.charAt(i)<='z') || (password.charAt(i)>='A'&&password.charAt(i)<='Z')))
                        return 1;
                }
            }
            return 0;
        }else return 1;
    }


}
