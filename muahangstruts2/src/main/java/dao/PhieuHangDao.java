/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.Match;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Phieumuahang;
import util.HibernateUtil;

/**
 *
 * @author PAT
 */
public class PhieuHangDao {

    public ArrayList<Phieumuahang> LayDanhSachPhieu(int idDanhMuc) {
        ArrayList<Phieumuahang> phieuList = new ArrayList<Phieumuahang>();
        
        Session s = HibernateUtil.getSessionFactory().openSession();
        try{
                String hql =String.format("from Phieumuahang pmh where pmh.danhmuc.idDanhMuc = %d", idDanhMuc);
                Query query = s.createQuery(hql);
                phieuList = (ArrayList<Phieumuahang>) query.list();
        }catch(Exception e){
        }
        finally{
            s.close();
        }
        for(int i = 0; i< phieuList.size()-1; i++){
            SimpleDateFormat sd = new SimpleDateFormat("dd/MM/yyyy");
                String ngayBatDau = sd.format(phieuList.get(i).getThoiGianBatDau());
                String ngayKetThuc = sd.format(phieuList.get(i).getThoiGianKetThuc());
                Date today = new Date();
                String today1 = sd.format(today);
                if (today1.equals(ngayKetThuc)) {
                    CapNhatTinhTrangPhieu(phieuList.get(i).getIdPhieuMuaHang(), false);
                    continue;
                }
                //lay thoi gian con lai
                Calendar cal = Calendar.getInstance();
                cal.setTime(phieuList.get(i).getThoiGianKetThuc());
                /** Today's date */
                // Get msec from each, and subtract.
                long diff = (cal.getTime().getTime() - today.getTime()) / (24 * 60 * 60 * 1000);
                phieuList.get(i).setThoiGianConLai(diff);
        }
        return phieuList;
    }

    public Phieumuahang LayChiTietPhieu(int idPhieu) {
        Phieumuahang phieu = new Phieumuahang();
        Session s = HibernateUtil.getSessionFactory().openSession();
        try{
                phieu = (Phieumuahang)s.get(Phieumuahang.class, idPhieu);
        }catch(Exception e){
        }
        finally{
            s.close();
        }

        return phieu;
    }

    public static Boolean CapNhatSoLuong(Phieumuahang phieu) {
        Boolean kq = false;
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = null;
        try {
            trans= s.beginTransaction();
            s.update(phieu);
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

    public static Boolean CapNhatTinhTrangPhieu(int idPhieu, Boolean  tinhTrang) {
        Boolean kq = false;
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = null;
        try{
          trans = s.beginTransaction();
          PhieuHangDao pmhDao = new PhieuHangDao();
          Phieumuahang pmh = pmhDao.LayChiTietPhieu(idPhieu);
          pmh.setTinhTrangPhieu(tinhTrang);
          trans.commit();
        }catch(Exception e){
            trans.rollback();
        }
        finally{
            s.close();
        }
        return kq;
    }

    public static Boolean ThemPhieuMuaHang(Phieumuahang phieuHang) {
        Boolean kq = false;
        Session s = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = null;
        try{
          trans = s.beginTransaction();
          s.save(phieuHang);
          trans.commit();
        }catch(Exception e){
            trans.rollback();
        }
        finally{
            s.close();
        }
        return kq;
    }
    
    public static Boolean XoaPhieuSanPham(int idPhieu) {
        Boolean kq = false;
       
        return kq;
    }
}
