    <%@ page import="java.util.*" %><%@ page language="java" contentType="text/html; charset=utf-8"
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
	String var1 = (String) session.getAttribute("var1");
	int var2 = (Integer) session.getAttribute("var2");
%>
<h2>Session result from Page.jsp</h2>
<font>var1 is: <%=var1 %></font><br/>
<font>var2 is: <%=var2 %></font><br/>
</body>
</html>