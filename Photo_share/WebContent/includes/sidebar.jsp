<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<div id="sidebar">
					<div class="box-function" id="box-login">
						<h3>Login</h3>
						

						<s:form action="login" method="post">
						<s:textfield name="userBean.username" key="label.username" size="20" />
						<s:password name="userBean.password" key="label.password" size="20" />
						<s:submit method="execute" key="label.login" align="center" />
						<s:reset key="label.reset" align="center"/>
						</s:form>
						
						<s:a href="regist.jsp">dang ki moi</s:a>
					</div>
					<div class="box-function" id="onlinecount">
					<h3>User Online</h3>
						<p>
							Welcome. Number of users online: 
							<s:property value="#application.onlineUserCount"/><!-- #application: ognl: truy cap doi tuong tu jsp -->
						</p>	
					</div>
				</div>