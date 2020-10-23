package egovframework.kanozo.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

	@RequestMapping(value = "/template/main.do")
	public String defaultMainPage() {
		return "main.page";
	}

}
