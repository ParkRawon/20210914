package co.ko.prj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/charts.do")
	String charts() {
		return "home/charts";
	}
}
