<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22. - 오후 3:37:13</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex09_02.jsp</h3>

<%
	// JSP 4가지 영역에 저장되어있어야지 EL 사용가능
	request.setAttribute("title" , "JSP 프로그래밍");
%>

<!-- EL에서 문자열 연결하는 연산자는 EL3.0  += 연산자 -->
${ "제목 : " += title }<br>

<hr>
<!-- p 264 세미콜론 연산자 X -->
<!-- A ; B   B만 출력 -->
${ 1+ 1; 10 + 10 }<br>

<hr>
<!-- 
p 265 할당 (대입) 연산자
변수 var1 에 10 값을 할당하고 var1 출력하겠다.
-->
${ var1 = 10 }<br>

<hr>
<!-- 연산자 우선 순위가 있다. --> 

</body>
</html>









