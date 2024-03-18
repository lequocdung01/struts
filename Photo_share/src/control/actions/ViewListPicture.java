package control.actions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import control.dao.ConnectDB;
import control.dao.UserDAO;
import model.PhotoBO;
import model.UserBO;

public class ViewListPicture{

	ArrayList<PhotoBO>list=new ArrayList<PhotoBO>();
	
	
	public ArrayList<PhotoBO> getList() {
		return list;
	}


	public void setList(ArrayList<PhotoBO> list) {
		this.list = list;
	}


	public String execute() throws ClassNotFoundException, SQLException{
		ConnectDB cd=new ConnectDB();
		Connection con=cd.getConnect();
		String sql="select * from tblpicture";
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			PhotoBO pb=new PhotoBO();
			pb.setId(rs.getInt("id"));
			pb.setPtitle(rs.getString("ptitle"));
			pb.setPtitle(rs.getString("pname"));
		}
		return "success";
	}
	
}
