<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 24. - 오후 12:41:19</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05.jsp</h3>

<a href="/jspPro/days09/guestbook/list.do">방명록 목록</a>

<br>

<pre>
	
	p.444 ~ p.468 [ MVC패턴 + 방명록( guestbook ) 구현 ]
	코딩 교재 참조 + MVC패턴으로 토딩된게 아니라서 MVC 패턴으로
	
	1. web.xml -> 복사 web_days09_am.xml
	2. 테이블 생성
		시퀀스 생성
		ㄱ.
		create table guestbook_message
      (
         message_id number not null primary key
         , guest_name varchar2(50) not null
         , password varchar2(10) not null
         , message clob not  null
      ) ;    
       ㄴ.
       create sequence seq_guestbook_message;  

		Table GUESTBOOK_MESSAGE이(가) 생성되었습니다.
		Sequence SEQ_GUESTBOOK_MESSAGE이(가) 생성되었습니다.
		
	3. days09 폴더
		ㄴ	guestbook 폴더 생성
				ㄴ images 폴더 추가
	4. 요청 URL = 커맨드핸들러
	  guestbook 폴더
		ㄴ commandhandler.properties 복사 + 붙이기
	
	5. 패키지 추가 
		ㄱ. days09.guestbook.command 패키지  - [M]VC  커맨드 핸들러
				ㄴ CommandHandler.java  인터페이스 복사 + 붙이기
				ㄴ GetMessageListHandler.java  클래스 추가
				ㄴ WriteMessageHandler.java  클래스 추가
				
		ㄴ. days09.guestbook.controller 패키지 - MV[C] 컨트롤러 + 단 하나의 서블릿
				ㄴ DispatcherServlet.java  복사 + 붙이기
				ㄴ web.xml 서블릿 등록
				
		ㄷ. days09.guestbook.domain 패키지    - DTO
				ㄴ Message.java
				
		ㄹ. days09.guestbook.persistence 패키지   -  DAO
				ㄴ  IMessage.java  인터페이스
				ㄴ  MessageImpl.java 클래스     DAO
		
		ㅁ. days09.guestbook.service 패키지  - 자바 , JDBC  서비스 클래스 왜 필요한지 ?
				ㄴ ServiceException.java  서비스 함에 문제가 발생하면 ServiceException 예외 발생시킬 예정.
				ㄴ InvalidPasswordException.java
				ㄴ MessageNotFoundException.java
				ㄴ MessageListView.java
					ArrayList<> list;
					게시판 글 목록 PageBlock 클래스 만들었음. ? 페이징 처리  < 11  12  13  14  15 >
				ㄴ GetMessageListService.java
		        ㄴ MessageListView getMessageList(int pageNumber) 메서드 구현
		            MessageImpl.selectCount() 구현
		            MessageImpl.selectList() 구현
					
		6. 확인
				a 클릭
			1) /jspPro/days09/guestbook/list.do  방명록 목록 list.do
			2) DispatcherServlet.doGet() 호출
			3)     commandhandler.properties
					/days09/guestbook/list.do = days09.guestbook.command.GetMessageListHandler
			4) GetMessageListHandler.process(){
				// 구현
				파라미터
				// dao.select();  X
				서비스 클래스 호출 - GetMessageListService.java -> dao -> DB
				MessageListView 객체 저장
				return "list.jsp";
				}
				
		7.  WriteMessageHandler
			서비스
			DAO 메서드 코딩
			
		8.  delete.do
			DeleteMessageHandler 구현 ( 복붙 ~ )
			DeleteMessageService 구현 ( 복붙 ~ )
			dao.select() 구현 ( 복붙 ~ )
			dao.delete() 구현 ( 복붙 ~ )
			JdbcUtil 추가 ( 복붙 ~ )
			
		9. 방명록 수정 -
			updateMessage.do?messageId=3
			UpdateMessageHandler 구현 ( 복붙 ~ )
			UpdateMessageService 구현 ( 복붙 ~ )
			dao.update() 구현 ( 복붙 ~ )
		
		
		 답변형(계층형) 게시판 로직 이해 - 주말에 15분이면 읽을 수 있을 거예요.
 		http://taeyo.net/Columns/View.aspx?SEQ=100&PSEQ=9&IDX=1  
</pre>

</body>
</html>
















