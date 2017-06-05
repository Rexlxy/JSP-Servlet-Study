<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!--  the client can see this comment -->
<%-- the client can't see this comment --%>
<title>Insert title here</title>
</head>
<body>


<%
	// get values
	String name = (String) application.getAttribute("name");
	int age = (Integer) application.getAttribute("age");
%>
<h3> Application get value</h3>
<font>姓名： <%= name %></font><br/>
<font>年龄： <%= age %></font><br/>
</body>
</html>