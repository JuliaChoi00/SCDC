package org.scdc.service;

import java.util.List;

import org.scdc.domain.ComponentVO;
import org.scdc.domain.ExportProductVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ProductVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.StockVO;
import org.springframework.stereotype.Component;

public interface ExportService {
	
	//리포트
	public List<ReportVO> report();
	
	//선택한 그룹과 일치하는 품목리스트 가져오기(리포트)
	public List<ReportVO> getSelectLibrary(String libraryLists);
	
	//그룹가져오기 (리포트)
	public List<PartVO> getLibrary();
	
	//전체 재고 정보 가져오기(엑셀)
	public List<PartVO> makeExcel();
	
	//품목 상세보기
	public PartVO get(int partCode);
	
	//목록보기
	public List<PartVO> getList();
	
	//선택한 제품의 모든 품목리스트 가져오기
	public List<PartVO> getSelectList();
	
	//선택한 제품코드와 일치하는 품목리스트 가져오기
	public List<PartVO> getSelectProduct(long productLists);
	
	//글개수 
	public int count();
	
	//제품코드알기
	public ComponentVO getProductCode(int productCode);
	
	//선택 제품 품목 목록보기
	public List<ExportProductVO> getListFromProduct();
	
	//재고량알기
	public List<StockVO> getStockQuantity(int stockQuantity);
	
	public List<ProductVO> getProduct();
}
