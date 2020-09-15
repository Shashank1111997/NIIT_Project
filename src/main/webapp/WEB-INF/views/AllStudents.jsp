<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="scripts.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" http-equiv="refresh" content="15">
<style type="text/css">
body {
	background-image: url("https://cdn57.androidauthority.net/wp-content/uploads/2015/11/00-best-backgrounds-and-wallpaper-apps-for-android.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
	
</head>
<body>
		<h1>
			<center>
				<b><font color="white">RECORDS</font></b>
			</center>
		</h1><br><br><br><br><br>
	<div class="container">
		<table class="table" style="text-align: center;">
			<tr>
				<th><font color = "white">ID</font></th>
				<th><font color = "white">NAME</font></th>
				<th><font color = "white">COURSE</font></th>
				<th><font color = "white">ADDRESS</font></th>
				<th colspan="2" style="text-align: center;"><font color = "white">OPERATIONS</font></th>
			</tr>
			<c:forEach items="${allData}" var="Student">
				<tr>
					<td><font color = "white">${Student.id}</font></td>
					<td><font color = "white">${Student.name}</font></td>
					<td><font color = "white">${Student.course}</font></td>
					<td><font color = "white">${Student.address}</font></td>
					<td><a href="deleteStudent?id=${Student.id}"
						class="btn btn-danger"><i class="glyphicon glyphicon-trash"></i>&nbsp;&nbsp;DELETE</a></td>
					<td><a href="editStudent?id=${Student.id}"
						class="btn btn-info"><i class="glyphicon glyphicon-edit"></i>&nbsp;&nbsp;UPDATE</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>