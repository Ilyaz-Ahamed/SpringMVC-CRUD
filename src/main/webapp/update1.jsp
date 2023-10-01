<%@page import="dto.Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Dto d=(Dto)request.getAttribute("illi");%>
<%int id=d.getId();%>
<%String nm=d.getName();%>
<%String el=d.getEmail();%>
<%int pd=d.getPassword();%>
<%String gd=d.getGender();%>
<%long pn=d.getPh_no();%>
<%String ctr=d.getCountry();%>
<%String cb=d.getCheckbox();%>
<form action="update2">
<pre>

id: <input type="number" name="id" value="<%=id%>" readonly="readonly">

name: <input type="text" name="name" value="<%=nm%>" readonly="readonly">

email: <input type="email" name="email" value="<%=el%>" readonly="readonly">

password: <input type="number" name="password" value="<%=pd%>">

<%if(gd.equals("male")){%>

male: <input type="radio" name="gender" value="male" checked="checked" readonly="readonly">

female: <input type="radio" name="gender" value="female" readonly="readonly">

<%}else{%>

male: <input type="radio" name="gemder" value="female" checked="checked" readonly="readonly">

female: <input type="radio" name="gender" value="male" readonly="readonly">
<%}%>
pnum: <input type="number" name="ph_no" value="<%=pn%>">

country: <input type="text" name="country" value="<%=ctr%>" readonly="readonly">

Accept all terms and conditions:<input type="checkbox" name="checkbox" value="accepted">

<button>submit</button>

</pre>

</form>
</body>
</html>