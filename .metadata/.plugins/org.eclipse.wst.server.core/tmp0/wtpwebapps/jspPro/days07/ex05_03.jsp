<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오전 10:30:36</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05_03.jsp</h3>

<pre>
	c:if
	c:choose / c:when / c:otherwise
	c:forEach var="변수명" items="컬렉션, 배멸, 맵"
	c:forEach begin="시작값" end="끝값" step="증가치" var="변수명"
</pre>

<!-- 1 + 2 + 3 + 4 + 5 ... + 10 = 55 -->


<c:set var="sum" value="0"></c:set>
<c:forEach begin="1" end="10" step="1" var="i" >
	<%-- ${ i } +  --%>
	<%-- 
	<c:if test="${ i eq 10 }">${ i }</c:if>
	<c:if test="${ i ne 10 }">${ i } + </c:if>
	--%>
	${ i += ( i == 10 ? "" : " + ")  }
	
	<c:set var="sum" value="${ sum + i }"></c:set>
</c:forEach>
= ${ sum }

<hr>

<c:forEach begin="1" end="10" step="2" var="i" varStatus="status">
	<c:if test="${ status.first }">첫 번쨰 : </c:if>
	<c:if test="${ status.last }">마지막 번째 : </c:if>
	test - ${ i } : [ ${ status.count } ] / ${ status.index } / ${ status.first } / ${ status.last }<br>
</c:forEach>





</body>
</html>