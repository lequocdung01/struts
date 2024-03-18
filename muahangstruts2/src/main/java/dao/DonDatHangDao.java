/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Dondathang;
import pojo.Tinhtrangdondathang;
import util.HibernateUtil;

/**
 *
 * @author PAT
 */
public class DonDatHangDao {

    public Boolean ThemDonDatHang(Dondathang donHang) {
        Boolean kq = false;
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = null;
        try {
            trans = s.beginTransaction();
            s.save(donHang);
            trans.commit();
        } catch (Exception e) {
            trans.rollback();
        } finally {
            s.close();
        }
        return kq;
    }

    public ArrayList<Dondathang> LayDanhSachDonDatHangTheoTinhTrang(int idTinhTrang) {
        ArrayList<Dondathang> donHangList = null;
        String hql = String.format("from Dondathang ddh where ddh.tinhtrangdondathang.idTinhTrang = %d", idTinhTrang);
        Session s = HibernateUtil.getSessionFactory().openSession();
        try {
        } catch (Exception e) {
        } finally {
            s.close();
        }
        return donHangList;
    }

    public static ArrayList<Dondathang> LayDanhSachDonDatHang() {
        ArrayList<Dondathang> donHangList = new ArrayList<Dondathang>();

        return donHangList;
    }

    public static Boolean CapNhatTinhTrangDonDatHang(int idDonHang, int idTinhTrang) {
        Boolean kq = false;
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = null;
        try {
            Dondathang ddh = (Dondathang) s.get(Dondathang.class, idDonHang);
            Tinhtrangdondathang ttddh = (Tinhtrangdondathang) s.get(Tinhtrangdondathang.class, idTinhTrang);
            trans = s.beginTransaction();
            ddh.setTinhtrangdondathang(ttddh);
            s.update(ddh);
            trans.commit();
        } catch (Exception e) {
            trans.rollback();
        } finally {
            s.close();
        }
        return kq;
    }

    public static ArrayList<Dondathang> LayDanhSachDonDatHangTheoIdKhachHang(int idKhachHang) {
        ArrayList<Dondathang> donHangList = new ArrayList<Dondathang>();
        String sql = String.format("SELECT * FROM dondathang WHERE idKhachHang = '%d'", idKhachHang);

        return donHangList;
    }
}
