<%--
  Created by IntelliJ IDEA.
  User: wzf
  Date: 2017/8/23
  Time: 上午10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" errorPage="../otherPage/error.html" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
</head>
<body style="background-image: url(./src/img/bg.jpg);">
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="adminWelcome.jsp" style="background-color: white; color: black">Home</a></li>
    <li class="leading"><a class="leading" href="newsList.jsp">News</a></li>
    <li class="leading"><a class="leading" href="../secondPage/userList.jsp">Users</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="../index.jsp">Sign Out</a></li>
</ul>
<div style="width: 62%; color: black; margin-left: auto; margin-right: auto; margin-top: 16%">
    <button style="display: inline; height: 70px; width: 40%; font-size: 1.5em; background-color: deepskyblue; color: white; margin-top: 3%" onclick="window.location='./newsList.jsp'">Manage News</button>
    <button style="display: inline; height: 70px; width: 40%; margin-left: 19%; font-size: 1.5em; background-color: deepskyblue; color: white; margin-top: 3%" onclick="window.location='../secondPage/userList.jsp'">Manage Users</button>
</div>
<!--底栏-->
<div style="background-color: white; margin-top: 26%;">
    <ul class="ending">
        <li class="ending" style="color: #3e3e3e; margin-left: 14.5%; margin-right: 4.5%">Copyright © 2017 Avangers Inc. All rights reserved.</li>
        <li class="ending"><a href="" class="ending">Privacy Policy</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Terms of Use</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Sales and Refunds</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Legal</a></li>
        <li class="ending" style="margin-left: 4.5%"><img class="ending" src="./img/china.png" alt="china" width="16px" height="16px"></li>
    </ul>
</div>
</body>
</html>
