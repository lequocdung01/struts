/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.PhieuHangDao;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import pojo.Phieumuahang;

/**
 *
 * @author PAT
 */
public class ChiTietPhieuAction extends ActionSupport implements ServletRequestAware, SessionAware {

    private HttpServletRequest request;
    private Map session;

    public ChiTietPhieuAction() {
    }

    @Override
    public String execute() throws Exception {
        PhieuHangDao phieuHangDao = new PhieuHangDao();
        int idPhieu = Integer.parseInt(request.getParameter("idPhieu"));
        Phieumuahang phieuDetail = phieuHangDao.LayChiTietPhieu(idPhieu);
        request.setAttribute("phieuDetail", phieuDetail);
        return SUCCESS;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        request = hsr;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session = map;
    }
}
