package edu.java.teamproject.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PostDetailController {
	
	private static final Logger logger = LoggerFactory.getLogger(PostDetailController.class);
	
	@RequestMapping(value="/post-write")
	public void PostDetail() {
		
		
		logger.info("post-write들어옴");
	}
	

}
