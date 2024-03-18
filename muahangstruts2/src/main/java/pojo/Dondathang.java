package pojo;
// Generated Dec 16, 2011 9:36:07 AM by Hibernate Tools 3.2.1.GA



/**
 * Dondathang generated by hbm2java
 */
public class Dondathang  implements java.io.Serializable {


     private Integer idDonDatHang;
     private Phieumuahang phieumuahang;
     private Khachhang khachhang;
     private Hinhthucmuahang hinhthucmuahang;
     private Tinhtrangdondathang tinhtrangdondathang;
     private Integer soLuong;
     private Float thanhTien;
     private String tenNguoiNhan;
     private String diaChiNguoiNhan;
     private String dienThoaiNguoiNhan;
     private Integer deleted;

    public Dondathang() {
    }

    public Dondathang(Phieumuahang phieumuahang, Khachhang khachhang, Hinhthucmuahang hinhthucmuahang, Tinhtrangdondathang tinhtrangdondathang, Integer soLuong, Float thanhTien, String tenNguoiNhan, String diaChiNguoiNhan, String dienThoaiNguoiNhan, Integer deleted) {
       this.phieumuahang = phieumuahang;
       this.khachhang = khachhang;
       this.hinhthucmuahang = hinhthucmuahang;
       this.tinhtrangdondathang = tinhtrangdondathang;
       this.soLuong = soLuong;
       this.thanhTien = thanhTien;
       this.tenNguoiNhan = tenNguoiNhan;
       this.diaChiNguoiNhan = diaChiNguoiNhan;
       this.dienThoaiNguoiNhan = dienThoaiNguoiNhan;
       this.deleted = deleted;
    }
   
    public Integer getIdDonDatHang() {
        return this.idDonDatHang;
    }
    
    public void setIdDonDatHang(Integer idDonDatHang) {
        this.idDonDatHang = idDonDatHang;
    }
    public Phieumuahang getPhieumuahang() {
        return this.phieumuahang;
    }
    
    public void setPhieumuahang(Phieumuahang phieumuahang) {
        this.phieumuahang = phieumuahang;
    }
    public Khachhang getKhachhang() {
        return this.khachhang;
    }
    
    public void setKhachhang(Khachhang khachhang) {
        this.khachhang = khachhang;
    }
    public Hinhthucmuahang getHinhthucmuahang() {
        return this.hinhthucmuahang;
    }
    
    public void setHinhthucmuahang(Hinhthucmuahang hinhthucmuahang) {
        this.hinhthucmuahang = hinhthucmuahang;
    }
    public Tinhtrangdondathang getTinhtrangdondathang() {
        return this.tinhtrangdondathang;
    }
    
    public void setTinhtrangdondathang(Tinhtrangdondathang tinhtrangdondathang) {
        this.tinhtrangdondathang = tinhtrangdondathang;
    }
    public Integer getSoLuong() {
        return this.soLuong;
    }
    
    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }
    public Float getThanhTien() {
        return this.thanhTien;
    }
    
    public void setThanhTien(Float thanhTien) {
        this.thanhTien = thanhTien;
    }
    public String getTenNguoiNhan() {
        return this.tenNguoiNhan;
    }
    
    public void setTenNguoiNhan(String tenNguoiNhan) {
        this.tenNguoiNhan = tenNguoiNhan;
    }
    public String getDiaChiNguoiNhan() {
        return this.diaChiNguoiNhan;
    }
    
    public void setDiaChiNguoiNhan(String diaChiNguoiNhan) {
        this.diaChiNguoiNhan = diaChiNguoiNhan;
    }
    public String getDienThoaiNguoiNhan() {
        return this.dienThoaiNguoiNhan;
    }
    
    public void setDienThoaiNguoiNhan(String dienThoaiNguoiNhan) {
        this.dienThoaiNguoiNhan = dienThoaiNguoiNhan;
    }
    public Integer getDeleted() {
        return this.deleted;
    }
    
    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }




}

