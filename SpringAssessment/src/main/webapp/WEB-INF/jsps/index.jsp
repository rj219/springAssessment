<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<script type="text/javascript">
	function passvalidation()
	{
		var pass = document.getElementById("pass").value
		var cpass = document.getElementById("cPass").value
		var submit = document.getElementById("submit")
		
		var passerr = document.getElementById("passerr")

		if(pass != cpass)
			{
			  passerr.innerHTML="Cpass must be same"
				submit.disabled=true;
			}
		else
			{
			passerr.innerHTML=""
				submit.disabled=false;
			}	
	}
</script>
</head>
<body>
<span>${msg}</span>
<form:form action="reg" modelAttribute="emp" method="post">
<table border="1">
<form:hidden path="id"/>
<tr>
<td><form:label path="fname">First Name</form:label></td>
<td><form:input path="fname"/></td>
</tr>
<tr>
<td><form:label path="lname">Last Name</form:label></td>
<td><form:input path="lname"/></td>
</tr>
<tr>
<td><form:label path="email">Email</form:label></td>
<td><form:input path="email"/></td>
</tr>
<tr>
<td><form:label path="phone">Mobile</form:label></td>
<td><form:input path="phone"/></td>
</tr>
<tr>
<td><form:label path="address">Address</form:label></td>
<td><form:input path="address"/></td>
</tr>
<tr>
<td><form:label path="gender">Gender</form:label></td>
<td><form:radiobutton path="gender" value="male"/>Male
<form:radiobutton path="gender" value="female"/>Female</td>
</tr>
<tr>
<td><form:label path="pass">Password</form:label></td>
<td><form:input path="pass"/></td>
</tr>
<tr>
<td><form:label path="cPass">Confirm Password</form:label></td>
<td><form:input path="cPass" onkeyup="passvalidation()"/></td>
<span id="passerr"></span>
</tr>

</table>
<input type="submit" id="submit">

</form:form>

</body>
</html>