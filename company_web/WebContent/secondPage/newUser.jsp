<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:if test="${requestScope.message != null }">
		<br>
		<font color="red">${requestScope.message }</font>
		<br>
		<br>
	</c:if>
	
	<form action="add.doUser" method="post">
		<table>
			<tr>
				<td>UserName:</td>
				<td><input type="text" name="user_name" value="${param.user_name }"/></td>
			</tr>
			<tr>
				<td>UserPassword:</td>
				<td><input type="password" name="user_password" value="${param.user_password }"/></td>
			</tr>
			<tr>
			   <td>user_check_password：</td><td><input type="password" name="check_user_password" id="check_user_password"></td>
			</tr>
			<tr>
			   <td>user_sex：</td>
			   <td><input type="radio" name="user_sex" id="gender_male" value="male">男&nbsp;&nbsp;
			   <input type="radio" name="user_sex" id="gender_female" value="female">女</td>
			</tr>
			<tr>
				<td>UserAddress:</td>
				<td><input type="text" name="user_address" value="${param.user_address}"/></td>
			</tr>
			<tr>
				<td>UserAccount_id:</td>
				<td><input type="text" name="user_account_id" value="${param.user_account_id}"/></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Submit"/></td>
			</tr>
		</table>
	</form>
	
</body>
</html>