package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BoardDAO {
	Connection con;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	

	public BoardDAO() {

		try {
			
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3306/jsp_db", 
					"root", 
					"123456");
			
			
			stmt = con.createStatement();
		} catch (Exception e) {

			e.printStackTrace();
		}
	
		
	
		
	
	}

	void close() {
		if(rs!=null) { 
			try {rs.close();} catch (SQLException e) {} 
		}
		if(stmt!=null) { 
			try {stmt.close();} catch (SQLException e) {} 
		}
		
		
		if(con!=null) { 
			try {con.close();} catch (SQLException e) {} 
		}
	
	}

	public ArrayList<BoardDTO> list(){
		ArrayList<BoardDTO> res = new ArrayList<BoardDTO>();
//		BoardDTO dto = new BoardDTO();
		
		try {
			sql = "select * from post";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();		
			
				dto.setBoardNumber(rs.getInt("boardNumber"));
				dto.setBoardTitle(rs.getString("boardTitle"));
				dto.setUserId(rs.getString("userId"));
				dto.setWriteDate(rs.getDate("writeDate"));
					
				res.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			close();
		}
		
		return res;
	}
	
}
