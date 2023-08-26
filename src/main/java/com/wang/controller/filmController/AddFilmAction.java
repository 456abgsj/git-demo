package com.wang.controller.filmController;

import com.opensymphony.xwork2.Action;
import com.wang.service.serviceimpl.filmserviceimpl;

import java.text.SimpleDateFormat;
import java.util.Date;

public class AddFilmAction implements Action {

        private String name;

        private String author;

        private String introduction;

        private String address;


        private String time;

        private String area;

        private String typename;

        public String getTypename() {
                return typename;
        }

        public void setTypename(String typename) {
                this.typename = typename;
        }

        public AddFilmAction(){}
        public String getArea() {
                return area;
        }

        public void setArea(String area) {
                this.area = area;
        }

        public String getTime() {
                return  time;
        }

        public void setTime(String time) {
                this.time = time;
        }

        public String getAddress() {
                return address;
        }

        public void setAddress(String address) {
                this.address = address;
        }

        public String getIntroduction() {
                return introduction;
        }

        public void setIntroduction(String introduction) {
                this.introduction = introduction;
        }

        public String getAuthor() {
                return author;
        }

        public void setAuthor(String author) {
                this.author = author;
        }

        public String getName() {
                return name;
        }

        public void setName(String name) {
                this.name = name;
        }


        @Override
        public String execute() throws Exception {
                filmserviceimpl f=new filmserviceimpl();
                System.out.println(getTypename());
                int typeid=f.gettype(typename);
                System.out.println(typeid);
                f.setfilm(name,author,introduction,area,address,time,typeid);
                return "success3";
        }


}