<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22. - 오전 9:20:59</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02_05.jsp</h3>

<%!
	// js   getCookie( cname )
	// 쿠키 이름 -> 쿠키 값 반환하는 메서드 선언
	public String getCookie(String cname, HttpServletRequest request) throws Exception{
		// request.getCookie();
		String cvalue = null;
		
		Cookie[] cookies = request.getCookies(); // JSP  쿠키이름의 쿠키값을 얻어올 때는
		
		for( Cookie c : cookies){
			if(  c.getName().equals(cname)  ){
				cvalue = URLDecoder.decode(  c.getValue() , "UTF-8" );
				break; // 반복문은 빠져 나오기
			}
		}// foreach
		
		return cvalue;
	}
%>

<form action="ex02_05_ok.jsp">
	<!-- ex02_05.jsp?ckbCookie=name&ckbCookie=age -->
	<%
	String [] edit_cnames = request.getParameterValues("ckbCookie");
	for( int i = 0 ; i < edit_cnames.length ; i++ ){
		// Cookie c = new Cookie( 쿠키이름, 쿠키값)
		String cname = edit_cnames[i];
%>
	<!-- 표현식에서 선언문에 선언된 메서드 getCookie()를 호출할 수 있더라 -->
	<li><%=cname %> : <input type="text" name="<%=cname %>" value="<%=getCookie(cname,request) %>" /></li>
<%
	}// for
%>

<input type="submit" value="쿠키 수정" />


</form>




</body>
</html>