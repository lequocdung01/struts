<style>
.errorMessage{color:red;
list-style:none;
}

</style>
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
		
				<%@taglib prefix="s" uri="/struts-tags" %>
				<div id="login-form">
				<h3 style="text-transform:uppercase;color:orange;text-align:center">Dang nhap de co the upload anh</h3>
				<s:fielderror/>
				<center>
				
				<s:form action="loginprocess">
					<s:textfield class="form-regist" name="username" label="Username " tooltip="required"></s:textfield>
					<s:password class="form-regist" name="userpass" label="Password" tooltip="required"></s:password>
					<s:submit value="login"></s:submit>
					<s:reset></s:reset>
				</s:form>
				</center>
				</div>
				</div>
				
			<jsp:include page="includes/sidebar.jsp"></jsp:include>
			
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>