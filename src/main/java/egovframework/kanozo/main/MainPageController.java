package egovframework.kanozo.main;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.kanozo.main.cmm.FreeBoardSampleVO;
import egovframework.kanozo.main.service.MainPageService;

@Controller
public class MainPageController {
	
	@Resource(name = "mainpageService")
	private MainPageService mainPageService;
	
	@RequestMapping(value = "/template/main.do")
	public String defaultMainPage(Model model, HttpServletRequest req) {
		
		List<FreeBoardSampleVO> free = mainPageService.freeBoardList();
		
		model.addAttribute("free", free);
		
		
		return "main.page";
	}

}
