package com.oppo.carmela.admin.dao.entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.oppo.carmela.customer.dao.entity.CarNews;
import com.oppo.carmela.customer.dao.entity.OurClub;
import com.oppo.carmela.utils.CarsConnection;

/**
 * 
 * @author Nagendra
 *
 */
public class CarNewsDao {
	
	public static CarNews findCarNews(){
		CarNews carNews =new CarNews();
		 try {
				/// JDBC Programming.............................
				Connection conn= CarsConnection.getConnection();
				 String sql="select cnid,title,subtitle,image,details,doe from car_news_tbl";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				// FIRE Query
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					int cnid = rs.getInt(1);
					String title = rs.getString(2);
					String subtitle = rs.getString(3);
					String image = rs.getString(4);
					String details = rs.getString(5);
					Timestamp doe = rs.getTimestamp(6);
					 carNews = new CarNews(cnid,  title,subtitle,image,details, doe);
				}
			} catch (Exception oooo) {
				oooo.printStackTrace();
			}
			return carNews;
	}

}
