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
	pageContext.setAttribute("Name00", "pageInfo");
	request.setAttribute("Name01", "requestInfo");
	session.setAttribute("Name02", "sessionInfo");
	application.setAttribute("Name03", "applicationInfo");
	
	out.println("Using pageContext to get values: <br/>");
	out.println("page: " + pageContext.getAttribute("Name00")+"<br/>");
	out.println("request: " + pageContext.getRequest().getAttribute("Name01")+"<br/>");
	out.println("session: " + pageContext.getSession().getAttribute("Name02")+"<br/>");
	out.println("application: " + pageContext.getServletContext().getAttribute("Name03"));
%>

</body>
</html>