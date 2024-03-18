<%-- 
    Document   : DangKyContent
    Created on : Nov 4, 2011, 5:50:06 PM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%session.setAttribute("urlBack", request.getRequestURL()); %>
<div class="register">
    <div class="reg-box-title">
        <b style="color:#FFF">ĐĂNG KÝ</b>
    </div>    
    <div class="reg-box">
        <form method="get" action="DangKy.do">
            <table style="border:none; color:#666; margin:auto; width:90%">
                <tr>
                    <td colspan="2" style="text-align:left"><b style="color:#3CC">Thông tin tài khoản</b></td>
                </tr>
                <tr>
                    <td style="text-align:left">Email:</td>
                    <td><input type="text" name="email" style="width:100%; border-radius: 3px 3px 3px 3px; border:1px solid #CCC; line-height:25px"/></td>
                </tr>
                <tr>
                    <td style="text-align:left">Mật khẩu:</td>
                    <td><input type="password" name="matKhau" style="width:100%; border-radius: 3px 3px 3px 3px; border:1px solid #CCC; line-height:25px"/></td>
                </tr>
                <tr>
                    <td style="text-align:left">Nhập lại mật khẩu:</td>
                    <td><input type="password" name="reMatKhau" style="width:100%; border-radius: 3px 3px 3px 3px; border:1px solid #CCC; line-height:25px"/></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:left"><b style="color:#3CC">Thông tin cá nhân, địa chỉ nhận hàng</b></td>
                </tr>
                <tr>
                    <td width="30%" style="text-align:left">Tên khách hàng:</td>
                    <td width="70%"><input type="text" name="tenKhachHang" style="width:100%; border-radius: 3px 3px 3px 3px; border:1px solid #CCC; line-height:25px" /></td>
                </tr>
                <tr>
                    <td width="30%" style="text-align:left">Địa chỉ:</td>
                    <td width="70%"><input type="text" name="diaChi" style="width:100%; border-radius: 3px 3px 3px 3px; border:1px solid #CCC; line-height:25px" /></td>
                </tr>
                <tr>
                    <td style="text-align:left">Điện thoại:</td>
                    <td><input type="text" name="dienThoai" style="width:100%; border-radius: 3px 3px 3px 3px; border:1px solid #CCC; line-height:25px"/></td>
                </tr>
                <tr style="font-size:12px">
                    <td colspan="2"><input type="checkbox" name="read"  value="yes"/>Tôi đã đọc và chấp nhận các <a href="QuyChe.jsp">điều khoản</a> và <a href="#">quy định</a> của 3mua.vn</td>
                </tr>
                <tr>
                    <td colspan="2" height="50px"><a href="TrangChu.do" style="display:block;text-align: center; border:1px solid #FFF; line-height:25px;float:right; margin-right:20px; width:70px; height:25px; background:#F30; color:#FFF; border-radius:7px 7px 7px 7px;">Hủy bỏ</a><input type="submit" name="regBtn" value="Đăng ký" style="display:block; border:1px solid #FFF; line-height:25px;float:right; margin-right:10px; width:70px; height:28px; background:#3CC; color:#FFF; border-radius:7px 7px 7px 7px; font-weight:bold"/></td>
                </tr>
            </table>
        </form>
    </div>
</div>
