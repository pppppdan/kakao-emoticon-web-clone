<%@ page trimDirectiveWhitespaces="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	int rowCount = Integer.parseInt(request.getParameter("rowCount"));	//0이면 구매가능 1이면 이미 구매함
	String jsonResult = String.format("{ \"count\":%d }", rowCount) ;	/* json object 형식 */	
%>
<%=jsonResult %>