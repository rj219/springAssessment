package com.example.demo.service;

import java.util.ArrayList;

import com.example.demo.model.Employee;

public interface EmployeeService {
	
	public void AddorUpdate(Employee emp);
	public ArrayList<Employee> viewAllEmployee();
	public void deleteEmp(int id);
	public Employee getById(int id);

}
