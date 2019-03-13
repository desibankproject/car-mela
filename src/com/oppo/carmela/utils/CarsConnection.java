package com.oppo.carmela.utils;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 
 * @author Nagendra
 * 
 * This class is used to make connection with mysql
 * database
 */
public class CarsConnection {
	
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public static Connection getConnection() throws Exception {
		  Class.forName("com.mysql.jdbc.Driver"); // this comes from the jar file
		  Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/cars_mela_db", "root","root");
		  return conn;
	}
}
