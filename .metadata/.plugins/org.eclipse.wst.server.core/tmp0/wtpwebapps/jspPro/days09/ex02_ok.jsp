<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
공통 부분 include 지시자 사용
<%@ include file="/include.jspf" %>
--%>
<%
	// 모든 jsp / 서블릿 코딩 추가
	// request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 24. - 오전 10:23:12</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02_ok.jsp</h3>

<%
	String name = request.getParameter("name");
%>

전달된 이름 : <%=name %>

</body>
</html>