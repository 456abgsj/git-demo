<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String name= (String) request.getAttribute("name");%>
<%String author= (String) request.getAttribute("author");%>
<%String introduction= (String) request.getAttribute("introduction");%>
<%String address= (String) request.getAttribute("address");%>
<%String time= (String) request.getAttribute("time");%>
<%String area= (String) request.getAttribute("area");%>
<%String typename= (String) request.getAttribute("typename");%>
<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="guanli.css" />
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script>
        var oInp = document.getElementById('inp');
        var oBtn = document.getElementById('btn');
        var title;


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
            document.getElementById("address").value=title;
        }

        function dodo() {
            document.getElementById("address").value="dashabi";
            alert("删除成功");
            document.getElementById("喜剧片").value="喜剧片";
        }


        function selectx() {
         document.getElementById("喜剧片").value="<%=typename%>>";
        }

        function fix() {
            document.getElementById("喜剧片").value="喜剧片";
        }

    </script>
</head>




<body >

<div class="content">


    <div class="form-wrapper">

        <table  class="tab">


            <tr>
                <td colspan="3">
                    <h1>修改电影信息</h1>
                    <div class="rowline"></div>
                </td>
            </tr>

            <form name="f" action="updatefilmAction" method="post">
            <tr>
                <td rowspan="5">

                        <div class="imgdiv" id="imgDiv"  style="display:block; width: 180px; height: 234px;margin-left: 150px;margin-top: 10px">
                            <img width="150" height="150" src="http://localhost:80/test3_war_exploded/images/<%=address%> "/>
                        </div>

                </td>


                <td rowspan="6">
                    <div class="line"></div>
                </td>
                <td >
                    <div class="input-items">
                        <input type="text" class="inputs" name="name" placeholder="电影名称" value="<%=name%>">
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="input-items">
                        <input type="text" class="inputs" name="author"  placeholder="导演" value="<%=author%>">
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="input-items">
                        <input type="text" class="inputs" name="time" placeholder="上映日期" value="<%=time%>">
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="input-items">
                        <input type="text" class="inputs" name="area" placeholder="地区" value="<%=area%>">
                    </div>
                </td>
            </tr>


            <tr>
                <td>
                    <div class="input-items">
                        <input type="text" class="inputs" id="address" name="address" placeholder="海报名称" value="<%=address%>">
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
                <td >
                    <div class="input-items" >
                        <select name="typename" class="select" id="select"  >
                            <option id="喜剧片">喜剧片</option>
                            <option id="动作片">动作片</option>
                            <option id="爱情片">爱情片</option>
                            <option id="恐怖片">恐怖片</option>
                            <option id="历史片">历史片</option>
                            <option id="科幻片">科幻片</option>
                            <option id="战争片">战争片</option>
                            <option id="犯罪片">犯罪片</option>
                            <option id="冒险片">冒险片</option>
                            <option id="悬疑片">悬疑片</option>
                            <option id="剧情片">剧情片</option>
                            <option id="西部片">西部片</option>
                        </select>
                    </div>
                </td>

            </tr>

            <tr align="center" >
                <td colspan="3">
                    <!--                        <div class="input-items">-->
                    <textarea   class="textareaBig" name="introduction" placeholder="影片简介"><%=introduction%></textarea>
                    <span class="prompt"></span>
                    <!--                        </div>-->
                </td>
            </tr>

            <tr>
                <td></td>
                <td></td>
                <td><input type="submit" class="btnSma" value="确定修改" onclick="fix()"/><input type=submit class="btnSma" value="删除信息" onclick="dodo()"></td>

            </tr>
            </form>
        </table>

    </div>
</div>

</body>




</html>
