package com.oppo.carmela.admin.dao.entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.oppo.carmela.customer.dao.entity.CarGallery;
import com.oppo.carmela.utils.CarsConnection;

public class CarGalleryDao {
	
	public static List<CarGallery> findCarGallery(){
		List<CarGallery> galleryCars = new ArrayList<CarGallery>();
		
		try {
			/// JDBC programming...//
			Connection conn = CarsConnection.getConnection();
			String sql = "select galid,title,subtitle,year,description,image from gallery_tbl";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int galid = rs.getInt(1);
				String title =rs.getString(2);
				String subtitle = rs.getString(3);
				int year = rs.getInt(4);
				String description = rs.getString(5);
				String image = rs.getString(6);
				
				CarGallery galleryCar = new CarGallery(galid,title,subtitle,year,description,image);
				galleryCars.add(galleryCar);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return galleryCars;
	}
}
