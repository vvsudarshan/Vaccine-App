package com.tap.vaccine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomepageController {
	
	@RequestMapping("/home")
    public String home(Model model) {
		System.out.println("return index file");
		return "index";
    }


}

