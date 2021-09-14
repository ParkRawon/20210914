package co.ko.prj.components;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComponentController {

	@RequestMapping("/buttons.do")
	public String buttons() {
		
		return "components/buttons";
	}
	
	@RequestMapping("/cards.do")
	public String cards() {
		
		return "components/cards";
	}
}
