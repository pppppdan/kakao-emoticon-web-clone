<%@page import="com.util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="auth.jspf" %>
<!-- <h3>ex02_logout.jsp</h3> -->
<%-- 
<%
	String cname = "auth";
	String logonID = null;
	
	Cookies cookies = new Cookies(request);
	if(  cookies.exists(cname)   ){
		logonID = cookies.getValue(cname);
	}
%>
--%>
<%
	// 쿠키 삭제 : 만기시점   0  설정
	Cookie c = Cookies.createCookie("auth", "", "/" , 0);
	response.addCookie( c );

	// ex02_default.jsp 이동
%>

<script>
	alert("[<%= logonID%>]님 로그아웃 하셨습니다.")
	location.href = "ex02_default.jsp";
</script>