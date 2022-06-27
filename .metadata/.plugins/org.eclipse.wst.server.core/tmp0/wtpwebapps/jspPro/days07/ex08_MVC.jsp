<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오후 12:08:29</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex08_MVC.jsp</h3>

<pre>
	p 368 member 테이블
	p 425 Chapter 15 방명록 + MVC 패턴
	p 469 Chapter 16 커스텀 태그
	
	*** 3. MVC 패턴 p 516 Chapter 18 ***
	1. Java 개발자 = 반드시   모델 2구조 기반의 MVC 패턴 이해 및 구현
	2. 스프링 MVC 이해
	3. JSP웹 프로그래밍의 구조 = 모델 1 구조 / 모델 2 구조 로 나뉜다.
		ㄱ. 모델 1 구조
			서블릿 클래스 ( jasper ) -> 서블릿 객체
			ex01.jsp    <-  요청                    브라우저
			구현
			                 >- 응답
		
		ㄴ. 모델 2 구조   기반으로 MVC 패턴
		                                                              로직 클래스 [ M ]VC
		                                                              모델( model ) 객체
			write.htm  ->                                       Write.java 클래스 서블릿 X
			list.htm     ->                                       List.java   클래스 서블릿 X
			view.htm   ->   하나의 서블릿 요청 받음           request.setAt("list",list);
			delete.htm -> [ 서블릿 ] 1개                     포워딩  list.jsp
			모든 요청           MV   [ C ]컨트롤러
			:
			:                                                      담당 로직 클래스
	                             M [ V ] C
	                             View
	                             출력 객체
	                    화면 출력 list.jsp, write.jsp view.jsp 
	                             게시글 목록
	                             출력
	                             
	p 520 표 18.4 이해 + ( 암기 )
	
	클라이언트 ( 웹 브라우저 )                          서버
	주소 []                                      [ 하나의 서블릿 ( 컨트롤러 ) 역할]                                   클래스 ( 자바빈 )
		/list.htm                                                         
		/write.htm         -> 요청 ->   1.모든 http 요청                                                          ListModel.java
		/edit.htm                            2. 요청 분석 ( edit.htm ) : 게시글 수정 요청      모델 처리 ->   EditModel.java
		/view.htm                           3. 로직 처리 담당하는 클래스 ( 모델 ) 파악 / 처리     <- 처리결과
                                                             EditModel.java(모델)
                                                 4. 모델 처리한 결과를 받음
                                                     -> request / session / application 저장공간 저장
                                                  5. 화면 출력 담당 뷰가 누군지 파악
                                                     edit.jsp 포워딩 또는 리 다이렉트 
                                                     
                                                     
                                                     :
                                                     :
                                 <-  응답        edit.jsp
                                                  [ 화면 출력 ]
</pre>

</body>
</html>