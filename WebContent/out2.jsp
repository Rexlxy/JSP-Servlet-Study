    <%@ page import="java.util.*" %><%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*" %>
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
	int totalBuffer = out.getBufferSize();
	int available = out.getRemaining();
	int using = totalBuffer - available;
	out.println("Total buffer size: " + totalBuffer);
	out.println("Available buffer size: " + available);
	out.println("Using buffer size: "+ using);

%>

</body>
</html>