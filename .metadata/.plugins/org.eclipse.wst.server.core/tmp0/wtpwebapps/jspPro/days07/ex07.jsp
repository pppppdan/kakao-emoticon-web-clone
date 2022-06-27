<%@page import="days07.Member"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22. - 오후 2:39:33</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex07.jsp</h3>

<pre>
	*** 세션 ***
	인증 정보 : auth 세션 저장 -> 읽기
	장바구니 정보
	권한 정보
	기타 여러가지의 정보를 세션 저장.
	
	클래스 선언 + 여러 가지 필드 ( 정보 )  객체 -> 세션 저장
	예) 로그인  ( id , 이름, 나이, 주소, 연락처 ) 정보 => 세션 저장
	session.setAttribute("id", "admin");
	session.setAttribute("name", "홍길동");
	session.setAttribute("age", "20");
	session.setAttribute("addr", "서울 역삼동");
	session.setAttribute("tel", "010-912-1456");
	
	Member m = new Member("admin", "관리자", 20, "서울시", "010-912-1456");
	session.setAttribute("user", m);
	<%
	Member m = new Member("admin", "관리자", 20, "서울시", "010-912-1456");
	session.setAttribute("user", m);
	%>
</pre>

<h3>세션에서 member객체인 user를 얻어와서 출력</h3>
<%
	Member user = (Member)session.getAttribute("user");
%>
id = <%=user.getId() %><br>
name = <%=user.getName() %><br>
<!-- EL 안에서 세션에 있는 user 객체를 바로 사용할 수 있다 -->
age = ${ user.age }<br>
addr = ${ user.addr }<br>
tel = ${ user.tel }<br>

</body>
</html>