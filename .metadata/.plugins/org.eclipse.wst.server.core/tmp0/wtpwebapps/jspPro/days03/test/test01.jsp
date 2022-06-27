<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 16. - 오후 4:49:49</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>test01.jsp</h3>

<select id="selDept" name="selDept" >
	<option>선택...</option>
	
	<c:forEach items="${ dlist }" var="dDto">
		<option value="${ dDto.deptno }">${ dDto.dname }</option>
	</c:forEach>
</select>

<script>
	
	$("#selDept").wrap("<form></form>").change(function(event){
		// alert( $(this).val() );  // 선택한 부서 번호
		if( $(this).val() ){
			$(this).parent()  // form
						.attr({
							//method:"get"
						})
						.submit();
		}else{
			alert(" 부서를 선택하세요. ")
		}
		$("select option").each(function(){
			if($(this).val=="${ deptno }"){
				$(this).attr("selected", "selected");
			}
		})
	});

</script>

<table border="1" style="width:100%">
	<thead>
		<tr>
			<th><input type="checkbox" >전체선택</th>
			<th>empno</th>
			<th>ename</th>
			<th>job</th>
			<th>mgr</th>
			<th>hiredate</th>
			<th>sal</th>
			<th>comm</th>
			<th>deptno</th>
		</tr>
	</thead>
	<tbody>
		
		<c:if test="${ empty elist } }">
			<tr>
				<td colspan="5" style="height:200px">사원이 존재하지 않습니다.</td>
			</tr>
		</c:if>
		<c:if test="${ not empty elist }">
			<c:forEach items="${ elist }" var="eDto">
			<tr>
				<td align="center"><input type="checkbox" ></td>
				<td>${eDto.empno }</td>
				<td>${eDto.ename }</td>
				<td>${eDto.job }</td>
				<td>${eDto.mgr }</td>
				<td>${eDto.hiredate }</td>
				<td>${eDto.sal }</td>
				<td>${eDto.comm }</td>
				<td>${eDto.deptno }</td>
			</tr>
			</c:forEach>
		</c:if>
		

	</tbody>
	<tfoot>
		<tr>
			<td colspan="9" align="center"><button>확인</button></td>
		</tr>
	</tfoot>
</table>
<br>
<br>
<br>
<a href="<%=contextPath%>/test/test00.htm">Home</a>

</body>
</html>