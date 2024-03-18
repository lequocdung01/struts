<%-- 
    Document   : DuLichContent
    Created on : Nov 4, 2011, 1:31:57 PM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--ItemLeft-->
<%session.setAttribute("urlBack", "DuLich.do"); %>
<div class="item-vip">
    <div class="item-top">
        <b style="color:#0CC; font-size:16px"><c:out value="${duLichList[0].tenPhieu}"/></b>
        <b style="color:#666"><c:out value="${duLichList[0].moTa}"/></b>
    </div>
    <div class="item-middle">
        <div class="imageItem">	
            <img src="<c:out value="${duLichList[0].hinhAnh}"/>" />
        </div>
        <div class="information">
            <div class="price">
                Giá chỉ:<br /> <b style="display:block; font-size:42px; color:#F90; width:100%; text-align:center" ><fmt:formatNumber type="number" value="${duLichList[0].giaGoc-duLichList[0].giaGoc*duLichList[0].tietKiem/100}"/> đ</b>
            </div>
            <div class="buy-button">
                <a href="GioHang.do?idPhieu=${duLichList[0].idPhieu}&amp;soLuong=${1}"></a>
            </div>
            <div class="sale">
                <table>
                    <tr>
                        <td width="49%">
                            Giá gốc:<br /> <b style="text-decoration:line-through; font-size:16px"><fmt:formatNumber type="number" value="${duLichList[0].giaGoc}"/> đ</b>
                        </td>
                        <td width="51%">
                            Tiết kiệm:<br /><b style="font-size:16px"><c:out value="${duLichList[0].tietKiem}"/> %</b>
                        </td>
                    </tr>    
                    <tr>
                        <td colspan="2"><hr width="90%" style="margin:auto; background:#FFF"/>
                            <b style="font-size:18px"><c:out value="${duLichList[0].soLuongDaBan}"/></b> lượt mua. Còn <b style="color: red"><c:out value="${duLichList[0].soLuong-duLichList[0].soLuongDaBan}"/></b> phiếu
                        </td>
                    </tr>
                </table>
            </div>  
            <div class="timeBox">
                <b>Còn lại: 20 giờ 12 phút 10 giây.</b>
            </div>
        </div>
    </div>
    <div class="item-bottom">
        <a href="ChiTietPhieu.do?idPhieu=<c:out value="${duLichList[0].idPhieu}"/>">...xem chi tiết>></a>
    </div>
</div>
<div class="facebook-box" >
    <div id="fb-box">
        <iframe frameborder="0" scrolling="no" allowtransparency="true" style="border:none; overflow:hidden; width:450px; height:25px;" src="http://www.facebook.com/plugins/like.php?locale=vi&amp;href=http%3A%2F%2Fmuachung.vn%2Fsan-pham%2Fp-1305%2FNoi-nuong-thuy-tinh-Giam-30.html&amp;layout=standard&amp;show_faces=false&amp;width=450&amp;action=like&amp;font=arial&amp;colorscheme=dark&amp;height=25"></iframe>
    </div>
</div>
<!--ItemLeft-->
<!--ItemLeft-->
<c:forEach begin="1" var="phieu" items="${duLichList}">
    <div class="item">
        <div class="item-top">
            <b style="color:#0CC; font-size:16px"><c:out value="${phieu.tenPhieu}"/></b>
            <b style="color:#666">${phieu.moTa}</b>
        </div>
        <div class="item-middle">
            <div class="imageItem">	
                <img src="<c:out value="${phieu.hinhAnh}"/>" />
            </div>
            <div class="information">
                <div class="price">
                    Giá chỉ:<br /> <b style="display:block; font-size:42px; color:#F90; width:100%; text-align:center" ><fmt:formatNumber type="number" value="${phieu.giaGoc - phieu.giaGoc*phieu.tietKiem/100}"/> đ</b>
                </div>
                <div class="buy-button">
                    <a href="GioHang.do?idPhieu=${phieu.idPhieu}&amp;soLuong=${1}"></a>
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
                    <b>Còn lại: 20 giờ 12 phút 10 giây.</b>
                </div>
            </div>
        </div>
        <div class="item-bottom">
            <a href="ChiTietPhieu.do?idPhieu=${phieu.idPhieu}">...xem chi tiết>></a>
        </div>
    </div>
    <div class="facebook-box" >
        <div id="fb-box">
            <iframe frameborder="0" scrolling="no" allowtransparency="true" style="border:none; overflow:hidden; width:450px; height:25px;" src="http://www.facebook.com/plugins/like.php?locale=vi&amp;href=http%3A%2F%2Fmuachung.vn%2Fsan-pham%2Fp-1305%2FNoi-nuong-thuy-tinh-Giam-30.html&amp;layout=standard&amp;show_faces=false&amp;width=450&amp;action=like&amp;font=arial&amp;colorscheme=dark&amp;height=25"></iframe>
        </div>
    </div>
</c:forEach>
<!--ItemLeft-->   