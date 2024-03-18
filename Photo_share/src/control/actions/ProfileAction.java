package control.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class ProfileAction {

	public String execute(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		
		String s=(String)session.getAttribute("login");
		if(s!=null && !s.equals("")){
			return "success";
		}else{
			return "error";
		}
	}
}
