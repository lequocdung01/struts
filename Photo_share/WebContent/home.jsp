<%@page import="model.PhotoBO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="control.dao.PhotoDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<jsp:include page="includes/header.jsp"></jsp:include>

		<div id="content">
				<div id="main-content">
				<h3 style="text-transform:uppercase;text-align:center;margin-bottom:20px;margin-top:10px;color:green">Lưu giữ khoảnh khắc đáng nhớ của bạn</h3>
				<ul class="photo-show">	
			<%
			PhotoDAO pd=new PhotoDAO();
			ArrayList<PhotoBO> list=new ArrayList<PhotoBO>();
			list=pd.showPicture();
			int row=list.size();
			for(int i=0;i<row;i++){
			//System.out.println(list.get(i).getPname());
			%>
			<div class="imageshow">
				<a href=""><img src="myfiles/<%=list.get(i).getPname()%>" width=150 height=200 title="<%=list.get(i).getPtitle() %>"/>
				</a>&nbsp;&nbsp;<a href="picturedetail.jsp?act=com&id=<%= list.get(i).getId() %>"><img src="images/Comment.png" title="write comment"/> </a>
				<p><%=list.get(i).getPtitle() %></p>
				
			</div>
			<%}
			%>
			</ul>	
				</div>
				<jsp:include page="includes/sidebar.jsp"></jsp:include>
			
			
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>