package oracle.db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {

	// driver,url,계정,비밀번호
	static final String ORACLE_URL = "jdbc:oracle:thin:@localhost:1521:xe";

	String driver = "oracle.jdbc.driver.OracleDriver";

	public DBConnect() {
		try {
			Class.forName(driver);
			System.out.println("오라클 드라이버 성공!!!");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("오라클 드라이버 실패!!!");
		}
	}

	// Connection
	public Connection getConnection() {
		Connection conn = null;

		try {
			conn = DriverManager.getConnection(ORACLE_URL, "snow", "561378");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("오라클 연결 실패: url,계정,비밀번호 확인하세요" + e.getMessage());
		}

		return conn;
	}

	// close메소드 총 4개
	public void dbClose(ResultSet rs, Statement stmt, Connection conn) {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void dbClose(Statement stmt, Connection conn) {
		try {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void dbClose(PreparedStatement pstmt, Connection conn) {
		try {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
