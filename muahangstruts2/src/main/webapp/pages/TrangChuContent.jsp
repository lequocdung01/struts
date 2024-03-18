<%-- 
    Document   : TrangChuContent
    Created on : Nov 4, 2011, 1:31:29 PM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!--ItemLeft-->
<%session.setAttribute("urlBack", "TrangChu"); %>
<script language="javascript" type="text/javascript">
    var totalDay = ${phieuList[0].thoiGianConLai};
    var hh = totalDay*24-1;
    var mm = 59;
    var ss = 60;
	function tick(){
            ss=ss-1;
           if(ss == 0)
               {
                   mm--;
                   ss=59
                   if(mm==0)
                       {
                           hh--;
                           mm=59;
                       }
               }
		id = setTimeout('tick()',1000);
                document.getElementById('time').innerHTML = Math.round(hh)+" giờ "+Math.round(mm)+" phút "+ss+ " giây";
        }
</script>
<div class="item-vip">
    <div class="item-top">
        <b style="color:#0CC; font-size:16px"><c:out value="${phieuList[0].tenPhieuHang}"/></b>
        <b style="color:#666"><c:out value="${phieuList[0].moTa}"/></b>
    </div>
    <div class="item-middle">
        <div class="imageItem">	
            <a href="ChiTietPhieu?idPhieu=<c:out value="${phieuList[0].idPhieuMuaHang}"/>"><img src="<c:out value="${phieuList[0].hinhAnh}"/>" /></a>
        </div>
        <div class="information">
            <div class="price">
                Giá chỉ:<br /> <b style="display:block; font-size:42px; color:#F90; width:100%; text-align:center" ><fmt:formatNumber type="number" value="${phieuList[0].giaGoc-phieuList[0].giaGoc*phieuList[0].tietKiem/100}"/> đ</b>
            </div>
            <div class="buy-button">
                <a href="GioHang?idPhieu=${phieuList[0].idPhieuMuaHang}&amp;soLuong=${1}"></a>
            </div>
            <div class="sale">
                <table>
                    <tr>
                        <td width="49%">
                            Giá gốc:<br /> <b style="text-decoration:line-through; font-size:16px"><fmt:formatNumber type="number" value="${phieuList[0].giaGoc}"/> đ</b>
                        </td>
                        <td width="51%">
                            Tiết kiệm:<br /><b style="font-size:16px"><c:out value="${phieuList[0].tietKiem}"/> %</b>
                        </td>
                    </tr>    
                    <tr>
                        <td colspan="2"><hr width="90%" style="margin:auto; background:#FFF"/>
                            <b style="font-size:18px"><c:out value="${phieuList[0].soLuongDaBan}"/></b> lượt mua. Còn <b style="color: red"><c:out value="${phieuList[0].soLuong-phieuList[0].soLuongDaBan}"/></b> phiếu
                        </td>
                    </tr>
                </table>
            </div>  
            <div class="timeBox">
                <b id="time"></b>
            </div>
        </div>
    </div>
    <div class="item-bottom">
        <a href="ChiTietPhieu?idPhieu=<c:out value="${phieuList[0].idPhieuMuaHang}"/>">...xem chi tiết>></a>
    </div>
</div>
<div class="facebook-box" >
    <div id="fb-box">
        <iframe frameborder="0" scrolling="no" allowtransparency="true" style="border:none; overflow:hidden; width:450px; height:25px;" src="http://www.facebook.com/plugins/like.php?locale=vi&amp;href=http%3A%2F%2Fmuachung.vn%2Fsan-pham%2Fp-1305%2FNoi-nuong-thuy-tinh-Giam-30.html&amp;layout=standard&amp;show_faces=false&amp;width=450&amp;action=like&amp;font=arial&amp;colorscheme=dark&amp;height=25"></iframe>
    </div>
</div>
<!--ItemLeft-->
<!--ItemLeft-->
<c:forEach begin="1" var="phieu" items="${phieuList}"> 
<div class="item">
        <div class="item-top">
            <b style="color:#0CC; font-size:16px"><c:out value="${phieu.tenPhieuHang}"/></b>
            <b style="color:#666"><c:out value="${phieu.moTa}"/></b>
        </div>
        <div class="item-middle">
            <div class="imageItem">	
                <a href="ChiTietPhieu?idPhieu=${phieu.idPhieuMuaHang}"><img src="<c:out value="${phieu.hinhAnh}"/>" /></a>
            </div>
            <div class="information">
                <div class="price">
                    Giá chỉ:<br /> <b style="display:block; font-size:42px; color:#F90; width:100%; text-align:center" ><fmt:formatNumber type="number" value="${phieu.giaGoc - phieu.giaGoc*phieu.tietKiem/100}"/> đ</b>
                </div>
                <div class="buy-button">
                    <a href="GioHang?idPhieu=${phieu.idPhieuMuaHang}&amp;soLuong=${1}"></a>
                </div>
                <div class="sale">
                    <table>
                        <tr>
                            <td width="49%">
                                Giá gốc:<br /> <b style="text-decoration:line-through; font-size:16px"><fmt:formatNumber type="number" value="${phieu.giaGoc}"/> đ</b> 
                            </td>
                            <td width="51%">
                                Tiết kiệm:<br /><b style="font-size:16px"><c:out value="${phieu.tietKiem}"/> %</b>
                            </td>
                        </tr>    
                        <tr>
                            <td colspan="2"><hr width="90%" style="margin:auto; background:#FFF"/>
                                <b style="font-size:18px"><c:out value="${phieu.soLuongDaBan}"/></b> lượt mua. Còn <b style="color: red"><c:out value="${phieu.soLuong-phieu.soLuongDaBan}"/></b> phiếu
                            </td>
                        </tr>
                    </table>
                </div>  
                <div class="timeBox">
                    Thời gian còn lại: <b id="time1"><c:out value="${phieu.thoiGianConLai}"/> ngày</b>
                </div>
            </div>
        </div>
        <div class="item-bottom">
            <a href="ChiTietPhieu?idPhieu=${phieu.idPhieuMuaHang}">...xem chi tiết>></a>
        </div>
    </div>
    <div class="facebook-box" >
        <div id="fb-box">
            <iframe frameborder="0" scrolling="no" allowtransparency="true" style="border:none; overflow:hidden; width:450px; height:25px;" src="http://www.facebook.com/plugins/like.php?locale=vi&amp;href=http%3A%2F%2Fmuachung.vn%2Fsan-pham%2Fp-1305%2FNoi-nuong-thuy-tinh-Giam-30.html&amp;layout=standard&amp;show_faces=false&amp;width=450&amp;action=like&amp;font=arial&amp;colorscheme=dark&amp;height=25"></iframe>
        </div>
    </div>
</c:forEach>

<!--ItemLeft-->
