package com.oppo.carmela.admin.dao.entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.oppo.carmela.customer.dao.entity.OurClub;
import com.oppo.carmela.utils.CarsConnection;

/**
 * 
 * @author Nagendra
 *
 */
public class OurClubDao {
	
	public static List<OurClub> findClubs(){
		 List<OurClub> clubs=new ArrayList<>();
		 try {
				/// JDBC Programming.............................
				Connection conn= CarsConnection.getConnection();
				 String sql="select ocid,name,image,description,doe from our_club_tbl";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				// FIRE Query
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					int ocid = rs.getInt(1);
					String name = rs.getString(2);
					String image = rs.getString(3);
					String description = rs.getString(4);
					Timestamp doe = rs.getTimestamp(5);
					OurClub ourClub = new OurClub(ocid,  name,image,description, doe);
					clubs.add(ourClub);
				}
			} catch (Exception oooo) {
				oooo.printStackTrace();
			}
			return clubs;
	}

}
