package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RequestPartVO {
	
	public int export_no;
	public int req_no;
	public String partCode;
	public String materialProcess;
	public int requestQuantity;
	public String makeDate;
	
}
