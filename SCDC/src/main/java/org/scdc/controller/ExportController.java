package org.scdc.controller;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PageDTO;
import org.scdc.domain.PartVO;
import org.scdc.domain.StockVO;
import org.scdc.service.ExportService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("export/*")
@Log4j
@AllArgsConstructor

class ExportController {
	
	private ExportService service;
	
	@GetMapping("/export/export")
    public String export(Model model){
		System.out.println(service);
		
		model.addAttribute("export",service.getStockList());
		return "/export/export";
    }
	
//	 rttr 추가 /리다이렉트시 사용
	@PostMapping("/export/register")
	public String register(ExportVO vo, RedirectAttributes rttr) {
		log.info("출고 요청");
		service.register(vo);
		rttr.addFlashAttribute("partCode",vo.getPartCode());//입력된 글번호 전송
		//Flash로 전송하게 되면 내부적으로 세션으로 처리됨 
		return "redirect:/board/export"; //주의 /board/list.jsp가 아님 새로운 url 요청이다
	}
	
//	 rttr 추가 /리다이렉트시 사용
	@PostMapping("/export/modify")
	public String modify(StockVO vo,RedirectAttributes rttr) {
		log.info("글수정 요청");
		if(service.modify(vo))
			rttr.addFlashAttribute("state","modify");
		return "redirect:/export/dashboard";
	}
	 
	 
	@GetMapping("/export/stock")
    public String stock(Model model,Criteria cri){
		System.out.println(service);
		
		model.addAttribute("stock",service.getStockListWithPaging( cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
		
		return "/export/stock";
    }
	
	@GetMapping("/export/report")
    public String report(Model model,Criteria cri){
		System.out.println(service);
	//	model.addAttribute("report",service.getList());
	//	model.addAttribute("count",service.count());
		
		model.addAttribute("report",service.getList(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
		return "/export/report";
    }	

}
