package com.aws.ec2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
	
	@GetMapping("/hello")
	public String hello() {
		
		return "Spring Boot Application Deployed by test2 in EC2 Sucesfully Using CICD";
	}

}