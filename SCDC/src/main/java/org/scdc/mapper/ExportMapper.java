package org.scdc.mapper;

import java.util.List;

import org.scdc.domain.ComponentVO;
import org.scdc.domain.ExportProductVO;
import org.scdc.domain.PartVO;


public interface ExportMapper {
	//1. 목록보기 -> select
	 public List<PartVO> getList();
	 
	//2. 글목록 개수 ->count
	 public int count();
	 
	//3. 냉장고 품목목록보기
	 public List<ExportProductVO> getListFromRefrigerator();
		 
	//4. 제품코드알기
	public ComponentVO productCode(int productCode);


}//mapper
