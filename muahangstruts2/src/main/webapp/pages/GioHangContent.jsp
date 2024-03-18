<%-- 
    Document   : GioHangContent
    Created on : Nov 6, 2011, 12:52:43 PM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<%session.setAttribute("urlBack", request.getRequestURL());%>
<script type="text/javascript" src="scripts/script.js"></script>
<div class="cart-wrapper">
    <div class="cart-title">
        <b>Giỏ hàng của bạn</b>
    </div>
    <div class="cart-table">
        <form method="post" action="GioHang?idPhieu=<c:out value="${gioHang.idPhieu}"/>">
            <table border="0" cellpadding="0" cellspacing="0" style="border-left:1px solid #ABD5E3; border-bottom:1px solid #ABD5E3">
                <tr style="background:#00A0DC;color:#FFF; font-weight:bold">
                    <td>Sản phẩm</td>
                    <td>Đơn giá</td>
                    <td>Số lượng</td>
                    <td>Thành tiền</td>
                </tr>
                <tr >
                    <td><c:out value="${gioHang.tenPhieu}"/> </td>
                    <td><fmt:formatNumber type="number" value="${gioHang.donGia}"/></td>
                    <td><select name="soLuong" style="width: 50px" onchange="submit()">
                            <c:if test="${gioHang!=null}">
                                <option value="<c:out value="${gioHang.soLuongVuaBan}"/>"><c:out value="${gioHang.soLuongVuaBan}"/></option>
                            </c:if>
                            <c:if test="${gioHang.soLuongPhieu-gioHang.soLuongDaBan>=25}">
                                <c:forEach begin="1" var="i" end="25">
                                    <option value="${i}">${i}</option>
                                </c:forEach>
                            </c:if>
                            <c:if test="${gioHang.soLuongPhieu-gioHang.soLuongDaBan<25}">
                                <c:forEach begin="1" var="i" end="${gioHang.soLuongPhieu-gioHang.soLuongDaBan}">
                                    <option value="${i}">${i}</option>
                                </c:forEach>
                            </c:if>
                        </select></td>
                    <td><fmt:formatNumber type="number" value="${gioHang.thanhTien}"/></td>
                </tr>  
                <tr>
                    <td colspan="5" style="text-align:right; padding-right: 10px">
                        Tổng tiền: <b style="font-size:18px; color:#F90"><fmt:formatNumber type="number" value="${gioHang.thanhTien}"/> </b>VND
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="cus-info">
        <table width="100%" cellpadding="0" cellspacing="0">
            <tr  style="background:#00A0DC">
                <td colspan="2" style="text-align:center"><b style="color:#FFF; line-height:25px">Thông tin khách hàng</b></td>
            </tr>
            <tr>
                <td style="width: 15%; height:30px; line-height:30px; padding-left:10px">Họ tên:</td><td><b><c:out value="${khachHang.tenKhachHang}"/></b></td>
            </tr>
            <tr>
                <td style="height:30px; line-height:30px; padding-left:10px">Email:</td><td><b><c:out value="${khachHang.email}"/></b></td>
            </tr>
            <tr>
                <td style="height:30px; line-height:30px; padding-left:10px">Điện thoại:</td><td><b><c:out value="${khachHang.dienThoai}"/></b></td>
            </tr>
            <tr>
                <td style="height:30px; line-height:30px; padding-left:10px">Tài khoản:</td><td><b style="color: red"><fmt:formatNumber type="number" value="${khachHang.taiKhoan}"/> </b>VND</td>
            </tr>
        </table>
    </div>
    <form method="post" action="DonDatHang">
        <div class="pay-form">     
            <table width="100%" cellpadding="0" cellspacing="0">
                <tr  style="background:#00A0DC">
                    <td colspan="2" style="text-align:center"><b style="color:#FFF; line-height:25px">Hình thức thanh toán</b></td>
                </tr>
                <tr>
                            	<td style="height:30px; line-height:30px; padding:10px;">
                               	  
                                	  <p>
                                	    <label>
                                	      <input type="radio" name="pay" value="1" id="RadioGroup1_0" onclick="toggleLayer2('cus-info');"/>
                                	      Thanh toán bằng ví online của 3mua.vn</label>
                                	    <br />
                                	    <label>
                                	      <input type="radio" name="pay" value="2" id="RadioGroup1_1" onclick="toggleLayer('cus-info');"/>
                                	      Giao hàng và thanh toán tận nhà</label>
                                	    <br />
                              	    </p>
                                    <div id="cus-info" style="display:none; width:60%; height:150px;; border:1px solid #999; margin:auto;border-radius:5px 5px 5px 5px; padding-left:10px; padding-right:10px">
                                    	<div><b style="color:#0CF">Thông tin khách hàng</b></div>
                                    	<div id="left" style="float:left; width:30%">
                                        	<div style="height:30px">Tên Khách hàng:</div>
                                            <div style="height:30px">Email:</div>
                                            <div style="height:30px">Địa chỉ:</div>
                                            <div style="height:30px">Điện thoại:</div>
                                        </div>
                                        <div id="right" style="float:left; width:70%">
                                        	<div style="height:30px"><input style="width:90%;border-radius:5px; border:1px solid #CCC" type="text" name="tenNguoiNhan" /></div>
                                            <div style="height:30px"><input style="width:90%;border-radius:5px; border:1px solid #CCC" type="text" name="emailNguoiNhan" /></div>
                                            <div style="height:30px"><input style="width:90%;border-radius:5px; border:1px solid #CCC" type="text" name="diaChiNguoiNhan" /></div>
                                            <div style="height:30px"><input style="width:90%;border-radius:5px; border:1px solid #CCC" type="text" name="dienThoaiNguoiNhan" /></div>
                                        </div>
                                    </div>
                                    </td>
                            </tr>
            </table>       
        </div>
        <div class="bar-button">
            <input class="button" type="submit" value="Thanh toán"/>  <a class="button" href="TrangChu">Quay lại</a>
        </div>
    </form>
</div>
