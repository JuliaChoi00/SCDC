package org.scdc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class StockVO {
	private int stock_no;
	private Date stock_date;
	private int stockQuantity;
	private int partCode;

}
