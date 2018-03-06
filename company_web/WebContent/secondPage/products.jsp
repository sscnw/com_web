<%--
  Created by IntelliJ IDEA.
  User: wzf
  Date: 2017/8/21
  Time: 上午8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="./otherPage/error.jsp" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
    <script src="../src/config/script.js"></script>
</head>
<body style="background-image: url(../src/img/bg.jpg);">
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="../index.jsp">Home</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#news">News</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#product" style="background-color: white; color: black">Products</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#contact">Contact</a></li>
    <li class="leading"><a class="leading" href="../secondPage/about.jsp">About</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="../secondPage/signup.jsp">Sign Up</a></li>
    <li class="leading" style="float: right"><a class="leading" href="../secondPage/login.jsp">Sign In</a></li>
    <form id="form_search" action="">
        <li class="leading" style="float: right; margin-right: 4%"><img src="../src/img/icon/search-2.png" height="21px" width="21px" onmouseover="this.style.cursor='pointer'" onclick="document.getElementById('form_search').submit()" style="margin-top: 15px; margin-left: 3px; margin-right: 15px"></li>
        <li class="leading" style="float: right"><input class="_noDecoration" type="text"; placeholder="Search Something..." style="height: 16px; width: 120px; margin-top: 15px"></li></li>
    </form>
</ul>
<!--地址栏-->
<div style="margin-left: 17%; margin-top: 1.7%">
    <a href="../index.jsp" style="color: black; font-size: 1.2em">Home</a>
    <img src="../src/img/icon/arrow_down-3.png" alt="" height="24px" style="vertical-align: bottom">
    <a href="" style="color: black; font-size: 1.2em">Products</a>
</div>
    <!--商品展示-->
    <div style="width: 70%; margin-left: auto; margin-right: auto; margin-top: 4%; height: 522px">
        <div style="width: 48%; float: left">
            <div style="height: 322px">
                <div style="height: 254px; width: 32%; display: inline-block; background-color: lightskyblue; color: white; font-size: 2.2em; vertical-align: top; float: left; text-align: center; padding-top: 80px">Drone</div>
                <img src="../src/img/p1-1-1.jpg" alt="" width="66%" style="margin-left: 2%; float: left">
            </div>
            <div style="margin-top: 4%">
                <img src="../src/img/p1-2-1.jpg" alt="" width="32%" style="">
                <img src="../src/img/p1-3-1.jpg" alt="" width="32%" style="margin-left: 1.1%">
                <img src="../src/img/p1-1-1.jpg" alt="" width="32%" style="margin-left: 1%">
            </div>
        </div>
        <div style="width: 48%; float: left; margin-left: 4%">
            <div style="height: 322px">
                <div style="height: 254px; width: 32%; display: inline-block; background-color: lightskyblue; color: white; font-size: 2.2em; vertical-align: top; float: left; text-align: center; padding-top: 80px">Micro<br>&nbsp;&nbsp;-phone</div>
                <img src="../src/img/m1.jpg" alt="" width="66%" style="margin-left: 2%; float: left">
            </div>
            <div style="margin-top: 4%">
                <img src="../src/img/m2.jpg" alt="" width="32%" style="">
                <img src="../src/img/m3.jpg" alt="" width="32%" style="margin-left: 1.1%">
                <img src="../src/img/m4.jpg" alt="" width="32%" style="margin-left: 1%">
            </div>
        </div>
    </div>
    <div style="width: 70%; margin-left: auto; margin-right: auto; height: 522px">
        <div style="width: 48%; float: left">
            <div style="height: 322px">
                <div style="height: 254px; width: 32%; display: inline-block; background-color: lightskyblue; color: white; font-size: 2.2em; vertical-align: top; float: left; text-align: center; padding-top: 80px">Camera</div>
                <img src="../src/img/c1.jpg" alt="" width="66%" style="margin-left: 2%; float: left">
            </div>
            <div style="margin-top: 4%">
                <img src="../src/img/c2.jpg" alt="" width="32%" style="">
                <img src="../src/img/c3.jpg" alt="" width="32%" style="margin-left: 1.1%">
                <img src="../src/img/c4.jpg" alt="" width="32%" style="margin-left: 1%">
            </div>
        </div>
        <div style="width: 48%; float: left; margin-left: 4%">
            <div style="height: 322px">
                <div style="height: 254px; width: 32%; display: inline-block; background-color: lightskyblue; color: white; font-size: 2.2em; vertical-align: top; float: left; text-align: center; padding-top: 80px">Key&nbsp;<br>&nbsp;&nbsp;-board</div>
                <img src="../src/img/k1.jpg" alt="" width="66%" style="margin-left: 2%; float: left">
            </div>
            <div style="margin-top: 4%">
                <img src="../src/img/k2.jpg" alt="" width="32%" style="">
                <img src="../src/img/k3.jpg" alt="" width="32%" style="margin-left: 1.1%">
                <img src="../src/img/k4.jpg" alt="" width="32%" style="margin-left: 1%">
            </div>
        </div>
    </div>
    <!--底栏-->
    <div style="background-color: white; margin-top: 4%;">
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
    <!--边栏-->
    <div class="tail">
        <a href="#head"><img src="../src/img/icon/top-9.png" alt="top" width="100%" style="margin-top: 1px" onmouseover="this.src='../src/img/icon/top-10.png'" onmouseout="this.src='../src/img/icon/top-9.png'"></a>
    </div>
</body>
</html>