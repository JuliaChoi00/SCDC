package org.scdc.controller;

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.spi.LoggerFactory;
import org.scdc.service.UserService;
import org.scdc.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/*")
public class LoginController {
	
	@RequestMapping("/login")
	public String login() {
		System.out.println("==== loginPage Start ====");
		return "login";
	}
	//로그인 기능 테스트용
	@RequestMapping("authentication")
	public void authentication() {
		
	}
	
	// 로그아웃
    @RequestMapping("logout")
    public String logout(HttpSession session) {
    	 session.setAttribute("userLoginInfo", null);
        return "redirect:login";
    }
    
    @RequestMapping("page2")

    public String page2(){

    return "/page2";

    }
   


}
