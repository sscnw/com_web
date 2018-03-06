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

    <!--登陆注册-->
    <div style="height: 554px; margin-top: 5%">
        <!--登陆-->
        <script language="JavaScript">
        function validation_form(){	
        
        	var user_name = form1.user_name.value;
        	if(user_name == ""){
        	   alert("用户名称必须输入");
        	   form1.user_name.focus();
        	   return false;
        	 }
        	if(user_password == ""){
         	   alert("用户名称必须输入");
         	   form1.user_password.focus();
         	   return false;
        	}
        	this.form.submit();
        }
            var clickCountOnImageRememberPassword = 1;
            function clickOnImageRememberPassword() {
                if (clickCountOnImageRememberPassword % 2 == 1) {
                    document.getElementById("rememberPassword").src="../src/img/icon/cb1.png";
                } else {
                    document.getElementById("rememberPassword").src="../src/img/icon/cb.png";
                }
                clickCountOnImageRememberPassword++;
            }
            function clearCountOnImageRememberPassword() {
                if (document.getElementById("rememberPassword").src == "../src/img/icon/cb.png") {
                    clickCountOnImageRememberPassword = 1;
                }

            }
        </script>
        <div style="float: left ;width: 49%; border: 1px; text-align: center">
            <span style="font-size: 2.6em; margin-left: -37%">Sign In</span><br>
            <form name="form_login" action="login.doUser" method="post">
              <c:if test="${requestScope.message != null }">
		<br>
		<font color="red">${requestScope.message }</font>
		
		<br>
	</c:if>
                <input id="account" class="signIn_Up" type="text" placeholder="name" name="user_name"><br>
                <input id="password" class="signIn_Up" type="password" placeholder="password" name="user_password">
                <div style="margin-left: 22.8%; height: 85px;">
                    <img id="rememberPassword" src="../src/img/icon/cb.png" onmouseover="clearCountOnImageRememberPassword()" onclick="clickOnImageRememberPassword()" style="height: 30px; margin-top: 4%; float: left; margin-left: 1%">
                    <span style="font-size: 1.1em; padding: 0; float: left; margin-top: 5%; margin-left: 6px">Remember Me</span>
                    <a href="" style="color: black; margin-top: 4.6%; float: left; font-size: 1.1em; margin-left: 31.5%">Forget?</a>
                </div>
                <button class="button" onclick="return validation_form()" style="background-color: rgba(255,0,0,0.7); vertical-align:middle; margin-top: 2.8%; height: 56px; width: 388px; font-size: 1.6em"><span>SIGN&nbsp;&nbsp;IN&nbsp;&nbsp;&nbsp;NOW</span></button><br>
            </form>
            <button style="background: transparent; color: black; font-size: 0.9em; margin-left: 42%; margin-top: 4%" onclick="window.location='../adminPage/adminLogin.jsp'">Admin login >></button>
        </div>
        <!--分割线-->
        <div style="float:left;width: 1px;height: 554px; background: #333;"></div>
        <!--注册-->
        <div style="float: left ;width: 49%; border: 1px; text-align: center">
            <span style="font-size: 2.6em; margin-left: -20%">Sign Up Now!</span><br>
            <div>
                <p style="color: black; margin-left: -16%; margin-top: 9.2%; font-size: 1.4em">Join Us to Again These Privilege:</p>
                <ul style="text-align: left; margin-left: 24.6%">
                    <li style="font-size: 1.2em">The user shall keep the account number and password properly and avoid using it in any form other than user control.</li>
                    <li style="font-size: 1.2em">You will be fully responsible for all the activities and events you have in your account.</li>
                    <li style="font-size: 1.2em">Avangers shall not be used for any action that may adversely affect the normal functioning of the Internet or mobile network</li>
                </ul>
            </div>
            <button class="button" style="background-color: white; border-style: solid; border-width: 2px; border-color: black; vertical-align:middle; margin-top: 14.8%; height: 56px; width: 388px; font-size: 1.6em" onclick="window.location='signup.jsp'"><span style="color: black">SIGN&nbsp;&nbsp;UP&nbsp;&nbsp;&nbsp;NOW</span></button><br>
        </div>
    </div>
    <!--底栏-->
    <div style="background-color: white; margin-top: 5%">
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