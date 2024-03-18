<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Upload Success Page</title>
</head>
<body>
<div id="global" style="width:350px;margin:30px auto;width:400px;height:250px;text-align:center;
background-color:rgba(32,212,56,0.7);">

<h3><s:property value="fileFileName"/> Uploaded Successfully.</h3>
<hr>
<a href="viewpicturemem.jsp">Anh cua ban</a><br><a href="UploadFile.jsp">Them anh moi</a>
</div>
</body>
</html>