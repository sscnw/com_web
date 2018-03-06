<%--
  Created by IntelliJ IDEA.
  User: wzf
  Date: 2017/8/22
  Time: 下午3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SignUp</title>
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
    <script src="../src/config/script.js"></script>
    <style>
        p.signIn_Up
        {
            text-indent: 0;
            color: black;
            font-size: 1.3em;
        }
    </style>
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
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="signup.jsp" style="background-color: white; color: black">Sign Up</a></li>
    <li class="leading" style="float: right"><a class="leading" href="./login.jsp">Sign In</a></li>
    <form id="form_search" action="">
        <li class="leading" style="float: right; margin-right: 4%"><img src="../src/img/icon/search-2.png" height="21px" width="21px" onmouseover="this.style.cursor='pointer'" onclick="document.getElementById('form_search').submit()" style="margin-top: 15px; margin-left: 3px; margin-right: 15px"></li>
        <li class="leading" style="float: right"><input class="_noDecoration" type="text"; placeholder="Search Something..." style="height: 16px; width: 120px; margin-top: 15px"></li></li>
    </form>
</ul>
<!--主界面-->
<script language="JavaScript">
function change1() {
    document.getElementById('button_male').style.borderColor = "black";
    document.getElementById('button_female').style.borderColor = "rgba(0,0,0,0.15)";
}
function change2() {
    document.getElementById('button_female').style.borderColor = "black";
    document.getElementById('button_male').style.borderColor = "rgba(0,0,0,0.15)";
}
    var clickCountOnImageAgreeLaws = 1;
    function clickOnImageAgreeLaws() {
        if (clickCountOnImageAgreeLaws % 2 == 1) {
            document.getElementById("agreeLaws").src="../src/img/icon/cb1.png";
        } else {
            document.getElementById("agreeLaws").src="../src/img/icon/cb.png";
        }
        clickCountOnImageAgreeLaws++;
    }
    function clearCountOnImageAgreeLaws() {
        if (document.getElementById("agreeLaws").src == "../src/img/icon/cb.png") {
            clickCountOnImageAgreeLaws = 1;
        }
    }function form_submit() {
        var x = document.getElementById('p1');
        var y = document.getElementById('p2');
        var w = document.getElementById('account');
        var e = document.getElementById('city');
        var form1 = document.user_reg_form;
        if (x.value == "" | w.value == "" | e.value == "") {
            alert("Please complete information")
            return false;
        }
        if(form1.user_sex[0].checked == false && form1.user_sex[1].checked == false){
     	   alert("性别必须选择");
     	   form1.user_sex[0].focus();
     	   return false;
     	}
        if (x.value != y.value) {
            alert("Please confirm password")
            return false;
        }
        if (clickCountOnImageAgreeLaws % 2 == 1) {
            alert("Please agreen laws")
            return false;
        }
        this.form.submit();
    }

</script>
<div style="width: 66%; margin-left: auto; margin-right: auto; margin-top: 3%">
	<c:if test="${requestScope.message != null }">
		<br>
		<font color="red">${requestScope.message }</font>
		
		<br>
	</c:if>
    <p style="font-size: 2.5em; color: black; text-indent: 0">Sign Up</p>
    <form id="form_signUp" action="register.doUser" method="post"  name="user_reg_form">
        <div style="height: 400px">
            <div style="width: 50%; float: left">
                <p class="signIn_Up" style="padding-top: 0" >name</p>
                <input id="account" class="signIn_Up" type="text" placeholder="Please enter your account name" style="margin-top: 0; font-size: 1em" name="user_name"><br>
                <p class="signIn_Up" style="padding-top: 2%">city</p>
                <input id = "city" class="signIn_Up" type="text" placeholder="Please enter your city" style="margin-top: 0; font-size: 1em" name=user_address><br>
                <p class="signIn_Up" style="padding-top: 2%">sex</p>
                
                <input value="male" type="radio" name="user_sex" style="height: 26px; width: 26px"><span style="color: black; text-indent: 0; font-size: 1.8em">male</span>
                <input value="female" type="radio" name="user_sex" style="height: 26px; width: 26px; margin-left: 6%"><span style="color: black; text-indent: 0; font-size: 1.8em">female</span>

            </div>
            <div style="width: 50%; float: left">
                <p class="signIn_Up" style="padding-top: 0">password</p>
                <input id = "p1" class="signIn_Up" type="password" placeholder="Please enter your password" style="margin-top: 0; font-size: 1em" name=user_password><br>
                <p class="signIn_Up" style="padding-top: 2%">confirm password</p>
                <input id = "p2" class="signIn_Up" type="password" placeholder="Please enter your password again" style="margin-top: 0; font-size: 1em" name=user_repassword><br>
                <div style="margin-top: 18.6%">
                    <img id="agreeLaws" src="../src/img/icon/cb.png" onmouseover="clearCountOnImageAgreeLaws()" onclick="clickOnImageAgreeLaws()" style="height: 26px; float: left">
                    <span style="float: left; padding-top: 0.9%; margin-left: 2%">I have read and accepted the <em>user's agreement</em></span>
                </div>
            </div>
        </div>
        <button class="button" onclick="return form_submit()" style="background-color: rgba(255,0,0,0.7); vertical-align:middle; margin-top: 2.8%; height: 56px; width: 388px; font-size: 1.6em; margin-left:24%; border-radius: 0"><span>SIGN&nbsp;&nbsp;UP&nbsp;&nbsp;&nbsp;NOW</span></button><br>
    </form>
</div>
<!--底栏-->
<div style="background-color: white; margin-top: 6%;">
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
</html>
