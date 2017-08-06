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
<!-- 用法二 -->
<jsp:useBean id="people" class="com.java1234.model.People" scope="page"/>
<c:set property="id" target="${people }" value="1"></c:set>
<c:set property="name" target="${people }" value="Xingyu Liu"></c:set>
<c:set property="age" target="${people }" value="21"></c:set>
<h1>ID: ${people.id }</h1>
<h1>Name: ${people.name }</h1>
<h1>Age: ${people.age }</h1>
</body>
</html>