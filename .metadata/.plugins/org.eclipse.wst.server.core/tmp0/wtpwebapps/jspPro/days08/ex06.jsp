<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오전 11:15:18</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex06.jsp</h3>

<pre>
	국제화 태그
	- 숫자, 날짜 포멧팅 처리 태그
		숫자 출력, 파싱 - fmt:formatNumber,   fmt:parseNumber
		날짜 출력, 파싱 - fmt:formatDate         fmt:parseDate
		시간대 설정 X
</pre>

<%
	long price = 22345;
%>
<!-- 세 자리 마다 콤마 출력 -->
<!-- p 325 표 12-4 -->
<fmt:formatNumber type="number" value="<%= price %>" pattern="000000.00" var="fmt_price"></fmt:formatNumber>
fmt_price : ${  fmt_price }<br>


price : <fmt:formatNumber value="<%=price %>" type="currency" currencySymbol="\\"></fmt:formatNumber>
퍼센트 price : <fmt:formatNumber value="<%=price %>" type="percent"></fmt:formatNumber>

<hr>
<%
	String strPrice = "1,200.34"; // double 1200.34 실수 변환
	int qty = 5;
	
	// strPrice.replaceAll("," , ""); // 1200.34
	// Double.parseDouble ( strPrice )
	
%>

<fmt:parseNumber var="parPrice" value="<%= strPrice %>" pattern="0,000.00"></fmt:parseNumber>

<!-- 총 판매금액 = 단가 * 수량( qty ) -->
<c:set var="q" value="<%= qty %>"></c:set>
총 판매 금액 : ${ parPrice * q }


</body>
</html>

















