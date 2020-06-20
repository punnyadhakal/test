package com.cloudai.employeeinfo.repository;
 
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cloudai.employeeinfo.model.Employee;
import com.cloudai.employeeinfo.util.EmployeeRowMapper;

@Repository
public class EmployeeRepositoryImpl implements EmployeeRepository{

	private static final String INSERT_SQL = "Insert into employee_tbl ( name,user_name,email,password,gender,dob,hobbies,department,mobile_No)values(?,?,?,?,?,?,?,?,?)";
	private static final String UPDATE_SQL = "Update employee_tbl set name=?,user_name=?, email=?,password=?,gender=?,dob=?,hobbies=?,department=?,mobile_No=? where id =?";
	private static final String LIST_SQL = "Select * from employee_tbl";
	private static final String GET_BY_ID_SQL = "Select *from employee_tbl where id=?";
	private static final String DELETE_SQL = "Delete from employee_tbl where id =?";
	
	@Autowired
	private DataSource dataSource;

	@Override 
	public void saveEmployeeInfo(Employee employee) {
		getJdbcTemplate().update
		(INSERT_SQL,new Object[] {employee.getEmployeeName(),employee.getUserName(),employee.getEmail(),employee.getPassword(),employee.getGender(),employee.getDob(),employee.getHobbies(),employee.getDepartment(),employee.getMobileNo()});
		
		
	}
	public JdbcTemplate getJdbcTemplate() {
		return new JdbcTemplate(dataSource);
		
	}
	@Override
	public void updateEmployeeInfo(Employee employee) {
		getJdbcTemplate().update
		(UPDATE_SQL,new Object[] {employee.getEmployeeName(),employee.getUserName(),employee.getEmail(),employee.getPassword(),employee.getGender(),employee.getDob(),employee.getHobbies(),employee.getDepartment(),employee.getMobileNo(),employee.getId()});
		
		 
	}
		
  
	@Override
	public void deleteEmployeeInfo(int id) {
	getJdbcTemplate().update(DELETE_SQL, new Object[] {id});
	
	
		
	}
	@Override
	public List<Employee> getAllEmployee() {
		return getJdbcTemplate().query(LIST_SQL,new EmployeeRowMapper());
	}
	@Override
	public Employee getEmployeeById(int id) {
		
		return getJdbcTemplate().query(GET_BY_ID_SQL,new Object[] {id},new EmployeeRowMapper()).get(0);
	}
}
