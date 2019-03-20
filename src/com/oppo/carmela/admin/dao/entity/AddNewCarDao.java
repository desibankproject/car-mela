package com.oppo.carmela.admin.dao.entity;

import java.sql.Connection;

import java.sql.PreparedStatement;

import com.oppo.carmela.customer.dao.entity.AddNewCar;
import com.oppo.carmela.utils.CarsConnection;
import java.sql.Timestamp;
import java.util.Date;

public class AddNewCarDao {
	
	
	public static void addCar(AddNewCar car) {
		
		try {
			//JDBC Programming// 
			Connection conn = CarsConnection.getConnection();
			String sql ="insert into gallery_tbl(title,subtitle,year,description,image,doe) value (?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, car.getTitle());
			pstmt.setString(2,car.getSubtitle());
			pstmt.setInt(3, car.getYear());
			pstmt.setString(4, car.getDescription());
			pstmt.setString(5,car.getImage());
			Timestamp timestamp = new Timestamp(new Date().getTime());
			pstmt.setTimestamp(6,timestamp);
			
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
