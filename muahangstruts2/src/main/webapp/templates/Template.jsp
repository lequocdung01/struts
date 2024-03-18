<%-- 
    Document   : Template
    Created on : Nov 4, 2011, 12:44:07 PM
    Author     : PAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
        <title>JSP Page</title>
    </head>
    <body onload="tick()">
        <div class="wrapper">
            <div class="top">
                <tiles:insertAttribute name="top"/>    
            </div>
            <div class="contact">
        	<img src="images/contact.png" /><b> Hỗ trợ: </b>0983 907247 - <b>Y!M: </b><a style="color:#FFF" href="ymsgr:sendIM?guitarlove9x&m=Chào+bạn+cho+tôi+hỏi">3mua.vn</a>
        </div>
            <div class="middle">
                <div class="left-content">
                    <div class="menu-bar">
                        <div class="menu-item">
                            <a href="TrangChu">Trang chủ</a>
                        </div>
                        <div class="menu-item">
                            <a href="DuLich">Du lịch</a>
                        </div>
                    </div>
                    <!--ItemLeft-->
                    <tiles:insertAttribute name="mainContent"/>
                      <!--ItemLeft-->           
                </div>
                <div class="right-content">
                    <tiles:insertAttribute name="rightContent"/>
                </div>
            </div>
            <div class="bottom">
                <p>@Design by Phạm Anh Tuân, NSE 10042</p>
            </div>
        </div>
    </body>
</html>
