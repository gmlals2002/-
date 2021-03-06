package ksh.jspprj.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import ksh.jspprj.dao.MemberDao;
import ksh.jspprj.model.Member;
import ksh.jspprj.model.Notice;

public class jdbcMemberDao implements MemberDao {

	
	
	
	
	
	@Override
	public Member getMember(String uid) {
		
		
		String url = "jdbc:sqlserver://win.newlecture.com:1433;datebaseName=newlecdb";
		String sql = "SELECT * FROM Members WHERE Mid=?";
		

			try {
				//Class.forName("oracle.jdbc.driver.OracleDriver");
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				
				Connection con = DriverManager.getConnection(url, "sist", "newlec"); 
			     PreparedStatement st = con.prepareStatement(sql); 
			     
			     
			     st.setString(1, uid);
			     //ResultSet rs = st.executeQuery(sql);     
				ResultSet rs =  st.executeQuery();
				rs.next();
				
				//�� �����ϱ�
				
				
				Member m= new Member();
				m.setUid(rs.getString("mid"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
			  
				
				
				
				rs.close();
				st.close();
				con.close();
				return m;
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		
		
		
		
		
		
		return null;
	}

	
	
	
	
	

}
