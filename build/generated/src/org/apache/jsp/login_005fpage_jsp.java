package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import dbcon.dbcon;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public final class login_005fpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("     <script type=\"text/javascript\">\n");
      out.write("        function test()\n");
      out.write("        {\n");
      out.write("           // alert('mgm');\n");
      out.write("            x=form1.t1.value;\n");
      out.write("            y=form1.t2.value;\n");
      out.write("            if(x=='')\n");
      out.write("                {\n");
      out.write("                    alert('Please enter Username');\n");
      out.write("                   // return false;\n");
      out.write("                }\n");
      out.write("                if(y=='')\n");
      out.write("            {\n");
      out.write("                alert('Please enter Passord');\n");
      out.write("               // return false;\n");
      out.write("            }\n");
      out.write("            return true;\n");
      out.write("        }\n");
      out.write("    </script> \n");
      out.write("    <body>\n");
      out.write("        <h1></h1>\n");
      out.write("         <form name=\"form1\" method=\"POST\">\n");
      out.write("            <table border=\"0\">\n");
      out.write("             \n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Username</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t1\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t2\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                       \n");
      out.write("                        <td><input type=\"button\" value=\"Login\" onclick=\"test();\" name=\"bt\"/> </td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </form> \n");
      out.write("         ");
 
             
            if(request.getParameter("bt")!=null)
            { System.out.println("hi");
                dbcon db=new dbcon();
                PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from dbtable where username=? && password=? ");
                String s=request.getParameter("t1");
                System.out.println(s);
                ps.setString(1, s);
                String s1=request.getParameter("t2");
                System.out.println(s1);
                ps.setString(2, s1);
                ResultSet rs=db.return_data(ps);
                if(rs.next())
                {
                    String a=rs.getString(1);
                    String b=rs.getString(2);
                    String c=rs.getString(3);
                    if(c.equals("admin"))
                    {
                        response.sendRedirect("admin_page1.jsp");
                    }
                    else
                    {
                        response.sendRedirect("user.jsp");
                    }
                   
                }

            }
            
      out.write("\n");
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
