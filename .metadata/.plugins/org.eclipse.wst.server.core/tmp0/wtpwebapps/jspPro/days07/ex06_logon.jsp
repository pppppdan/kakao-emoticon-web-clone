<%@page import="com.util.Cookies"%>
<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <h3>ex06_logon.jsp</h3> -->
<%
	HashMap<String, String> member = new HashMap<>();
	member.put("admin","1234"); // 관리자
	member.put("hong","1234"); // 일반회원
	member.put("park","1234"); // 일반회원
	
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	 if( id.equals("admin") && passwd.equals("1234") ) {
         // 세션 저장
         session.setAttribute("auth",id);
         response.sendRedirect("ex06_default.jsp");
     }else if( id.equals("hong") && passwd.equals("1234") ) {
    	 session.setAttribute("auth",id);     
         response.sendRedirect("ex06_default.jsp");
     }else if( id.equals("park") && passwd.equals("1234") ) {
    	 session.setAttribute("auth",id);       
         response.sendRedirect("ex06_default.jsp");
     }else{
        response.sendRedirect("ex06_default.jsp?error");  // 로그인 실패했을 때 ? error
     }
	
%>