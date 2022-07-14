package org.scdc.controller;

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
@RequestMapping("export/*")
@Log4j
@AllArgsConstructor

class ExportController {
	
	private ExportService service;
	
	@GetMapping("/export")
    public void export(Model model){
		System.out.println(service);
		
//		model.addAttribute("export",service.getStockList());
    }
	
//	 rttr �߰� /�����̷�Ʈ�� ���
	@PostMapping("/register")
	public String register(ExportVO vo, RedirectAttributes rttr) {
		log.info("��� ��û");
		service.register(vo);
		rttr.addFlashAttribute("partCode",vo.getPartCode());//�Էµ� �۹�ȣ ����
		//Flash�� �����ϰ� �Ǹ� ���������� �������� ó���� 
		return "redirect:/board/export"; //���� /board/list.jsp�� �ƴ� ���ο� url ��û�̴�
	}
	
//	 rttr �߰� /�����̷�Ʈ�� ���
	@PostMapping("//modify")
	public String modify(StockVO vo,RedirectAttributes rttr) {
		log.info("�ۼ��� ��û");
		if(service.modify(vo))
			rttr.addFlashAttribute("state","modify");
		return "redirect:/export/dashboard";
	}
	 
	 
	@GetMapping("/stock")
    public void stock(Model model,Criteria cri){
		System.out.println(service);
		
		model.addAttribute("stock",service.getStockListWithPaging( cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
		
    }
	
	@GetMapping("/report")
    public void report(Model model,Criteria cri){
		System.out.println(service);
	//	model.addAttribute("report",service.getList());
	//	model.addAttribute("count",service.count());
		
		model.addAttribute("report",service.getList(cri));
		model.addAttribute("pageMaker",new PageDTO(cri,service.count()));
    }	
	
	//출고요청 페이지
	@GetMapping("/requestPart")
	public void requestPart() {
	}
	
	
	//등록/requestPart(post) -> 요청/page2
	@PostMapping("/requestPart")
	public String register(RequestPartVO vo, RedirectAttributes rttr) {
		log.info("출고 요청");
		service.requestPart(vo);
		rttr.addFlashAttribute("export_no", vo.getExport_no());	//입력된 글번호 전송 addFlashAttribute로 전송하면 내부적으로 세션으로 처리됨 (새로고침했을때는 값이 안넘어감)
		return "redirect:/page2";	//주의/board/list.jsp 가 아님 새로운 url 요청이다.
		//redirect하는 이유가 값을 안지우면 값을 계속 가지고 있는데 여기서 새로고침으로 무한생성이 가능하므로
	}

}
