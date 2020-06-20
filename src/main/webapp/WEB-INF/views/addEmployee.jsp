<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration form</title>

</head>
<body>
	<div>
		<form action="save_employee" method="post">

			<div>
				Employee Name :<input type="text" name="employeeName">
			</div>

			<div>
				User Name :<input type="text" name="userName">
			</div>
			<div>
				Employee Password :<input type="Password" name="password">
			</div>

			<div>
				Employee Email :<input type="email" name="email">
			</div>

			<div>
				Mobile NO.<input type="number" name="mobileNo">


			</div>
			<div>
				Employee DOB :<input type="date" name="dob">
			</div>
			<div>
				Gender :<input type="radio" name="gender" value="Male">Male
			</div>
			<div>
				<input type="radio" name="gender" value="FeMale">Female
			</div>

			<div>
				Hobbies :<input type="checkbox" name="hobbies" value="Reading">Reading
				<input type="checkbox" name="hobbies" value="Playing">Playing
			</div>
			<div>
				Department: <select name="department">
					<option value="hr">Hr</option>
					<option value="nursing">Nursing</option>
					<option value="admin">Admin</option>

				</select>
			</div>
			<div>
				<input type="submit" value="submit">
			</div>
		</form>
	</div>

</body>
</html>