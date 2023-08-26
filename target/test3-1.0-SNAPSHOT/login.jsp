<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<%
Integer i= (Integer) request.getAttribute("i");
%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">


    <script>
        function jump(){
            window.location.href="register.jsp"
        }

        var i=<%=i%>

        function  jump1(){

            var prompt2=document.getElementById("prompt2");
            if(i===0){
                prompt2.innerHTML="帐号输入有误，请重新输入";
            }else if(i===2) {
                prompt2.innerHTML="密码输入有误，请重新输入";
            }
        }
    </script>
</head>
<body onload="jump1()">
    <div class="content">
        <div class="login-wrapper">
            <div class="left-img">
                <div class="glass">
                    <div class="tips">
                        <div class="title">
                            WELCOME
                        </div>
                        <h1>Film Management System</h1>
                        <span>Good movies to share with you.</span>
                        <span>Film gives people inspiration</span>
                    </div>
                </div>
            </div>
            <div class="right-login-form">
                <div class="form-wrapper">
                    <form name="login" method="post" action="loginaction">
                    <h1>Log in</h1>
                    <div class="input-items">
                        <span class="input-tips">
                            帐号
                        </span>
                        <input type="text" name="username" class="inputs" placeholder="Enter your email">
                    </div>
                    <div class="input-items">
                        <span class="input-tips">
                            密码
                        </span>
                        <input type="password"  name="password" class="inputs" placeholder="Enter password">
                        <span class="prompt"></span>
                    </div>
                        <span id="prompt2" class="prompt" style="color: red"></span>
                     <input type="submit" class="btn" value="登录">
                    <div class="siginup-tips">
                        <span>还没有帐号?</span>
                        <span onclick="jump()">注册</span>
                    </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>