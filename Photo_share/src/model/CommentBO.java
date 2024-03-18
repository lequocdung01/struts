package model;

public class CommentBO {

	private int cmid;
	private int photoid;
	private int userid;
	private String title,content;
	
	public CommentBO() {
		// TODO Auto-generated constructor stub
	}

	public CommentBO(int photoid, int userid, String title, String content) {
		super();
		this.photoid = photoid;
		this.userid = userid;
		this.title = title;
		this.content = content;
	}

	public int getCmid() {
		return cmid;
	}

	public void setCmid(int cmid) {
		this.cmid = cmid;
	}

	public int getPhotoid() {
		return photoid;
	}

	public void setPhotoid(int photoid) {
		this.photoid = photoid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

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

	
}
