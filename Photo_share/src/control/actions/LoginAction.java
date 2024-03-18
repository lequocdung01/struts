package control.actions;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.config.ServletContextSingleton;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

import model.*;

import com.opensymphony.xwork2.ActionSupport;

import control.dao.*;

public class LoginAction extends ActionSupport implements SessionAware,ServletRequestAware,ServletResponseAware,
ServletContextAware{

	private int id;
	private String username,userpass;
	SessionMap<String, String> sessionmap;
	private ServletContext servletContext;
	private HttpServletRequest servletRequest;
	private HttpServletResponse servletResponse;
	
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public ServletContext getServletContext() {
		return servletContext;
	}


	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}


	public HttpServletResponse getServletResponse() {
		return servletResponse;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getUserpass() {
		return userpass;
	}


	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}


	public SessionMap<String, String> getSessionmap() {
		return sessionmap;
	}


	public void setSessionmap(SessionMap<String, String> sessionmap) {
		this.sessionmap = sessionmap;
	}


	/*public String execute() throws Exception{
		UserDAO ud=new UserDAO();
		if(ud.checkUser(username, userpass)){
			return "success";
		}else{
			return "error";
		}
	}*/
	
	public String login() throws ClassNotFoundException, SQLException{
		UserDAO ud=new UserDAO();
		//String referrer=servletRequest.getHeader("referrer");
		if(ud.checkUser(username,userpass)){
			
			int onlineUserCount=0;
			synchronized (servletContext) {
				try{
					onlineUserCount=(Integer)servletContext.getAttribute("onlinUserCount");
					
				}catch(Exception e){
					e.printStackTrace();
				}
				servletContext.setAttribute("onlineUserCount", onlineUserCount+1);
			}
			return "success";
		}else{
			return "input";
		}
	}

	@Override
	public void setSession(Map map) {
		// TODO Auto-generated method stub
		sessionmap=(SessionMap)map;
		sessionmap.put("login", "true");
		
	}
	
	public String logout(){
		if(sessionmap instanceof SessionMap){
			((SessionMap)sessionmap).invalidate();
		}
		int onlineUserCount=0;
		synchronized (servletContext) {
			try {
				onlineUserCount=(Integer)servletContext.getAttribute("onlineUserCount");
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			servletContext.setAttribute("onlineUserCount", onlineUserCount-1);
		}
		return "success";
	}


	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext=servletContext;
	}


	@Override
	public void setServletResponse(HttpServletResponse servletResponse) {
		// TODO Auto-generated method stub
		this.servletResponse=servletResponse;
	}


	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		// TODO Auto-generated method stub
		this.servletRequest=servletRequest;
	}
	
	/*public void validate(){
		UserBO user=new UserBO();
		if(user.getUsername()==null){
			addFieldError("user.username", "Username is required.");
		}
		if(user.getPassword()==null){
			addFieldError("user.userpass", "Password is required");
		}
	}*/

}


