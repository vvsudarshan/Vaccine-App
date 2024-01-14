package com.tap.vaccine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tap.vaccine.service.RegisterService;

@Controller
public class RegisterController {


	public RegisterController() {
		System.out.println("RegisterController invocked....");


	}

	@Autowired
	public RegisterService registerService;


	@RequestMapping(value="/takeRegisterAction")
	public String goToRegister() {
		System.out.println("Register class invocked..");

		return "register";

	}

	@RequestMapping(value="/savedetails")
	public String register(@RequestParam String username, @RequestParam String email,
	        @RequestParam String password, @RequestParam long mobileNumber,
	        @RequestParam String gender, @RequestParam String dob,Model model) {
	    System.out.println("register invoked()...");
	    System.out.println("user: " + username);
	    System.out.println("email: " + email);
	    System.out.println("password: " + password);
	    System.out.println("phoneNumber: " + mobileNumber);
	    System.out.println("gender: " + gender);
	    System.out.println("dob: " + dob);

	    model.addAttribute("response", "Successful");

		System.out.println("Register Page");

		boolean validateDetails = registerService.validateDetails(username, email, password, mobileNumber, gender, dob);
		if (validateDetails) {
			boolean registrationEmail = registerService.sendRegistrationEmail(username, email, password);
			if (registrationEmail) {
		        model.addAttribute("mailSuccess", "Mail sent, check your Email");

		        System.out.println("Mail Sent Successfully");
		    } else {
		        model.addAttribute("mailnotSuccess", "Something went wrong while sending Email, Connection Issue");
		        System.out.println("Sending Mail unsuccessful");
		    }

            model.addAttribute("regSucess", "and Registered Successfully");

        }
		else {
            model.addAttribute("regFail", "Something Went Wrong. Please try again");

        }

		return "register";
	}



	@RequestMapping(value = "/alreadyHaveAnAccount")
	public String alreadyAccountHave() {
		return "login";
	}

	@RequestMapping(value = "/register")
	public String gotoRegister() {
		return "register";
	}
}

