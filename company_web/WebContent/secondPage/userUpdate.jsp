<%--
  Created by IntelliJ IDEA.
  User: wzf
  Date: 2017/8/23
  Time: 上午11:50
  To change this template use File | Settings | File Templates.
--%>
<%@page import="news.domain.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update</title>
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
</head>
<script language="JavaScript">

     
   
    function form_submit() {
        var x = document.getElementById('p1');
        var w = document.getElementById('account');
        var e = document.getElementById('city');
        var form1 = document.update;
        if (x.value == "" | w.value == "" | e.value == "") {
            alert("Please complete information")
            return false;
        }
        if(form1.user_sex[0].checked == false && form1.user_sex[1].checked == false){
     	   alert("性别必须选择");
     	   form1.user_sex[0].focus();
     	   return false;
     	}
       
        this.form.submit();
    }
    </script>
<body style="background-image: url(./src/img/bg.jpg);">
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="../adminPage/adminWelcome.jsp">Home</a></li>
    <li class="leading"><a class="leading" href="../adminPage/newsList.jsp" style="background-color: white; color: black">News</a></li>
    <li class="leading"><a class="leading" href="userList.jsp">Users</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="../index.jsp">Sign Out</a></li>
</ul>
<div style="width: 66%; margin-left: auto; margin-right: auto; margin-top: 5%;">
    <p style="color: black; font-size: 1.8em; text-indent: 0; margin-left: 3.5%; margin-top: 0; margin-bottom: 3%">Update News</p>
    
    
 <c:set var="user_id" value="${user != null ? user.user_id : param.user_id }"></c:set>
	<c:set var="user_oldName" value="${user != null ? user.user_name : param.user_oldName }"></c:set>
	<c:set var="user_name" value="${user != null ? user.user_name : param.user_oldName }"></c:set>
	<c:set var="user_sex" value="${user!= null ? user.user_sex : param.user_sex }"></c:set>
	<c:set var="user_password" value="${user != null ? user.user_password : param.user_password}"></c:set>
	<c:set var="user_address" value="${user != null ? user.user_address : param.user_address}"></c:set>
	
	<form action="update.doUser" method="post" name="update">
	 <c:if test="${requestScope.message != null }">
		<br>
		<font color="red">${requestScope.message }</font>
		<br>
		
	</c:if>
            
		<input type="hidden" name="user_id" value="${user_id }"/>
		<input type="hidden" name="user_oldName" value="${user_oldName }"/>
	   
  
        <table>
            <tr style="text-align: right">
                <td width="7%"  style="font-size: 1.2em">name:</td>
                <td width="17%" style="font-size: 1.2em"><input id="account" name="user_name" type="text" style="height: 26px" value="${user_name} "></td>
                <td width="12%" style="font-size: 1.2em">password:</td>
                <td width="17%" style="font-size: 1.2em"><input name="user_password" id="p1" type="text" style="height: 26px" value="${user_password} "></td>
                <td width="6.5%" style="font-size: 1.2em">city:</td>
                <td width="17%" style="font-size: 1.2em"><input name="user_address" id="city" type="text" style="height: 26px" value="${user_address} " ></td>
                <td width="6.5%" style="font-size: 1.2em">sex:</td>
                <td width="17%" style="font-size: 1.2em">
                    <input  name="user_sex" type="radio" value="${user_sex }"> male
                    <input  name="user_sex" type="radio" value="${user_sex }"> female
                </td>
            </tr>
        </table>
        <button style="height: 32px; width: 50%; margin-left: 25%; font-size: 1.3em; background-color: limegreen; color: white; margin-top: 3%" onclick="return form_submit()">UPDATE</button>
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