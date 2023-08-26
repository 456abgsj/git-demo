<%@ page import="com.wang.bean.film" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="font/iconfont.css" />
  <!--    <link rel="stylesheet" href="font1/iconfont.css" />-->
  <!--        <link rel="stylesheet" href="font_wf8pea2pan/iconfont.css" />-->
  <link rel="stylesheet" href="doo.css" />
  <title>电影后台</title>



</head>

<script>
  <%Integer s= (Integer) request.getAttribute("size");%>
  var s1=<%=s%>
  console.log(s1);



  function doit() {

    <%List<film> films= (List<film>) request.getAttribute("filmlist"); %>
    <%Integer size= (Integer) request.getAttribute("size");%>
    title = document.getElementById("pimage").files[0].name;

    $.ajax({
      url: "pageAction",
      type: "post",
      async: false,
      data: {
        "films":<%=films%>,
        "size":<%=size%>
      },
      dataType: "JSON",
      error: function () {
        console.log("hello");
      }
    });
  }
</script>
<body>

<div class="content">
  <div class="login-wrapper">
    <div class="left-img" >
      <div class="nav">
        <!--按钮-->
        <div class="btn">
          <div class="btn-item"></div>
          <div class="btn-item"></div>
          <div class="btn-item"></div>
        </div>
        <!--头像-->
        <div class="icon">
          <div class="icon-img"><a href="doo.jsp"><img src="asset/bg.jpg" alt="" /></a></div>
          <div class="icon-con">
            <p>The Best Film</p>
            <h2>欢迎登录！</h2>
          </div>
        </div>


        <div class="line"></div>


        <div class="title">
          <p>Menu</p>
        </div>
        <div class="menu">
          <div class="item">
            <div class="light"></div>
            <div class="licon"><span class="iconfont icon-film"></span></div>
            <a href="guanli.jsp" target="main"> <div class="con">影片管理</div> </a>

          </div>
          <div class="item">
            <div class="light"></div>
            <div class="licon"><span class="iconfont icon-shangchuan"></span></div>
            <a href="yingpianshangchuan.jsp" target="main"> <div class="con">影片上传</div> </a>
          </div>


          <div class="item">
            <div class="light"></div>
            <div class="licon">
              <span class="iconfont icon-leibie"></span>
            </div>
            <a href="getalltypeaction" target="main"> <div class="con">类别管理</div> </a>

          </div>
          <div class="item">
            <div class="light"></div>
            <div class="licon">
              <span class="iconfont icon-ai-new"></span>
            </div>
            <a href="managenews.jsp" target="main"> <div class="con">新闻管理</div> </a>

          </div>

        </div>


        <div class="line"></div>


        <div class="title">
          <p>User</p>
        </div>
        <div class="serve">
          <div class="item">
            <div class="licon"><span class="iconfont icon-yonghuguanli"></span></div>
            <a href="login.jsp" ><div class="con">退出登录</div></a>

          </div>

        </div>
      </div>
    </div>

    <div class="right-login-form">
      <iframe  src="pageAction" class="iframe" name="main" ><div><%=s%></div></iframe>
    </div>
  </div>
</div>
</body>
</html>