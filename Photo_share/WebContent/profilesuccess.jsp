
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<jsp:include page="includes/header.jsp"></jsp:include>
<%
String username=(String)session.getAttribute("name");
if(username!=null){
	%>
	<script type="text/javascript">
		alert('xin chao '+username)
</script>
<%}
%>
<sx:head/>

		<div id="content">
				<div id="main-content">
				
				<br/>Welcome to Profile, <s:property value="username"/>  
				<sx:tabbedpanel id="test">
				<sx:div label="Quan li thanh vien" cssStyle="height:200px"
				href="">
				Server Time
				</sx:div>
				<sx:div label="Closable" closable="true" cssStyle="height:200px">
				This pane can be closed.
				</sx:div>
				</sx:tabbedpanel>
				</div>
				<jsp:include page="includes/sidebar.jsp"></jsp:include>
			
			
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>