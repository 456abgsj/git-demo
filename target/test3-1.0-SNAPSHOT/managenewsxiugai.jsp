<%@ page import="com.wang.bean.news" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<%String title= (String) request.getAttribute("title");%>
<%String author= (String) request.getAttribute("author");%>
<%String message= (String) request.getAttribute("message");%>
<%String url= (String) request.getAttribute("url");%>
<head>
  <meta charset="UTF-8" />
  <link rel="stylesheet" href="guanli.css" />
  <script>
    var oInp = document.getElementById('inp');
    var oBtn = document.getElementById('btn');



    function image(){
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


    oBtn.onclick = function () {
      Search();
    }

    document.onkeydown = function () {
      if (event.keyCode == 13) {
        Search();
      }
    }

    function Search() {
      var url = 'https://www.baidu.com/s?wd=' + oInp.value;
      window.open(url);
    }


    function dodo() {
      document.getElementById("url").value="dashabi";
      alert("删除成功");
    }







  </script>
</head>


<!--//异步ajax文件上传处理-->
<!--@RequestMapping("/ajaxImg")-->
<!--@ResponseBody-->
<!--//参数名称需和name名称一样-->
<!--public Object ajaxImg(MultipartFile pimage, HttpServletRequest request){-->
<!--//提取生成文件名UUID+上传图片的后缀.jpg,.png-->
<!--saveFileName= FileNameUtil.getUUIDFileName()+FileNameUtil.getFileType(pimage.getOriginalFilename());-->
<!--//得到项目中图片存储的路径-->
<!--String path = request.getServletContext().getRealPath("/image_big");-->
<!--//转存到指定路径-->
<!--try {-->
<!--pimage.transferTo(new File(path+File.separator+saveFileName));-->
<!--} catch (IOException e) {-->
<!--e.printStackTrace();-->
<!--}-->

<!--//返回客户端JSON对象,封装图片的路径，为了在页面实现立即显现-->
<!--JSONObject object = new JSONObject();-->
<!--object.put("imgurl",saveFileName);-->
<!--return object.toString();-->
<!--}-->


<body>

<div class="content">


  <div class="form-wrapper">
    <table  class="tab"  >

      <tr>
        <td colspan="3">
          <h1>修改新闻信息</h1>
            <div class="rowline"></div>
        </td>
      </tr>
      <tr>
        <td rowspan="5">
            <div class="imgdiv" id="imgDiv" align="center" style="display:block;width: 180px; height: 234px; margin-left: 150px;margin-right: 120px; margin-top: 10px">
              <img width="150" height="150" src="http://localhost:80/test3_war_exploded/images/<%=url%> "/>
            </div>
        </td>
          <td rowspan="5">
              <div class="line"></div>
          </td>
      </tr>
<form name="f" action="updatenewsAction" method="post">
      <tr>
        <td>
          <div class="input-items">
            <input type="text"  id="title"  name="title" class="inputs" placeholder="新闻标题" value="<%=title%>">
             </div>
        </td>
      </tr>

      <tr>
        <td>
          <div class="input-items">
            <input type="text" id="author" name="author" class="inputs" placeholder="作者" value="<%=author%>">
          </div>
        </td>
      </tr>

        <tr>
            <td>
                <div class="input-items">
                    <input type="text" id="url" name="url" class="inputs" placeholder="新闻图片" value="<%=url%>">
                </div>
            </td>
        </tr>



      <tr>
        <td>
          <div class="input-items" align="center">
            <input type="file" id="pimage" class="inputFile" name="pimage" onchange="doit()" >
            <input type="button" id="btn1" name="b1" value="确定" onclick="image()" >
            <span id="imgName" ></span>
          </div>
        </td>

      </tr>

      <tr align="center" >
        <td colspan="3">
          <!--                        <div class="input-items">-->
          <textarea   class="textareaBig" id="message"  name="message" placeholder="新闻内容"   >
            <%=message%>
          </textarea>
          <span class="prompt"></span>
          <!--                        </div>-->
        </td>
      </tr>

      <tr>

          <td></td>
          <td></td>
        <td><input type="submit" class="btnSma" value="确定修改"/><input type=submit class="btnSma" value="删除信息" onclick="dodo()"></td>

      </tr>
</form>
    </table>
  </div>
</div>

</body>




</html>
