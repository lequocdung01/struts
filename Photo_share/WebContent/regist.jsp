<STYLE type="text/css">  
.errorMessage{color:red;}  
</STYLE>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ taglib prefix="d" uri="/struts-dojo-tags" %>
<jsp:include page="includes/header.jsp"></jsp:include>
<d:head/>

		<div id="content">
				<div id="main-content">
	
		<div id="regist" style="margin:20px auto;">
		<h2 style="color:orange; text-align:center">DANG KI THANH VIEN MOI</h2>
		<s:actionerror/>
		<center>
				<s:form action="register">  
				<s:textfield class="form-regist"  name="username" label="UserName" value=""></s:textfield>
				<br/>  
				<s:password class="form-regist"  name="password" label="Password" value=""></s:password>  
				<br/>
				<s:textfield class="form-regist" name="email" label="Email" value=""></s:textfield>  
				<br/>
				<s:radio list="{'male','female'}" name="gender"></s:radio>  
				<br/>
				<s:select cssStyle="width:155px;" list="{'Ha Noi','Hue','TP HCM','Da Nang','Tuyen Quang','Ha Nam'}"  
				name="country" label="Country"></s:select>  
				  
				  <tr>
	            <td><img src="GetCaptchaImage.action"/></td>
	            <td><s:textfield theme="simple" name="word" value=""/></td>
       			 </tr>

				<s:submit validate="true" value="register" align="center"></s:submit>  

				 <s:reset align="center"></s:reset>

			</s:form>  
			</center>
			</div>	
				</div>
				<jsp:include page="includes/sidebar.jsp"></jsp:include>
			
			
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>