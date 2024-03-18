package control.actions;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.PhotoBO;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.ServletContextAware;

import control.dao.PhotoDAO;
import control.util.FilesUtil;

import com.opensymphony.xwork2.ActionSupport;

public class UploadFileAction extends ActionSupport implements ServletContextAware{

	private static final long serialVersionUID = -4748500436762141116L;
	private String pname;
	private String title;
	private int userid;
	
	
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	@Override
	public String execute() throws ClassNotFoundException, SQLException, IOException{
		System.out.println("File Name is:"+getFileFileName());
		System.out.println("File ContentType is:"+getFileContentType());
		System.out.println("Files Directory is:"+filesPath);
		System.out.println("title is:"+getTitle());
		FilesUtil.saveFile(getFile(), getFileFileName(), context.getRealPath("") + File.separator + filesPath);
			String title=getTitle();
			pname=getFileFileName();
			userid=getUserid();
			PhotoDAO pd=new PhotoDAO();
			int i=pd.addPhoto(title,pname,userid);
		
			
			if(i>0){
				return "success";
			}else{
				return "input";
			}
	}
	
	private File file;
	private String fileContentType;
	private String fileFileName;
	private String filesPath;
	private ServletContext context;

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public void setFilesPath(String filesPath) {
		this.filesPath = filesPath;
	}

	@Override
	public void setServletContext(ServletContext ctx) {
		this.context=ctx;
	}

	
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String uploadProcess(){
		try {
			Thread.sleep(10);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return SUCCESS;
	}
	private int complete=0;
	public int getComplete()
	{
		complete+=10;
		return complete;
	}
	
}
