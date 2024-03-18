<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Share photos</title>
<link rel="stylesheet" href="css/main.css" type="text/css"/>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="banner"></div>
			<div id="navigation">
				<ul id="main-nav">
					<li><span style="font-weight:bold;color:#58a5f4">Xin chao:</span>&nbsp;<a href="profile"><s:property value="username"/></a>&nbsp;<a href="logout">Logout</a></li>
					<li><a href="home.jsp">Trang chủ</a></li>
					<li><a href="profilesuccess.jsp">Bạn</a>
						<ul id="sub-nav">
							<li><a href="createalbum">Tao album</a></li>
							<li><a href="writestatus">Viet cam nhan</a></li>
							<li><a href="sendmail">Gui thu</a></li>
						</ul>
					</li>
					<li><a href="login">Đăng nhập</a></li>
					<li><a href="regist">Đăng kí</a></li>
				</ul>
				<div id="search-tool">
					<form action="searchpicture" method="post">
						<input type="text" name="keyword" placeholder="search here..."/>
						<input type="submit" value="search"/>
					</form>
				</div>
			</div>
		</div>
	</div>