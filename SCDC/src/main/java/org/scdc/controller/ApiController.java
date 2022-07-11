package org.scdc.controller;

import java.util.List;

import org.scdc.domain.PartVO;
import org.scdc.service.ExportService;
import org.scdc.service.UserService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/api")
@AllArgsConstructor
public class ApiController {
	
	private ExportService service;

    @RequestMapping({"/page2"})
    public List<PartVO> page2(long productLists){
		return service.getSelectProduct(productLists);
    }

}