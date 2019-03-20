package com.oppo.carmela.admin.dao.entity;

import java.sql.ResultSet;

import javax.servlet.jsp.jstl.sql.Result;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.oppo.carmela.utils.CarsConnection;

public class LoginDao {
	
	public static String validateUser(String username, String password) {
		String email ="";
	
		try{
			//JDBC Programming//
			Connection conn = CarsConnection.getConnection();
			String sql = "select email from login_tbl where username=? and password=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				email = rs.getString(1);
			
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return email;
	}
	
}
