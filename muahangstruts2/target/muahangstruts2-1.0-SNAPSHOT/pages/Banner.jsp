<%-- 
    Document   : Banner
    Created on : Nov 4, 2011, 12:49:15 PM
    Author     : PAT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:if test="${khachHang==null}">
    <div class="login-box">
        <form method="post" action="DangNhap">
            <table style="border:none; font-size:12px; text-align:left; color:#CCC">
                <tr>
                    <td style="line-height:15px">Email:</td>
                    <td><input type="text" name="email" style="border-radius:3px; border:1px solid #CCC; background:#F5F5F5" /></td>
                </tr>
                <tr>
                    <td style="line-height:15px">Mật khẩu:</td>
                    <td><input type="password" name="matKhau" style="border-radius:3px; border:1px solid #CCC; background:#F5F5F5" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="line-height:20px; text-align:right; padding:2px"><input type="submit" value="Đăng nhập" style="background:#F93; border-radius:7px; border:1px solid #F60 ; color:#F5F5F5; padding-left:3px; padding-right:3px" />|<a href="DangKy.jsp">Đăng ký</a></td>
                </tr>
            </table>
        </form>
    </div>
</c:if>
<c:if test="${khachHang!=null}">
    <div class="login-box">
        <div class="cus-image" style="width:50px; height:50px; float:left;">
            <img src="<c:out value="${khachHang.hinhAnh}"/>" style="width:100%; height: 100%; border-radius:3px 3px 3px 3px;"/>
        </div>
        <div class="cus-info1" style="height:50px; width: 180px; float:left; margin-left:10px; color:#FFF; font-size:13px">
            <div class="cus-name" style="height:50%">
                xin chào, <b><c:out value="${khachHang.email}"/></b>.
            </div>
            <div class="cus-link" style="height:50%; font-size:12px; font-style:italic; text-align:right">
                --<a href="ThongTinKhachHang.do">Thông tin</a>--,<a href="DangXuat">thoát.</a>
            </div>
        </div>
    </div>
</c:if>
<div class="sendEmail-wrapper">
    <div class="emailTitle">
        <span style="font-size:12px; font-style:italic; color:#FFF">Nhập Email để nhận thông báo giảm giá mỗi ngày!</span>
    </div>
    <div class="sendEmail-box">
        <form action="EmailNhanThongBao.do" method="post">
            <div class="textInput">    
                <input id="emailKhachHang" style="background:#F5F5F5; border-radius:5px; width:100%; height:25px; margin-top:9px; margin-left:10px" type="text" name="email" />  
            </div>
            <div class="sendBtn">
                <input type="submit" name="sendBtn" value="" style="background:url(images/sendEmailBtn.png) no-repeat; border:0px; display:block; width:40px; height:40px; margin:auto; margin-top:3px;" />
            </div>
        </form>
    </div>   
</div>
