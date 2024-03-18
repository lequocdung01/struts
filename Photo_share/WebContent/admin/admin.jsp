
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<jsp:include page="header.jsp"></jsp:include>
<body>
<div id="wrapper">
	<div id="navigation">
		<ul id="main-nav">
					<li><span style="font-weight:bold;color:#58a5f4">Hello:</span>&nbsp;<a href="#"><s:property value="firstname"/></a>&nbsp;<a href="logout">Logout</a></li>
					<li><a href="admin.jsp">Trang chủ</a></li>
					<li><a href="admin">Quản lí admin</a>
						<ul id="sub-nav">
							<li><a href="viewlistadmin">Danh sách</a></li>
							<li><a href="addnewadmin">Them mới</a></li>
						</ul>
					</li>
					<li><a href="member">Quản lí thanh vien</a>
						<ul id="sub-nav">
							<li><a href="viewuser">Danh sách</a></li>
							<li><a href="addnewmem">Them mới</a></li>
						</ul>
					</li>
					<li><a href="picture">Quản lí anh thanh vien</a>
						<ul id="sub-nav">
							<li><a href="viewlistpicmem">Danh sách</a></li>
							<li><a href="addnewpicmem">Them mới</a></li>
						</ul>
					</li>
					<li><a href="loginadmin">Đăng nhập</a></li>
					<li><a href="registadmin">Đăng kí</a></li>
					<li>Giở hệ thống:<%Date date=new Date();SimpleDateFormat sdf=new SimpleDateFormat("hh:mm:ss");out.println(sdf.format(date)); %></li>
				</ul>
	
	</div>
	<div id="footer" style="margin:10px auto;">Hoc viện công nghệ bưu chính viễn thông</div>
</div>
</body>
</html>