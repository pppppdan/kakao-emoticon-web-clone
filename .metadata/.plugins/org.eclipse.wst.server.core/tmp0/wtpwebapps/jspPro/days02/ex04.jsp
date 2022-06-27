<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	
	String operator = "+";
	String demoOutput = "";	

	try{
		int num1 = Integer.parseInt( request.getParameter("num1") );
		int num2 = Integer.parseInt( request.getParameter("num2") );
		operator = request.getParameter("operator");
		
		double result = 0;
		
		switch(operator){
		case "+": result = num1 + num2 ; break;
		case "-": result = num1 - num2 ; break;
		case "*": result = num1 * num2 ; break;
		case "/": result = num1 / num2 ; break;
		}
		
		demoOutput = String.format("%d %s %d = %.2f", num1 , operator, num2 , result);
	}catch(Exception e){
		//e.printStackTrace();
	}
	
	// num1, operator, num2 상태 관리
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 15. - 오후 2:32:59</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex04.jsp</h3>

<form method="get" action="">

<input type="text" id="num1" name="num1" autofocus="autofocus" 
value="<%= request.getParameter("num1") == null ? "" : request.getParameter("num1")%>">
<!-- select 태그도 선택한 옵션으로 상태 유지 -->

<select id="operator" name="operator">
	<option>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</select>

<script>
	$("#operator").val("<%= operator %>");
</script>


<%-- 
selected 설정해서 선택했던 값 유지하는 법
<select name="operator" id="operator" >
   <option <%=operator.equals("+") ? "selected" : "" %>>+</option>
   <option <%=operator.equals("-") ? "selected" : "" %>>-</option>
   <option <%=operator.equals("*") ? "selected" : "" %>>*</option>
   <option <%=operator.equals("/") ? "selected" : "" %>>/</option>
</select>
 --%>

<input type="text" id="num2" name="num2" value=" ${param.num2} ">

</form>

<p id="demo"><%=demoOutput %></p>

<script>
	$(":text").css("text-align","center");
	
	// 첫 번째 input type = "text"
	/* 
	$(":text").first()
	$(":text:first-of-type")
	$(":text:eq(0)")
	$(":text").eq(0)
	*/
	/* 
	$("text:nth-of-type(2)")
	$(":text").last()
	$(":text:nth-last-of-type(1)")
	$("form").find(":text").eq(1)
	*/
	$(":text").eq(1).on("keyup", function(){
		if(event.which == 13){
			//alert("1")
			$("form").submit();
		}
	})
	
	
</script>

</body>
</html>






















