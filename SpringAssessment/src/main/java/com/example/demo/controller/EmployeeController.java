package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Employee;
import com.example.demo.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService service;
	
	@RequestMapping("/")
	public String index(Model model)
	{
		model.addAttribute("emp", new Employee());
		model.addAttribute("edata", service.viewAllEmployee());
		return "Home";
	}
	@RequestMapping("index")
	public String Home(Model model)
	{
		model.addAttribute("emp", new Employee());
		model.addAttribute("edata", service.viewAllEmployee());
		return "index";
	}
	@RequestMapping(value = "/reg",method = RequestMethod.POST)
	public String Registration(@ModelAttribute("emp") Employee emp , Model model)
	{
		service.AddorUpdate(emp);
		model.addAttribute("emp", new Employee());
		model.addAttribute("msg", "Registration Successfull");
		model.addAttribute("edata", service.viewAllEmployee());
		if(emp.getId()>0)
		{
			return "view";
			
		}
		else
		{
			return "index";
		}
		
	}
	@RequestMapping("/delete")
	public String deleteEmployee(@RequestParam("did")int id)
	{
		service.deleteEmp(id);
		return "redirect:viewEmployee";
	}
	
	@RequestMapping("/edit")
	public String Edit(@RequestParam("eid")int id, Model model)
	{
		Employee emp = service.getById(id);
		model.addAttribute("emp", emp);
		model.addAttribute("edata", service.viewAllEmployee());
		
		return "index";
	}
	@RequestMapping("viewEmployee")
	public String viewEmp(Model model)
	{
		model.addAttribute("emp", new Employee());
		model.addAttribute("edata", service.viewAllEmployee());
		return "view";
	}
	

}
