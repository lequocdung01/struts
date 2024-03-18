package control.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import control.actions.RegistAction;
import model.*;


public class UserDAO {

	ConnectDB db=new ConnectDB();
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	public UserDAO() throws ClassNotFoundException {
		// TODO Auto-generated constructor stub
		con=db.getConnect();
	}
	
	//them 1 user
	public int addUser(RegistAction ra) throws SQLException{
		String sql="insert into tblusers(username,password,email,gender,country)"+
					"values(?,?,?,?,?)";
		ps=con.prepareStatement(sql);
		ps.setString(1, ra.getUsername());
		ps.setString(2, ra.getPassword());
		ps.setString(3, ra.getEmail());
		ps.setString(4, ra.getGender());
		ps.setString(5, ra.getCountry());
		
		int result=ps.executeUpdate();
		return result;
	}
	
	//cap nhat thong tin 1 user
	public int updateUser(UserBO user) throws SQLException{
		String sql="update tblusers set username=?,email=?,gender=?,country=? where id=?";
		ps=con.prepareStatement(sql);
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getEmail());
		ps.setString(3, user.getGender());
		ps.setString(4, user.getCountry());
		ps.setInt(5, user.getId());
		int result=ps.executeUpdate();
		return result;
	}
	
	//lay thong tin 1 user
	public UserBO getUser(int userId) throws SQLException{
		String sql="select username,password,email,gender,country from tblusers where id=?";
		UserBO user=new UserBO();
		ps=con.prepareStatement(sql);
		ps.setInt(1, userId);
		rs=ps.executeQuery();
		while(rs.next()){
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setGender(rs.getString("gender"));
			user.setCountry(rs.getString("country"));
		}
		return user;
	}
	
	//xoa 1 user
	public int deleteUser(int userId) throws SQLException{
		String sql="delete from tblusers where id=?";
		ps=con.prepareStatement(sql);
		ps.setInt(1, userId);
		int result=ps.executeUpdate();
		return result;
	}
	
	//show danh sach
	public ArrayList<UserBO> showUser() throws SQLException{
		ArrayList<UserBO> list=new ArrayList<UserBO>();
		String sql="select * from tblusers";
		ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			UserBO ub=new UserBO();
			ub.setId(rs.getInt("id"));
			ub.setUsername(rs.getString("username"));
			ub.setPassword(rs.getString("password"));
			ub.setEmail(rs.getString("email"));
			ub.setGender(rs.getString("gender"));
			ub.setCountry(rs.getString("country"));
			list.add(ub);
		}
		return list;
	}
	
	public UserBO getIdByName(String name) throws SQLException{
		String sql="select * from tblusers where username=?";
		ps=con.prepareStatement(sql);
		ps.setString(1, name);
		rs=ps.executeQuery();
		UserBO ub=new UserBO();
		while(rs.next()){
			ub.setId(rs.getInt("id"));
		}
		return ub;
	}
	//tim kiem
	/*public ArrayList<UserBO> searchUser(String name) throws SQLException{
		ArrayList<UserBO> listUser=new ArrayList<UserBO>();
		String sql="select id,firstname,lastname,username,phonenumber,email from tblusers where lastname like %'"+name+"'%";
		ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			UserBO user=new UserBO();
			user.setId(rs.getInt("id"));
			user.setFirstname(rs.getString("fullName"));
			user.setLastname(rs.getString("lastname"));
			user.setUsername(rs.getString("username"));
			user.setPhonenumber(rs.getString("phonenumber"));
			user.setEmail(rs.getString("email"));
			listUser.add(user);
		}
		return listUser;
		
}*/

	public int changePass(String newPass,int userid) throws SQLException{
		String sql="update tblusers set password=? where id=?";
		ps=con.prepareStatement(sql);
		ps.setString(1, newPass);
		ps.setInt(2, userid);
		int result=ps.executeUpdate();
		return result;
	}
	//validate login
	public boolean checkUser(String username, String userpass) throws SQLException{
		boolean status=false;
		String sql="select username,password from tblusers where username=? and password=?";
		ps=con.prepareStatement(sql);
		
		ps.setString(1, username);
		ps.setString(2, userpass);
		rs=ps.executeQuery();
		status=rs.next();
		return status;
	}
	
	//kiem tra trung username
	public boolean checkmatch(RegistAction ra,String username) throws SQLException{
		boolean status=false;
		String sql="select username from tblusers where username=?";
		ps=con.prepareStatement(sql);
		ps.setString(1, username);
		rs=ps.executeQuery();
		if(rs.next())
			return true;
		return status;
	}
}