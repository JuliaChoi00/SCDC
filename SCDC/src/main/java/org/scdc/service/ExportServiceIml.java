package org.scdc.service;

import java.util.List;

import org.scdc.domain.ComponentVO;
import org.scdc.domain.ExportProductVO;
import org.scdc.domain.Criteria;
import org.scdc.domain.ExportVO;
import org.scdc.domain.PartVO;
import org.scdc.domain.ProductVO;
import org.scdc.domain.ReportVO;
import org.scdc.domain.RequestPartVO;
import org.scdc.domain.StockVO;
import org.scdc.mapper.ExportMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ExportServiceIml implements ExportService {
	private ExportMapper mapper;

	//ǰ��  �󼼺���
	@Override
	public PartVO get(int partCode) {
		// TODO Auto-generated method stub
		return null;
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
	@Override
	public PartVO read(int partCode) {
		return mapper.read(partCode);
	}

	////////////////////////////////

	//3. ���  --cf)���, ����, ������ ��� ������ int�̸� ó���� ���� ������ �ݳ��ȴ�. ->insert
	//3-1. ��� (��ϵ� �۹�ȣ�� �˾ƾ� �ϴ� ���, pk���� �˾ƾ� �ϴ� ���)
	@Override
	public void register(ExportVO vo) {
		mapper.insert(vo);
	//	mapper.insertSelectKey(vo); //���� partCode �˱�
		
	}
	////////////////////////////////

	//4. ���
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
	public void requestPart(RequestPartVO vo) {
		mapper.requestPart(vo);
		
	}


}
