/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-06-21 07:48:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.days06;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ex02_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<title>2022. 6. 21. - 오후 4:25:08</title>\r\n");
      out.write("<link rel=\"shortcut icon \"type = \"image/x-icon\" href = \"../images/SiSt.ico\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<h3>ex02.jsp</h3>\r\n");
      out.write("\r\n");
      out.write("<pre>\r\n");
      out.write("	*** 취업 : 게시판 ***\r\n");
      out.write("	*** 취업 : 상태관리 - 쿠키, 세션 ***\r\n");
      out.write("	p 205 Chapter 09 클라이언트와 대화 - 쿠키\r\n");
      out.write("	p 232 Chapter 10 세션\r\n");
      out.write("</pre>\r\n");
      out.write("\r\n");
      out.write("<pre>\r\n");
      out.write("	p 205 Chapter 09 클라이언트와 대화 - 쿠키\r\n");
      out.write("	\r\n");
      out.write("	1. 클라이언트    서버\r\n");
      out.write("	                  요청\r\n");
      out.write("	                  응답\r\n");
      out.write("	2. 정보 저장 ( 상태 유지 )\r\n");
      out.write("		클라이언트 : 텍스트 파일 저장\r\n");
      out.write("	3. js - document.cookie 속성       쿠키 생성(저장), 쿠키 읽기\r\n");
      out.write("	    js 클라이언트 사용자 측 \r\n");
      out.write("	4. JSP /Servlet 사용\r\n");
      out.write("	   서버     쿠키 생성 코딩 ( 명령 ) -> 클라이언트   쿠키 생성, 삭제\r\n");
      out.write("	   \r\n");
      out.write("	5. 쿠키 구성\r\n");
      out.write("		ㄱ. 쿠키 이름 ( 필수 )\r\n");
      out.write("		ㄴ. 쿠키 값 ( 필수 )\r\n");
      out.write("		ㄷ. 만료시점            -1  브라우저 닫음 쿠키 제거\r\n");
      out.write("	                               0 쿠키 제거\r\n");
      out.write("	                               별도의 만료시점을 설정하지 않으면 웹브라우저를 종료할 때 쿠키 자동 제거\r\n");
      out.write("		ㄹ. 도메인 ( domain )  localhost\r\n");
      out.write("		ㅁ. 경로 ( path )           /                    days06\r\n");
      out.write("		\r\n");
      out.write("		클라이언트 쿠키 사용 O\r\n");
      out.write("		http://localhost/jspPro/days01/ex01.jsp\r\n");
      out.write("		http://localhost/jspPro/days02/ex01.htm\r\n");
      out.write("		http://localhost/jspPro/days06/ex01.htm   쿠키 사용 O\r\n");
      out.write("	\r\n");
      out.write("	6. JSP 쿠키 생성\r\n");
      out.write("		ㄱ. Cookie 클래스 -> 객체 생성\r\n");
      out.write("			Cookie c = new Cookie( 쿠키이름 , 쿠키값 );\r\n");
      out.write("			c.setXXX()\r\n");
      out.write("			c.setXXX()\r\n");
      out.write("			c.setXXX()\r\n");
      out.write("		ㄴ. 응답할 떄 생성된 위의 쿠키 객체를 포함해서 가지고 가서 클라이언트 전달 ( 응답 ) 저장\r\n");
      out.write("			response.addCookie( c );	\r\n");
      out.write("</pre>\r\n");
      out.write("\r\n");
      out.write("<a href=\"ex02_02.jsp\">JSP 쿠키 굽기</a><!-- ex02_02_ok.jsp -->\r\n");
      out.write("<a href=\"ex02_03.jsp\">JSP 쿠키 보기</a>\r\n");
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
