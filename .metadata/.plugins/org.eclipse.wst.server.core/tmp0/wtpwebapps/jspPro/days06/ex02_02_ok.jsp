<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- <h3>ex02_02_ok.jsp</h3> -->

<%
	// 1. 쿠키 생성
	String cookieName = request.getParameter("cookieName");
	String cookieValue = request.getParameter("cookieValue");
	
	// js 반드시 주의
	// jsp 반드시 주의 - 쿠키값이 한글 일 경우 UTF-8 인코딩 필요
	
	Cookie c = new Cookie( cookieName, URLEncoder.encode(cookieValue,"UTF-8"));
	c.setMaxAge(-1); // 브라우저 닫을 때 쿠키 자동 제거
	// c.setDomain(domain);  localhost
	// c.setPath(uri);              /

	
	// 2. 쿠키 응답
	response.addCookie( c );
	
	// 3. 리다이렉트
	String location = "ex02.jsp";
	response.sendRedirect(location);
	
%>

