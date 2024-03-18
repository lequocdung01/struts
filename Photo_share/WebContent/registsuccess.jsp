<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Upload Success Page</title>

<%String user=(String)request.getParameter("username");
if(user!=null){%>

<script type="text/javascript">
alert("dang ki thanh cong!")
</script>
<%} %>

<script type="text/javascript">
	
</script>
</head>
<body>
<div id="global" style="width:350px;">

<h3><s:property value="username"/> registration Successfully.</h3>
Trở về trang chủ <a href="home.jsp">Home</a>
</div>
</body>
</html>