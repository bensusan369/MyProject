<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/23
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script >
        var shijian=5;
       function tiao(){
            shijian--;
      var xiaoxi=document.getElementById("xiaoxi");
         if(shijian<1){//时间到了 自动跳转到路径页面
             window.location.href='${lujing}';
             return;
         }
          xiaoxi.innerText=shijian+"秒后自动跳转";
       }
      //定时执行
        setInterval("tiao()",1000);

       function xx(){
           var me= '${message}';
           if(me=='notok'){
               alert("操作失败");
           }else{
               alert("操作成功");
           }
       }
    </script>

</head>
<body onload="xx()">
       <div id="xiaoxi">
           5秒后自动跳转
       </div>
       直接 <a href="${lujing}">返回</a>
</body>
</html>
