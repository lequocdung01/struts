<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="includes/header.jsp"></jsp:include>
<body>
<%@ taglib uri="/struts-tags" prefix="s" %>  
  
<h3>All Records:</h3>  
<div id="content">
<center>
<table style="border-collapse:collapse;" border="1" cellpadding="10">
<tr><td>Mã thành viên</td><td>email</td><td>giới tính</td><td>quê quán</td><td>Thao tác</td></tr>
<s:iterator value="list">  
<tr>
<td>
	<s:property value="id"/>
</td>
<td>	
	<s:property value="email"/>
</td>
<td>
	<s:property value="gender"/>
</td>
<td>
	<s:property value="country"/> 
</td>
<td>
	<a href="editmember.jsp?id=${id }"/>Edit</a>
	<a href="deletemember.jsp?id=${id }"/>Delete</a>
</td>
</tr>
</s:iterator> 
</table>
</center>
</div>
</body>
</html>