<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <h3>ex03_logout.jsp</h3> -->
<%
	session.invalidate(); // 세션 강제 제거
	
	String location = "/jspPro/days09/ex03.jsp";   // 메인 페이지
	response.sendRedirect(location);
%>
