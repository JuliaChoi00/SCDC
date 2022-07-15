package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RequestPartVO {
	
	public int export_no;
	public int req_no;
	public int partCode;
	public String process;
	public int requestQuantity;
	public String makeDate;
	
}
