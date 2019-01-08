package edu.java.teamproject.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.java.teamproject.model.User;
import edu.java.teamproject.service.UserService;

@Controller
@RequestMapping(value = "user")
public class UserController {

	private final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void register() {
		logger.info("register() 호출");
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(User user) {
		logger.info("register({}) 호출", user);
		
		try {
			userService.signUp(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/teamproject/";
	}
	
	

	@RequestMapping(value = "emailConfirm", method = RequestMethod.GET)
	public void emailConfirm(String user_email, Model model) {
		userService.enableUserLogin(user_email);
		model.addAttribute("user_email", user_email);
		
	}
}
