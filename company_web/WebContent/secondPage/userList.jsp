<%--
  Created by IntelliJ IDEA.
  User: wzf
  Date: 2017/8/23
  Time: 上午9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../otherPage/error.html" isErrorPage="true" %>
<%@page import="news.domain.User"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>userManage</title>
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
    <script type="text/javascript" src="scrips//mvc/WebContent/scripts/jquery-1.7.2.js"></script>

</head>

<body style="background-image: url(./src/img/bg.jpg);">
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="../adminPage/adminWelcome.jsp">Home</a></li>
    <li class="leading"><a class="leading" href="../adminPage/newsList.jsp">News</a></li>
    <li class="leading"><a class="leading" href="userList.jsp" style="background-color: white; color: black">Users</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="../index.jsp">Sign Out</a></li>
</ul>
  <script language="JavaScript">

     
   
    function form_submit() {
        var x = document.getElementById('p1_');
        var w = document.getElementById('account_');
        var e = document.getElementById('city_');
        var form2 = document.create;
        if (x.value == "" || w.value == "" || e.value == "") {
            alert("Please complete information")
            return false;
        }
        if(form2.user_sex[0].checked == false && form2.user_sex[1].checked == false){
     	   alert("性别必须选择");
     	   form2.user_sex[0].focus();
     	   return false;
     	}
       
        this.form.submit();
    }
    </script>
<%--创建--%>

<c:if test="${requestScope.message!=null }">
<br>
<font color="red">${requestScope.message }</font>
<br>

</c:if>	
<div style="width: 66%; color: black; margin-left: auto; margin-right: auto; margin-top: 4%">
    <p style="color: black; font-size: 1.8em; text-indent: 0; margin-left: 0.8%; margin-top: 0; margin-bottom: 3%">Create user</p>
    <form action="add.doUser" method="post" name="create">
        <table>
            <tr style="text-align: right">
                <td width="7%" style="font-size: 1.2em">name:</td>
                <td width="17%" style="font-size: 1.2em" ><input type="text" id="account_" style="height: 26px" name="user_name"></td>
                <td width="12%" style="font-size: 1.2em" >password:</td>
                <td width="17%" style="font-size: 1.2em" ><input type="text" id="p1_" style="height: 26px" name="user_password"></td>
                <td width="6.5%" style="font-size: 1.2em">city:</td>
                <td width="17%" style="font-size: 1.2em" ><input type="text" id="city_" style="height: 26px" name="user_address"></td>
                <td width="6.5%" style="font-size: 1.2em">sex:</td>
                <td width="17%" style="font-size: 1.2em">
                    <input name="user_sex" type="radio" value="male"> male
                    <input name="user_sex" type="radio" value="female"> female
                </td>
            </tr>
        </table>
        <button style="height: 32px; width: 50%; margin-left: 25%; font-size: 1.3em; background-color: limegreen; color: white; margin-top: 3%" onclick="return form_submit()">CREATE</button>
    </form>
</div>
<%--管理 --%>
<div style="width: 66%; color: black; margin-left: auto; margin-right: auto; margin-top: 3.2%; border-top: solid; border-top-width: 1px">
    <p style="color: black; font-size: 1.8em; text-indent: 0; margin-left: 0.8%; margin-top: 2.8%; margin-bottom: 2.6%">Query user</p>
    <form action="query.doUser" method="post">
        <table>
            <tr style="text-align: right">
                <td width="7%" style="font-size: 1.2em">name:</td>
                <td width="17%" style="font-size: 1.2em"><input type="text" name="user_name" style="height: 26px"></td>
                <td width="12%" style="font-size: 1.2em">password:</td>
                <td width="17%" style="font-size: 1.2em"><input type="text" style="height: 26px" name="user_password"></td>
                <td width="6.5%" style="font-size: 1.2em">city:</td>
                <td width="17%" style="font-size: 1.2em"><input type="text" style="height: 26px" name="user_address"></td>
                <td width="6.5%" style="font-size: 1.2em">sex:</td>
                <td width="17%" style="font-size: 1.2em">
                    <input name="sex" type="radio" name="user_sex" > male
                    <input name="sex" type="radio" name="user_sex"> female
                </td>
            </tr>
        </table>
        <button style="height: 32px; width: 50%; margin-left: 25%; font-size: 1.3em; background-color: deepskyblue; color: white; margin-top: 3%" onclick="this.form.submit()">QEURY</button>
    </form>
<%
		List<User> users=(List<User>) request.getAttribute("users");
		if(users!=null&&users.size()>0){
%>
</div>
    <table style="word-break: break-all; text-align: center">
        <tr style="height: 34px">
            <th width="70px" style="font-size: 1.3em">No.</th>
            <th width="90px" style="font-size: 1.3em">id</th>
            <th width="50%" style="font-size: 1.3em">name:</th>
            <th width="180px" style="font-size: 1.3em">password:</th>
            <th width="180px" style="font-size: 1.3em">city:</th>
             <th width="180px" style="font-size: 1.3em">sex</th>
            <th width="215px" style="font-size: 1.3em">operation</th>
        </tr>
     
			<%int count = 0;
			for(User user:users){ 
			count++;
			%>
		       
            <tr style="height: 26px">
                <td class="newsList" width="70px"><%= count %></td>
                <td class="userList" width="90px"><%=user.getUser_id() %></td>
                <td class="newsList" width="50%"><%=user.getUser_name() %></td>
                <td class="newsList" width="180px"><%=user.getUser_password()%></td>
                <td class="newsList" width="180px" style="font-size: 0.8em; vertical-align: middle"><%=user.getUser_address() %></td>
                 <td class="newsList" width="180px"><%=user.getUser_sex()%></td>
           
                <td class="newsList" width="215px">
                    <a href="edit.doUser?user_id=<%=user.getUser_id() %>" style="color: blue">update</a>
                    &nbsp;
                    <a href="delete.doUser?user_id=<%=user.getUser_id()%>" style="color: red">delete</a>
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