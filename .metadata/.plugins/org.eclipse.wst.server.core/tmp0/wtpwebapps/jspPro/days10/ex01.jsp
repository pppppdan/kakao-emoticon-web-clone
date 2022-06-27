<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 27. - 오전 9:08:45</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>days10/ex01.jsp</h3>

<pre>
	[ 계층형( 답변형 ) 게시판 ] - MVC 패턴
	
	1. web.xml -> 복사 붙이기 web_days09_p.xml
	2. days10 폴더
		ㄴ replyboard 폴더 생성
			ㄴ emoticon 폴더
			ㄴ images 폴더
			
	3. MV[C] 컨트롤러 역할 -> A.    DispatcherServlet.java ( 단 하나의 서블릿 )
	                                  B.        init(){   }   ???.properties
	                                          list.do = ListHandler
		모든 요청 -> 요청 URL -> map ( 커맨드핸들러 ) 
		                  key              value ( [M]VC )
	                                         로직처리 객체
	                                         .process() ->  Service -> Dao -> DB처리
	                                         request.setAttribute() 저장
	                                         Session
	                                         4가지 영역
	                                         return 뷰페이지
	                                         
	                                  포워딩 또는 리다이렉트
	                              C.  CommandHandler.java 인터페이스
	                              D.  ListHandler.java 
	                              E.  ListService.java
	                              F.  DAO/DAOimpl
	                              G. 테이블 생성 + 시퀀스 생성
	                              H. DTO 
	                              I.  list.jsp

               **** 로직 이해 + 오늘 수업 코딩 X ****
	4.  답변형(계층형) 게시판 로직 이해 - 주말에 15분이면 읽을 수 있을 거예요.
        http://taeyo.net/Columns/View.aspx?SEQ=100&PSEQ=9&IDX=1  
        
        1) 오라클 DB + 게시판테이블 생성
        시퀀스 자동 증가
        글번호 ( seq : PK )  제목 ( subject )     그룹 ( REF )  순번( STEP ) 깊이 ( DEPTH )                 .... 
        1                         첫 번째 게시글              1                     1              0
        2                         두 번째 게시글              2                     1              0
        3                         세 번째 게시글              3                     1              0
        4                         2 - 1 답글                 2                     4              1
        5                         2 - 2 답글                 2                     3              1
        6                         2 - 3 답글                 2                     2              1
        
        
        1-2 ) list.jsp 글 목록 페이지
         - ORDER BY ref DESC, step ASC
         글번호 ( seq : PK )  제목 ( subject )     그룹 ( REF )  순번( STEP ) 깊이 ( DEPTH )                 ....
        3                         세 번째 게시글              3                     1              0
        2                         두 번째 게시글              2                     1              0
        6                           ㄴ 2 - 3 답글                 2                     2              1
        5                           ㄴ 2 - 2 답글                 2                     3              1
        4                           ㄴ 2 - 1 답글                 2                     4              1
        1                         첫 번째 게시글              1                     1              0
         
         
        
        
        5. *** 이해 *** -> 코딩 
            1) 첫 번째 게시글( 새글 ) 쓰기
               ㄱ. 글 그룹 ( REF )는 글번호 ( seq )랑 동일한 값으로 설정한다.
               ㄴ. 1) 먼저 동일한 글그룹(REF)에서 부모순번 ( STEP )보다 큰 것들의 STEP을 1증가
                   2) 새글의 순번(STEP)은                            1  로 설정한다.
               ㄷ. 새글의 깊이(DEPTH)은                          0  로 설정한다.
            2) 답글 쓰기
               *** 부모글의                           그룹 ( REF )  순번( STEP ) 깊이 ( DEPTH )   
               2                     두 번째 게시글           2                   1                0
               
               ㄱ. 글 그룹 ( REF )는 글번호 ( seq )랑 동일한 값으로 설정한다.
               ㄴ. 새글의 순번(STEP)은      부모순번(STEP) +1 로 설정한다.
               ㄷ. 새글의 깊이(DEPTH)은  부모깊이(DEPTH) +1  로 설정한다. 
        
        -------------------------------------------------------------------------------------------
        
        1) 오라클 DB + 게시판테이블 생성
        글번호 ( seq : PK )  제목 ( subject )                        .... 
        1             첫번째 게시글
        2             두번째 게시글
        3             세번째 게시글
        4             2-1 답글
        5             2-2 답글
        6             2-2-1 답답글
        7             3-1 답글
        
        
        
        1-2 ) list.jsp 글 목록 페이지
         - 최신글 먼저 출력              ORDER BY seq DESC
        글번호 ( seq : PK )  제목 ( subject )                        .... 
        3             세번째 게시글
        7               ㄴ 3-1 답글
        2             두번째 게시글
        5               ㄴ 2-2 답글
        6               ㄴ 2-1-1 답글
        4               ㄴ 2-1 답글
        1             첫번째 게시글
        
        답글 위한 선행 조건 ) 
        	ㄱ. 보고자 하는 게시글 (2) 클릭 view.do -> view.jsp
        	    [수정][삭제][**답글달기**][홈]
        	
		답글 list.jsp  관련된 게시글           그룹 화면 출력 하는 방법 )
		                   ㄴ 답글
		                     ㄴ 답답글
		                   ㄴ 답글
		      => 해결방법 : 그룹화 컬럼 추가                         ( REF )
		                        그룹 안에서 순서 컬럼 추가              ( STEP )
		                        새 / 답 / 답답 / 답답답...  컬럼 추가  ( DEPTH )
        	                    0    1    2        3       4...
        	  => 해결방법 : 그룹화 + 그룹 안에서 순서 컬럼 추가  ( THREAD = REF + STEP )
		                        새 / 답 / 답답 / 답답답...  컬럼 추가  ( DEPTH )
        	                    0    1    2        3       4...
        	                                             THREAD     STEP
        1             첫번째 게시글                    1000           0  ( 1~ 1000 )
        2             두번째 게시글                    2000           0  ( 1001 ~ 2000 )
        3             세번째 게시글                    3000           0  ( 2001 ~ 3000 )
        4             2-1 답글                        1998           0  ( 1001 ~ 2000 )
        5             2-2 답글                        1999           0  ( 1001 ~ 2000 )
        6             2-2-1 답답글
        7             3-1 답글
        
	6. 테이블 생성 / 시퀀스 생성
	 CREATE SEQUENCE SEQ_REPLYBOARD;
 
 CREATE TABLE "SCOTT"."REPLYBOARD" 
   (   
    "NUM" NUMBER NOT NULL ENABLE,   
   "WRITER" VARCHAR2(12 BYTE) NOT NULL ENABLE, 
   "EMAIL" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
   "SUBJECT" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
   "PASS" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
   "READCOUNT" NUMBER(5,0) DEFAULT 0 NOT NULL ENABLE, 
   "REGDATE" DATE DEFAULT sysdate NOT NULL ENABLE, 
   "CONTENT" CLOB NOT NULL ENABLE, 
   "IP" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
   
   "REF" NUMBER(5,0) DEFAULT 0 NOT NULL ENABLE, 
   "STEP" NUMBER(3,0) DEFAULT 0 NOT NULL ENABLE, 
   "DEPTH" NUMBER(3,0) DEFAULT 0 NOT NULL ENABLE, 
   
    PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
        
 	7. DTO 셍성
 	days10.replyboard.controller           -  MV[C]
 		ㄴ DispatcherServlet.java            days09 복사 + 붙이기 => 수정
 		ㄴ commandHandler.properties    days09 복사 + 붙이기 => 수정
 	days10.replyboard.command          -  [M]VC
 		ㄴ CommandHandler.java            days09 복사 + 붙이기 => 수정
 		ㄴ ListHandler.java
 		ㄴ WriteHandler.java
 	days10.replyboard.domain              -  DTO
 		ㄴ ReplyBoardDTO.java
 	days10.replyboard.persistence        - DAO
 		ㄴ IReplyBoard.java  인터페이스
 		ㄴ ReplyBoardDAO.java 
 	days10.replyboard.service              - SERVICE
	
	8. 글쓰기
		1) list.jsp 글쓰기 버튼을 클릭
			/days10/replyboard/write.do=days10.replyboard.command.WriteHandler  + GET 방식 요청
			새글 write.jsp 페이지로 포워딩
			[] 입력
			[] 입력
			[] 입력
			[저장] 버튼
			
			/days10/replyboard/write.do=days10.replyboard.command.WriteHandler  + POST 방식 요청
			ㄴ WriteService
				ㄴ ReplyBoardDAO.insert()
			list.do 리다이렉트
	9. 글 목록에서 보고자하는 게시글의 제목을 클릭 -> view.do -> ViewHandler.java -> view.jsp
		
		[답글달기] 버튼을 클릭    write.do?num=&ref=&step&depth   -> write.jsp (GET)
		
		[write.jsp]
		[] 입력
		[] 입력
		[] 입력
		[] 입력
		[저장하기]  -> write.do (POST) -> WriteHandler 답글부분 코딩 추가 -> WriteService 답글 수정 -> insert() 답글 추가 수정
		-> list.do  또는  view.do
		
	10. 답글
		write.do?num=2&ref=2&step=0&depth=0  -> write.jsp 이동
		[] 입력
		[] 입력
		[] 입력
		[] 입력
		[저장하기]  -> write.do (POST) -> WriteHandler 답글부분 코딩 추가 -> WriteService 답글 수정 -> insert() 답글 추가 수정
		-> list.do  또는  view.do
</pre>

</body>
</html>




















