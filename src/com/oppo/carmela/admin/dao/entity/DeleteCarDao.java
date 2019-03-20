package com.oppo.carmela.admin.dao.entity;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.oppo.carmela.utils.CarsConnection;

public class DeleteCarDao {
	
	public static void deleteCar(int galid) {
	
		try {
			//JDBC Programming//
			Connection conn = CarsConnection.getConnection();
			String sql ="delete from gallery_tbl where galid=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, galid);
			
			//Fire Query//
			pstmt.executeUpdate();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
