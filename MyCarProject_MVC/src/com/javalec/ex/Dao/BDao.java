package com.javalec.ex.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


import com.javalec.ex.Dto.BDto2;
import com.javalec.ex.Dto.BDto3;



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
			String member_address_detail1, String member_address_detail2, String member_address_num, String member_email,
			String member_gender, String member_car)
	{
		
		
		try {
			conn = datasource.getConnection();
			String query = "insert into Car_member(member_id, member_pw, member_name, member_address, member_address_detail1,member_address_detail2, member_address_num"
					+ ",member_email, member_gender, member_car) value(?,?,?,?,?,?,?,?,?,?) ";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member_id);
			pstmt.setString(2, member_pw);
			pstmt.setString(3, member_name);
			pstmt.setString(4, member_address);
			pstmt.setString(5, member_address_detail1);
			pstmt.setString(6, member_address_detail2);
			pstmt.setInt(7,  Integer.parseInt(member_address_num));
			pstmt.setString(8, member_email);
			pstmt.setString(9, member_gender);
			pstmt.setString(10, member_car);
			pstmt.executeUpdate();
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)
					rs.close();
				if(pstmt!=null)
					pstmt.close();
				if(conn!=null)
					conn.close();
				
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public ArrayList<BDto2> Notice() {

		ArrayList<BDto2> dtos = new ArrayList<BDto2>();
		
		
		try {

			conn = datasource.getConnection();
			
			String sql = "select bNum, bTitle, bContent, bName, bDate, bHit from Car_Notice order by bNum asc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); 
			while(rs.next()) {
				int bNum = rs.getInt("bNum");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				String bName = rs.getString("bName");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				
				BDto2 dto = new BDto2(bNum, bTitle, bContent,bName, bDate, bHit);
				dtos.add(dto);
			}
			
			System.out.println(dtos);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
		}
		}
		
		

		
		
		
		return dtos;
	}
    
	public BDto2 Notice_view(String strId) {
		upHit(strId);
		
		BDto2 dto = null;
		
		try {
			conn = datasource.getConnection();
			String sql="select*from Car_Notice where bNum=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(strId)); //글번호
			rs = pstmt.executeQuery();
			//해당 글이 존재할 경우에만 dto에 값을 넣음
			if(rs.next()) {
				int bNum = rs.getInt("bNum");
				String bName =  rs.getString("bName");
				String bTitle =  rs.getString("bTitle");
				String bContent =  rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				System.out.println(bNum);
				
				dto = new BDto2(bNum, bName, bTitle, bContent, bDate, bHit);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		
		
		return dto;
	}
	private void upHit(String bNum) {
	     try {
	    	 conn = datasource.getConnection();
	    	 String sql = "update Car_Notice set bHit = bHit+1 where bNum=?";
	    	 pstmt = conn.prepareStatement(sql);
	    	 pstmt.setString(1,bNum);
	    	 pstmt.executeUpdate();
	    	 
	     }catch(Exception e){
	    	 e.printStackTrace();
	    	 
	     }finally {
	    	 try {
	    		 pstmt.close();
	    		 conn.close();
	    	 }catch(Exception e2) {
	    		 e2.printStackTrace();
	    	 }
	     }
	     
	    
	
	     
	     
	}
	
	public ArrayList<BDto3> SellReview() {

		ArrayList<BDto3> dtos = new ArrayList<BDto3	>();
		
		
		try {

			conn = datasource.getConnection();
			
			String sql = "select sRNum, sRTitle, sRContent, sRId, sRDate, sRHit, sRCar from Sell_Review order by sRNum asc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); 
			while(rs.next()) {
				int sRNum = rs.getInt("sRNum");
				String sRTitle = rs.getString("sRTitle");
				String sRContent = rs.getString("sRContent");
				String sRId = rs.getString("sRId");
				Timestamp sRDate = rs.getTimestamp("sRDate");
				int sRHit = rs.getInt("sRHit");
				String sRCar = rs.getString("sRCar");
				
				BDto3 dto = new BDto3(sRNum, sRTitle, sRContent,sRDate, sRHit, sRId, sRCar);
				dtos.add(dto);
			}
			
			System.out.println(dtos);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
		}
		}
		
		

		
		
		
		return dtos;
	}
	     		

}

