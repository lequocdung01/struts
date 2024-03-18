

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
			<ul class="photo-show">	
			<%
			int userid=(Integer)session.getAttribute("userid");
			PhotoDAO pd=new PhotoDAO();
			ArrayList<PhotoBO> list=new ArrayList<PhotoBO>();
			list=pd.showPictureMembyId(userid);
			int row=list.size();
			for(int i=0;i<row;i++){
			//System.out.println(list.get(i).getPname());
			%>
			<div class="imageshow">
				<a href="picturedetail.jsp?id=<%=list.get(i).getId()%>"><img src="myfiles/<%=list.get(i).getPname()%>" width=150 height=200 title="<%=list.get(i).getPtitle() %>"/>
				</a>
				<p><%=list.get(i).getPtitle() %>&nbsp;&nbsp;<a href="deletepicture.jsp?did=<%=list.get(i).getId() %>">
				<img src="images/Erase.png" title="xoa anh nay"/>
				</a></p>
				
			</div>
			<%}
			%>
			</ul>	
				</div>
				<div id="sidebar">
					<div class="box-function" id="box-login">
						<h3>Login</h3>
						<s:actionerror />

						<s:form action="login" method="post">
						<s:textfield name="userBean.username" key="label.username" size="20" />
						<s:password name="userBean.password" key="label.password" size="20" />
						<s:submit method="execute" key="label.login" align="center" />
						<s:reset key="label.reset" align="center"/>
						</s:form>
						
						<s:a href="regist.jsp">dang ki moi</s:a>
					</div>
				</div>
			
			
		</div>
		<div class="clearfix"></div>
		<jsp:include page="includes/footer.jsp"></jsp:include>