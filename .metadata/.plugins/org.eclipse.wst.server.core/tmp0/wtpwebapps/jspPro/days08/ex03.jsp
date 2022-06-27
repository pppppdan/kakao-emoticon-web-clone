<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오전 9:45:19</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex03</h3>

<%-- Spring + mybatis 프레임워크로 간단하게 쓸거기 때문에 jstl로는 쓰지않음--%>
<sql:query var="rs" dataSource="jdbc/myoracle">
    SELECT deptno, dname, loc
    FROM dept
</sql:query>
<c:forEach items="${rs.rows}" var="row">
    <li> ${row.deptno} / ${row.dname} / ${row.loc} </li>
</c:forEach>


</body>
</html>