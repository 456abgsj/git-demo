<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="guanli.css" />
    <script>
        var oInp = document.getElementById('inp');
        var oBtn = document.getElementById('btn');

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

        function fileChange(){//注意：此处不能使用jQuery中的change事件，因此仅触发一次，因此使用标签的：onchange属性
            $.ajaxFileUpload({
                url:"${pageContext.request.contextPath}/prod/ajaxImg.action",
                secureuri: false,
                fileElementId: 'pimage',
                dataType:"json",
                success:function (obj) {
                    //创建一个图片的标签
                    var imgObj = $("<img>");
                    imgObj.attr("src","${pageContext.request.contextPath}/image_big/"+obj.imgurl);
                    imgObj.attr("width","100px");
                    imgObj.attr("height","100px");
                    //将图片追加到imgDiv
                    $("#imgDiv").append(imgObj);
                }
            })
        }
        function tianjia1(){
            alert('添加成功');
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


<body >

    <div class="content">


        <div class="form-wrapper">

            <table  class="tab"  >
                <tr>
                    <td colspan="2" >
                        <div class="search-box">
                            <input class="search-txt" type='text' id='inp' placeholder="What are you looking for?"/>
                            <input class="search-btn" type='button' id='btn' value='&#xf002' />
                        </div>
                    </td>
                </tr>


                <tr>
                    <td rowspan="4">
                        <div class="input-items">
                            <div class="imgdiv" id="imgDiv"  style="display:block; width: 40px; height: 50px;"></div>
                        </div>
                    </td>
                    <td >
                        <div class="input-items">
                            <input type="text" class="inputs" placeholder="电影名称">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="input-items">
                            <input type="text" class="inputs" placeholder="导演">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="input-items">
                            <input type="text" class="inputs" placeholder="上映日期">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="input-items">
                            <input type="text" class="inputs" placeholder="地区">
                        </div>
                    </td>
                </tr>


                <tr>
                    <td>
                        <div class="input-items">
                            <input type="file" id="pimage" class="inputFile" name="pimage" onchange="fileChange()" >
                            <span id="imgName" ></span>
                        </div>
                    </td>
                    <td >
                        <div class="input-items">
                            <select name="xiala" >
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
                    <td colspan="2">
<!--                        <div class="input-items">-->
                            <textarea   class="textarea"  placeholder="影片简介"></textarea>
                            <span class="prompt"></span>
<!--                        </div>-->
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td><button class="btn" onclick="tianjia1()" >添加</button></td>
                </tr>
            </table>
        </div>
    </div>

</body>




</html>
