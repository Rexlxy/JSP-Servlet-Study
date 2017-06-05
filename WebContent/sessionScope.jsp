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
	// set two page scope values: key -> value
	session.setAttribute("var1", "刘星宇");
	session.setAttribute("var2", 21 );
%>
<jsp:forward page="sessionTarget.jsp"></jsp:forward>
</body>
</html>