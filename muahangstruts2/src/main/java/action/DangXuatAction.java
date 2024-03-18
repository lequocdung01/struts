/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author PAT
 */
public class DangXuatAction extends ActionSupport implements ServletRequestAware, SessionAware {
   private HttpServletRequest request;
    private Map session;
    public DangXuatAction() {
    }
    @Override
    public String execute() throws Exception {
        session.put("khachHang", null);
        return  SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        request = hsr;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session=map;
    }
}
