<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="guanli.css" />
    <link rel="stylesheet" href="font_search/iconfont.css" />
    <script>
        var oInp = document.getElementById('inp');
        var oBtn = document.getElementById('btn');
        var title;

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
            document.getElementById("address").value=title;
        }




    </script>
</head>





<body >

    <div class="content">


        <div class="form-wrapper">

            <table  class="tab"  >
                <tr>
                    <td colspan="3" >
                        <h1>影片信息管理</h1>
                        <div class="rowline"></div>
                    </td>
                </tr>
                <tr>

                    <td colspan="3">
                        <div class="search-box">
                            <form name="x" method="post" action="getfilmAction">
<%--                                <div class="input-items">--%>
<%--                                    <input  type="text" class="inputs" name="name" placeholder="想查询哪一部电影?"/>--%>
<%--                                    <input  type="submit" class="btn" id="btn" value="搜索" />--%>
<%--                                </div>--%>
                                <input  type="text" id="input-search" name="name" placeholder="想查询哪一部电影?"/>
                                <input  type="submit" class="btnSma" id="btn" value="搜索" />
                            </form>
                        </div>
                    </td>
                </tr>

                <form name="x" method="post" action="addfilmAction">
                <tr>
                    <td rowspan="5">
                            <div class="imgdiv" id="imgDiv"  style="display:block; width: 180px; height: 234px;margin-left: 150px;margin-top: 10px"></div>
                    </td>
                    <td rowspan="6"><div class="line"></div></td>
                    <td >
                        <div class="input-items">
                            <input type="text" name="name" class="inputs" placeholder="电影名称">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="input-items">
                            <input type="text"  name="author" class="inputs" placeholder="导演">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="input-items">
                            <input type="text" name="time" class="inputs" placeholder="上映日期">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="input-items">
                            <input type="text" name="area" class="inputs" placeholder="地区">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="input-items">
                            <input type="text" name="address" class="inputs"  id="address" placeholder="海报名称">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="input-items" align="center">
                            <input type="file" id="pimage" class="inputFile" name="pimage" onchange="doit()" >
                            <input type="button" id="btn1" name="b1" value="确定" onclick="justit()" >
                            <span id="imgName" ></span>
                        </div>
                    </td>

                    <td >
                        <div class="input-items">
                            <select name="typename"  class="select">
                                <option>喜剧片</option>
                                <option>动作片</option>
                                <option>爱情片</option>
                                <option>恐怖片</option>
                                <option>历史片</option>
                                <option>科幻片</option>
                                <option>战争片</option>
                                <option>犯罪片</option>
                                <option>冒险片</option>
                                <option>悬疑片</option>
                                <option>剧情片</option>
                                <option>西部片</option>
                            </select>
                        </div>
                    </td>

                </tr>



                <tr align="center" >
                    <td colspan="3">
<!--                        <div class="input-items">-->
                            <textarea   class="textarea" name="introduction"  placeholder="影片简介"></textarea>
                            <span class="prompt"></span>
<!--                        </div>-->
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td>
                       <input type="submit" class="btnSma" value="提交">
                    </td>
                </tr>
                </form>
            </table>
        </div>
    </div>

</body>




</html>
