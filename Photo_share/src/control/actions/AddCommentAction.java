package control.actions;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import control.dao.CommentDAO;

public class AddCommentAction extends ActionSupport{

	private String title,content;
	
	
	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String addComment() throws ClassNotFoundException, SQLException{
		CommentDAO cd=new CommentDAO();
		int i=cd.addComment(this);
		if(i>0){
			return "success";
		}else{
			return "error";
		}
	}

}
