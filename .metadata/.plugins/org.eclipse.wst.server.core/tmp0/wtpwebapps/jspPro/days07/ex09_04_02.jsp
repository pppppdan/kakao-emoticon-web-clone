<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22. - 오후 4:39:17</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex09_04_02.jsp</h3>

요청 URI : <%= request.getRequestURI() %><br>
요청 URL : <%= request.getRequestURL() %><br>

<hr>
요청 URI : ${ pageContext.request.requestURI }
요청 URL : ${ pageContext.request.requestURL }

<hr>
<%
	request.setAttribute("name", "홍길동");
	session.setAttribute("age", 20);
%>

name : <%=request.getAttribute("name") %><br>
age : <%=session.getAttribute("age") %><br>
 
<hr>
name : ${ requestScope.name }<br>
age : ${ sessionScope.age }<br>

<hr>
<!-- 내부적으로 모든 영역( scope ) 다 뒤져서 가져온다. -->
name : ${ name }<br>
age : ${ age }<br>

<hr>
<%
	String color = request.getParameter("color");
%>

color = <%= color %><br>
color = ${ param.color }<br>


<hr>

<a href="ex09_04_03.jsp?color=red&color=black&color=blue">ex09_04_03.jsp</a>

</body>
</html>








