package com.wang.service;

import java.util.List;

public interface typeservice {

    //获取所有的类型
    public List<?> gettypes();

    //添加类型
    public String addtype(String typename);

    //更新类型
    public String updatetype(int typeid,String typename);

    //删除类型
    public String deltype(int typeid);


}
