package org.scdc.domain;

import lombok.Data;

@Data
public class ExportProductVO {
	private String partCode;
	private String partName;
	private String nickName;
	private int stockquantity;
}
