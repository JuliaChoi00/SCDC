package org.scdc.domain;

import lombok.Data;

@Data
public class ExportListVO {
	
	private int export_no;
	private int req_no;
	private int process;
	private String partCode;
	private int stockQuantity;
	private int requestQuantity;
	private int exportQuantity;
	
}
