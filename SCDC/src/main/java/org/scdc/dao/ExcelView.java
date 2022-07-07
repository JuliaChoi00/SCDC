package org.scdc.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

public class ExcelView extends AbstractXlsView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// model은 map이라 object로 리턴 그래서 형변환 해야한다.
		List<String> list = (List<String>) model.get("list");

		// 시트 만들기
		Sheet sheet = workbook.createSheet("sheet1");
		// 시트만들었으니까 시트 옵션 설정
		sheet.setColumnWidth(0, 5120);
		// 행 만들기 0번행 생성된거
		Row titleRow = sheet.createRow(0);
		// 셀만들기
		Cell cell = titleRow.createCell(0);
		// 셀에 글자 출력
		cell.setCellValue("객체 지향 언어의 3대 특징");

		int idx = 1;
		for (String str : list) {
			// 행이 1, 2, 3. . .생길거고
			Row row = sheet.createRow(idx);
			// 1씩늘어나는 row에 cell 넣고
			Cell c = row.createCell(0);
			// 그 셀에 list를 순회한 str을 넣고
			c.setCellValue(str);
			idx = idx + 1;
		}
	}
}