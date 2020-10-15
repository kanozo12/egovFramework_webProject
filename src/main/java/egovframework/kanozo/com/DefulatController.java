package egovframework.kanozo.com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefulatController {

	@RequestMapping(value = "/template/main.do")
	public String defaultMainPage() {
		return "main.page";
	}

}
