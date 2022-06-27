<%@page import="java.util.Iterator"%>
<%@page import="days02.DeptDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 16. - 오전 10:45:05</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex06_dept_jstl.jsp</h3>

<pre>

</pre>

<select id="selDept" name="selDept">
	<option>선택...</option>
	
	<c:forEach items="${ list }" var="dto">
		<option value="${ dto.deptno }">${ dto.dname }</option>
	</c:forEach>
	
</select>

<script>
	//  http://localhost/jspPro/soctt/emp?selDept=10
	$("#selDept").wrap("<form></form>").change(function(event){
		// alert( $(this).val() );  // 선택한 부서 번호
		if( $(this).val() ){
			$(this).parent()  // form
						
						.attr({
							action:"<%=contextPath%>/scott/emp",
							method:"get"
						})
						
						.submit();
		}else{
			alert(" 부서를 선택하세요. ")
		}
	});
</script>


</body>
</html>





