/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.DonDatHangDao;
import dao.KhachHangDao;
import dao.PhieuHangDao;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import pojo.Dondathang;
import pojo.GioHangDetails;
import pojo.Khachhang;
import pojo.Phieumuahang;

/**
 *
 * @author PAT
 */
public class DonDatHangAction extends ActionSupport implements ServletRequestAware, SessionAware {

    private HttpServletRequest request;
    private Map session;

    public DonDatHangAction() {
    }

    @Override
    public String execute() throws Exception {
        String pay = request.getParameter("pay");
        if (pay == null) {
            request.setAttribute("message", "Vui lòng chọn hình thức thanh toán.");
        } else {
            if (pay.equals("1")) {
                Khachhang khachHang = (Khachhang) session.get("khachHang");
                GioHangDetails gioHang = (GioHangDetails) session.get("gioHang");
                if (khachHang.getTaiKhoan() >= gioHang.getThanhTien()) {
                    //Cập nhật tài khoản khách hàng
                    khachHang.setTaiKhoan((float) khachHang.getTaiKhoan() - (float) gioHang.getThanhTien());
                    KhachHangDao.CapNhatTaiKhoan(khachHang);
                    //Thêm đơn đạt hàng
                    DonDatHangDao donDatHangDao = new DonDatHangDao();
                    Dondathang donHang = new Dondathang();
                    PhieuHangDao phieuhangDao = new PhieuHangDao();
                    Phieumuahang phieuMuaHang = phieuhangDao.LayChiTietPhieu(gioHang.getIdPhieu());
                    donHang.setPhieumuahang(phieuMuaHang);
                    donHang.setKhachhang(khachHang);
                    donHang.setSoLuong(gioHang.getSoLuongVuaBan());
                    donHang.setThanhTien((float) gioHang.getThanhTien());
                    donDatHangDao.ThemDonDatHang(donHang);
                    //Cập nhật lại số lượng đã bán của Phiếu hàng
                    int soLuongBan = gioHang.getSoLuongDaBan() + gioHang.getSoLuongVuaBan();
                    phieuMuaHang.setSoLuongDaBan(soLuongBan);
                    PhieuHangDao.CapNhatSoLuong(phieuMuaHang);
                    if (gioHang.getSoLuongPhieu() == soLuongBan) {
                        PhieuHangDao.CapNhatTinhTrangPhieu(gioHang.getIdPhieu(), false);
                    }
                    request.setAttribute("message", "Thanh toán thành công.");
                } else {
                    request.setAttribute("message", "Tài khoản của bạn không đủ để thanh toán, vui lòng chọn hình thức thanh toán khác.");
                }
            }
            if (pay.equals("2")) {
                String tenNguoiNhan = request.getParameter("tenNguoiNhan");
                String emailNguoiNhan = request.getParameter("emailNguoiNhan");
                String diaChiNguoiNhan = request.getParameter("diaChiNguoiNhan");
                String dienThoaiNguoiNhan = request.getParameter("dienThoaiNguoiNhan");
                Khachhang khachHang = (Khachhang) session.get("khachHang");
                GioHangDetails gioHang = (GioHangDetails) session.get("gioHang");
                //Thêm đơn đạt hàng
                Dondathang donHang = new Dondathang();
                DonDatHangDao donDatHangDao = new DonDatHangDao();
                PhieuHangDao phieuhangDao = new PhieuHangDao();
                Phieumuahang phieuMuaHang = phieuhangDao.LayChiTietPhieu(gioHang.getIdPhieu());
                donHang.setPhieumuahang(phieuMuaHang);
                donHang.setKhachhang(khachHang);
                donHang.setSoLuong(gioHang.getSoLuongVuaBan());
                donHang.setThanhTien((float) gioHang.getThanhTien());
                donHang.setTenNguoiNhan(tenNguoiNhan);
                donHang.setDiaChiNguoiNhan(diaChiNguoiNhan);
                donHang.setDienThoaiNguoiNhan(dienThoaiNguoiNhan);
                donDatHangDao.ThemDonDatHang(donHang);
                //Cập nhật lại số lượng đã bán của Phiếu hàng
                int soLuongBan = gioHang.getSoLuongDaBan() + gioHang.getSoLuongVuaBan();
                phieuMuaHang.setSoLuongDaBan(soLuongBan);
                PhieuHangDao.CapNhatSoLuong(phieuMuaHang);
                if (gioHang.getSoLuongPhieu() == soLuongBan) {
                    PhieuHangDao.CapNhatTinhTrangPhieu(gioHang.getIdPhieu(), false);
                }
                request.setAttribute("message", "Mua phiếu thành công.");
            }


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
