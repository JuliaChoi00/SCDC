package org.scdc.mapper;

import java.util.List;

import org.scdc.domain.PartVO;


public interface ExportMapper {
	//1. 목록보기 -> select
	 public List<PartVO> getList();
	 
	//2. 글목록 개수 ->count
	 public int count();

}//mapper
