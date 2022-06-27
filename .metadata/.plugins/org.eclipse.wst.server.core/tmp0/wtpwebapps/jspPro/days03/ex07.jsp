<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 16. - 오후 12:45:23</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex07.jsp</h3>

<pre>
p292 JSTL

form name,  age submit(get)  -> 	/jspPro/member/get 						doGet -> ex07_ok.jsp  리다이렉트
																				Member.java  
form name,  age submit(post) -> 	/jspPro/member/post 						doPost -> ex07_ok.jsp 포워딩
</pre>

<%
	String contextPath = request.getContextPath();
%>

<form action="<%=contextPath%>/member/get" method="get">
name : <input type="text" name="name" value="홍길동" ><br>
age : <input type="text" name="age" value="20" ><br>
<input type="submit" value="GET 전송">
</form>

<form action="<%=contextPath%>/member/post" method="post">
name : <input type="text" name="name" value="홍길동" ><br>
age : <input type="text" name="age" value="20" ><br>
<input type="button" value="POST 전송">
</form>

<script>
	$("form:last-of-type :button").on("click", function(){
		// 입력값에 대한 유효성 검사 한 후 전송
		$(this).parents("form").submit();
	});
</script>


</body>
</html>











