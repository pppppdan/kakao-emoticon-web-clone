<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오후 2:14:20</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex09.jsp</h3>

<a href="<%= contextPath%>/board/list.do">제발 한번에 되라</a>

<pre>
	[ 모델 2 구조 기반의 MVC 패턴 게시판 구현 ]  [ days05.board 게시판 구현 ]
	1. days08 폴더
		ㄴ board 폴더 생성
	2. web.xml X  +  Crtl + C > V + web_days07.xml
		web.xml 
			ㄴ DBCP 설정 부분
	3. 모든 요청                   -> 단 하나의 서블릿 ( MV [ C ] 컨트롤러 )
		url-pattern="/"       ->
		url-pattern="*.do"  -> days08.mvc.controller.DispatcherServlet.java
		list.do
		write.do
		edit.do
		view.do
		???.do
	4. web.xml
		서블릿 ( 컨트롤러 ) 등록
		<load-on-startup>1</load-on-startup>
		1번쨰 요청 -> 서블릿 객체 생성 -> 응답
		요청 X      톰캣 ( WAS ) 시작될 때 서블릿 객체 생성 바로 응답할 수 있도록 하기 위해서
	5. DispatcherServlet 코딩
		a링크 요청               > get
        브라우저 주소창[] 요청 > get
        
    6. 설정 파일 선언 ( 추가 ) 
    	요청 URL => 커맨드 핸들러 
    	요청 URL => 커맨드 핸들러 
    	WEB-INF 폴더
    		ㄴ commandHandler.properties
	7. 커맨드 핸들러 implements CommandHandler 인터페이스 오버라이딩
		days08.mvc.command.CommandHandler.java 인터페이스 선언
		days08.mvc.command.ListHandler.java
		days08.mvc.command.WriteHandler.java
		days08.mvc.command.EditHandler.java
		
	8. DispatcherServlet. init() 구현
		DispatcherServlet. doGet()
		
	9. /board/list.do 요청 -> ListHandler.process() 구현
		days05.board.List.java 코딩 복사해서 붙이기
	
	10. days08/board/list.jsp 확인
		 days05/board/list.jsp 복사 + 붙이기
		
	11. 테스트
	
	12. 글쓰기
		ㄱ. list.jsp
		<a href="<%=contextPath %>/board/write.do">글 쓰기</a>
		ㄴ. board/write.do (GET 방식)
			WriteHandler.java 코딩 수정
			doGet() write.jsp
		ㄷ.  days05/board/write.jsp 복사 + 붙이기
		
	13. list.jsp 하나의 게시글 제목을 클릭하면 상세보기 view.htm => view.jsp
		ㄱ. 
		<td><a href="<%=contextPath%>/board/view.do?seq=${ dto.seq }">${ dto.title }</a></td>
		ㄴ. commandHandler perperties 
			추가
		ㄷ.
	14. 	MVC 패턴 코딩하세요 ( 코딩 과제 ) 
		수정하기
		 삭제하게
		 
		 [ 금 ]
		 필터
		 방명록 MVC 패턴
		 
		 토 / 일 DB 모델링 + 완료 !!
		 
		 ( 월 ) 답변형 게시판 + MVC
		  
		 화 - 2시간 ajax, json, char , map 등등
		 
		
</pre>

</body>
</html>