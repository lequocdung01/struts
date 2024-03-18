<%-- 
    Document   : DonDatHangAdminContent
    Created on : Nov 9, 2011, 11:14:06 PM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div>
    <form method="post" action="Admin?trang=dondathang&amp;action=sort">
        <table id="table-partern" border="0" cellpadding="0" cellspacing="0" style="width:1500px; margin-left: 10px; border-top:1px solid #ABD5E3;">
            <tr>
                <td colspan="6" style="text-align: left">Tìm theo tình trạng: <select name="idTinhTrang" onchange="submit()">
                        <c:if test="${tinhTrang!=null}">
                            <option value="<c:out value="${tinhTrang.idTinhTrang}"/>" selected="true"><c:out value="${tinhTrang.tenTinhTrang}"/></option>
                        </c:if>
                        <c:forEach var="pt" items="${tinhTrangList}">
                            <option value="<c:out value="${pt.idTinhTrang}"/>"><c:out value="${pt.tenTinhTrang}"/></option>
                        </c:forEach>
                    </select></td>
            </tr>
        </table>
        </form>
    
        <table id="table-partern" border="0" cellpadding="0" cellspacing="0" style="width:1500px; margin-left: 10px">
            <tr>
                <td width="2%" style="text-align:center"><b>Mã</b></td>
                <td width="10%" style="text-align:center"><b>Tình trạng</b></td>
                <td width="15%" style="text-align:center"><b>Tên phiếu</b></td>
                <td width="10%" style="text-align:center"><b>Khách hàng</b></td>
                <td width="15%" style="text-align:center"><b>Tên người nhận</b></td>
                <td width="15%" style="text-align:center"><b>Địa chỉ</b></td>
                <td width="10%" style="text-align:center"><b>Điện thoại</b></td>
                <td width="10%" style="text-align:center"><b>Số lượng</b></td>
                <td width="13%" style="text-align:center"><b>Thành tiền</b></td>
                
            </tr>
        </table>
            <c:forEach var="donHang" items="${donHangList}">
                <form method="post" action="Admin?trang=dondathang&amp;action=update&amp;idDonHang=${donHang.idDonDatHang}">
                <table id="table-partern" border="0" cellpadding="0" cellspacing="0" style="width:1500px; margin-left: 10px">
                <tr>
                    <td width="2%" style="text-align:center"><c:out value="${donHang.idDonDatHang}"/></td>
                    <td width="10%" style="text-align:center">
                        <select name="idTinhTrang" onchange="submit()">         
                            <c:forEach var="pt" items="${tinhTrangList}">
                                <option value="<c:out value="${pt.idTinhTrang}"/>"><c:out value="${pt.tenTinhTrang}"/></option>
                            </c:forEach>
                                <option value="<c:out value="${donHang.idTinhTrang}"/>" selected="true"><c:out value="${donHang.tenTinhTrang}"/></option>
                        </select>
                    </td>
                    <td width="15%" style="text-align:center"><c:out value="${donHang.tenPhieu}"/></td>
                    <td width="10%" style="text-align:center"><c:out value="${donHang.idKhachHang}"/></td>
                    <td width="15%" style="text-align:center"><c:out value="${donHang.tenNguoiNhan}"/></td>
                    <td width="15%" style="text-align:center"><c:out value="${donHang.diaChiNguoiNhan}"/></td>
                    <td width="10%" style="text-align:center"><c:out value="${donHang.dienThoaiNguoiNhan}"/></td>
                    <td width="10%" style="text-align:center"><c:out value="${donHang.soLuong}"/></td>
                    <td width="13%" style="text-align:center"><c:out value="${donHang.thanhTien}"/></td>
                    
                </tr>
                </table>
                </form>
            </c:forEach>     
    
</div>
