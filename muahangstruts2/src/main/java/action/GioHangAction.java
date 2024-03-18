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
import pojo.GioHangDetails;
import pojo.Phieumuahang;

/**
 *
 * @author PAT
 */
public class GioHangAction extends ActionSupport implements ServletRequestAware, SessionAware {

    private HttpServletRequest request;
    private Map session;

    public GioHangAction() {
    }

    @Override
    public String execute() throws Exception {
        if (session.get("khachHang") != null) {
            PhieuHangDao phieuHangDao = new PhieuHangDao();
            int idPhieu = Integer.parseInt(request.getParameter("idPhieu"));
            Phieumuahang phieuHang = new Phieumuahang();
            phieuHang = phieuHangDao.LayChiTietPhieu(idPhieu);
            double donGia = phieuHang.getGiaGoc() - phieuHang.getGiaGoc() * phieuHang.getTietKiem() / 100;
            GioHangDetails gioHang = new GioHangDetails();
            gioHang.setIdPhieu(phieuHang.getIdPhieuMuaHang());
            gioHang.setTenPhieu(phieuHang.getTenPhieuHang());
            gioHang.setSoLuongPhieu(phieuHang.getSoLuong());
            gioHang.setSoLuongDaBan(phieuHang.getSoLuongDaBan());
            gioHang.setDonGia(donGia);
            int soLuong = Integer.parseInt(request.getParameter("soLuong"));
            gioHang.setSoLuongVuaBan(soLuong);
            gioHang.setThanhTien(donGia * gioHang.getSoLuongVuaBan());
            session.put("gioHang", gioHang);
            return SUCCESS;
        } else {
            request.setAttribute("message", "Bạn chưa đăng nhập.");
            return INPUT;
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
