<%@page import="dto.Dto"%>
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
</tr>

<%Dto dt=(Dto) request.getAttribute("msg1"); %>
<tr>
<td><%=dt.getId()%></td>
<td><%=dt.getName()%></td>
<td><%=dt.getEmail()%></td>
<td><%=dt.getGender()%></td>
<td><%=dt.getPassword()%></td>
<td><%=dt.getPh_no()%></td>
<td><%=dt.getCountry()%></td>
<td><%=dt.getCheckbox()%></td>
</tr>


</table>

</body>
</html>