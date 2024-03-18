<%-- 
    Document   : ListSanPhamAdminContent
    Created on : Nov 8, 2011, 12:05:30 AM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div>
    <form method="post" action="#">
        <table id="table-partern" border="0" cellpadding="0" cellspacing="0" style="width:80%; margin:auto">
            <tr>
                <td width="15%" style="text-align:center"><b>Mã phiếu</b></td>
                <td width="65%" style="text-align:center"><b>Tên phiếu</b></td>
                <td width="20%" style="text-align:center"><b>Thao tác</b></td>
            </tr>
            <c:forEach var="phieu" items="${phieuHangList}">
                <tr>
                    <td><c:out value="${phieu.idPhieu}"/></td><td><c:out value="${phieu.tenPhieu}"/></td><td><a class="button" href="#">Sửa</a><a href="Admin.do?idPhieu=${phieu.idPhieu}&amp;action=xoa&amp;trang=phieusanpham" style="display:block; border:1px solid #FFF; line-height:25px;float:right; margin-right:10px; width:70px; height:28px; background:#3CC; color:#FFF; border-radius:7px 7px 7px 7px; font-weight:bold">Xóa</a></td>
                </tr>
            </c:forEach>     
            <tr><td colspan="3"><a href="ThemSanPhamAdmin.jsp">Thêm</a></td></tr>
        </table>
    </form>
</div>
