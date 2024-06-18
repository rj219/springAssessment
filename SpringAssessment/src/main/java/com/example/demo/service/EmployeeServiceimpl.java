package com.example.demo.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;
import com.example.demo.repo.EmployeeRepo;
@Service
public class EmployeeServiceimpl implements EmployeeService{

	@Autowired
	EmployeeRepo repo;
	
	@Override
	public void AddorUpdate(Employee emp) {
		// TODO Auto-generated method stub
		repo.save(emp);
	}

	@Override
	public ArrayList<Employee> viewAllEmployee() {
		// TODO Auto-generated method stub
		return (ArrayList<Employee>) repo.findAll();
	}

	@Override
	public void deleteEmp(int id) {
		// TODO Auto-generated method stub
		repo.deleteById(id);
		
	}

	@Override
	public Employee getById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).orElseThrow();
	}

}
