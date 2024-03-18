
<%@page import="model.UserBO"%>
<style>
.errorMessage{
list-style:none;
padding-left:10px;
}
</style>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ taglib prefix="d" uri="/struts-dojo-tags" %>
<jsp:include page="includes/header.jsp"></jsp:include>
<%
int userid=(Integer)(session.getAttribute("userid"));
//out.println(userid);
%>
<d:head/>

		<div id="content">
				<div id="main-content">
	
		<div id="regist" style="margin:20px auto;">
		<h2 style="color:orange; text-align:center">Upload image for album</h2>
		<s:actionerror/>
		
		<s:form action="UploadFile" method="post" enctype="multipart/form-data">
		<input type="hidden" name="userid" value="<%=userid%>">
			<s:textfield name="title" label="Photo Title"></s:textfield>
			<s:file label="File" name="file"></s:file>
			<s:submit value="Upload"></s:submit>
			</s:form>
		
		
			</div>	
				</div>
				<jsp:include page="includes/sidebar.jsp"></jsp:include>
			
			
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>