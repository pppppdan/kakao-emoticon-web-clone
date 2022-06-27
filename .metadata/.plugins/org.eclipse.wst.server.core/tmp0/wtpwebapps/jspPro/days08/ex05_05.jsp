<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오전 10:54:12</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05_05.jsp</h3>

<pre>
	c:out 태그 == JspWriter 데이터를 출력 태그
</pre>

<%
	FileReader fr = null;
	String path = "days08/ex01.jsp";
	String realPath = request.getRealPath(path);  // ***
	
	try{
		fr = new FileReader( realPath);
%>
	<pre>
		실제 배포 리얼패스 =<%= realPath %><br>
		<c:out value="<%=fr %>" escapeXml="true"></c:out>
	</pre>
<%
	}catch(Exception e){
%>
	에러 : <%= e.getMessage() %>
<%
	}finally{
		if ( fr != null){
			try {fr.close();}catch(IOException ex){}
		}
	}
%>

<hr>

<%
	try{
		
	}catch(Exception e){
		
	}
%>

<c:catch var="ex">
	//
	//
</c:catch>

<c:if test="${ ex != null }">
	${ ex }
</c:if>

</body>
</html>









