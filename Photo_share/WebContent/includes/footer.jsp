<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<div id="footer">
			<center><p>Copyright &copy; <% Date date=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
			out.println(sdf.format(date)); %></p>
				<p>Email: viethungtqno1@gmail.com</p>
				<p>Học viện công nghệ bưu chính viễn thông</p>
			</center>
		</div>
	</div>
</body>
</html>