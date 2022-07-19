package org.scdc.mapper;

import java.util.List;

import org.scdc.domain.ComponentVO;
import org.scdc.domain.ExportProductVO;
import org.scdc.domain.ExportStateVO;
import org.apache.ibatis.annotations.Param;
import org.scdc.domain.Criteria;
import org.scdc.domain.ExportListVO;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ProductVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.RequestPartVO;
import org.scdc.domain.StockVO;
import org.scdc.domain.WearhouseVO;


public interface ExportMapper {
	
	 //3. 최초입고
     public void  insertInport(StockVO vo);
	
     //4. 재고
     public int updateAfterInport(StockVO vo);
	
	 //6. 총  출고량  
     public Integer getExportQuantity(String partCode);
	
	 //재고현황
	 public List<WearhouseVO> getInportList();
	
	//1. 목록보기 -> select
	 public List<PartVO> getList();
	 
	 //1-1 목록보기  (페이지  처리))
	 public List<PartVO> getListWithPaging(Criteria cri);
	 
	 //1-2 목록보기(재고량 추가)
	 public List<StockVO> getStockList();
	 
	//1-2-1 목록보기(재고량 추가)
	 public List<StockVO> getStockListWithPaging(Criteria cri);
		 
	 //1-2-2 목록보기(재고량 추가)
	 public List<StockVO> getStockList1(PartVO vo);
	 //1-2-3 목록보기(재고량 추가) with page 처리
	 public List<StockVO> getStockList(@Param("vo") PartVO vo, @Param("cri") Criteria cri);
	 
		//1-3 목록보기(출고량 추가)
	 public List<ExportVO> getExportList();
	 
	 public List<String> getPartCodeList();
	 
/////////////////////////////////
	 
//2. 품목 상세보기
public PartVO read1(int partCode);

//2-1. 재고품목 보기
public List<Integer> read(int partCode);

////////////////////////////////

//3. 출고  --cf)등록, 삭제, 수정일 경우 리턴이 int이면 처리된 글의 개수가 반납된다. ->insert
public void insertExport(ExportVO vo);

//3-1. 출고 (등록된 글번호를 알아야 하는 경우, pk값을 알아야 하는 경우)
public void insertSelectKey(ExportVO vo);

////////////////////////////////

//4. 재고
public int update(StockVO vo);
	 
//5. 글목록 개수 ->count
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
	
	//전체 재고 정보 가져오기(엑셀)
	public List<PartVO> makeExcel();
	
	//리포트 재고 정보 가져오기(리포트엑셀)
	public List<ReportVO> makeReportExcel();
	
	//전체 재고금액 정보 가져오기(리포트)
	public List<ReportVO> report();
	
	//선택된 그룹별 품목리스트 가져오기(리포트)
	public List<ReportVO> getSelectLibrary(String libraryLists);
	
	//그룹가져오기(레포트)
	public List<PartVO> getLibrary();
	
	//출고요청목록 가져오기
	public List<ExportListVO> getExportPage();
	
	//출고요청하기
	public void requestPart (RequestPartVO vo);

	//출고현황페이지 보기
	public List<ExportStateVO> getExportState();
	
	//해당요청번호 기준 출고페이지 가져오기
	public ExportStateVO getReqNo(int req_no);

}//mapper
