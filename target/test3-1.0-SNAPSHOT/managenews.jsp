<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <meta charset="UTF-8" />
  <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
  <script type="text/javascript" src="js/ajaxfileupload1.js"></script>
  <link rel="stylesheet" href="guanli.css" />
  <link rel="stylesheet" href="font_search/iconfont.css" />
  <script>
    var oInp = document.getElementById('inp');
    var oBtn = document.getElementById('btn');
    var title;


    document.onkeydown = function () {
      if (event.keyCode == 13) {
        Search();
      }
    }

    function justit() {
      $("#imgDiv").empty();
      var imgObj = $("<img>");
      imgObj.attr("src","http://localhost:80/test3_war_exploded/images/"+title);
      imgObj.attr("width","150px");
      imgObj.attr("height","150px");
      //将图片追加到imgDiv
      $("#imgDiv").append(imgObj);
    }


    function doit() {
      title=document.getElementById("pimage").files[0].name;
      document.getElementById("url").value=title;
    }

    function Search() {
      var url = 'https://www.baidu.com/s?wd=' + oInp.value;
      window.open(url);
    }


    function tianjia(){
      alert('添加成功');
    }
  </script>
</head>





<body >

<div class="content">


  <div class="form-wrapper">


    <table  class="tab" >
      <tr>
        <td colspan="3" >
          <h1>新闻信息管理</h1>
          <div class="rowline"></div>
        </td>
      </tr>
      <tr>
        <td colspan="3" >
          <div class="search-box">
            <form name="x" method="post" action="selectAction">
            <input  type='text' id="input-search"  name='newsname' placeholder="想查询哪一篇新闻?"/>
            <input  type='submit' class="btnSma1" id='btn' value="搜索" />
            </form>
          </div>
        </td>
      </tr>
      <form name="f" method="post" action="Addnewsaction">

      <tr>
        <td rowspan="4">
            <div class="imgdiv" id="imgDiv"  style="display:block; width: 180px; height: 234px; margin-left: 150px;margin-right: 120px; margin-top: 10px"></div>
        </td>
        <td rowspan="4"><div class="line"></div></td>
        <td >
          <div class="input-items">
            <input type="text" class="inputs" name="title" placeholder="新闻标题">
          </div>
        </td>
      </tr>

      <tr>
        <td>
          <div class="input-items">
            <input type="text" class="inputs" name="author" placeholder="作者">
          </div>
        </td>
      </tr>

      <tr>
        <td>
          <div class="input-items">
            <input type="text" id="url" class="inputs" name="url" placeholder="新闻图片">
          </div>
        </td>
      </tr>

      <!--<tr>
        <td>
          <div class="input-items">
            <input type="text" class="inputs" placeholder="上映日期">
          </div>
        </td>
      </tr>-->

      <!--<tr>
        <td>
          <div class="input-items">
            <input type="text" class="inputs" placeholder="地区">
          </div>
        </td>
      </tr>-->


      <tr>
        <td>

            <input type="file" id="pimage" class="inputFile" name="pimage" onchange="doit()" >
            <input type="button" id="btn1" class="btnSma" name="b1" value="确定" onclick="justit()" >
            <span id="imgName" ></span>

        </td>

      </tr>

      <tr align="center" >
        <td colspan="3">
          <!--                        <div class="input-items">-->
          <textarea   class="textarea"   name="message"  placeholder="新闻内容"></textarea>
          <span class="prompt"></span>
          <!--                        </div>-->
        </td>
      </tr>

      <tr>
        <td></td>
        <td></td>
        <td><input type="submit" class="btnSma" value="提交"/></td>

      </tr>
      </form>
    </table>
  </div>
</div>

</body>




</html>
