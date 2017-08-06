<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="com.java1234.model.People" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	List all = new LinkedList();
People person1 = new People();
person1.setName("p1");
People person2 = new People();
person2.setName("p2");
People person3 = new People();
person3.setName("p3");
	all.add(0, person1);
	all.add(1, person2);
	all.add(2, person3);
	request.setAttribute("friends", all);
%>


<h1>${friends[0].name }</h1>
<h1>${friends[1].name }</h1>
<h1>${friends[2].name }</h1>

</body>
</html>