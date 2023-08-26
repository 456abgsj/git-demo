package com.wang.dao;

import com.wang.bean.film;
import com.wang.bean.news;
import com.wang.bean.type;
import com.wang.bean.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import java.util.Date;
import java.util.List;

@Transactional
@Component
public class crud {

    @Autowired
     userDao userDao;



    public List<?> getusers(){
       // return userDao.getuser();
        return userDao.getHibernateTemplate().find("from user");
    }


    public int  isexist(String username,String password){
        List<user> list= (List<user>) userDao.getHibernateTemplate().find("from user where username='"+username+"'");
        if(list.isEmpty()){
            return 0;
        }else{
            if(list.get(0).getPassword().equals(password)){
                return 1;
            }else{
                return 2;
            }
        }
    }


    public void saveuser(String username,String password){
        user user=new user();
        user.setUsername(username);
        user.setPassword(password);
        userDao.getHibernateTemplate().save(user);
    }



    //新闻的crud

    public void addnews(String title,String author,String  message,String url){


        news news1 =new news();
        news1.setAuthor(author);
        news1.setMessage(message);
        news1.setTitle(title);
        news1.setUrl(url);
       userDao.getHibernateTemplate().save(news1);
    }



    public List<news> getallnews(){
        return (List<news>) userDao.getHibernateTemplate().find("from news");
    }


    //新闻的删除
    public void deletenews(String title){

        List<news> news= (List<com.wang.bean.news>) userDao.getHibernateTemplate().find("from news where title='"+title+"'");
        userDao.getHibernateTemplate().delete(news.get(0));
    }


    //新闻的查询
    public List<news> selectnews(String title){
        List<news> news= (List<com.wang.bean.news>) userDao.getHibernateTemplate().find("from news where title='"+title+"'");
        return news;
    }

    //新闻的内容改变
    public void change(String title,String author,String detail,String url){
        List<news> news= (List<com.wang.bean.news>) userDao.getHibernateTemplate().find("from news where title='"+title+"'");
        news.get(0).setMessage(detail);
        news.get(0).setUrl(url);
        news.get(0).setAuthor(author);
        news.get(0).setTitle(title);

        userDao.getHibernateTemplate().update(news.get(0));

        System.out.println(news.get(0).getAuthor());

    }



    public List<?> getfilms(){
        return userDao.getHibernateTemplate().find("from film");
    }


    public film getfilm(String name){
        film film1 =null;

        List<film> films= (List) userDao.getHibernateTemplate().find("from film");
        for (film film:films){
            if (film.getName().equals(name))
                film1=film;
        }
        return film1;
    }

    public String updatefilm( String name, String author, String introduction,
                             String area, String address,String time,int typeid){

        film film1 =null;
        List<film> films= (List) userDao.getHibernateTemplate().find("from film");
        for (film film:films){
            if (film.getName().equals(name)){
                film1=film;}
        }


        film1.setName(name);
        film1.setArea(area);
        film1.setAuthor(author);
        film1.setIntroduction(introduction);
        film1.setAddress(address);
        film1.setTime(time);
        film1.setTypeid(typeid);
        userDao.getHibernateTemplate().saveOrUpdate(film1);
        return "ok";
    }


    public String setfilm(String name, String author, String introduction,
                          String area,String address, String time,int typeid){

        film film1 =new film();

        film1.setName(name);
        film1.setArea(area);
        film1.setAuthor(author);
        film1.setIntroduction(introduction);
        film1.setAddress(address);
        film1.setTime(time);
        film1.setTypeid(typeid);
        userDao.getHibernateTemplate().save(film1);
        return "ok";
    }


    public String delfilm(String name){
        film film1=null;

        List<film> films= (List) userDao.getHibernateTemplate().find("from film");
        for (film film:films){
            if (film.getName().equals(name))
                film1=film;
        }
        userDao.getHibernateTemplate().delete(film1);

        return "ok";
    }


    public List<?> gettypes(){
        return userDao.getHibernateTemplate().find("from type");
    }


    public String settype(String typename){

        type type=new type();

        type.setTypename(typename);
        userDao.getHibernateTemplate().save(type);
        return "ok";
    }

    public String updatetype(int typeid, String typename){

        type type1 =null;

        List<type> types= (List) userDao.getHibernateTemplate().find("from type");
        for (type type:types){
            if (type.getTypeid()==typeid)
                type1=type;
        }

        type1.setTypename(typename);
        userDao.getHibernateTemplate().saveOrUpdate(type1);
        return "ok";
    }

    public String deltype(int typeid){
        type type1 =null;

        List<type> types= (List) userDao.getHibernateTemplate().find("from type");
        for (type type:types){
            if (type.getTypeid()==typeid)
                type1=type;
        }
        userDao.getHibernateTemplate().delete(type1);

        return "ok";
    }

    public String gettype(int typeid){
        type type1 =null;
        List<type> types= (List) userDao.getHibernateTemplate().find("from type");
        for (type type:types){
            if (type.getTypeid()==typeid)
                type1=type;
        }
        if (type1.getTypename()==null)
            return null;
        return type1.getTypename();
    }
    public int gettype(String typename){
        type type1 =null;
        List<type> types= (List) userDao.getHibernateTemplate().find("from type");
        for (type type:types){
            if (type.getTypename().equals(typename))
                type1=type;
        }
        if (type1==null)
            return 1;
        return type1.getTypeid();
    }
}

