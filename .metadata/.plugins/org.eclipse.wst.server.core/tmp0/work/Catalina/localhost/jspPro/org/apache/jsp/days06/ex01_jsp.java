/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-06-21 06:08:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.days06;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ex01_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/include.jspf", Long.valueOf(1655691494684L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');

    String contextPath = request.getContextPath();
    request.setCharacterEncoding("UTF-8");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<title>2022. 6. 21. - 오전 9:04:56</title>\r\n");
      out.write("<link rel=\"shortcut icon \"type = \"image/x-icon\" href = \"../images/SiSt.ico\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<h3>days01/ex01.jsp</h3>\r\n");
      out.write("\r\n");
      out.write("<a href=\"");
      out.print(contextPath);
      out.write("/cstvsboard/list.htm\">게시판 글 몰루</a>\r\n");
      out.write("\r\n");
      out.write("<pre>\r\n");
      out.write("\r\n");
      out.write("	p 205 Chapter 09 쿠키\r\n");
      out.write("	1. \"게시글 상세 보기\"\" 부터 ~~~\r\n");
      out.write("	\r\n");
      out.write("	1조 : 게시글 선행 작업 + 글 목록 구현 순차적 정리 설명\r\n");
      out.write("	*** 2조 : 글목록 + 글쓰기 버튼 클릭 순차적 정리 설명 ***\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	cstvsboard/write.htm GET 요청 -> Write.java 서블릿\r\n");
      out.write("	                                                 doGet() {\r\n");
      out.write("	                                                                            write.jsp\r\n");
      out.write("	                                                 }\r\n");
      out.write("	                                       POST 요청 -> doPost(){}          작성완료 버튼 클릭\r\n");
      out.write("	                                                                               <form X></form>\r\n");
      out.write("	                                                         http://localhost/jspPro/cstvsboard/write.htm + POST\r\n");
      out.write("	                                                         \r\n");
      out.write("	                                                         입력받은 파라미터 BoardDTO dto 생성\r\n");
      out.write("	                                                         BoardDAOImpl  dao\r\n");
      out.write("	                                                         int rowCount = dao.insert(dto)\r\n");
      out.write("	                                                         \r\n");
      out.write("	                                                         list.jsp  X\r\n");
      out.write("	                                                         list.htm  요청 -> List.java 서블릿 -> list.jsp\r\n");
      out.write("	                                                         리다이렉트                list         포워딩\r\n");
      out.write("	                                                         \r\n");
      out.write("	3. 페이징 처리 관련 구현 순차적 정리 설명\r\n");
      out.write("	    현재 페이지 번호, 한 게시글 출력, 페이징 블럭 수\r\n");
      out.write("	    list = dao.select( cp, np ) 1 최신글   10개                 -> list.jsp\r\n");
      out.write("	    PageBlock 클래스 선언 (   s               e    )\r\n");
      out.write("	                                   f  1             10  t\r\n");
      out.write("	                                   request.setAttribute(  \"pageblock \" , pageblock   )\r\n");
      out.write("	                                   포워딩\r\n");
      out.write("	                                   \r\n");
      out.write("	                                   c:forEach   begin = 1  end = 10 step = 1  var = i\r\n");
      out.write("	                                   i == 현재페이지  active 클래스  href \"#\"\r\n");
      out.write("	                                   a href=\"list.htm?currentpage=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ i }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write('"');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ i }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("	                                   \r\n");
      out.write("</pre>\r\n");
      out.write("\r\n");
      out.write("<pre>\r\n");
      out.write("	새 게시글 작성한 후 -> 목록 보기 화면 출력될 때\r\n");
      out.write("                                      경고창 띄우고 싶다 \"새글작성완료\"\r\n");
      out.write("</pre>\r\n");
      out.write("<pre>\r\n");
      out.write("	[ 글 상세보기 ]\r\n");
      out.write("	글 목록에서 한 게시글 제목을 클릭하면\r\n");
      out.write("	http://localhost/jspPro/cstvsboard/view.htm?seq=338\r\n");
      out.write("	1) /cstvsboard/view.htm -> View.java 서블릿   doGet(){}\r\n");
      out.write("	2)  ㄱ. 해당 게시글 조회수 1증가 +\r\n");
      out.write("		 ㄴ. dto = dao.???(seq)\r\n");
      out.write("		 request.setAttribute( \"dto\", dto);\r\n");
      out.write("		 \r\n");
      out.write("		 BoardDAO 인터페이스 메서드 추가\r\n");
      out.write("		 BoardDAOImpl 클래스 메서드 오버라이딩 코딩.\r\n");
      out.write("		 \r\n");
      out.write("	3) view.jsp 포워딩 dto\r\n");
      out.write("		화면 게시글 정보 출력 코딩\r\n");
      out.write("</pre>\r\n");
      out.write("<pre>\r\n");
      out.write("	[ 글 상세보기 ]\r\n");
      out.write("	*** [ 수정하기 ] ***  \r\n");
      out.write("	1. /cstvsboard/edit.htm?seq=401  get 방식 요청   -> Edit.java 서블릿\r\n");
      out.write("	                                                                             doGet(){\r\n");
      out.write("	                                                                                    dto <-seq=641\r\n");
      out.write("	                                                                                    request.setAttribute(\"dto\",dto)\r\n");
      out.write("	                                                                                    포워딩\r\n");
      out.write("	                                                                                    edit.jsp\r\n");
      out.write("	                                                                             }\r\n");
      out.write("	2. edit.jsp\r\n");
      out.write("		이름 :  [   ]\r\n");
      out.write("		제목 :  [ 안녕 / Hello  ]\r\n");
      out.write("		내용 :  [   ]\r\n");
      out.write("	    등 출력\r\n");
      out.write("	    \r\n");
      out.write("	    [ 저장 ] [ 취소 ]\r\n");
      out.write("	\r\n");
      out.write("	3. 저장 버튼을 클릭했을 때\r\n");
      out.write("		/cstvsboard/edit.htm       Post 방식 요청   -> Edit.java 서블릿\r\n");
      out.write("		                                                                  doPost(){\r\n");
      out.write("		                                                                     dto 생성\r\n");
      out.write("		                                                                     dao.update( dto ) / dao.edit( dto )\r\n");
      out.write("		                                                                     \r\n");
      out.write("		                                                                     // [ 포워딩 ]\r\n");
      out.write("		                                                                     // 글목록\r\n");
      out.write("		                                                                     // 글 상세보기\r\n");
      out.write("		                                                                  }\r\n");
      out.write("</pre>\r\n");
      out.write("<pre>\r\n");
      out.write("	[ 게시글 삭제 ]\r\n");
      out.write("	1. view.jsp 글 상세보기 페이지의 \"삭제버튼\"\r\n");
      out.write("	2. 삭제 권한 - 관리자, 작성자\r\n");
      out.write("	                  인증 + 권한 처리   X\r\n");
      out.write("	3. \r\n");
      out.write("	/cstvsboard/delete.tm?seq=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${dto.seq }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" -> Delete.java 서블릿 doGet(){\r\n");
      out.write("	                                                                                 delete.jsp 포워딩\r\n");
      out.write("	                                                                   }\r\n");
      out.write("	4. delete.jsp\r\n");
      out.write("	                  비밀번호 : [         ]\r\n");
      out.write("	                  [ 삭제 ]                                  -> Delete.java doPost(){\r\n");
      out.write("	                                                                          dao.삭제메서드(seq, pwd)\r\n");
      out.write("	                                                                          list.htm 리다이렉트\r\n");
      out.write("	                                                                    }               \r\n");
      out.write("	 BoardDAO                  \r\n");
      out.write("	 BoardDAOImpl\r\n");
      out.write("	 \r\n");
      out.write("</pre>\r\n");
      out.write("\r\n");
      out.write("<pre>\r\n");
      out.write("	1. 삭제 페이지로 이동 delete.jsp X\r\n");
      out.write("	2. 삭제 모달창 띄우기 ... [ 수정 ]\r\n");
      out.write("</pre>\r\n");
      out.write("<pre>\r\n");
      out.write("	1. 검색 기능 구현\r\n");
      out.write("	2. 부가코딩\r\n");
      out.write("</pre>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
