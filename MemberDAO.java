package member_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemberDAO {
	
	Connection con;
	Statement stat;
	ResultSet rs;
	String sql;
	
	public MemberDAO() {
	
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			con = DriverManager.getConnection(
						"jdbc:mariadb://localhost:3306/member_db",
						"member",
						"123456"
					);
			stat = con.createStatement();	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	void close() { //close 메소드로 편하게 사용하자
		
		if(con!=null) {
			try {con.close();} catch (SQLException e) {}
		}
		if(stat!=null) {
			try {con.close();} catch (SQLException e) {}
		}
		if(rs!=null) {
			try {con.close();} catch (SQLException e) {}
		}
	}
	//회원가입
	public int register(MemberDTO dto) {
		int result = 0;//0이면 실패 그 외는 성공
		sql = "insert into member(pid,pw,pname,email,birth) values ('"+dto.getPid()+"','"+dto.getPw()+"','"+dto.getPname()+"','"+dto.getEmail()+"',"+dto.getBirth()+")";
		
		try {
			result = stat.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return result;
	}
	
	//회원가입한 사람~
	public MemberDTO member(String pid) {
		MemberDTO dto = null;
		
		try {
			sql = "select * from member where pid='"+pid+"'";
			rs = stat.executeQuery(sql);

			if(rs.next()) {
				dto = new MemberDTO();
				dto.setPid(rs.getString("pid"));
				dto.setPw(rs.getString("pw"));
				dto.setPname(rs.getString("pname"));
				dto.setEmail(rs.getString("email"));
				dto.setBirth(rs.getInt("birth"));
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
		
	}
	
	//로그인 - 매개변수로 받아와
	public MemberDTO login(String pid, String pw) {
		sql = "select * from member where pid = '"+pid+"' and pw = '"+pw+"';";
		MemberDTO dto = null;//null값이 넘어가
		try {
			rs = stat.executeQuery(sql);
			//rs에 값이 없으면 못받아온건데 이걸 확인하는 방법이 rs.next();
			if(rs.next()) {
				dto = new MemberDTO(); //dto가 넘어가
				//바구니
				dto.setPid(rs.getString("pid"));
				dto.setPw(rs.getString("pw"));
				dto.setPname(rs.getString("pname"));
				dto.setEmail(rs.getString("email"));
				dto.setBirth(rs.getInt("birth"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
	}
		
	
}
