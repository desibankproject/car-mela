package com.oppo.carmela.admin.dao.entity;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.oppo.carmela.customer.dao.entity.CarSlider;
import com.oppo.carmela.utils.CarsConnection;

public class CarSliderDao {
	
	public static List<CarSlider> findSlider() {
		
		List<CarSlider> sliders = new ArrayList<CarSlider>();
		
		try {
			Connection conn = CarsConnection.getConnection();
			String sql = "select scid,title,subtitle,image,description,doe from car_slider_tbl";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int scid = rs.getInt(1);
				String title = rs.getString(2);
				String subtitle = rs.getString(3);
				String image = rs.getString(4);
				String description = rs.getString(5);
				Timestamp doe = rs.getTimestamp(6);
				
				CarSlider slider = new CarSlider(scid, title, subtitle, image, description, doe);
				sliders.add(slider);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return sliders;
	}
}
