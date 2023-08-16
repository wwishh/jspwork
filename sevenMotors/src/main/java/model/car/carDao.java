package model.car;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import oracle.db.DBConnect;

public class carDao {
	DBConnect db = new DBConnect();
	
	public void insertCar(carDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into car values(seq_1.nextval, ?, ?, ?, ?, sysdate, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getCname());
			pstmt.setString(3, dto.getCid());
			pstmt.setString(4, dto.getDevice());
			pstmt.setString(5, dto.getCimage());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
}
