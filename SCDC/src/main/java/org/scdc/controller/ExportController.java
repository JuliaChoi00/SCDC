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
    public void export(Model model){
		System.out.println(service);
		
		model.addAttribute("export",service.getStockList());
    }
	
//	 rttr �߰� /�����̷�Ʈ�� ���
	@PostMapping("/export/register")
	public String register(ExportVO vo, RedirectAttributes rttr) {
		log.info("��� ��û");
		service.register(vo);
		rttr.addFlashAttribute("partCode",vo.getPartCode());//�Էµ� �۹�ȣ ����
		//Flash�� �����ϰ� �Ǹ� ���������� �������� ó���� 
		return "redirect:/board/export"; //���� /board/list.jsp�� �ƴ� ���ο� url ��û�̴�
	}
	
//	 rttr �߰� /�����̷�Ʈ�� ���
	@PostMapping("/export/modify")
	public String modify(StockVO vo,RedirectAttributes rttr) {
		log.info("�ۼ��� ��û");
		if(service.modify(vo))
			rttr.addFlashAttribute("state","modify");
		return "redirect:/export/dashboard";
	}
	 
	 
	@GetMapping("/export/stock")
    public void stock(Model model,Criteria cri){
		System.out.println(service);
		
		model.addAttribute("stock",service.getStockListWithPaging( cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
		
    }
	
	@GetMapping("/export/report")
    public void report(Model model,Criteria cri){
		System.out.println(service);
	//	model.addAttribute("report",service.getList());
	//	model.addAttribute("count",service.count());
		
		model.addAttribute("report",service.getList(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
    }	

}
