

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<sx:head/>
<jsp:include page="includes/header.jsp"></jsp:include>

		<div id="content">
				<div id="main-content">
				
				<div style="margin:10px auto;width:600px;">
				<em>The form below uses Google's SMTP server. 
				   So you need to enter a gmail username and password
				   </em>
				   <form action="emailer" method="post">
				   <label for="from">From</label><br/>
				   <input type="text" name="from"/><br/>
				   <label for="password">Password</label><br/>
				   <input type="password" name="password"/><br/>
				   <label for="to">To</label><br/>
				   <input type="text" name="to"/><br/>
				   <label for="subject">Subject</label><br/>
				   <input type="text" name="subject"/><br/>
				   <label for="body">Body</label><br/>
				   <sx:textarea cols="30" rows="5"/><br/>
				   <input type="submit" value="Send Email"/>
				   </form>
				   </div>
				</div>
				<jsp:include page="includes/sidebar.jsp"></jsp:include>
			
			
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>