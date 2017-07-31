<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<jsp:useBean id="student" class="com.java1234.model.Student" scope="application"/>
<jsp:setProperty property="name" name="student" value=" Xingyu Liu"/>
<jsp:setProperty property="age" name="student" value="123"/>
<body>
 Application设置值完毕
</body>
</html>