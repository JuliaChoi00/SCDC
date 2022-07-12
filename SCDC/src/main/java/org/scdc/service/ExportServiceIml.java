package org.scdc.service;

import java.util.List;

import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.StockVO;
import org.scdc.mapper.ExportMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ExportServiceIml implements ExportService {
	private ExportMapper mapper;

	//품목  상세보기
	@Override
	public PartVO get(int partCode) {
		// TODO Auto-generated method stub
		return null;
	}

	//1-1.목록보기
	@Override
	public List<PartVO> getList1() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}
	
	//1-1-1. 목록보기 with page
	@Override
	public List<PartVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri);
	}
	
	//1-2 목록보기 재고량 추가 
	@Override
	public List<StockVO> getStockList() {
		// TODO Auto-generated method stub
		
		return mapper.getStockList();
	}
	
	//1-2-1 목록보기 재고량 추가 
	@Override
	public List<StockVO> getStockListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		
		return mapper.getStockListWithPaging(cri);
	}
	//1-3 목록보기 출고량 추가 
	
	@Override
	public List<ExportVO> getExportList(){
		return mapper.getExportList();
		
	}
	
	//2. 품목 상세보기
	@Override
	public PartVO read(int partCode) {
		return mapper.read(partCode);
	}

	////////////////////////////////

	//3. 출고  --cf)등록, 삭제, 수정일 경우 리턴이 int이면 처리된 글의 개수가 반납된다. ->insert
	//3-1. 출고 (등록된 글번호를 알아야 하는 경우, pk값을 알아야 하는 경우)
	@Override
	public void register(ExportVO vo) {
		mapper.insert(vo);
	//	mapper.insertSelectKey(vo); //출고시 partCode 알기
		
	}
	////////////////////////////////

	//4. 재고
	@Override
	public boolean modify(StockVO vo) {
		return (mapper.update(vo)==1);
	}
	
	//품목총개수
	@Override
	public int count() {
		// TODO Auto-generated method stub
		return mapper.count();
	}
}
