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
	request.setAttribute("name", "滕立远");
	request.setAttribute("外号", "龟哥" );
	%>

<jsp:forward page="requestTarget.jsp"></jsp:forward>
</body>
</html>