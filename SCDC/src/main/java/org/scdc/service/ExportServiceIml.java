package org.scdc.service;

import java.util.List;

import org.scdc.domain.ComponentVO;
import org.scdc.domain.ExportProductVO;
import org.scdc.domain.ExportStateVO;
import org.scdc.domain.Criteria;
import org.scdc.domain.ExportListVO;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ProductVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.RequestPartVO;
import org.scdc.domain.StockVO;
import org.scdc.domain.WearhouseVO;
import org.scdc.mapper.ExportMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ExportServiceIml implements ExportService {
	private ExportMapper mapper;

	//ǰ��  �󼼺���
	@Override
	public PartVO get1(int partCode) {
		// TODO Auto-generated method stub
		return null;
	}

	//1-1.��Ϻ���
	@Override
	public List<String> getPartCodeList(){
		log.info("ǰ���ڵ帮��Ʈ");
		return mapper.getPartCodeList();
	}
	//1-1.��Ϻ���
	@Override
	public List<PartVO> getList1() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}
	
	//1-1-1. ��Ϻ��� with page
	@Override
	public List<PartVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri);
	}
	
	//1-2 ��Ϻ��� ��� �߰� 
	@Override
	public List<StockVO> getStockList() {
		// TODO Auto-generated method stub
		
		return mapper.getStockList();
	}
	
	//1-2-1 ��Ϻ��� ��� �߰� 
	@Override
	public List<StockVO> getStockListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		
		return mapper.getStockListWithPaging(cri);
	}
	//1-3 ��Ϻ��� ��� �߰� 
	
	@Override
	public List<ExportVO> getExportList(){
		return mapper.getExportList();
		
	}
	
	//2. ǰ�� �󼼺���
	////////////////////////////////
	//2. ǰ�� �󼼺���
	@Override
	public PartVO read1(int partCode) {
		return mapper.read1(partCode);
	}
	//2-1. ǰ�� �󼼺���
	@Override
	public List<Integer> get(int partCode) {
		// TODO Auto-generated method stub
		return mapper.read(partCode);
	}

	////////////////////////////////

	@Override
	public boolean modify(StockVO vo) {
		return (mapper.update(vo)==1);
	}
	
	//ǰ���Ѱ���
	@Override
	public int count() {
		// TODO Auto-generated method stub
		return mapper.count();
	}

	@Override
	public List<ExportProductVO> getListFromProduct() {
		return mapper.getListFromProduct();
	}

	@Override
	public ComponentVO getProductCode(int productCode) {
		return mapper.productCode(productCode);
	}

	@Override
	public List<StockVO> getStockQuantity(int stockQuantity) {
		// TODO Auto-generated method stub
		return mapper.getStockQuantity(stockQuantity);
	}

	@Override
	public List<PartVO> getSelectList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public List<ProductVO> getProduct() {
		// TODO Auto-generated method stub
		return mapper.getProduct();
	}

	@Override
	public List<PartVO> getSelectProduct(long productLists) {
		// TODO Auto-generated method stub
		return mapper.getSelectProduct(productLists);
	}

	@Override
	public List<PartVO> makeExcel() {
		// TODO Auto-generated method stub
		return mapper.makeExcel();
	}

	@Override
	public List<ReportVO> report() {
		// TODO Auto-generated method stub
		return mapper.report();
	}

	@Override
	public List<ReportVO> getSelectLibrary(String libraryLists) {
		// TODO Auto-generated method stub
		return mapper.getSelectLibrary(libraryLists);
	}

	@Override
	public List<PartVO> getLibrary() {
		// TODO Auto-generated method stub
		return mapper.getLibrary();
	}

	@Override
	public List<ReportVO> makeReportExcel() {
		// TODO Auto-generated method stub
		return mapper.makeReportExcel();
	}

	@Override
	public void request(RequestPartVO vo) {
		// TODO Auto-generated method stub
		mapper.requestPart(vo);
	}

	@Override
	public List<ExportListVO> getExportPage() {
		// TODO Auto-generated method stub
		return mapper.getExportPage();
	}

	@Override
	public List<ExportStateVO> getExportState() {
		// TODO Auto-generated method stub
		return mapper.getExportState();
	}

	@Override
	public ExportStateVO getReqNo(int req_no) {
		return mapper.getReqNo(req_no);
	}

	@Override
	public void registerExport(ExportVO vo) {
		// TODO Auto-generated method stub
		mapper.insertExport(vo);

	}
	
   @Override
   public List<WearhouseVO> getInportList() {
      log.info("입고리스트");
      return mapper.getInportList();
   }

   //총  출고량
   @Override
   public Integer exportQuantity(String partCode) {
      // TODO Auto-generated method stub
      return mapper.getExportQuantity(partCode);
   }
		
   //4. 재고
   @Override
   public boolean modifyAfterInport(StockVO vo) {
      return (mapper.updateAfterInport(vo)==1);
   }
   
   ////////////////////////////////
   //3. 입고  --cf)등록, 삭제, 수정일 경우 리턴이 int이면 처리된 글의 개수가 반납된다. ->insert
   @Override
   public void registerInport(StockVO vo) {
      mapper.insertInport(vo);
      
   }

}
