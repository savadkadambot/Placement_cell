package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import dbcon.dbcon;

public final class vacancy_005fview2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head> \n");
      out.write("    </head>\n");
      out.write("    <body>  \n");
      out.write("        ");

                String s=request.getParameter("id");
            dbcon db=new dbcon();
                    PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tbl_vacancy where Vacancy_No=?");
                    ps.setString(1,s);
                    ResultSet rs=db.return_data(ps);
         if(rs.next())
            {
              
      out.write("\n");
      out.write("           \n");
      out.write("    <form action=\"job_apply.jsp\" method=\"post\" >\n");
      out.write("                  <table border=\"1\">\n");
      out.write("               \n");
      out.write("                          <tr>\n");
      out.write("                              <td>Vacancy no</td>\n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(1));
      out.write("\" name=\"t1\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                            <tr>\n");
      out.write("                              <td>Company Id</td>\n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(2));
      out.write("\" name=\"t2\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                          <tr>\n");
      out.write("                              <td>Job name</td> \n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(3));
      out.write("\" name=\"t3\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                          <tr>\n");
      out.write("                              <td>Criteria</td>\n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(4));
      out.write("\" name=\"t4\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                          <tr>\n");
      out.write("                              <td>Announcement date</td>\n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(5));
      out.write("\" name=\"t5\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                          <tr>\n");
      out.write("                              <td>Last date</td>\n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(6));
      out.write("\" name=\"t6\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                          <tr>\n");
      out.write("                              <td>No of vacancy</td>\n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(7));
      out.write("\" name=\"t7\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                          <tr>\n");
      out.write("                              <td>Salary</td>\n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(8));
      out.write("\" name=\"t8\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                             <tr>\n");
      out.write("                              <td>Status</td>\n");
      out.write("                              <td><input type=\"text\" value=\"");
      out.print(rs.getString(9));
      out.write("\" name=\"t9\"></td>\n");
      out.write("                          </tr>\n");
      out.write("                          \n");
      out.write("                        \n");
      out.write("                          <tr><td> <input type=\"submit\" value=\"Apply\" name=\"bbb\"></td></tr>\n");
      out.write("           </form>\n");
      out.write("                          ");
}
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
