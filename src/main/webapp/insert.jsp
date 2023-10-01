<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="insertb">

<pre>

id:	<input type="text" name="id">

name:	<input type="text" name="name">

email:  <input type="email" name="email">

pswd:	<input type="password" name="password" placeholder="Enter a password">


male:	<input type="radio" name="gender" value="male">

female: <input type="radio" name="gender" value="female">

ph_no:	<input type="text" name="ph_no">

country:<select name="country">

		<option>INDIA</option>
		
		<option>USA</option>
		
		<option>UK</option>
		
		<option>MALDIVES</option>

</select>

Accept all terms and conditions:<input type="checkbox" name="checkbox" value="accepted">

		<button>Submit</button>
		<button>Reset</button>

</pre>
</form>
</body>
</html>