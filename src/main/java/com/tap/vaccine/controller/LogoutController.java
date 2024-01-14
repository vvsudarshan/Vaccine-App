package com.tap.vaccine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LogoutController {
	LogoutController(){
		System.out.println("Default Logout Controller");
	}

	@RequestMapping(value="/logoutButton")
    public String logout(HttpServletRequest request) {
		System.out.println("logout invocked()");
        HttpSession session = request.getSession(false);
        if (session != null) {
        	String n =(String) session.getAttribute("userEmail");
            session.invalidate();
        }
        return "login";
    }
}
