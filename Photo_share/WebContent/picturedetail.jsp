<%@page import="model.PhotoBO"%>
<%@page import="control.dao.PhotoDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<jsp:include page="includes/header.jsp"></jsp:include>
<sx:head/>

		<div id="content">
				<div id="main-content">
				<% int photoid=Integer.parseInt(request.getParameter("id"));
				
				PhotoDAO pd=new PhotoDAO();
				
					PhotoBO image=new PhotoBO();
					image=pd.getPictureById(photoid);
					
				%>
				<div id="picdetail">
					<img src="myfiles/<%=image.getPname() %>" alt="anh" width="300" height="350"/>
					
				</div>
				<div id="comment">
					<h4>Add Comment</h4>
					<s:form action="addcomment" method="post">
					<s:textfield name="title" label="Tieu de"></s:textfield>
					<sx:textarea name="content" cols="30" rows="4" label="Noi dung"/>
					<s:submit value="Send"></s:submit>
					</s:form>
				</div>
				
				</div>
				<jsp:include page="includes/sidebar.jsp"></jsp:include>
			
			
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>