package com.javalec.ex.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.ex.Dto.BDto;

public class BDao {
	
	DataSource datasource;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	
	public BDao() {
		try {
			Context ctx = new InitialContext();
			datasource = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql");			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String member_id, String member_pw) {
		
	
		
		
		String query = "select member_pw from Car_member where member_id=?";
		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				if(rs.getString("member_pw").equals(member_pw)) {
					return 1;
				} else {
					return -1;
				}
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)
					rs.close();
				if(pstmt!=null)
					pstmt.close();
				if(conn!=null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		return 0;
	}
	
	public void join (String member_id, String member_pw, String member_name, String member_address,
			String member_address_detail1, String member_address_detail2, int member_address_num, String member_email,
			String member_gender, String member_car)
	{
		String query = "insert into Car_member(member_id, member_pw, member_name, member_address, member_address_detail1,member_address_detail2, member_address_num"
				+ ",memeber_email, member_gender, member_car_) value(?,?,?,?,?,?,?,?,?,?) ";
		
		try {
			conn = datasource.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member_id);
			pstmt.setString(2, member_pw);
			pstmt.setString(3, member_name);
			pstmt.setString(4, member_address);
			pstmt.setString(5, member_address_detail1);
			pstmt.setString(6, member_address_detail2);
			pstmt.setInt(7, member_address_num);
			pstmt.setString(8, member_email);
			pstmt.setString(9, member_gender);
			pstmt.setString(10, member_car);
			pstmt.executeUpdate();
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
	}

}
