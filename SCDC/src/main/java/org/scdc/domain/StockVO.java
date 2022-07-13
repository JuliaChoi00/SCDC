package org.scdc.domain;

import lombok.Data;

@Data
public class StockVO {
	private int stock_no;
	private int partCode;
	private int stockQuantity;
	private int stock_date;

}
