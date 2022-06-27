<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오전 11:49:54</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex07.jsp</h3>

<pre>
	JSTL + EL : 함수 p 333 표 12.19
</pre>

<%
	String msg = "<b>Message</b> 입니다.";
	// int len = msg.length;
	// msg.toUpperCase();
%>

<c:set value="<%=msg %>" var="msg"></c:set>

${ msg }<br>
${ fn:length(msg) }<br>
${ fn:toUpperCase(msg) }<br>

</body>
</html>