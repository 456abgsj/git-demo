<%@ page import="com.wang.bean.film" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="main.css" />
    <style>
        html{
            overflow-x: hidden;
            overflow-y: auto;
        }
    </style>
</head>
<body>
<div class="main">
    <div class="left">
        <div id="content">
        <ul class="list">
            <li >
                <img src="asset/film1.jpg" alt="">
                <div class="bar">
                    <a href="login.html"><span class="name">魔兽</span></a>
<!--                    <h3>star war1</h3>-->
<!--                    <div class="title">star war1</div>-->
                </div>
            </li>
            <li >
                <img src="asset/film2.jpg" alt="">
                <div class="bar">
                    <span class="name">红海行动</span>
                </div>
            </li>






        </ul>

        </div>
    </div>


    <div class="right">

        <div id="news">
            <ul class="list-news">
                <li >
                    <div class="bar">
                        <a href="login.html" class="a-news"><h3>star war</h3></a>
                    </div>
                </li><br>
                <li >
                    <div class="bar">
                        <h3>神舟十六号载人飞船本月发射</h3>
                    </div>
                </li><br>
            </ul>

        </div>
    </div>

    </div>
</div>
</body>
</html>