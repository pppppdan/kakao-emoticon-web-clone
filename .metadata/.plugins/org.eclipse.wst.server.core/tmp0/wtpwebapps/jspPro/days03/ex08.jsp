<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 16. - 오후 4:01:01</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex08.jsp</h3>

<pre>

	ex08.jsp                 ex08_02.jsp             ex08_03.jsp
	이름                        주소                           이름
	나이                        연락처                         나이
	                                                             주소
	서브밋           ->        서브밋           ->          연락처 출력
	
</pre>

<form action="ex08_02.jsp" method="get">
    name : <input type="text" name="name" value="홍길동"><br>
    age : <input type="text" name="age" value="20"><br>
    <input type="submit" value="Next">
</form>


</body>
</html>


