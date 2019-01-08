package edu.java.teamproject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserSignUpTest {
	
	private static Logger logger = LoggerFactory.getLogger(UserSignUpTest.class);
	
	@RequestMapping(value="/UserSignUpTest", method=RequestMethod.GET)
	public void userSignUp() {
		logger.info("로그인 페이지 이동");
	}
	
	@RequestMapping(value="/home", method=RequestMethod.POST)
	public void userSignUpPost() {
		
	}

}
