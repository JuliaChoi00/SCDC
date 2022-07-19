package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class StockVO {
	private int stock_no;
	private String partCode;
	private int stockQuantity;
	private Date stock_date;

}
