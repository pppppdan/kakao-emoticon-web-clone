<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 스크립트릿
	String contextPath = request.getContextPath();
	//> 컨텍스트 패스 : /jspPro
	System.out.printf("> 컨텍스트 패스 : %s\n",contextPath );
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 15. - 오전 11:27:19</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
  
  <div id="tabs">
  <ul>
    <li><a href="#tabs-1">GET 방식 요청</a></li>
    <li><a href="#tabs-2">POST 방식 요청</a></li>
  </ul>
  <div id="tabs-1">
    <p>
		정수 입력 : <input type="text" name="n" id="n" >
		<br>
		<!-- a 링크 태그로 요청하면 : get 방식 요청 -->
		<a href="<%=contextPath %>/days02/ex03_ok.jsp">ex03_ok.jsp</a>
	</p>
  </div>
  <div id="tabs-2">
    <p>
    	<!-- <form method="get" action=""> -->
    	<form >
    	Name : <input type="text" name="name" id="name" autofocus="autofocus"><br>
    	Age : <input type="text" name="age" id="age" ><br>
    	<input type="radio" name="method" value="get" checked="checked"> GET 요청
    	<input type="radio" name="method" value="post"> POST 요청
    	<br>
    	<button type="button">전송(submit)</button>
    	</form>
    	<!-- a 링크 태그로 요청하면 : get 방식 요청 -->
    	<a href="<%=contextPath %>/info">/info</a>
    	<!-- 서블릿 생성 @WebServlet 어노테이션 + 자동 서블릿 등록 -->
    	<!-- p498 ~ p515 정독 -->
    	<!-- p80 ~ p88 -->
    	<!-- 
    	UTF-8 -> WAS (톰캣8) 따로 디코딩 charset 설정하지 않으면 UTF-8 디코딩
    					POST   ISO 8859-1 디코딩 X
    					equest.setCharacterEncoding("UTF-8");
    	-->
    </p>
  </div>
</div>

<script>
	$("form button").on("click", function(){
		$("form")
			.attr("action", "<%=contextPath%>/days02/info.htm")
			.attr("method",$("#tabs-2 :radio:checked").val() )
			.submit();
	});
</script>

<script>
	// 							webapp 폴더
	// http://localhost/jspPro	context root == context path
	// 									/days02/ex03_ok.jsp?n=11
	$("#tabs-1 a").on("click",function(){
		//alert("test");
		//event.prevnetDefault();
		
		// /jspPro/days02/ex03_ok.jsp?n=10
		//alert($(this).attr("href"))
		/* 
		var href = $(this).attr("href");
		$(this).attr("href",href + "?="+$("#n").val())
		*/
		
		$(this).attr("href",function(i,val){
			return val + "?n=" + $("#n").val();
		})
		
	})
</script>

<pre>
   form get submit    한글 깨지지 X
   form post submit   한글 깨졌다.
</pre>

</body>
</html>