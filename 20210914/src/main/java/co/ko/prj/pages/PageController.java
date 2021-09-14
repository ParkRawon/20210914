package co.ko.prj.pages;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("/login.do")
	String login() {
		return "pages/login";
	}
	
	@RequestMapping("/register.do")
	String register() {
		return "pages/register";
	}
	
	@RequestMapping("/forgotPassword.do")
	String forgotPassword() {
		return "pages/forgotPassword";
	}
	
	@RequestMapping("/error.do")
	String error() {
		return "pages/error";
	}
	
	@RequestMapping("/blank.do")
	String blank() {
		return "pages/blank";
	}
}
