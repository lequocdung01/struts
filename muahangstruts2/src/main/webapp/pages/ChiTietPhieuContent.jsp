<%-- 
    Document   : ChiTietPhieuContent
    Created on : Nov 4, 2011, 1:47:02 PM
    Author     : PAT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--ItemLeft-->
<%session.setAttribute("urlBack", request.getRequestURL()); %>
<script language="javascript" type="text/javascript">
    var totalDay = 100;
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
        <b style="color:#666"><c:out value="${phieuDetail.moTa}"/></b>
    </div>
    <div class="item-middle">
        <div class="imageItem">	
            <img src="<c:out value="${phieuDetail.hinhAnh}"/>" />
        </div>
        <div class="information">
            <div class="price">
                Giá chỉ:<br /> <b style="display:block; font-size:42px; color:#F90; width:100%; text-align:center" >30.000 đ</b>
            </div>
            <div class="buy-button">
                <a href="GioHang.do?idPhieu=${phieuDetail.idPhieuMuaHang}&amp;soLuong=${1}"></a>
            </div>
            <div class="sale">
                <table>
                    <tr>
                        <td width="49%">
                            Giá gốc:<br /> <b style="text-decoration:line-through; font-size:16px">30.000 đ</b>
                        </td>
                        <td width="51%">
                            Tiết kiệm:<br /><b style="font-size:16px">15.000 đ</b>
                        </td>
                    </tr>    
                    <tr>
                        <td colspan="2"><hr width="90%" style="margin:auto; background:#FFF"/>
                            <b style="font-size:18px"><c:out value="${phieuDetail.soLuongDaBan}"/></b> lượt mua.
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
    </div>

    <div class="condition-description">
        <div class="description">
            ${phieuDetail.moTa}
        </div>
        <div class="condition">
            ${phieuDetail.dieuKien}
        </div>
    </div>
    <div class="detail">
        <div>
            ${phieuDetail.chiTiet}
        </div>
    </div>
</div>
<!--ItemLeft-->  
<!------------------------------Map--------------------------------------> 
<div class="map-box">
    <div id="title">
        <b>BẢN ĐỒ</b>
    </div>
    <div id="image">
        <img src="images/map.PNG" />
    </div>
</div>
<!------------------------------Map-------------------------------------->
