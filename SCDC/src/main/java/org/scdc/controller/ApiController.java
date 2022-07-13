package org.scdc.controller;

import java.util.List;

import org.scdc.domain.PartVO;
import org.scdc.domain.ReportVO;
import org.scdc.service.ExportService;
import org.scdc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/api")
@AllArgsConstructor
public class ApiController {
	
	private ExportService service;

    @RequestMapping("/page2")
    public List<PartVO> page2(long productLists){
    	System.out.println("페이지2 값확인 : " + productLists);
    	System.out.println(service.getSelectProduct(productLists));
		return service.getSelectProduct(productLists);
    }
    
    @RequestMapping("/report")
    public List<ReportVO> report(String libraryLists){
    	System.out.println("리포트페이지 값확인 : " + libraryLists);
    	System.out.println(service.getSelectLibrary(libraryLists));
    	return service.getSelectLibrary(libraryLists);

    }

}