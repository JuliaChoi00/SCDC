package org.scdc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.StockVO;


public interface ExportMapper {
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
	 
	 public List<Integer> getPartCodeList();
	 
/////////////////////////////////
	 
//2. 품목 상세보기
public PartVO read1(int partCode);

//2-1. 재고품목 보기
public List<Integer> read(int partCode);

////////////////////////////////

//3. 출고  --cf)등록, 삭제, 수정일 경우 리턴이 int이면 처리된 글의 개수가 반납된다. ->insert
public void insert(ExportVO vo);


//3-1. 출고 (등록된 글번호를 알아야 하는 경우, pk값을 알아야 하는 경우)
public void insertSelectKey(ExportVO vo);

////////////////////////////////

//4. 재고
public int update(StockVO vo);
	 
//5. 글목록 개수 ->count
	 public int count();
	 

}//mapper
