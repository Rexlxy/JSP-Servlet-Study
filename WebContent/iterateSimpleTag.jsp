<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="myPrefix" uri="/WEB-INF/java1234.tld" %>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<% 
	List<String> people =  new ArrayList<String>();
	people.add("REX");
	people.add("Xingyu Liu");
	people.add("Nan Zhou");
	pageContext.setAttribute("people", people);
%>
<myPrefix:iterate2 items="people" var="p">
	<h2>${p }</h2>
</myPrefix:iterate2>
</body>
</html>