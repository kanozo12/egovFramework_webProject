package egovframework.kanozo.com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefulatController {

	@RequestMapping(value="/profile.do")
	public String profilePage() {
		return "egovframework/profile/profile";
	}
}
