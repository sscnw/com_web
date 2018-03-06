<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../otherPage/error.jsp" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
    <script src="../src/config/script.js"></script>
   
</head>
<body>
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="../index.jsp">Home</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#news">News</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#product">Products</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#contact">Contact</a></li>
    <li class="leading"><a class="leading" href="./about.jsp">About</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="./signup.jsp">Sign Up</a></li>
    <li class="leading" style="float: right"><a class="leading" href="./login.jsp" style="background-color: white; color: black">Sign In</a></li>
    <form id="form_search" action="">
        <li class="leading" style="float: right; margin-right: 4%"><img src="../src/img/icon/search-2.png" height="21px" width="21px" onmouseover="this.style.cursor='pointer'" onclick="document.getElementById('form_search').submit()" style="margin-top: 15px; margin-left: 3px; margin-right: 15px"></li>
        <li class="leading" style="float: right"><input class="_noDecoration" type="text"; placeholder="Search Something..." style="height: 16px; width: 120px; margin-top: 15px"></li></li>
    </form>
</ul>
<!--登陆-->
<div style="width: 49%; border: 1px; text-align: center; height: 554px; margin-top: 5%; margin-left: auto; margin-right: auto">
    <span style="font-size: 2.6em; margin-left: -37%">Sign In</span><br>
    <form id="form_adminLogin" action="login.doAdmi" method="post" >
<c:if test="${requestScope.message != null }">
		<br>
		<font color="red">${requestScope.message }</font>
		<br>
		
	</c:if>
        <input class="signIn_Up" type="text" placeholder="account" name="admin_name"><br>
        <input class="signIn_Up" type="password" placeholder="password" name="admin_password">
        <button class="button" onclick="this.form.submit()" style="background-color: rgba(255,0,0,0.7); vertical-align:middle; margin-top: 10%; height: 56px; width: 388px; font-size: 1.6em"><span>SIGN&nbsp;&nbsp;&nbsp;IN</span></button><br>
    </form>
</div>
<!--底栏-->
<div style="background-color: white; margin-top: 4.8%;">
    <ul class="ending">
        <li class="ending" style="color: #3e3e3e; margin-left: 14.5%; margin-right: 4.5%">Copyright © 2017 Avangers Inc. All rights reserved.</li>
        <li class="ending"><a href="" class="ending">Privacy Policy</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Terms of Use</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Sales and Refunds</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Legal</a></li>
        <li class="ending" style="margin-left: 4.5%"><img class="ending" src="../src/img/icon/china.png" alt="china" width="16px" height="16px"></li>
    </ul>
</div>
</body>