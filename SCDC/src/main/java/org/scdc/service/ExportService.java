package org.scdc.service;

import java.util.List;

import org.scdc.domain.PartVO;
import org.springframework.stereotype.Component;

public interface ExportService {
	
	
	//품목 상세보기
	public PartVO get(int partCode);
	
	//목록보기
	public List<PartVO> getList();
	
	//글개수 
	public int count();

}
