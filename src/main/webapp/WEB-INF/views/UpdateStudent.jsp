<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@include file="scripts.jsp"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.errorName {
	color: red;
}

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
				<b><font color = "white">UPDATE RECORD</font></b>
			</center>
		</h1>
		<br><br><br> <br>
	<div class="container">
		<sf:form action="updateStudent" commandName="data">
			<div class="form-group">
				<sf:input path="id" type="hidden" value="${data.id}"
					class="form-control" />
			</div>
			<label for="name"><font color = "white">STUDENT NAME:</font></label>
			<sf:input path="name" id="name" value="${data.name}"
				class="form-control" />
			<sf:errors path="name" cssClass="errorName" />
			<br> <br>
			<div class="form-group">
				<label for="course"><font color = "white">COURSE:</font></label>
				<sf:input path="course" id="course" value="${data.course}"
					class="form-control" />
				<sf:errors path="course" cssClass="errorName" />
				<br>
			</div>
			<div class="form-group">
				<label for="address"><font color = "white">STUDENT ADDRESS:</font></label>
				<sf:input path="address" id="address" value="${data.address}"
					class="form-control" />
				<sf:errors path="address" cssClass="errorName" />
				<br> <br>
			</div>
			<center><input type="submit" value="UPDATE" class="btn btn-primary"></center>
		</sf:form>
	</div>
</body>
</html>