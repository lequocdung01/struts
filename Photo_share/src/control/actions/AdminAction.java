package control.actions;

import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import model.AdminBO;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import control.dao.AdminDAO;

public class AdminAction extends ActionSupport implements ModelDriven,SessionAware{

	
	private AdminBO admin;
	private List<AdminBO> adminlist;
	SessionMap<String, String> sessionmap;
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		admin=new AdminBO();
		return admin;
	}

	

	public void setAdminlist(List<AdminBO> adminlist) {
		this.adminlist = adminlist;
	}

	public AdminBO getAdmin() {
		return admin;
	}

	public void setAdmin(AdminBO admin) {
		this.admin = admin;
	}
	

	@Override
	public void setSession(Map map) {
		// TODO Auto-generated method stub
		sessionmap=(SessionMap)map;
	}

}
