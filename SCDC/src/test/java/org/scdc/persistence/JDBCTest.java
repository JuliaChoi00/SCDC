package org.scdc.persistence;

import static org.junit.Assert.fail;

import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {

	
	@Test
	public void testConnection() {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");//?��?��?��버로?��
		DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
				"book_ex", "book_ex");
		log.info("JDBC ���Ἲ��");
		}catch(Exception e) {
			e.printStackTrace();
			fail("�������");

			//fail(e.getMessage());
		}
	}//testConnection
}
