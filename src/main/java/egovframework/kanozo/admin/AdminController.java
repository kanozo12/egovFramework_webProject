package egovframework.kanozo.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping(value = "/admin.do")
	public String adminPage() {
		return "admin/adminBoard.page";
	}
}
