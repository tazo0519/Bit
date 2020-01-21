package com.spring.mypage;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	
	
	@RequestMapping(value = "/mypage_main.my", method = RequestMethod.GET)
	public String home(Model model) {
		
		
		
		return "mypage/mypage_main";
	}
	
}
