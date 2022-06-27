<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오후 3:42:30</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	div{
		border:1px solid gray;
		padding : 5px;
		margin-top:10px;
		max-height:500px;
		overflow: auto;
	}
</style>
</head>
<body>

<h3>ex05_05.jsp</h3>

<%
	// 스크립트릿
	String filePath = application.getInitParameter("filePath");
	// 이클립스 + 실제 배포 경로
	// C:\Class\JSPClass
	// 				\.metadata
	// 					\.plugins
	//						\org.eclipse.wst.server.core\tmp0
	// 							\wtpwebapps
	// 								\jspPro\
	//String realPath = application.getRealPath("");
	// C:\Class\JSPClass
	// 				\.metadata
	// 					\.plugins
	//						\org.eclipse.wst.server.core
	//							\tmp0
	//								\wtpwebapps
	//									\jspPro\days03
	String realPath = application.getRealPath(filePath);
%>
<%-- 
<%= filePath%><br>
<%= realPath%><br>
--%>

<%
	File dir = new File(realPath);
	File [] fileList = dir.listFiles();
%>

<form>
	<select id="file" name="file">
	<% 
		for(int i = 0; i < fileList.length; i++){
	%>
		<option><%= fileList[i].getName() %></option>
	<%
		}
	%>
	</select>
	
</form>

<%
	FileReader in = null;
	BufferedReader br = null;
	//ex05_05.jsp?file=ex04_ok.jsp
	// ex05_05.jsp 					null
	String pfname = request.getParameter("file");
	if(pfname == null ){
		pfname = fileList[0].getName();
	}
	String fileName = String.format(  "%s\\%s",realPath ,  pfname);
	//fileName
	
	StringBuffer sb = new StringBuffer();
	
	try{
		in = new FileReader(fileName);
		br = new BufferedReader(in);
		
		String line = null;
		
		while(   (line = br.readLine() )  !=   null  ){
			sb.append( line + "\r\n"  );
		}// while
		
	}catch(Exception e){
		e.printStackTrace();  // 주의
	}finally{
		try{
			in.close();
			br.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	String content = sb.toString();
	content = content
			.replaceAll("<", "&lt;")
			.replaceAll(">", "&gt;")
			.replaceAll("\r\n", "<br>");
	
%>

<div>
	<code>
	<%= content %>
	</code>
</div>

<script>
	$("#file").change(function(event){
		// $("form")
		$(this).parent().submit();
	});
	
	
	// select 태그 옵션 상태 관리 ( 유지 )
	$("#file").val('<%= pfname%>');
	
</script>



</body>
</html>














