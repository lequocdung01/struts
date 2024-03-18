package control.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import control.actions.UploadFileAction;
import model.PhotoBO;

public class PhotoDAO {

	ResultSet rs=null;
	PreparedStatement ps=null;
	String sql;
	Connection con;
	ConnectDB db=new ConnectDB();
	public PhotoDAO() throws ClassNotFoundException{
		con=db.getConnect();
	}
	
	public int addPhoto(String ptitle,String pname,int userid) throws SQLException{
		sql="insert into tblpicture(ptitle,pname,userid) values(?,?,?)";
		ps=con.prepareStatement(sql);
		ps.setString(1, ptitle);
		ps.setString(2, pname);
		ps.setInt(3, userid);
		int result=ps.executeUpdate();
		return result;
	}
	
	public PhotoBO getPictureById(int photoid) throws SQLException{
		PhotoBO pb=new PhotoBO();
		String sql="select pname from tblpicture where id=?";
		ps=con.prepareStatement(sql);
		ps.setInt(1, photoid);
		rs=ps.executeQuery();
		while(rs.next()){
			
			pb.setPname(rs.getString("pname"));
		}
		
		return pb;
	}
	
	public int deletePicture(int photoId) throws SQLException{
		String sql="delete from tblpicture where id=?";
		ps=con.prepareStatement(sql);
		ps.setInt(1, photoId);
		int result=ps.executeUpdate();
		return result;
	}
	
	//hien thi anh cua ng dung theo id
	public ArrayList<PhotoBO> showPictureMembyId(int userid) throws SQLException{
		ArrayList<PhotoBO> list=new ArrayList<PhotoBO>();
		sql="select * from tblpicture where userid=?";
		ps=con.prepareStatement(sql);
		ps.setInt(1, userid);
		rs=ps.executeQuery();
		while(rs.next()){
			PhotoBO photo=new PhotoBO();
			photo.setId(rs.getInt("id"));
			photo.setPtitle(rs.getString("ptitle"));
			photo.setPname(rs.getString("pname"));
			photo.setUserid(rs.getInt("id"));
			list.add(photo);
		}
		return list;
	}
	
	public ArrayList<PhotoBO> showPictureMembyTitle(String title) throws SQLException{
		ArrayList<PhotoBO> list=new ArrayList<PhotoBO>();
		sql="select * from tblpicture where ptitle like '%"+title+"%'";
		ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			PhotoBO photo=new PhotoBO();
			photo.setId(rs.getInt("id"));
			photo.setPtitle(rs.getString("ptitle"));
			photo.setPname(rs.getString("pname"));
			photo.setUserid(rs.getInt("id"));
			list.add(photo);
		}
		return list;
	}
	
	public ArrayList<PhotoBO> showPicture() throws SQLException{
		ArrayList<PhotoBO> list=new ArrayList<PhotoBO>();
		sql="select * from tblpicture";
		ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			PhotoBO photo=new PhotoBO();
			photo.setId(rs.getInt("id"));
			photo.setPtitle(rs.getString("ptitle"));
			photo.setPname(rs.getString("pname"));
			photo.setUserid(rs.getInt("userid"));
			list.add(photo);
		}
		return list;
	}
}
