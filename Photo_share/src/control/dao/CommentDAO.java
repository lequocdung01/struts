package control.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import control.actions.AddCommentAction;
import model.*;


public class CommentDAO {

	ConnectDB db=new ConnectDB();
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	public CommentDAO() throws ClassNotFoundException {
		// TODO Auto-generated constructor stub
		con=db.getConnect();
	}
	
	//them 1 user
	public int addComment(AddCommentAction comment) throws SQLException{
		String sql="insert into tblcomment(title,content)"+
					"values(?,?)";
		ps=con.prepareStatement(sql);
		ps.setString(1, comment.getTitle());
		ps.setString(2, comment.getContent());
		
		int result=ps.executeUpdate();
		return result;
	}
	
	
}
	/*//cap nhat thong tin 1 user
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
}	
	//show danh sach
	*/