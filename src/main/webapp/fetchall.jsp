
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1px">
<tr>
<th>id</th>
<th>name</th>
<th>email</th>
<th>password</th>
<th>gender</th>
<th>ph_no</th>
<th>country</th>
<th>checkbox</th>
<th>update</th>
<th>delete</th>
<th>fetchid</th>
</tr>
<c:forEach var="dto" items="${list}">
<tr>
<th>${dto.id}</th>
<th>${dto.name}</th>
<th>${dto.email}</th>
<th>${dto.password}</th>
<th>${dto.gender}</th>
<th>${dto.ph_no}</th>
<th>${dto.country}</th>
<th>${dto.checkbox}</th>
<th><a href="update?id=${dto.id}">update</a></th>
<th><a href="delete?id=${dto.id}">delete</a></th>
<th><a href="fetchid?id=${dto.id}">fetchid</a></th>
</tr> 
</c:forEach>
</table>
</body>
</html>