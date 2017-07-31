<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		// get user's username
		String userName = request.getParameter("userName");
		// get user's password
		String pwd = request.getParameter("passWord");
		String remember = request.getParameter("rememberPWD");
		System.out.println("user name is: "+ userName);
		System.out.println("password is: "+ pwd);
		System.out.println("remember: "+ remember);
		
		if("remember!!!".equals(remember)){
			Cookie userNameAndPwd = new Cookie("userNameAndPwd", userName+"-"+pwd);
			//remember for one week
			userNameAndPwd.setMaxAge(1*60*60*24*7);
			response.addCookie(userNameAndPwd);
			System.out.println("Successfully set cookie!!!");
		}
		response.sendRedirect("response3.jsp");
	%>
</body>
</html>