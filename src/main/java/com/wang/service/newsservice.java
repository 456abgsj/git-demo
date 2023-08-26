package com.wang.service;


import com.wang.bean.news;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;


public interface newsservice {


    //添加新闻
    public void addnews(String title,String author,String message,String url);

    //删除新闻
    public void deletenews(String title);

    //修改新闻
    public void changenews(String title,String author,String detail,String url);

    //查修新闻
    public List<news> selectnews(String title);

    //获取所有的新闻
    public List<news> getallnews();
}
