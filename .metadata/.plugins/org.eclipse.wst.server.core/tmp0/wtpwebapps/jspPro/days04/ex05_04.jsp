<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오후 3:25:08</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05_04.jsp</h3>

<pre>
	[ JSP 기본 객체 : application 객체 ]
	1. 웹 애플리케이션과 관련된 기본 객체 ( 웹 사이트 )
	2. 모든 JSP 페이지에서 공유하는 ( = 1개 ) 기본 객체
	3.         "                   "     정보를 저장 / 읽기
	
	예) web.xml
		<context-param> 태그추가
		
		application.getInitParameter();
		                .getInitParameterNames()
						
</pre>

<h3>application 기본 객체 - 서버 정보</h3>
서버 정보 : <%= application.getServerInfo() %><br>
서블릿 규약 메이저 버전 : <%= application.getMajorVersion() %><br>
서블릿 규약 마이너 버전 : <%= application.getMinorVersion() %><br>

<hr>

<%
	Enumeration<String> en = application.getInitParameterNames();
	while( en.hasMoreElements() ){
		String pName = en.nextElement();
		String pValue = application.getInitParameter(pName);
%>
<li><%= pName %> : <%=pValue %></li>
<%
	}
%>


</body>
</html>