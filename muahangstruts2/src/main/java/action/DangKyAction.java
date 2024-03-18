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
public class DangKyAction extends ActionSupport implements ServletRequestAware, SessionAware {

    private HttpServletRequest request;
    private Map session;

    public DangKyAction() {
    }

    @Override
    public String execute() throws Exception {
        String email = request.getParameter("email");
        String matKhau = request.getParameter("matKhau");
        String tenKhachHang = request.getParameter("tenKhachHang");
        String diaChi = request.getParameter("diaChi");
        String dienThoai = request.getParameter("dienThoai");
        String read = request.getParameter("read");

        if (!email.isEmpty() && !matKhau.isEmpty()) {
            if (email.contains("@")) {
                if (read != null) {
                    if (read.equals("yes")) {
                        Khachhang khachHang = new Khachhang();
                        khachHang.setEmail(email);
                        khachHang.setMatKhau(matKhau);
                        khachHang.setTenKhachHang(tenKhachHang);
                        khachHang.setDiaChi(diaChi);
                        khachHang.setDienThoai(dienThoai);
                        if (KhachHangDao.DangKy(khachHang)) {
                            request.setAttribute("message", "Đăng ký thành công.");
                        } else {
                            request.setAttribute("message", "Đăng ký thất bại.");
                        }
                    }
                } else {
                    request.setAttribute("message", "Bạn chưa chấp nhận điều khoản của 3mua.vn.");
                }
            } else {
                request.setAttribute("message", "Email sai định dạng, vui lòng nhập lại.");
            }
        } else {
            request.setAttribute("message", "Chưa điền thông tin email và mật khẩu.");
        }
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
