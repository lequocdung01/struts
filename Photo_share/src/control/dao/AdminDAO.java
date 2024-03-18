package control.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.AdminBO;

public class AdminDAO {

	ConnectDB db=new ConnectDB();
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	public AdminDAO() throws ClassNotFoundException {
		// TODO Auto-generated constructor stub
		con=db.getConnect();
	}

	public boolean AddAdmin(AdminBO adb) throws SQLException{
		String sql="insert into tbladmin(username,password,role) values(?,?,?)";
		ps=con.prepareStatement(sql);
		ps.setString(1, adb.getUsername());
		ps.setString(2, adb.getPassword());
		ps.setString(3, adb.getRole());
		int result=ps.executeUpdate();
		if(result>0){
			return true;
		}else{
			return false;
		}
	}
	
	public boolean UpdateAdmin(AdminBO adb) throws SQLException{
		String sql="update tbladmin set username=?,password=?,role=? where id=?";
		ps=con.prepareStatement(sql);
		ps.setString(1, adb.getUsername());
		ps.setString(2, adb.getPassword());
		ps.setString(3, adb.getRole());
		ps.setInt(4, adb.getId());
		int result=ps.executeUpdate();
		if(result>0){
			return true;
		}else{
			return false;
		}
	}
	
	public boolean DeleteAdmin(int adminid) throws SQLException{
		String sql="delete from tbladmin where id=?";
		ps=con.prepareStatement(sql);
		ps.setInt(1, adminid);
		int result=ps.executeUpdate();
		if(result>0){
			return true;
		}else{
			return false;
		}
	}
	
	public boolean checkAdmin(String username, String userpass) throws SQLException{
		boolean status=false;
		String sql="select username,password from tbladmin where username=? and password=?";
		ps=con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, userpass);
		rs=ps.executeQuery();
		status=rs.next();
		return status;
	}
}
