package model;

public class PhotoBO {

	private int id;
	private String title;
	private String pname;
	private int userid,albumid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPtitle() {
		return title;
	}
	public void setPtitle(String ptitle) {
		this.title = ptitle;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getAlbumid() {
		return albumid;
	}
	public void setAlbumid(int albumid) {
		this.albumid = albumid;
	}
	
	
}
