<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="java.util.*, com.java1234.model.People" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<!-- 用法一 -->
<body>
<%
	String[] array = {"MOM","Father", "Son", "Daugther"};
	pageContext.setAttribute("family", array);
%>
<c:forEach var="people" items="${family }">${people } </c:forEach>
<hr/>
<c:forEach var="people" items="${family }" step="2">${people } </c:forEach>
<hr/>
<c:forEach var="people" items="${family }" begin="2">${people } </c:forEach>
<hr/>
<hr/>
<hr/>
<%
	List<People> pList = new ArrayList<People>();
	pList.add(new People(1, "刘星宇", 20));
	pList.add(new People(2, "周楠", 18));
	pList.add(new People(3, "龟哥", 200));
	pList.add(new People(4, "薛磊", 30));	
	pList.add(new People(5, "刘骊嘉", 35));
	pageContext.setAttribute("friends", pList);
%>
<table>
	<tr>
	<th>ID</th>
	<th>姓名</th>
	<th>年龄</th>
	</tr>

	<c:forEach items="${friends }" var="p">
		<tr>
		<td>${p.id }</td>
		<td>${p.name }</td>
		<td>${p.age }</td>
		</tr>
	</c:forEach> 
</table>
</body>
</html>