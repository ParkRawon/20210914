package co.ko.prj.utilities;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UtilitiesController {

	@RequestMapping("/utilColor.do")
	public String utilColor() {
		
		return "utilities/utilColor";
	}
	@RequestMapping("/utilBorder.do")
	String utilBorder() {
		
		return "utilities/utilBorder";
	}
	
	@RequestMapping("/utilAnimation.do")
	String utilAnimation() {
		return "utilities/utilAnimation";
	}
	
	@RequestMapping("/utilOther.do")
	String utilOther() {
		return "utilities/utilOther";
	}
	
	
}
