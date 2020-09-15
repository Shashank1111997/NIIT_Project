<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@include file="scripts.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD A STUDENT</title>
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
				<b><font color="white">ENTER CREDENTIALS</font></b>
			</center>
		</h1>
		<br><br>
	<div class="container">

		<sf:form action="saveStudent" method="post" commandName="stu">
			<div class=form-group>
				<label for="name"><font color="white">STUDENT NAME:</font></label>
				<sf:input path="name" type="text" id="name" class="form-control"
					placeholder="ENTER YOUR NAME" />
				<sf:errors path="name" cssClass="errorName" />
			</div>
			<br>
			<br>
			<div class=form-group>
				<label for="course"><font color="white">COURSE OPTED:</font></label>
				<sf:input path="course" type="text" id="course" class="form-control"
					placeholder="ENTER YOUR COURSE" />
				<sf:errors path="course" cssClass="errorName" />
			</div>
			<br>
			<br>
			<div class=form-group>
				<label for="address"><font color="white">STUDENT ADDRESS:</font></label>
				<sf:input path="address" type="text" id="address"
					class="form-control" placeholder="ENTER YOUR ADDRESS" />
				<sf:errors path="address" cssClass="errorName" />
			</div>
			<br>
			<br>

			<center>
				<input type="SUBMIT" value="SAVE" class="btn btn-success">
			</center>


		</sf:form>
	</div>
</body>
</html>