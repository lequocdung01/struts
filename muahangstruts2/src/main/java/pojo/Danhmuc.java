package pojo;
// Generated Dec 16, 2011 9:36:07 AM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Danhmuc generated by hbm2java
 */
public class Danhmuc  implements java.io.Serializable {


     private Integer idDanhMuc;
     private String tenDanhMuc;
     private Set<Phieumuahang> phieumuahangs = new HashSet<Phieumuahang>(0);

    public Danhmuc() {
    }

    public Danhmuc(String tenDanhMuc, Set<Phieumuahang> phieumuahangs) {
       this.tenDanhMuc = tenDanhMuc;
       this.phieumuahangs = phieumuahangs;
    }
   
    public Integer getIdDanhMuc() {
        return this.idDanhMuc;
    }
    
    public void setIdDanhMuc(Integer idDanhMuc) {
        this.idDanhMuc = idDanhMuc;
    }
    public String getTenDanhMuc() {
        return this.tenDanhMuc;
    }
    
    public void setTenDanhMuc(String tenDanhMuc) {
        this.tenDanhMuc = tenDanhMuc;
    }
    public Set<Phieumuahang> getPhieumuahangs() {
        return this.phieumuahangs;
    }
    
    public void setPhieumuahangs(Set<Phieumuahang> phieumuahangs) {
        this.phieumuahangs = phieumuahangs;
    }




}


