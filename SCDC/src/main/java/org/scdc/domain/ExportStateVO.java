package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ExportStateVO {

	private int req_no;
	private String makedate;
	private int confirm;
	private Date export_date;
}
