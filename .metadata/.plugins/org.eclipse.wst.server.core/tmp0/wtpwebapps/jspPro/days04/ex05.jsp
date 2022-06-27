<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오후 2:45:22</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05.jsp</h3>

<pre>
	[ JSP 제공하는 기본 객체 ]
	1. request   : javax.servlet.http.[ HttpServletRequest ] 클라이언트의 요청 정보 저장하는 객체
	2. response :                            HttpServletResponse 응답 정보를 저장하는 객체
	3. out         : JspWriter         jsp 페이지가 생성하는 결과를 출력할 때 사용하는 출력 스트림
	
	4. session   : HttpSession   HTTP 세션 정보를 저장 ( 인증, 권한 정보 저장 )
	
	5. pageContext : PageContext     JSP페이지에 대한 정보를 저장하는 객체
	8. page   :  Object                    JSP 페이지를 구현한 자바 클래스 인스턴스
	
	6. application :  ServletContext   웹 애플리케이션( 사이트 ) 전체에 대한 정보 저장하는 객체
	7. config :  Servlet [ Config ]     JSP페이지의 설정 정보를 저장
	9. exception : Throwable           예외처리 객체
</pre>

</body>
</html>