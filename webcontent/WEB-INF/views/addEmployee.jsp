<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration form</title>
<%@include file ="header.jsp"%>

</head>
<body>

	<div class="container">
	<div class ="panel">
	<div class = "panel-default">
	<div class ="row">
	<div class="col-md-2"></div>
	<div class="col-md-8 jumbotron" >
		<form action="save_employee" method="post" class="form-horizontal">
		<fieldset>
		<legend>Employee Registration form</legend>
		<div class="form-group"></div>

			<div id="l">
			<div class ="form-group">
				Employee Name :<input type="text" name="employeeName" class="form-control">
			</div>
           </div>
			<div class="form-group">
				User Name :<input type="text" name="userName" class="form-control">
			</div>
			<div class="form-group">
				Employee Password :<input type="Password" name="password" class="form-control">
			</div>

			<div class="form-group">
				Employee Email :<input type="email" name="email" class="form-control">
			</div>

			<div class="form-group">
				Mobile NO.<input type="number" name="mobileNo" class="form-control">


			</div>
			<div class="form-group">
				Employee DOB :<input type="date" name="dob" class="form-control">
			</div>
			<div class="form-group">
				Gender :<input type="radio" name="gender" value="Male">Male
			</div>
			<div class="form-group">
				<input type="radio" name="gender" value="Female">Female
			</div>

			<div class="form-check">
				Hobbies :<input type="checkbox" name="hobbies" value="reading" class = "form-check-input">Reading
				<input type="checkbox" name="hobbies" value="playing" class = "form-check-input">Playing
			</div>
			<div class="form-group">
				Department: <select name="department" class="form-control">
					<option value="hr">Hr</option>
					<option value="nursing" class="fo">Nursing</option>
					<option value="admin">Admin</option>

				</select>
			</div>
			<div class="form-group">
				<input type="submit" value="Submit" class ="btn btn-primary">
			</div>
			</fieldset>
		</form>
		</div>
		<div class="col-md-2">   </div>
		</div>
	</div>
	</div>
	</div>

</body>
</html>