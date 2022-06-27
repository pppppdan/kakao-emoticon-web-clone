<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 21. - 오후 4:38:31</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02_03.jsp</h3>

<form action="">

<%
	String cname, cvalue;
	// ex02_03.jsp 요청할 때    클라이언트(웹 브라우저)   저장된 쿠키 정보 -> 서버 전달( 전송 ) 
	Cookie[] cookies = request.getCookies();
	for( Cookie c : cookies ){
		cname = c.getName();
		// URLEncoder.encode(cookieValue,"UTF-8")  인코딩 -> 디코딩
		cvalue = URLDecoder.decode(c.getValue(),"UTF-8");
%>
	<input type="checkbox" name="ckbCookie" value="<%=cname %>" /><%= cname %> - <%= cvalue %> <br>
<% 
	}
%>
</form>
<br>
<br>
<!-- 
체크박스를 체크 후 쿠키 삭제 링크 태그를 클릭하면 value 속성값 = 쿠키 이름
ex02_04.jsp?ckbCookie=name&ckbCookie=age
--> 
<a href="ex02_04.jsp">쿠키 삭제</a><br>
<a href="ex02_05.jsp">쿠키 수정</a><br>
<a href="ex02.jsp">쿠키 Home</a><br>

<script>
	// 프로젝트 (기억)
	$("a").on("click", function(event){
		event.preventDefault();
		// 체크된 체크박스 얻어와서 value 속성값을 얻어와야지 쿠키이름 얻어오면 
		// ?ckbCookie=name&ckbCookie=age
		// ( 기억 ) jquery serialize() 메서드 
		// alert(   $("form").serialize()   );    ckbCookie=name&ckbCookie=age
		var queryString = $("form").serialize();
		location.href=$(this).attr("href") + "?" + queryString;
		
		
	});
</script>

</body>
</html>