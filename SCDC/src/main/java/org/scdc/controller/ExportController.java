package org.scdc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/*")
@Log4j
public class ExportController {
	
	@RequestMapping("/exportPart")
	public void exportPart() {
		log.info("exportPart");
	}

	@RequestMapping("/doExportPart")
	public void doExportPart() {
		log.info("doExportPart");
	}
}
