package org.scdc.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.scdc.service.ExportService;
import org.scdc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;


@Controller
@RequestMapping("/*")
@AllArgsConstructor
public class LoginController {
	
	private ExportService service;

	
	UserService userService;
	
	@RequestMapping("/login")
	public String login() {
		System.out.println("==== loginPage Start ====");
		return "login";
	}
	//로그인 기능 테스트용
	@RequestMapping("/authentication")
	public void authentication() {
		
	}
	
	// 로그아웃
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
    	 session.setAttribute("userLoginInfo", null);
        return "redirect:login";
    }
    
    //메인페이지(전체재고)
    @RequestMapping("/page2")
    public void page2(Model model){
		model.addAttribute("getList",service.getList1());
		model.addAttribute("getProduct",service.getProduct());
		System.out.println(service.getProduct());
    }
    
    //리포트
	@RequestMapping("/report")
    public void report(Model model){
		model.addAttribute("report",service.report());
		model.addAttribute("library",service.getLibrary());
		System.out.println(service.getLibrary());		
	}    

	     
}