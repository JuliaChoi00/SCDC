package org.scdc.service;

import java.util.List;

import org.scdc.domain.ComponentVO;
import org.scdc.domain.ExportProductVO;
import org.scdc.domain.PartVO;
import org.scdc.mapper.ExportMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ExportServiceIml implements ExportService {
	private ExportMapper mapper;

	@Override
	public PartVO get(int partCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PartVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return mapper.count();
	}

	@Override
	public List<ExportProductVO> getListFromRefrigerator() {
		return mapper.getListFromRefrigerator();
	}

	@Override
	public ComponentVO getProductCode(int productCode) {
		return mapper.productCode(productCode);
	}

}
