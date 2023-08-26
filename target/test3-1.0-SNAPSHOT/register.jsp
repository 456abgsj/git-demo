<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">


    <script>
        function check1(){
            var passwordObj1=document.getElementById("password1");
            var passwordText1=passwordObj1.value;

            var patt=/^[A-Za-z0-9]{5,12}$/;

            var prompt1=document.getElementById("prompt1");
            if(patt.test(passwordText1)){
                prompt1.innerHTML="";
            }else {
                prompt1.innerHTML="*密码格式有误";
            }
        }

        function check2(){

            var passwordObj1=document.getElementById("password1");
            var passwordText1=passwordObj1.value;
            var passwordObj2=document.getElementById("password2");
            var passwordText2=passwordObj2.value;

            var patt=/^[A-Za-z0-9]{5,12}$/;

            var prompt2=document.getElementById("prompt2");
            if(passwordText1===passwordText2){
                prompt2.innerHTML="";

            }else {
                prompt2.innerHTML="*两次密码不一致";
            }
        }

        function jump1(){
            window.location.href="login.jsp"
        }
    </script>
</head>
<body>
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
                <form name="register" method="post" action="registeraction">
                <h1>Register</h1>
                <div class="input-items">
                        <span class="input-tips">
                            帐号
                        </span>
                    <span class="prompt" >你好</span>
                    <input type="text" name="username" class="inputs" placeholder="Enter your email">
                </div>
                <div class="input-items">
                        <span class="input-tips">
                            密码
                        </span>
                    <input type="password" id="password1" class="inputs" placeholder="Enter password" onblur="check1()">
                    <span id="prompt1" class="prompt" style="color: red"></span>
                </div>
                <div class="input-items">
                        <span class="input-tips">
                            确认密码
                        </span>
                    <input type="password" id="password2" name="password" class="inputs" placeholder="Enter again" onblur="check2()">
                    <span id="prompt2" class="prompt" style="color: red"></span>
                </div>
                    <input class="btn" type="submit" value="注册">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>