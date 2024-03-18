<%@page import="java.util.ArrayList"%>
<%@page import="model.UserBO"%>
<%@page import="control.dao.UserDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<jsp:include page="includes/header.jsp"></jsp:include>

<%
	String name=(String)request.getParameter("username");
	UserDAO ud=new UserDAO();
	UserBO ub=new UserBO();
	ub=ud.getIdByName(name);
	//out.println(ub.getId());
	int userid=ub.getId();
		session.setAttribute("userid",userid);

%>
		<div id="content">
				<div id="main-content">
				
				<div id="function">
				<a href="upload">Upload photo for share</a>
				<a href="viewpicture">View Picture</a>
				</div>
				</div>
				<jsp:include page="includes/sidebar.jsp"></jsp:include>
			
			
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>