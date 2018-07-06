package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import dbcon.dbcon;

public final class job_005fapply_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <form action=\"job_apply2.jsp\" method=\"POST\" enctype=\"multipart/form-data\">\n");
      out.write("            ");

                String s11=request.getParameter("t3");
                String s21=request.getParameter("t2");
                String s31=request.getParameter("t1");
            
      out.write("\n");
      out.write("            <table border=\"0\">\n");
      out.write("               \n");
      out.write("                <tbody>\n");
      out.write("                     \n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>Job post</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t1\" value=\"");
      out.print(s11);
      out.write("\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                \n");
      out.write("       ");
 

          int p;int q=0;
                dbcon db2=new dbcon();
                PreparedStatement ps1=(PreparedStatement)db2.cn.prepareStatement("select * from param");
                ResultSet rs=db2.return_data(ps1);
                if(rs.next())
                {
                p=rs.getInt(6);
                q=p+1;
                }
                
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Application no.</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t1\" value=\"");
      out.print(q);
      out.write("\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                      <tr>\n");
      out.write("                        <td>job_post</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t7\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Student id</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t2\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                         <tr>\n");
      out.write("                        <td>Resume</td>\n");
      out.write("                        <td><input type=\"file\" name=\"t3\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("          \n");
      out.write("                       <tr>\n");
      out.write("                        <td>Company id</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t4\" value=\"");
      out.print(s21);
      out.write("\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Vacancy no.</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t5\" value=\"");
      out.print(s31);
      out.write("\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("                    <tr>\n");
      out.write("                        <td>Application date</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t6\" value=\"");
      out.print( (new java.util.Date()).toLocaleString());
      out.write("   \" /></td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                  \n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"submit\" value=\"Submit\" name=\"bt\" /></td>\n");
      out.write("                    \n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("      \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
