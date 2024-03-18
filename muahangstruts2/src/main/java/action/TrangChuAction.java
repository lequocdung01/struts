/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.PhieuHangDao;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import pojo.Phieumuahang;

/**
 *
 * @author PAT
 */
public class TrangChuAction extends ActionSupport implements ServletRequestAware, SessionAware {
    private HttpServletRequest request;
    private Map session;
    public TrangChuAction() {
    }
    @Override
    public String execute() throws Exception {
        PhieuHangDao phieuHangDao = new PhieuHangDao();
            ArrayList<Phieumuahang> duLichList = phieuHangDao.LayDanhSachPhieu(2);
            session.put("duLichList", duLichList);
            ArrayList<Phieumuahang> phieuList = phieuHangDao.LayDanhSachPhieu(1);
            session.put("phieuList", phieuList);
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
