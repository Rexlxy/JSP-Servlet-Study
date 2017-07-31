    <%@ page import="java.util.*" %><%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*" isErrorPage="true"%>
   
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
	if(exception != null){
		out.println("Error message: ");
		out.println(exception.getMessage());
	}

%>

</body>
</html>