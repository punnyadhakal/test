<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
	<%@ taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix ="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration form</title>
 <%@ include file ="header.jsp"%>

</head>
<body>
<div class = "container">
<div class ="panel">
<div class ="panel-default">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-8 jumbotron" style =background-color:aqua>

<fieldset>
<legend>Employee Edit Page</legend>
	<div>
		<form action="update_employee" method="post" >
		<div>
				Employee id :<input type="number" name="id" value ="${emp.id}" readonly="readonly" class ="form-control">
			</div>
		

			<div>
				Employee Name :<input type="text" name="employeeName" value = "${emp.employeeName }" class="form-control">
			</div>

			<div>
				User Name :<input type="text" name="userName" value ="${emp.userName}"  class="form-control">
			</div>
			<div>
				Employee Password :<input type="Password" name="password" value="${emp.password}" class="form-control">
			</div>

			<div>
				Employee Email :<input type="email" name="email" value ="${emp.email}" class = "form-control">
			</div>

			<div>
				Mobile NO.<input type="number" name="mobileNo" value ="${emp.mobileNo}" class="form-control">


			</div>
			<div>
				Employee DOB :<input type="date" name="dob" value ="${emp.dob}" class="form-control">
			</div>
			<div>
				Gender :<input type="radio" name="gender" value="male"${emp.gender=='male'?'checked':''}>Male
			</div>
			<div> 
				<input type="radio" name="gender" value="female"${emp.gender=='female'?'checked':''}>Female
			</div>

			<div>
				 Employee Hobbies :<input type="checkbox" name="hobbies" value="reading"
				 <c:if test="${fn:contains(emp.hobbies,'reading')}">checked</c:if> >Reading
				<input type="checkbox" name="hobbies" value="playing"<c:if test="${fn:contains(emp.hobbies,'playing')}">checked</c:if>>Playing
			</div>
			<div>
				Department: <select name="department" class="form-control">
					<option value= "hr"${emp.department==' hr'?'selected':'' }>Hr</option>
					<option value="nursing"${emp.department =='nursing'?'selected':'' }>Nursing</option>
					<option value="admin"${emp.department =='admin'?'selected':'' }>Admin</option>

				</select>     
			</div>  
			<div> 
				<input type="submit" value="submit" class="btn btn-primary">
			</div>
		</form>
		</div>
		</fieldset>
	</div>
	</div>
	</div>
	</div>
	</div>


</body>
</html>