<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 21. - 오후 4:25:08</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02.jsp</h3>

<pre>
	*** 취업 : 게시판 ***
	*** 취업 : 상태관리 - 쿠키, 세션 ***
	p 205 Chapter 09 클라이언트와 대화 - 쿠키
	p 232 Chapter 10 세션
</pre>

<pre>
	p 205 Chapter 09 클라이언트와 대화 - 쿠키
	
	1. 클라이언트    서버
	                  요청
	                  응답
	2. 정보 저장 ( 상태 유지 )
		클라이언트 : 텍스트 파일 저장
	3. js - document.cookie 속성       쿠키 생성(저장), 쿠키 읽기
	    js 클라이언트 사용자 측 
	4. JSP /Servlet 사용
	   서버     쿠키 생성 코딩 ( 명령 ) -> 클라이언트   쿠키 생성, 삭제
	   
	5. 쿠키 구성
		ㄱ. 쿠키 이름 ( 필수 )
		ㄴ. 쿠키 값 ( 필수 )
		ㄷ. 만료시점            -1  브라우저 닫음 쿠키 제거
	                               0 쿠키 제거
	                               별도의 만료시점을 설정하지 않으면 웹브라우저를 종료할 때 쿠키 자동 제거
		ㄹ. 도메인 ( domain )  localhost
		ㅁ. 경로 ( path )           /                    days06
		
		클라이언트 쿠키 사용 O
		http://localhost/jspPro/days01/ex01.jsp
		http://localhost/jspPro/days02/ex01.htm
		http://localhost/jspPro/days06/ex01.htm   쿠키 사용 O
	
	6. JSP 쿠키 생성
		ㄱ. Cookie 클래스 -> 객체 생성
			Cookie c = new Cookie( 쿠키이름 , 쿠키값 );
			c.setXXX()
			c.setXXX()
			c.setXXX()
		ㄴ. 응답할 떄 생성된 위의 쿠키 객체를 포함해서 가지고 가서 클라이언트 전달 ( 응답 ) 저장
			response.addCookie( c );	
</pre>

<a href="ex02_02.jsp">JSP 쿠키 굽기</a><!-- ex02_02_ok.jsp -->
<a href="ex02_03.jsp">JSP 쿠키 보기</a>

</body>
</html>