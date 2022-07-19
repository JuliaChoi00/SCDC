package org.scdc.controller;

import java.util.Date;
import java.util.List;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PageDTO;
import org.scdc.domain.PartVO;
import org.scdc.domain.RequestPartVO;
import org.scdc.domain.StockVO;
import org.scdc.domain.WearhouseVO;
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
	
	//재고현황 페이지
	private ExportService service;
	
	@GetMapping("/export/stock")
    public void stock(WearhouseVO wo,StockVO so,Model model,Criteria cri){
      System.out.println(service);
      for(WearhouseVO data : service.getInportList()) {
         System.out.println("data : "+data);
         so.setPartCode(data.getPartCode());   
         Integer exportQuantity = service.exportQuantity(data.getPartCode());
         int export;
         if(exportQuantity ==null) {
             export = 0;}
         else
             {export = exportQuantity;}
         
         so.setStockQuantity(data.getWareQuantity()-export);
//         service.registerInport(so);
            if(so.getPartCode()!="") {
               service.modifyAfterInport(so);               
            }else {
               service.registerInport(so);
            }
      }

      
      model.addAttribute("stock",service.getStockListWithPaging(cri));
      model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
   }
	
	//출고상황 페이지
	@GetMapping("/status")
	public void stock(Model model) {
		model.addAttribute("state" ,service.getExportState());
		System.out.println("출고상황값 잘 가져오는지 테스트" + service.getExportState());
		
	}
		 
	
	//출고요청 페이지
	@GetMapping("/requestPart")
	public void requestPart() {
		
	}	
	
	//등록/requestPart(post) -> 요청/page2
	@PostMapping("/requestPart")
	public String request(int[] req_no, String[] partCode, String[] materialProcess, String[] makeDate, int[] requestQuantity, RequestPartVO vo, Model model) {
		
		log.info("vo값:"+vo);
		for(int i = 0; i < req_no.length; i++) {
			vo.setReq_no(req_no[i]);
			vo.setPartCode(partCode[i]);
			vo.setMaterialProcess(materialProcess[i]);
			vo.setMakeDate(makeDate[i]);
			vo.setRequestQuantity(requestQuantity[i]);
			System.out.println("요청번호 보여주세요 : " + req_no[i]);
			service.request(vo);
		}
		return "/status";	
	}

   @GetMapping("/export")
   public void export(Model model) {
      model.addAttribute("stock",service.getStockList());
   }
	
	@PostMapping("/export")
   public String export(int[] exportQuantity, ExportVO vo,RedirectAttributes rttr){
      System.out.println(service);
   
      List<String> list =service.getPartCodeList();
      int i=0;
      for(String temp :list) {
         if(exportQuantity[i]==0)
            vo.setPartCode(temp);
            vo.setExportQuantity(exportQuantity[i]);
            service.registerExport(vo);
            i++;
      }
         
         rttr.addFlashAttribute("export_date",vo.getExport_date());//출고날자 전송
      return "redirect:/export/report"; //주의 :새로운 url 요청
    }
	
	@GetMapping({"/get","/modify"})
	public void get(int partCode,Model model) {
		model.addAttribute("stock",service.get(partCode));
	}
	
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
