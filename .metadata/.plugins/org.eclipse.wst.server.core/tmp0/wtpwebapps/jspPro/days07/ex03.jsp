<%@page import="com.util.ConnectionProvider"%>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22. - 오전 10:54:00</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex03.jsp</h3>

<pre>
	*** 1. 커넥션 풀 ( pool )  p 415 ***
	JSP 요청 + DB 연동 처리 + Connection 객체 생성, 닫기 + 동시 접속자가 많다면
	                                    성능 떨어짐.
	응답 늦어진다.

	=> 커넥션풀 ? 
	
		역삼역 + 자차 ( 술 ) + 대리기사 
		          천막 [ 대리기사 , 대리기사 , 대리기사 , 대리기사 , 대리기사 , 대리기사] 기법 == 커넥션 풀 기법
		          
	ㄱ. DBCP를 이용한 커넥션 풀 사용하는 방법
		https://commons.apache.org/ 		3파일 다운로드 lib 폴더 추가
		
	*** ㄴ. 톰캣( WAS )를 이용하는 커넥션 풀 사용하는 방법 ***
		1) tomcat-dbcp.jar 파일을 찾아서 WEB-INF/lib 폴더 복사 붙이기
		2) 커넥션 풀 초기화 설정
			https://commons.apache.org/ 설정 메뉴얼 찾아서 사용.
			https://tomcat.apache.org/tomcat-8.5-doc/jndi-datasource-examples-howto.html#Oracle_8i,_9i_&_10g
			META-INF 폴더
					ㄴ context.xml 추가
					
					<Context>
						<Resource 
								name="jdbc/myoracle"
								auth="Container"
						        type="javax.sql.DataSource" 
						        
						        driverClassName="oracle.jdbc.OracleDriver"
						        url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
						        username="scott"
						        password="tiger"
						        
						        maxTotal="20"  커넥션 풀 안에 최대 생성할 커넥션 객체의 수
						        maxIdle="10"   커넥션 풀이 보관할 수 있는 최대 유휴(일을 안하고 있는) 객체 수  (대기)
						        maxWaitMillis="-1"/>   
						</Context>
	                    [    C, C, C, C, C, C, C, C, C, C    ]
	                    
	         		   ㄷ. web.xml 추가
	         		   	<resource-ref>
							<description>Oracle Datasource example</description>
							<res-ref-name>jdbc/myoracle</res-ref-name>
							<res-type>javax.sql.DataSource</res-type>
							<res-auth>Container</res-auth>
						</resource-ref>
						ㄹ. com.util.클래스.java - DBCP 커넥션 객체 반환하는 메서드
						com.util.ConnectionProvider
	
	
	2. 세션 ( session ) p 232 Chapter 10 클라이언트와의 대화 : 세션
	3. JSTL
	4. EL
	5. MVC
</pre>

<%
	Context initContext = new InitialContext();
	Context envContext  = (Context)initContext.lookup("java:/comp/env");
	DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
	Connection conn = ds.getConnection();
%>

DBCP conn = <%= conn %><br>

<%
	conn.close(); // 자동으로 커넥션 풀 반환
%>

DBCP conn2 =<%= ConnectionProvider.getConnection() %>

</body>
</html>