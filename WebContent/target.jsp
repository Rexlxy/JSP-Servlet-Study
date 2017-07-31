<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<jsp:useBean id="student" class="com.java1234.model.Student" scope="application"/>

<body>
<h1>Application中取值：</h1>
<h1>Name: <jsp:getProperty name="student" property="name"/></h1>
<h1>Age: <jsp:getProperty name="student" property="age"/></h1>
</body>
</html>