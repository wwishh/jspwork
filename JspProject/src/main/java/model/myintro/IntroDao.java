package model.myintro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import oracle.db.DBConnect;

public class IntroDao {
	
	DBConnect db = new DBConnect();
	
	public void insertMyIntro(IntroDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into intro values(seq_1.nextval, ?, ?, ?, ?, sysdate)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getIntro_name());
			pstmt.setString(2, dto.getIntro_blood());
			pstmt.setString(3, dto.getIntro_hp());
			pstmt.setString(4, dto.getIntro_city());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public ArrayList<IntroDto> selectMyIntro(){
		ArrayList<IntroDto> list = new ArrayList<IntroDto>();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from intro";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			IntroDto dto =new IntroDto();
			while(rs.next()) {
				dto.setIntro_num(rs.getString("intro_num"));
				dto.setIntro_name(rs.getString("intro_name"));
				dto.setIntro_blood(rs.getString("intro_blood"));
				dto.setIntro_hp(rs.getString("intro_hp"));
				dto.setIntro_city(rs.getString("intro_city"));
				dto.setGaipday(rs.getTimestamp("gaipday"));
				
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
}
