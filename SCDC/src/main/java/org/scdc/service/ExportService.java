package org.scdc.service;

import java.util.List;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.StockVO;

public interface ExportService {
	
	
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
	
	//글개수 
	public int count();

}
