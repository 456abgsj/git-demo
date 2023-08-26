<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String []typename= (String[]) request.getAttribute("typename");%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="UTF-8">
    <title>Title</title>
  <link rel="stylesheet" href="category.css" />
    <link rel="stylesheet" href="font_delete/iconfont.css" />
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script>
        function fix() {
            document.getElementById("typename").value="<%=typename%>";
        }
    </script>
</head>
<body>
     <div class="admin" align="center">

         <div class="input-items">


             <br>
             <br>
             <br>
             <h1>影片类别管理</h1>
             <h2></h2>
             <input type="text" name="type" class="inputs" placeholder="添加类别">
             <input type="submit" class="btn" value="提交">
             <table width="600" border="2" class="tab">
                 <tr>
                     <th>电影类别</th>
                 </tr>
             <c:forEach items="<%=typename%>" var="p">
                 <tr>
                     <td>${p}</td>
                 </tr></br>
             </c:forEach>
             </table>
         </div>
     </div>
       </div>
</body>