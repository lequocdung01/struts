/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Khachhang;
import util.HibernateUtil;

/**
 *
 * @author PAT
 */
public class KhachHangDao {
    
    public static Boolean DangKy(Khachhang khdt) {
        Boolean kq = false;
        Khachhang kh = khdt;
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = null;
        try {
            trans = s.beginTransaction();
            s.save(khdt);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        }
        finally{
            s.close();
        }

        return kq;
    }
    
    public static Khachhang DangNhap(String email, String matKhau) {
        Khachhang khDt = null;
        Session s = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = String.format("from Khachhang where email = '%s' and matKhau = '%s'", email, matKhau);
            Query query = s.createQuery(hql);
            khDt = (Khachhang)query.list().get(0);
        } catch (Exception ex) {
        }
        return khDt;
    }     
    
    public static Boolean CapNhatTaiKhoan(Khachhang khachHang) {
        Boolean kq = false;
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = null;
        try {
            trans= s.beginTransaction();
            s.update(khachHang);
            kq= true;
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        }
        finally{
            s.close();
        }
    
        return kq;
    }
    
    public static Boolean ThemEmailNhanThongBao(String email) {
        Boolean kq = false;
        String sql = String.format("INSERT INTO emailnhanthongbao (Email) VALUES ('%s')",email);

        return kq;
    }
}
