<%--
  Created by IntelliJ IDEA.
  User: wzf
  Date: 2017/8/23
  Time: 上午11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="news.domain.News"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
        this.form.submit();
    }
    </script>
<body style="background-image: url(./src/img/bg.jpg);">
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="adminWelcome.jsp">Home</a></li>
    <li class="leading"><a class="leading" href="newsList.jsp" style="background-color: white; color: black">News</a></li>
    <li class="leading"><a class="leading" href="../secondPage/userList.jsp">Users</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="../index.jsp">Sign Out</a></li>
</ul>
<div style="width: 66%; margin-left: auto; margin-right: auto; margin-top: 5%;">
    <p style="color: black; font-size: 1.8em; text-indent: 0; margin-left: 3.5%; margin-top: 0; margin-bottom: 3%">Update news</p>
    	
<% 		
	String news_id=null;
	String news_oldName=null;
	String news_name=null;
	String news_author=null;
	
	String news_time=null;
	//这个是原来数据表的那个request
	News news=(News)request.getAttribute("news");
	if(news!=null){
		news_id=news.getNews_id()+"";
		news_oldName=news.getNews_name();
		news_name=news.getNews_name();

		news_author=news.getNews_author();
		news_time=news.getNews_time();
		
	}else{
		news_id=request.getParameter("news_id");
		news_oldName=request.getParameter("news_oldName");
		news_name=request.getParameter("news_oldName");
		news_author=request.getParameter("news_author");
	
		
		news_time=request.getParameter("news_time");
		
		
	}
%>
    <form action="update.doNews" method="post" name="update">
    <c:if test="${requestScope.message != null }">
		<br>
		<font color="red">${requestScope.message }</font>
		
		<br>
	</c:if>
    <input type="hidden" name="news_id" value="<%=news_id%>"/>
	<input type="hidden" name="news_oldName" value="<%=news_oldName%>"/>
        <table>
            <tr style="text-align: right">
                <td width="10.3%" style="font-size: 1.2em">title:</td>
                <td width="23%" style="font-size: 1.2em"><input id="p1" name="news_name" type="text" style="height: 26px" value="<%= news_name %>"></td>
                <td width="10.3%" style="font-size: 1.2em">author:</td>
                <td width="23%" style="font-size: 1.2em"><input id ="acount" name="news_author" type="text" style="height: 26px" value="<%= news_author %>"></td>
                <td width="10.3%" style="font-size: 1.2em">time:</td>
                <td width="23%" style="font-size: 1.2em"><input id="city" name="news_time" type="text" style="height: 26px" value="<%= news_time %>"></td>
            </tr>
        </table>
        <button style="height: 32px; width: 50%; margin-left: 25%; font-size: 1.3em; background-color: limegreen; color: white; margin-top: 3%" onclick="return form_submit()" >UPDATE</button>
   
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
