package org.scdc.service;

import java.util.List;

import org.scdc.domain.ComponentVO;
import org.scdc.domain.ExportProductVO;
import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ProductVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.StockVO;
import org.springframework.stereotype.Component;
import org.scdc.domain.StockVO;

public interface ExportService {
	
	//리포트
	public List<ReportVO> report();
	
	//선택한 그룹과 일치하는 품목리스트 가져오기(리포트)
	public List<ReportVO> getSelectLibrary(String libraryLists);
	
	//그룹가져오기 (리포트)
	public List<PartVO> getLibrary();
	
	//전체 재고 정보 가져오기(엑셀)
	public List<PartVO> makeExcel();
	
	//리포트 재고 정보 가져오기(리포트엑셀)
	public List<ReportVO> makeReportExcel();
	
	//품목 상세보기
	public PartVO get(int partCode);
	
	//목록보기
	public List<PartVO> getList1();
	
	// 목록보기  with page
	public List<PartVO> getList(Criteria cri);
	
	//목록보기 재고 추가
	public List<StockVO> getStockList();
	
	//목록보기 재고 추가 with page
	public List<StockVO> getStockListWithPaging(Criteria cri);
	
	// 목록보기(출고량 추가)
	public List<ExportVO> getExportList();
	
	//2. 품목 상세보기
	public PartVO read(int partCode);

	////////////////////////////////

	//3. 출고  --cf)등록, 삭제, 수정일 경우 리턴이 int이면 처리된 글의 개수가 반납된다. ->insert
	//3-1. 출고 (등록된 글번호를 알아야 하는 경우, pk값을 알아야 하는 경우)
	
	public void register(ExportVO vo);

	////////////////////////////////

	//4. 재고
	public boolean modify(StockVO vo);
	
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
