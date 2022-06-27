<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 24. - 오후 12:17:05</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex04.jsp</h3>

<pre>
	[ p 570 ServletContextLister ]
	
	1. 
   웹 컨테이너(==톰캣==WAS)가 시작/종료할 때 발생하는 이벤트를 처리할려고
   한다면 ServletContextLister를 구현한 클래스에서 처리를 하면 된다. 

  2. 방법
    ㄱ. ServletContextLister 인터페이스를 구현한 클래스 작성
        1) contextInitialzied() 웹 컨테이너(==톰캣==WAS)가 시작
                                웹 애플리케이션이 시작( 초기화 )   
        2) contextDestroyed()   웹 컨테이너(==톰캣==WAS)가 종료
                                웹 애플리케이션이 종료
    ㄴ. 위의 클래스를 web.xml 에 등록
    
  3. 
     SeverletContext  sc = getServletContext()
     SeverletContext == JSP의 application 기본 객체
     
     web.xml
     <context-param> 태그 설정
     
  4. 실습
  	ServletContextLister 인터페이스를 구현한 클래스 DBCPInitListener 클래스
	com.listener.DBCPinitListener.java
</pre>

</body>
</html>