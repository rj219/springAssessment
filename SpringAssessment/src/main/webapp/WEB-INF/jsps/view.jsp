<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>
<table border="1">
<tr>
<th>Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Phone</th>
<th>Address</th>
<th>Gender</th>
<th>Password</th>
<th>Confirm Password</th>
<th colspan="2">Action</th>
</tr>

<c:forEach var="c" items="${edata}">
<tr>
<td>${c.getId()}</td>
<td>${c.getFname()}</td>
<td>${c.getLname()}</td>
<td>${c.getEmail()}</td>
<td>${c.getPhone()}</td>
<td>${c.getAddress()}</td>
<td>${c.getGender()}</td>
<td>${c.getPass()}</td>
<td>${c.getcPass()}</td>
<td><a href="delete?did=${c.getId()}" onclick="return confirm('Are you Sure wnat to delete ?')" >Delete</a></td>
<td><a href="edit?eid=${c.getId()}">Edit</a></td>
</tr>

</c:forEach>

</table>

</body>
</html>