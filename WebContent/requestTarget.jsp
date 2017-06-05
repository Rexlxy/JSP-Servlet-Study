<%@ page language="java" contentType="text/html; charset=utf-8"
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
	// get values
	String name = (String) request.getAttribute("name");
	String nickname = (String) request.getAttribute("外号");
	//get header information
	Enumeration enu = request.getHeaderNames();
	while(enu.hasMoreElements()){
		String headerName = (String) enu.nextElement();
		String headerValue = request.getHeader(headerName);
	
%>
<h4><%=headerName %>&nbsp;<%=headerValue %></h4>
<%
}
	%>
<h3> Redirected page with request</h3>
<font>姓名： <%= name %></font><br/>
<font>外号： <%= nickname %></font><br/>
</body>
</html>