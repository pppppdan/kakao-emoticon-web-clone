<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 20. - 오후 12:17:13</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex04.jsp</h3>

<a href="<%=contextPath %>/cstvsboard/list.htm">게시판이다 쉑기야!</a>

<pre>
1. sqldeveloper 실행 + SCOTT 계정 접속
2. tbl_cstvsboard 테이블 생성
	seq_tbl_cstvsboard 시퀀스 생성
	
3. days05폴더 안에 board 폴더 생성
4. days05.board 패키지 생성
	ㄱ. BoardDTO
	ㄴ. BoardDAO
	ㄷ. BoardDAOImpl
	
5.  /jspPro/cstvsboard/list.htm -> 서블릿 클래스 List.java 추가 -> days05/board/list.jsp 포워딩.
6. /jspPro/cstvsboard/write.htm -> 글쓰기 링크태그 클릭
		Write.java   doGet(){}   -> 포워딩   write.jsp
6-2. write.jsp
		새 게시글 정보 입력 한 후       " 작성완료 " 버튼 클릭 ->
		/jspPro/cstvsboard/write.htm  +  POST  ->  Write.java 서블릿
		-> doPost(){
			dao.새 게시글 쓰기 () DB 저장
		}
7. 페이징 처리   << 1     2 3 4 5 6 7 8 9 10 >>
              이전버튼  시작                           끝  다음버튼   true
   PageBlock.java 클래스 선언
   
	내일 코딩 X 로직 처리 시험 
8. 내일 6/21
	1) 글 목록에서 글번호의 제목을 클릭하면 -> 글 상세보기
	2) 글 상세보기
	3) 글 수정
	4) 글 삭제
	

</pre>

</body>
</html>