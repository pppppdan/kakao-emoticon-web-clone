<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 21. - 오전 9:04:56</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>days01/ex01.jsp</h3>

<a href="<%=contextPath%>/cstvsboard/list.htm">게시판 글 몰루</a>

<pre>

	p 205 Chapter 09 쿠키
	1. "게시글 상세 보기"" 부터 ~~~
	
	1조 : 게시글 선행 작업 + 글 목록 구현 순차적 정리 설명
	*** 2조 : 글목록 + 글쓰기 버튼 클릭 순차적 정리 설명 ***
	
	
	cstvsboard/write.htm GET 요청 -> Write.java 서블릿
	                                                 doGet() {
	                                                                            write.jsp
	                                                 }
	                                       POST 요청 -> doPost(){}          작성완료 버튼 클릭
	                                                                               <form X></form>
	                                                         http://localhost/jspPro/cstvsboard/write.htm + POST
	                                                         
	                                                         입력받은 파라미터 BoardDTO dto 생성
	                                                         BoardDAOImpl  dao
	                                                         int rowCount = dao.insert(dto)
	                                                         
	                                                         list.jsp  X
	                                                         list.htm  요청 -> List.java 서블릿 -> list.jsp
	                                                         리다이렉트                list         포워딩
	                                                         
	3. 페이징 처리 관련 구현 순차적 정리 설명
	    현재 페이지 번호, 한 게시글 출력, 페이징 블럭 수
	    list = dao.select( cp, np ) 1 최신글   10개                 -> list.jsp
	    PageBlock 클래스 선언 (   s               e    )
	                                   f  1             10  t
	                                   request.setAttribute(  "pageblock " , pageblock   )
	                                   포워딩
	                                   
	                                   c:forEach   begin = 1  end = 10 step = 1  var = i
	                                   i == 현재페이지  active 클래스  href "#"
	                                   a href="list.htm?currentpage=${ i }">${ i }
	                                   
</pre>

<pre>
	새 게시글 작성한 후 -> 목록 보기 화면 출력될 때
                                      경고창 띄우고 싶다 "새글작성완료"
</pre>
<pre>
	[ 글 상세보기 ]
	글 목록에서 한 게시글 제목을 클릭하면
	http://localhost/jspPro/cstvsboard/view.htm?seq=338
	1) /cstvsboard/view.htm -> View.java 서블릿   doGet(){}
	2)  ㄱ. 해당 게시글 조회수 1증가 +
		 ㄴ. dto = dao.???(seq)
		 request.setAttribute( "dto", dto);
		 
		 BoardDAO 인터페이스 메서드 추가
		 BoardDAOImpl 클래스 메서드 오버라이딩 코딩.
		 
	3) view.jsp 포워딩 dto
		화면 게시글 정보 출력 코딩
</pre>
<pre>
	[ 글 상세보기 ]
	*** [ 수정하기 ] ***  
	1. /cstvsboard/edit.htm?seq=401  get 방식 요청   -> Edit.java 서블릿
	                                                                             doGet(){
	                                                                                    dto <-seq=641
	                                                                                    request.setAttribute("dto",dto)
	                                                                                    포워딩
	                                                                                    edit.jsp
	                                                                             }
	2. edit.jsp
		이름 :  [   ]
		제목 :  [ 안녕 / Hello  ]
		내용 :  [   ]
	    등 출력
	    
	    [ 저장 ] [ 취소 ]
	
	3. 저장 버튼을 클릭했을 때
		/cstvsboard/edit.htm       Post 방식 요청   -> Edit.java 서블릿
		                                                                  doPost(){
		                                                                     dto 생성
		                                                                     dao.update( dto ) / dao.edit( dto )
		                                                                     
		                                                                     // [ 포워딩 ]
		                                                                     // 글목록
		                                                                     // 글 상세보기
		                                                                  }
</pre>
<pre>
	[ 게시글 삭제 ]
	1. view.jsp 글 상세보기 페이지의 "삭제버튼"
	2. 삭제 권한 - 관리자, 작성자
	                  인증 + 권한 처리   X
	3. 
	/cstvsboard/delete.tm?seq=${dto.seq }" -> Delete.java 서블릿 doGet(){
	                                                                                 delete.jsp 포워딩
	                                                                   }
	4. delete.jsp
	                  비밀번호 : [         ]
	                  [ 삭제 ]                                  -> Delete.java doPost(){
	                                                                          dao.삭제메서드(seq, pwd)
	                                                                          list.htm 리다이렉트
	                                                                    }               
	 BoardDAO                  
	 BoardDAOImpl
	 
</pre>

<pre>
	1. 삭제 페이지로 이동 delete.jsp X
	2. 삭제 모달창 띄우기 ... [ 수정 ]
</pre>
<pre>
	1. 검색 기능 구현
	2. 부가코딩
</pre>



</body>
</html>