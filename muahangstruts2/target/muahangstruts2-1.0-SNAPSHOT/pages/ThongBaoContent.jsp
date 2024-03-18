<%-- 
    Document   : ThongBaoContent
    Created on : Nov 5, 2011, 2:06:32 PM
    Author     : PAT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="register">
                <div class="reg-box-title">
                	<b style="color:#FFF">THÔNG BÁO</b>
                </div>    
                	<div class="reg-box">
                    	<span style="display:block; width:100%; height:50px; color:#666; text-align:center; padding-top:20px">
                            <c:out value="${message}"/>
                        </span>
                            <b><a href="<c:out value="${urlBack}"/>" style="display:block;text-align:center; border:1px solid #FFF; line-height:25px; margin:auto; width:70px; height:25px; background:#3CC; color:#FFF; border-radius:7px 7px 7px 7px;">OK</a></b>
                    </div>
                </div>
