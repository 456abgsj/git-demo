<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>影片上传</title>
  <link rel="stylesheet" href="guanli.css" />
</head>
<body>
<div class="content">
<div class="form-wrapper">
        <h1 style="text-align: center">影片上传</h1>
        <div class="rowline"></div>
        <div class="input-items" align="center">
            <input type="file" id="pimage" class="inputFile" name="pimage" onchange="fileChange()" style="height: 40px;line-height: 40px">
            <span id="imgName" ></span>
        </div>
</div>
</div>
</body>
</html>