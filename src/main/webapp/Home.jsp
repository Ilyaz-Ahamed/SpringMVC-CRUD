<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${msg1}
  <a href="insert.jsp"><h1>A.insert</h1></a>
   <a href="fetchall"><h1>B.fetchall</h1></a>
     <a href="delete.jsp"><h1>C.delete</h1></a>
      <a href="update.jsp"><h1>D.update</h1></a>
           <a href="fetchid1.jsp"><h1>E.fetchid</h1></a>
</body>
</html>