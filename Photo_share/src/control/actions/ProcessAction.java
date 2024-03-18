package control.actions;

import com.opensymphony.xwork2.ActionSupport;

public class ProcessAction extends ActionSupport{

	public String execute(){
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
