/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.KhachHangDao;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import pojo.Khachhang;

/**
 *
 * @author PAT
 */
public class DangNhapAction extends ActionSupport implements ServletRequestAware, SessionAware {

    private HttpServletRequest request;
    private Map session;

    public DangNhapAction() {
    }

    @Override
    public String execute() throws Exception {
        String email = request.getParameter("email");
        String matKhau = request.getParameter("matKhau");
        Khachhang khachHang = new Khachhang();
        khachHang = KhachHangDao.DangNhap(email, matKhau);
        if (email.equals("admin") && matKhau.equals("admin")) {
            return INPUT;
        } else {
            if (khachHang != null) {
                String emailName[] = khachHang.getEmail().split("@");
                khachHang.setEmail(emailName[0]);
                session.put("khachHang", khachHang);
                return SUCCESS;
            } else {
                request.setAttribute("message", "Đăng nhập thất bại, vui lòng kiểm tra lại email và pass word.");
                return ERROR;
            }
        }
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
