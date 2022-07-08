package org.scdc.controller;

import org.scdc.service.ExportService;
import org.scdc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/*")
@Log4j
@AllArgsConstructor
public class ExportController {
	
	private ExportService service;

//	@RequestMapping("/exportPart")
//	public void exportPart() {
//		log.info("exportPart");
//	}
//
//	@RequestMapping("/doExportPart")
//	public void doExportPart(Model model) {
//		model.addAttribute("getExportList",service.getExportList());
//		log.info("doExportPart");
//	}
	
}
