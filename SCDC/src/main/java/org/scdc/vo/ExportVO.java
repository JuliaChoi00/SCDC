package org.scdc.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ExportVO {
	private int Export_No;
	private Date Export_Date;
	private int ExportQuantity;
	private int PartCode;
	
}
