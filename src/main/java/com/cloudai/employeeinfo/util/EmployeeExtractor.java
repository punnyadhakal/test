  package com.cloudai.employeeinfo.util;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.cloudai.employeeinfo.model.Employee;

public class EmployeeExtractor implements ResultSetExtractor<Employee> {

	@Override
	public Employee extractData(ResultSet rs) throws SQLException, DataAccessException {
		Employee employee = new Employee();
		employee.setId(rs.getInt("id"));
		employee.setEmployeeName(rs.getString("name"));
		employee.setDepartment(rs.getString("department"));
		employee.setEmail(rs.getString("email"));
		employee.setUserName(rs.getString("user_name"));
		employee.setHobbies(rs.getString("hobbies"));
		employee.setGender(rs.getString("gender"));
		employee.setPassword(rs.getString("password"));
		employee.setDob(rs.getDate("dob"));
		employee.setMobileNo(rs.getLong("mobile_No"));
		
		
		
		return employee;
	}

}