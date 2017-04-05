package com.techm.learning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {

	@RequestMapping(value ="feedback")
	public ModelAndView getProfile(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("feedback");
		
		return mv;
	}
}
