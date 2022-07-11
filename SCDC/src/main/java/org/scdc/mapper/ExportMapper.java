package org.scdc.mapper;

import java.util.List;

import org.scdc.domain.ComponentVO;
import org.scdc.domain.ExportProductVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ProductVO;
import org.scdc.domain.StockVO;


public interface ExportMapper {
	//1. 목록보기 -> select
	 public List<PartVO> getList();
	 
	//2. 글목록 개수 ->count
	 public int count();
	 
	//3. 선택한 품목 목록보기
	 public List<ExportProductVO> getListFromProduct();
		 
	//4. 제품코드알기
	public ComponentVO productCode(int productCode);
	
	public List<StockVO> getStockQuantity(int stockQuantity);


	//5. 선택한 제품 품목리스트 가져오기
	public List<PartVO> getSelectList();
	
	public List<ProductVO> getProduct();
	
	public List<PartVO> getSelectProduct(long productLists);
	
}//mapper
