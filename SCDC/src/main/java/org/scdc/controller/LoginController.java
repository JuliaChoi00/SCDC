package org.scdc.controller;

import javax.servlet.http.HttpSession;

import org.scdc.service.ExportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/*")
@AllArgsConstructor
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
    
//    @RequestMapping("page2")
//
//    public String page2(){
//
//    return "/page2";
//
//    }
    
	private ExportService service;
	@GetMapping("/export/report")
    public String report(Model model){
		System.out.println(service);
		model.addAttribute("report",service.getList());
		model.addAttribute("count",service.count());
		return "/export/report";

    }
   

}
