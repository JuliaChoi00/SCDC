package org.scdc.controller;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PageDTO;
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
	public void export(Model model) {
		model.addAttribute("stock",service.getStockList());
	}
	
	@PostMapping("/export/export")
		
	    public String export(int[] exportQuantity, ExportVO vo, Model model,RedirectAttributes rttr){
		
				int[] partCodeArray = service.getPartCodeList().stream().mapToInt(i->i).toArray();
					
					for(int i = 0; i < partCodeArray.length;i++) {
						System.out.println("partcod: "+ partCodeArray[i]);
						vo.setPartCode(partCodeArray[i]);
						System.out.println("exportQantity"+exportQuantity[i]);
						vo.setExportQuantity(exportQuantity[i]);
						service.register(vo);
					}
					rttr.addFlashAttribute("export_date",vo.getExport_date());//출고날자 전송
		return "redirect:/export/report"; //주의 :새로운 url 요청
    }
	
	@GetMapping({"export/get","/export/modify"})
	public void get(int partCode,Model model) {
		model.addAttribute("stock",service.get(partCode));
	}
	
//	 rttr 추가 /리다이렉트시 사용
	@PostMapping("/export/modify")
	public String modify(StockVO vo,RedirectAttributes rttr) {
		log.info("글수정 요청");
		if(service.modify(vo))
			rttr.addFlashAttribute("state","modify");
		return "redirect:/export/dashboard";
	}
	 
	@GetMapping("/export/dashboard")
    public String dashboard(Model model){
		System.out.println(service);
		
	//	model.addAttribute("export",service.getStockList());
		return "/export/dashboard";
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
