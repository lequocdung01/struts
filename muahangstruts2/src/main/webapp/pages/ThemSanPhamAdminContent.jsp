<%-- 
    Document   : ThemSanPhamAdminContent
    Created on : Nov 8, 2011, 12:07:54 AM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="//WEB-INF/tld/FCKeditor.tld" prefix="FCK" %>
<div>
    <%session.setAttribute("urlBack", "Admin"); %>
    <form method="post" action="Admin?action=them&amp;trang=phieusanpham">
        <table style="width:80%; margin:auto; border:2px solid gray; padding:20px">
            <tr>
                <td width="30%">Danh mục:</td>
                <td>
                    <select name="idDanhMuc">
                        <option value="1">Sản phẩm</option>
                        <option value="2">Du lịch</option>
                    </select> </td>
            </tr>
            <tr>
                <td>Tên phiếu:</td><td><input type="text" name="tenPhieuHang" /></td>
            </tr>
            <tr>
                <td>Mô tả:</td><td><input type="text" name="moTa" /></td>
            </tr>
            <tr>
                <td>Điều kiện:</td><td><input type="text" name="dieuKien" /></td>
            </tr>
            <tr>
                <td>Giá gốc:</td><td><input type="text" name="giaGoc" /></td>
            </tr>
            <tr>
                <td>Tiết kiệm:</td><td><input type="text" name="tietKiem" /></td>
            </tr>
            <tr>
                <td>Số lượng</td><td><input type="text" name="soLuong" /></td>
            </tr>
            <tr>
                <td>Ngày kết thúc:</td><td><input type="date" name="thoiGianKetThuc" /></td>
            </tr>
            <tr>
                <td>Hình ảnh:</td><td><input name="hinhAnh" type="file" /></td>
            </tr>
            <tr>
                <td>Nhà cung cấp:</td><td><input type="text" name="tenPhieu" /></td>
            </tr>
            <tr>
                <td>Chi tiết:</td>
            </tr>
            <tr>
                <td style="border: 1px solid gray" colspan="2"><FCK:editor width="100%" instanceName="chiTiet" basePath="/FCKeditor/" height="300">
                    </FCK:editor></td>
            </tr>
            <tr><td colspan="2"><input type="submit" name="regBtn" value="Lưu" style="display:block; border:1px solid #FFF; line-height:25px;float:right; margin-right:10px; width:70px; height:28px; background:#3CC; color:#FFF; border-radius:7px 7px 7px 7px; font-weight:bold"/></td></tr>
        </table>
    </form>
</div>
