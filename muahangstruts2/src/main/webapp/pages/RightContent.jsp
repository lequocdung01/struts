<%-- 
    Document   : RightContent
    Created on : Nov 4, 2011, 1:38:37 PM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<div class="item-group">
    <div class="title">
        <b style="display:block; line-height: 43px; width: 100%; text-align: center; color: white">Đang giảm giá</b>
    </div>
    <div  class="content">         
        <!--Item-->
        <c:forEach var="phieu" items="${phieuList}">
            <div class="item-right">
                <div class="sale-icon">
                    <b style="display:block; margin-top:20px; margin-left:0px; font-size:12px; color:#FFF; text-align:center">Tiết kiệm<br /><c:out value="${phieu.tietKiem}"/>%</b>
            </div>
            <div class="item-right-top">
                <b style="color:#0CF; font-size:12px"><c:out value="${phieu.tenPhieuHang}"/></b>
            </div>
            <div class="item-right-middle">
                <a href="ChiTietPhieu?idPhieu=<c:out value="${phieu.idPhieuMuaHang}"/>"><img src="<c:out value="${phieu.hinhAnh}"/>" /></a>
            </div>
            <div class="item-right-bottom">
                Chỉ còn: <b style="color:#F90; font-size:14px"><fmt:formatNumber type="number" value="${phieu.giaGoc - phieu.giaGoc*phieu.tietKiem/100}"/> đ</b>
            </div>
        </div>
        </c:forEach>
        <!--Item-->
    </div>
</div>
<div class="item-group">
    <div class="title">
        <b style="display:block; line-height: 43px; width: 100%; text-align: center; color: white">Du lịch</b>
    </div>
    <div  class="content">         
        <!--Item-->
        <c:forEach var="phieu" items="${duLichList}">
            <div class="item-right">
                <div class="sale-icon">
                    <b style="display:block; margin-top:20px; margin-left:0px; font-size:12px; color:#FFF; text-align:center">Tiết kiệm<br /><c:out value="${phieu.tietKiem}"/>%</b>
            </div>
            <div class="item-right-top">
                <b style="color:#0CF; font-size:12px"><c:out value="${phieu.tenPhieuHang}"/></b>
            </div>
            <div class="item-right-middle">
                            <a href="ChiTietPhieu?idPhieu=<c:out value="${phieu.idPhieuMuaHang}"/>"><img src="<c:out value="${phieu.hinhAnh}"/>" /></a>               
            </div>
            <div class="item-right-bottom">
                Chỉ còn: <b style="color:#F90; font-size:14px"><fmt:formatNumber type="number" value="${phieu.giaGoc - phieu.giaGoc*phieu.tietKiem/100}"/> đ</b>
            </div>
        </div>
        </c:forEach>
        <!--Item-->
    </div>
</div>
