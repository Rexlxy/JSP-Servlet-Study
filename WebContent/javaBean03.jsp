<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ page import="com.java1234.model.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");
	Student student = new Student();
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	student.setAge(Integer.parseInt(age));
	student.setName(name);
%>
<h1>输入结果：</h1>
<h2>姓名：<%=student.getName() %></h2>
<h2>年龄：<%=student.getAge() %></h2>

</body>
</html>