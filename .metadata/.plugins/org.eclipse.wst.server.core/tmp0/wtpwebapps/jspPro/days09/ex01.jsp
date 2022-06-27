<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 24. - 오전 9:04:00</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex01.jsp</h3>

<pre>
	1. p 544 Chapter 19 필터 ( Filter )    --  프로젝트 적용 사용
	
		 [ 필터(Filter) ] 
	   1. 정의 ? http 요청할 때 올바른 요청+ 요청 권한 체크
	             응답할때 응답데이터를 변경(암호화) 등등을 할 수 있는 클래스
	   
	   2. 필터 체인( chain )           
	                    필터1            필터2
	  클 ->   요청  -> [인증 확인]   -> [권한 확인] ->        자원( JSP/서블릿 등)
	                                           %@ include file=".jspf"
	                   list.html
	                                                            currentPage=1 설정
	                   currentPage=1                                        
	          응답  <-  필터2       <-        중요한 데이터
	                   [암호화]
	                    
	   3. 필터 구현 방법 ( 핵심 3가지 )
	      ㄱ. javax.servlet.Filter 인터페이스 구현
	          1)  init()    필터 초기화 역할
	          2)  destory() 필터 웹컨테이너에서 소멸될때 호출되는 메서드
	          3)  ***** doFilter() ****
	              - 필터링할 작업( 코딩 ) : 인증, 권한 등등
	              - 체크된 후에는   다음 필터 또는 자원에게  chain 을 이용해서 전달.
	                                                         chain.doFilter()
	      ㄴ. 요청 - javax.servlet.ServeltRequestWrapper 클래스
	             필터가 요청을 변경한 결과를 저장하는 래퍼 클래스
	             currentPage=1 파라미터를 가공(변경) 초기화  
	             
	      ㄷ. 응답 - javax.servlet.ServletResponseWrapper 클래스     
	             필터가 응답을 변경하기 위해 사용하는 래퍼클래스
	             원본데이터 -> 암호화데이터  
	   
	    4. 필터 클래스를 사용하려면 톰캣\lib\servlet-api.jar 파일을 추가해야하지만
	       [이클립스]로 개발할 경우에는 추가할 필요가 없다. 
	                
	    5. init(  FilterConfig  객체  config )   
	       FilterConfig  객체의 메서드
	       ㄱ. String getFilterName() : 설정파일에서 <filter-name> 필터이름을 반환. 
	       ㄴ. String getInitParameter(name) :       <init-param>
	       ㄷ. getInitParameterNames()
	       ㄹ. ServletContext  getServletContext() :  서블릿 컨텍스트 객체
	     
	    6. 필터를 설정(등록)
	       ㄱ. web.xml
	       ㄴ. @WebFilter 어노테이션       
	       
	    7. 필터 사용하는 곳
			ㄱ. 인증/권한 
			        /admin/*
			ㄴ. 자원( jsp , 서블릿, 이미지 , 동영상 등 ) 로깅
			
			ㄷ. 응답 데이터 변환 ( 암호화 , xml 변환 , html 변환 )
			ㄹ. 공통 부분 -> 필터 
		
		8. 실습 1 
			ex02.jsp             form   post   한글   서브밋 ( ex02_ok.jsp )
			ex02_ok.jsp                           한글 깨져서 출력
			필터 추가 + 설정
			1) 인코딩 필터 클래스 추가
			com.filter.CharacterEncodingFilter.java
			2) 필터 등록 - web.xml
			web.xml
			web_days08_mvc.xml
		
		
		8-2. 실습 2
			days09
				ㄴ ex03.jsp
				ㄴ admin 폴더 생성 : admin 관리자로 로그인을 해야지만 사용할 수 있는 폴더
				   인증 + 권한
				ㄴ board 폴더 생성 : 반드시 로그인을 해야만 사용할 수 있다. ( member 세션값 ) 
					ㄴ ex03_list.jsp     글 목록
					ㄴ ex03_write.jsp  글 쓰기
				ㄴ member 폴더 생성
					ㄴ ex03_logon.jsp
					ㄴ ex03_logout.jsp
					ㄴ ex03_logon_ok.jsp
				
				필터 추가 
				com.filter.LoginCheckFilter.java
				필터 등록 - 어노테이션 사용.
				
				문제점) ex03.jsp 에서 글쓰기 클릭
				         -> LoginCheckFilter 거쳐서 로그인 X
				         -> ex03_logon.jsp 리다이렉트
				         -> id / passwd 로그인 성공
				         
				      ***   무조건 메인페이지로 이동 X   ->  원래 요청URL 이동
				         -> 지금 메인페이지 ( ex03.jsp ) 리다이렉트
				         [ => 글 쓰기 페이지로 리다이렉트 ] **** 처리 ....
				         
		[ 교재 ] 응답 필터 암호화 + xml -> html 변환 응답 예제
				         
	
	2. p 570 ServletContextLister  -    ex04.jsp
	
	
	3. MVC 패턴 방명록 ( questbook ) 구현    -  ex05.jsp
</pre>

<pre>
	문제 1)                         MVC 패턴 설명
		글목록 페이지      [ 글쓰기 ] 버튼 -> 글쓰기 완료
		MVC 구현 과정
		
</pre>

<pre>
	1. jspPro 웹 프로젝트 생성              컨텍스트패스 /jspPro   web application 찾아가기 위한 경로
	2. WEB-INF
		ㄴ lib 폴더      필요한 jar 파일 추가   ojdbc6.jar, jstl-1.2.jar, tomcat-dbcp.jar
	3. DBCP 설정
		ㄱ. META-INF 폴더   - context.xml
		ㄴ. web.xml           - <resource-ref>
		ㄷ. com.util.ConnectionProvider.java getConnection()
			conn.close()  ->  커넥션 풀 반환 ( 재사용 )
	4. MVC 패턴 구현
		1) MV[C] 컨트롤러 구현 == 단 하나의 서블릿 
		  DispatcherServlet.java
		  	ㄱ. MVC 역할
		  	<load-on-startup>1</load-on-startup>
		  	        map 
		  	      doGet(){
		  	          //  String requestURI = "/jspPro/board/write.do";
		  	          // requestURI = "/board/write.do";
		  	          
		  	          // WriteHandler.java
		  	          CommandHandler = map.get(   "/board/write.do"   )
		  	          .process();
		  	      }
		  	      doPost(){
		  	          doGet( r , r )
		  	      }
		  	
		2) web.xml
		        서블릿 등록 url-pattern   /   *.do
		3) 핸들러 객체
			CommandHandler 인터페이스  String process( request, response )
			ListHandler.java
			WriteHandler.java
			{
				// get
				    return "write.jsp"
				// post
				    dto
				    int rowCount = dao.insert( dto );
				    // 리다이렉트
				    String location = "list.do?write=success"
				// 그 외 방식 요청 r.se()
			}
			EditHandler.java
			ViewHandler.java
			DeleteHandler.java
		4) commandHandler.properties        -> inti(){ k , v =>  map}
			/board/list.do=....ListHandler           Properties  prop.load ( fr )
			                                                      while(){
			                                                           k = /board/list.do
			                                                           v = 객체 생성
			                                                           m.push)(  k  ,  v  )
			                                                      }
		
			
</pre>



</body>
</html>