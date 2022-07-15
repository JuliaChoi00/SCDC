package org.scdc.controller;

import java.util.Date;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PageDTO;
import org.scdc.domain.PartVO;
import org.scdc.domain.RequestPartVO;
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
@RequestMapping("/export/*")
@Log4j
@AllArgsConstructor

class ExportController {
	
	private ExportService service;
	
	//출고상황 페이지
	@GetMapping("/stock")
	public void stock() {
		
	}
		 
	
	//출고요청 페이지
	@GetMapping("/requestPart")
	public void requestPart() {
		
	}	
	
	//등록/requestPart(post) -> 요청/page2
	@PostMapping("/requestPart")
	public String request(int[] req_no, int[] partCode, String[] process, String[] makeDate, int[] requestQuantity, RequestPartVO vo, Model model) {
		
		for(int i = 0; i < req_no.length; i++) {
			vo.setReq_no(req_no[i]);
			vo.setPartCode(partCode[i]);
			vo.setProcess(process[i]);
			vo.setMakeDate(makeDate[i]);
			vo.setRequestQuantity(requestQuantity[i]);
			System.out.println("요청번호 보여주세요 : " + req_no[i]);
			service.request(vo);
		}
		return "redirect:/page2";	
	}

	
	@GetMapping("/export")
	public void export(Model model) {
		model.addAttribute("stock",service.getStockList());
	}
	
	@PostMapping("/export")
		
	    public String export(int[] exportQuantity, ExportVO vo, Model model,RedirectAttributes rttr){
		
				int[] partCodeArray = service.getPartCodeList().stream().mapToInt(i->i).toArray();
					
					for(int i = 0; i < partCodeArray.length;i++) {
						System.out.println("partcod: "+ partCodeArray[i]);
						vo.setPartCode(partCodeArray[i]);
						System.out.println("exportQantity"+exportQuantity[i]);
						vo.setExportQuantity(exportQuantity[i]);
						service.register(vo);
					}
					rttr.addFlashAttribute("export_date",vo.getExport_date());//����� ����
		return "redirect:/export/report"; //���� :���ο� url ��û
    }
	
	@GetMapping({"/get","/modify"})
	public void get(int partCode,Model model) {
		model.addAttribute("stock",service.get(partCode));
	}
	
//	 rttr �߰� /�����̷�Ʈ�� ���
	@PostMapping("/modify")
	public String modify(StockVO vo,RedirectAttributes rttr) {
		log.info("�ۼ��� ��û");
		if(service.modify(vo))
			rttr.addFlashAttribute("state","modify");
		return "redirect:/export/dashboard";
	}
	 
	@GetMapping("/dashboard")
    public String dashboard(Model model){
		System.out.println(service);
		
	//	model.addAttribute("export",service.getStockList());
		return "/export/dashboard";
    }
	 

}
