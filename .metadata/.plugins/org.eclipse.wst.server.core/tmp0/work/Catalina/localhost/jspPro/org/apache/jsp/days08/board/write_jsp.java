/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-06-23 07:55:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.days08.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class write_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>2022. 6. 20. - 오후 2:49:17</title>\r\n");
      out.write("<link rel=\"shortcut icon \"type = \"image/x-icon\" href = \"../images/SiSt.ico\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write("table, td, th {\r\n");
      out.write("   border: solid 1px gray;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("table {\r\n");
      out.write("   border-spacing: 3px;\r\n");
      out.write("   border-collapse: separate;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("table, tr, td {\r\n");
      out.write("   /* border-radius: 3px; */\r\n");
      out.write("   /* padding:3px;  */\r\n");
      out.write("   \r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<h3>/days08/board/write.jsp</h3>\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("	<h2>글 쓰기</h2>\r\n");
      out.write("	<!-- \r\n");
      out.write("	action 생략 : http://localhost/jspPro/cstvsboard/write.htm \r\n");
      out.write("	-> Write.java 서블릿 \r\n");
      out.write("	-> doPost() \r\n");
      out.write("	-->\r\n");
      out.write("	<form method=\"post\">\r\n");
      out.write("		<table style=\"padding: 2px; width: 600px\">\r\n");
      out.write("	         <tr>\r\n");
      out.write("	            <td colspan=\"2\" align=\"center\"><b>글을 적어주세요</b></td>\r\n");
      out.write("	         </tr>\r\n");
      out.write("	         <tr>\r\n");
      out.write("	            <td align=\"center\">이름</td>\r\n");
      out.write("	            <td><input type=\"text\" name=\"writer\" size=\"15\"\r\n");
      out.write("	               autofocus=\"autofocus\" required=\"required\"></td>\r\n");
      out.write("	         </tr>\r\n");
      out.write("	         <tr>\r\n");
      out.write("	            <td align=\"center\">비밀번호</td>\r\n");
      out.write("	            <td><input type=\"password\" name=\"pwd\" size=\"15\" required=\"required\"></td>\r\n");
      out.write("	         </tr>\r\n");
      out.write("	         <tr>\r\n");
      out.write("	            <td align=\"center\">Email</td>\r\n");
      out.write("	            <td><input type=\"email\" name=\"email\" size=\"50\" ></td>\r\n");
      out.write("	         </tr>\r\n");
      out.write("	         <tr>\r\n");
      out.write("	            <td align=\"center\">제목</td>\r\n");
      out.write("	            <td><input type=\"text\" name=\"title\" size=\"50\" required=\"required\"></td>\r\n");
      out.write("	         </tr>\r\n");
      out.write("	         <tr>\r\n");
      out.write("	            <td align=\"center\">내용</td>\r\n");
      out.write("	            <td><textarea name=\"content\" cols=\"50\" rows=\"10\"></textarea></td>\r\n");
      out.write("	         </tr>\r\n");
      out.write("	         <tr>\r\n");
      out.write("	            <td align=\"center\">HTML</td>\r\n");
      out.write("	            <td><input type=\"radio\" name=\"tag\" value=\"1\" checked>적용\r\n");
      out.write("	               <input type=\"radio\" name=\"tag\" value=\"0\">비적용</td>\r\n");
      out.write("	         </tr>\r\n");
      out.write("	         <tr>\r\n");
      out.write("	            <td colspan=\"2\" align=\"center\">\r\n");
      out.write("	              <input type=\"submit\" value=\"작성 완료\">\r\n");
      out.write("	              &nbsp;&nbsp;&nbsp; \r\n");
      out.write("	              <input type=\"reset\" value=\"다시 작성\">\r\n");
      out.write("	              &nbsp;&nbsp;&nbsp; \r\n");
      out.write("	              <a href=\"");
      out.print( contextPath );
      out.write("/board/list.do\">Home</a>\r\n");
      out.write("	            </td>\r\n");
      out.write("	         </tr>\r\n");
      out.write("	      </table>\r\n");
      out.write("	</form>\r\n");
      out.write("</div>\r\n");
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
