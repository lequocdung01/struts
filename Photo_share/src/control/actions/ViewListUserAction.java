package control.actions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import control.dao.ConnectDB;
import control.dao.UserDAO;
import model.UserBO;

public class ViewListUserAction {

	ArrayList<UserBO>list=new ArrayList<UserBO>();
	
	
	public ArrayList<UserBO> getList() {
		return list;
	}


	public void setList(ArrayList<UserBO> list) {
		this.list = list;
	}


	public String execute() throws ClassNotFoundException, SQLException{
		ConnectDB cd=new ConnectDB();
		Connection con=cd.getConnect();
		String sql="select * from tblusers";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			UserBO ub=new UserBO();
			ub.setId(rs.getInt("id"));
			ub.setEmail(rs.getString("email"));
			ub.setGender(rs.getString("gender"));
			ub.setCountry(rs.getString("country"));
			list.add(ub);
		}
		return "success";
	}
	
}
