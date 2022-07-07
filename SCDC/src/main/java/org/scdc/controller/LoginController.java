package org.scdc.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Workbook;
import org.scdc.service.ExportService;
import org.scdc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;


@Controller
@RequestMapping("/*")
@AllArgsConstructor
public class LoginController {
	
	UserService userService;
	
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
    
	private ExportService service;
	@GetMapping("/export/report")
    public String report(Model model){
		System.out.println(service);
		model.addAttribute("report",service.getList());
		model.addAttribute("count",service.count());
		return "/export/report";

    }
   
    @RequestMapping(value="excel.xls",method=RequestMethod.GET)
	public String excel(Model model, HttpServletResponse response) {
		//엑셀 파일에 출력할 데이터 생성
//		List<String>list = new ArrayList<String>();
//		list.add("Encapsulation(캡슐화)");
//		list.add("Inheritance(상속성)");
//		list.add("Polymorphism(다형성)");
//		list.add("BBakdaegari(박대가리성)");
//		//출력할 데이터 저장
//		//model.addAttribute("이름",데이터);
//		model.addAttribute("list",list);
    	
    	String fileName = "test12345";
    	
		response.setContentType("application/msexcel");
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName + ".xls");
        
        
        try(OutputStream os=response.getOutputStream()) {
        	
        	Workbook workbook = userService.makeExcel();
        	
			workbook.write(os);
			
			workbook.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "/test";
	}
    
   
    @GetMapping("test")
    public void test() {
    	
    }

    @RequestMapping(value = "excelread.do", method = RequestMethod.GET)
	public String excelread(Model model) {
		List<Map<String, Object>> list = userService.readExcel();
		model.addAttribute("list", list);

	return "excelread";
}
}
