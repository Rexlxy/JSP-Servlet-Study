<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.java1234.model.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<%-- <jsp:useBean id="student" scope="page" class="com.java1234.model.Student" /> --%>
<body>
<form action="javaBean05.jsp" method="post">
<table>
<tr>
	<td>姓名：</td>
	<td><input type="text" name="name"></td>
</tr>
<tr>
	<td>年龄： </td>
	<td><input type="text" name="age"></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="提交"> </td>
</tr>
</table>
</form>
</body>
</html>