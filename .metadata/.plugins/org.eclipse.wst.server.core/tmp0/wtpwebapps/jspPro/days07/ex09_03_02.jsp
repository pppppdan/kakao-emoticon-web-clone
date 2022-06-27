<%@ page import="days07.FormatUtil" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22. - 오후 4:07:50</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex09_03_02.jsp</h3>

<pre>
	p 266 EL  객체의 메서드, 정적( static )메서드를 사용하는 방법
	days07 패키지 않에 FormatUtil.java
</pre>

<%
	long price = 22345;
	// request.setAttribute("price", price);
%>
<!-- 2. JSTL 변수 선언 할당 -->
<!-- c:set 변수 선언 태그 -->
<!-- p 295 표 12.2 c:set 변수 지원 태그 -->
<c:set var="price" value="<%=price %>"></c:set>

FormatUtil.staticNumber() price = ${ FormatUtil.staticNumber(price, "#,##0") }<br>
<!-- FormatUtil 객체를 생성해서 객체명.number() 호출 -->
<%
	FormatUtil fu = new FormatUtil();
	request.setAttribute("fu", fu);
%>
FormatUtil.number() price = ${ fu.number(price, "#,##0") }<br>

</body>
</html>