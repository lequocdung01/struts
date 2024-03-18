package model;

public class AlbumBO {

	private int albumid;
	private String albumname;
	private String albumdesc;
	private String albumcreatedate;
	
	public AlbumBO() {
		// TODO Auto-generated constructor stub
	}

	public AlbumBO(String albumname, String albumdesc, String albumcreatedate) {
		super();
		this.albumname = albumname;
		this.albumdesc = albumdesc;
		this.albumcreatedate = albumcreatedate;
	}

	public int getAlbumid() {
		return albumid;
	}

	public void setAlbumid(int albumid) {
		this.albumid = albumid;
	}

	public String getAlbumname() {
		return albumname;
	}

	public void setAlbumname(String albumname) {
		this.albumname = albumname;
	}

	public String getAlbumdesc() {
		return albumdesc;
	}

	public void setAlbumdesc(String albumdesc) {
		this.albumdesc = albumdesc;
	}

	public String getAlbumcreatedate() {
		return albumcreatedate;
	}

	public void setAlbumcreatedate(String albumcreatedate) {
		this.albumcreatedate = albumcreatedate;
	}
	
	

}
