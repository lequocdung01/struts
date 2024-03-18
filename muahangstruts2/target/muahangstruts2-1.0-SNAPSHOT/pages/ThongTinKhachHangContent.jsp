<%-- 
    Document   : ThongTinKhachHangContent
    Created on : Nov 10, 2011, 2:55:44 PM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--ItemLeft-->
<div class="cus-manager" style="background:#FFF; width:100%; display:table;border-radius:0px 0px 10px 10px">
    <div id="title">
        <b style="line-height:30px; margin-left:10px; color: #0CF">QUẢN LÝ THÔNG TIN CÁ NHÂN</b>
    </div> 
    <div id="left" style="width:200px; float:left">
        <div id="cus-img" style="border:1px solid gray; width:50px; height:50px; margin:auto">
            <img style="width:100%; height:100%; margin:auto" src="<c:out value="${khachHang.hinhAnh}"/>" />
        </div>
        <div style="width:100%; text-align:center">
            <span style="font-style: italic; color:#CCC"><c:out value="${khachHang.tenKhachHang}"/></span>
        </div>
        <div style="margin-left: 20px">
            <div style="margin-top: 20px">
                <img src="images/search-icon.png"/><a style="margin-left: 10px; line-height: 20px; color: gray" href="#">Theo dõi đơn hàng</a><br />
            </div>
            <div>
                <img src="images/tests-icon.png"/><a style="margin-left: 10px; line-height: 20px; color: gray" href="#">Địa chỉ nhận hàng</a><br />
            </div>
            <div>
                <img src="images/Cal.png"/><a style="margin-left: 10px; line-height: 20px; color: gray" href="#">Lịch sử ví 3mua.vn</a><br />    
            </div>
        </div>
    </div>
    <div style="width:540px; height:500px; float:right; border-left:1px solid #CCC; margin-bottom:20px">
        <div id="title">

        </div>
        <table id="table-partern" border="0" cellpadding="0" cellspacing="0" style="width:90%; margin:auto">
            <tr style="background:#00A0DC;color:#FFF; font-weight:bold">
                <td>Sản phẩm</td>
                <td>Số lượng</td>
                <td>Thành tiền</td>
                <td>Tình trạng</td>
            </tr>
            <c:forEach var="donHang" items="${donHangList}">
                <tr >
                    <td><c:out value="${donHang.tenPhieu}"/> </td>
                    <td><c:out value="${donHang.soLuong}"/></td>
                    <td><c:out value="${donHang.thanhTien}"/></td>
                    <td><c:out value="${donHang.tenTinhTrang}"/></td>
                </tr>  
            </c:forEach>
        </table>
    </div>
</div>
<!--ItemLeft-->  