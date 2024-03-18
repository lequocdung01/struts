<%@page import="control.dao.PhotoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int photoid=Integer.parseInt(request.getParameter("did"));
	PhotoDAO pd=new PhotoDAO();
	out.println("Qua trinh xoa dang dien ra...");
	if(pd.deletePicture(photoid)==1){%>
		<script type="text/javascript">
			alert("xoa thanh cong");
			
		</script>
	<%
	
	Thread.sleep(1000);
	
	response.sendRedirect("viewpicturemem.jsp");}
	
%>

</body>
</html>