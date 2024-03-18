package control.actions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.PhotoBO;
import model.UserBO;

import com.mysql.jdbc.PreparedStatement;
import com.opensymphony.xwork2.ActionSupport;

import control.dao.ConnectDB;
import control.dao.PhotoDAO;

public class SearchAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String keyword;
	
	ArrayList<PhotoBO>list=new ArrayList<PhotoBO>();
public String getKeyword() {
		return keyword;
	}


	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


	

	public ArrayList<PhotoBO> getList() {
		return list;
	}


	public void setList(ArrayList<PhotoBO> list) {
		this.list = list;
	}


	public String execute() throws ClassNotFoundException, SQLException{
		keyword=getKeyword();
		PhotoDAO pd=new PhotoDAO();
		pd.showPictureMembyTitle(keyword);
		return "success";
}
}
