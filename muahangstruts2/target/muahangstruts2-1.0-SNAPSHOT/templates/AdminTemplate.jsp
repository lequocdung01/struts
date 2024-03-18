<%-- 
    Document   : AdminTemplate
    Created on : Nov 8, 2011, 12:02:58 AM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/admin.css"/>
        <title>JSP Page</title>
    </head>
    <body>
	<div class="wrapper">
    	<div class="top">
        	<b style="font-size:20px; color:#FFF;">Administrator</b>
        </div>
        <div class="middle">
        	<div class="left-menu">
            	<div class="title">	
					<b>Danh Mục</b>
                </div>
                <div class="menu-list">
                        <div class="item">
                            <b><a href="Admin.do?trang=dondathang&amp;action=none" >Đơn đặt hàng</a></b>
                        </div>
                        <div class="item">
                            <b><a href="Admin.do" >Phiếu sản phẩm</a></b>
                        </div>
                        <div class="item">
                            <b><a href="#" >Khách hàng</a></b>
                        </div>
                        <div class="item">
                            <b><a href="#" >Nhà cung cấp</a></b>
                        </div>
                </div>
                <div class="menu-footer">
                </div>
            </div>
            <div class="right-content">
            	<div class="title">
                	<b>Phiếu sản phẩm</b>
                </div>
                <div class="main-content">
                    <tiles:insertAttribute name="mainContent"/>
                </div>
            </div>
        </div>
        <div class="bottom">    
            <b>Design by Teddy Phạm</b><br/><a href="TrangChu.do">Trang chủ</a>
            
        </div>
    </div>
</body>
</html>
