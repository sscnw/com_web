
<%--
  Created by IntelliJ IDEA.
  User: wzf
  Date: 2017/8/22
  Time: 下午8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="news.domain.News"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../otherPage/error.html" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>newsManage</title>
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
    <script type="text/javascript" src="scrips//mvc/WebContent/scripts/jquery-1.7.2.js"></script>

</head>

<body style="background-image: url(./src/img/bg.jpg);">
<!--顶部导航栏-->

<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="adminWelcome.jsp">Home</a></li>
    <li class="leading"><a class="leading" href="newsList.jsp" style="background-color: white; color: black">News</a></li>
    <li class="leading"><a class="leading" href="../secondPage/userList.jsp">Users</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="../index.jsp">Sign Out</a></li>
</ul>
  <script language="JavaScript">
 function form_submit() {
        var x = document.getElementById('news_name');
        var y = document.getElementById('news_author');
        var w = document.getElementById('news_content');
        var e = document.getElementById('news_time');
        if (x.value == "" || w.value == "" || e.value == "" || y.value=="") {
            alert("Please complete information")
            return false;
        }
        document.getElementById('create_user').submit();
    }

</script>
<%--发布--%>
<c:if test="${requestScope.message!=null }">
<br>
<font color="red">${requestScope.message }</font>
<br>

</c:if>	

<div style="width: 66%; color: black; margin-left: auto; margin-right: auto; margin-top: 4%">
    <p style="color: black; font-size: 1.8em; text-indent: 0; margin-left: 3.5%; margin-top: 0; margin-bottom: 3%">Submit news</p>
    <form action="add.doNews" method="post" id="create_user">
        <table style="margin-left: -2.3%">
            <tr style="text-align: right">
            
       
                <td width="7.5%" style="font-size: 1.2em">title:</td>
                <td width="17%" style="font-size: 1.2em"><input name="news_name" type="text" style="height: 26px" id="news_name"></td>
                <td width="10%" style="font-size: 1.2em">author:</td>
                <td width="17%" style="font-size: 1.2em"><input name="news_author" type="text" style="height: 26px" id="news_author"></td>
                <td width="8.5%" style="font-size: 1.2em">time:</td>
                <td width="17%" style="font-size: 1.2em"><input name="news_time" type="text" style="height: 26px" id="news_time"></td>
            </tr>
        </table>
        
    
    <p style="color: black; font-size: 1.2em; text-indent: 0; margin-left: 3.5%; margin-bottom: 0; margin-top: 1.4%">content:</p>
    <textarea name="news_content" rows="15" cols="139" style="; margin-left: 3.5%; margin-top: 1%" id="news_content"></textarea><br>
    <button style="height: 32px; width: 50%; margin-left: 25%; font-size: 1.3em; background-color: limegreen; color: white; margin-top: 3%" onclick="return form_submit()">SUBMIT</button>
</form>
</div>
<%--管理--%>
<div style="width: 66%; color: black; margin-left: auto; margin-right: auto; margin-top: 4%; border-top: solid; border-top-width: 1px">
    <p style="color: black; font-size: 1.8em; text-indent: 0; margin-left: 3.5%; margin-top: 2%; margin-bottom: 3%; padding-top: 4%">Manage news</p>
    

 
    <form action="query.doNews" method="post">
        <table style="margin-left: -2.3%">
            <tr style="text-align: right">
            
       
                <td width="7.5%" style="font-size: 1.2em">title:</td>
                <td width="17%" style="font-size: 1.2em"><input name="news_name" type="text" style="height: 26px"></td>
                <td width="10%" style="font-size: 1.2em">author:</td>
                <td width="17%" style="font-size: 1.2em"><input name="news_author" type="text" style="height: 26px"></td>
                <td width="8.5%" style="font-size: 1.2em">time:</td>
                <td width="17%" style="font-size: 1.2em"><input name="news_time" type="text" style="height: 26px"></td>
            </tr>
        </table>
        
    
    <p style="color: black; font-size: 1.2em; text-indent: 0; margin-left: 3.5%; margin-bottom: 0; margin-top: 1.4%">content:</p>
    <textarea name="news_content" rows="15" cols="139" style="; margin-left: 3.5%; margin-top: 1%"></textarea><br>
    <button style="height: 32px; width: 50%; margin-left: 25%; font-size: 1.3em; background-color: limegreen; color: white; margin-top: 3%" onclick="this.form.submit()">Query</button>
</form>

</div>
<%
		List<News> news_=(List<News>) request.getAttribute("news_");
		if(news_!=null&&news_.size()>0){
%>
    <table style="word-break: break-all; text-align: center">
        <tr style="height: 34px">
            <th width="70px" style="font-size: 1.3em">No.</th>
            <th width="90px" style="font-size: 1.3em">id</th>
            <th width="50%" style="font-size: 1.3em">title</th>
            <th width="180px" style="font-size: 1.3em">author</th>
            <th width="180px" style="font-size: 1.3em">time</th>
            <th width="215px" style="font-size: 1.3em">operation</th>
        </tr>
     
			<%int count = 0;
			for(News news:news_){ 
			count++;
			%>
		       
            <tr style="height: 26px">
                <td class="newsList" width="70px"><%= count %></td>
                <td class="newsList" width="90px"><%=news.getNews_id() %></td>
                <td class="newsList" width="50%"><%=news.getNews_name() %></td>
                <td class="newsList" width="180px"><%=news.getNews_author() %></td>
                <td class="newsList" width="180px" style="font-size: 0.8em; vertical-align: middle"><%=news.getNews_time() %></td>
                <td class="newsList" width="215px">
                    <a href="edit.doNews?news_id=<%=news.getNews_id() %>" style="color: blue">update</a>
                    &nbsp;
                    <a href="delete.doNews?news_id=<%=news.getNews_id()%>" style="color: red">delete</a>
                </td>
            </tr>
    <%
        }
    %>
    </table>
    <%
        }
    %>
</div>	
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
        <li class="ending" style="margin-left: 4.5%"><img class="ending" src="./img/china.png" alt="china" width="16px" height="16px"></li>
    </ul>
</div>
</body>
</html>

