<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.java1234.model.People" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	People zhangsan = new People();
	zhangsan.setName("Zhang san");
	zhangsan.setAge(12);
	zhangsan.setId(1);
	request.setAttribute("zhangsan", zhangsan);

%>


<h1>ID: ${zhangsan.id }</h1>
<h1>Name: ${zhangsan.name }</h1>
<h1>Age: ${zhangsan.age }</h1>
</body>
</html>