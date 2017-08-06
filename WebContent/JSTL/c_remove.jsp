<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<!-- 用法一 -->
<body>
<c:set var="name" value="Rex" scope="request"></c:set>
<c:out value="${name }"></c:out>
<c:remove var="name"/>
<h1><c:out value="${name }" default="Removed"></c:out></h1>
</body>
</html>