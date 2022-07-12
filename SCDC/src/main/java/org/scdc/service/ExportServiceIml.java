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
}
