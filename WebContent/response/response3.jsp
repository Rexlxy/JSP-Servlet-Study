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
<script type="text/javascript">
function reset(){
	document.getElementById("userName").value="";
	document.getElementById("passWord").value="";
}

<%
	String userName = null;
	String pwd = null;
	Cookie[] cookies = request.getCookies();
	for(int i=0; cookies!=null && i<cookies.length;i++ ){
		if(cookies[i].getName().equals("userNameAndPwd")){
			userName = cookies[i].getValue().split("-")[0];
			pwd = cookies[i].getValue().split("-")[1];

		}
	}
	System.out.println("In the response3 page:");
	System.out.println("Username is: "+ userName);
	System.out.println("Passwrod is: " + pwd);
	if(userName == null){
		userName = "";
	}
	
	if(pwd == null){
		pwd = "";
	}
%>
</script>
<body>
	<form action="userLogin.jsp" method="post">
		<table>
			<caption>Login</caption>
			<tr>
				<td>User Name:</td>
				<td><input type="text" id="userName" name="userName" value="<%=userName %>" /></td>
			</tr>
			<tr>
				<td>Pass Word:</td>
				<td><input type="password" id="passWord" name="passWord" value="<%=pwd %>" /></td>
			</tr>
			<tr>
				<td>Remember your password</td>
				<td><input type="checkbox" id="remember" name="rememberPWD" value="remember!!!" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login" /></td>
				<td><input type="button" value="Reset" onclick="reset()"></td>
			</tr>
		</table>
	</form>
</body>
</html>