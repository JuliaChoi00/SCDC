package org.scdc.domain;

import lombok.Data;

@Data
public class PartVO {
	private int partCode;
	private String partName;
	private String nickName;
	private String library;
	private String drw_No;
	private String drw_Img;
	private String common;
	private String remark;
	private String stockQuantity;
}