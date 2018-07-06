package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import dbcon.dbcon;

public final class student_005finsertion_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("     ");

        int p,q=0;
         dbcon db2=new dbcon();
                PreparedStatement ps1=(PreparedStatement)db2.cn.prepareStatement("select *  from param");
                ResultSet rs=db2.return_data(ps1);
                if(rs.next())
                {
                    p=rs.getInt(4);
                     q=p+1;
                }
                
        
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <h1>STUDENT INSERTION</h1>\n");
      out.write("        <form>\n");
      out.write("            <table border=\"0\">\n");
      out.write("               \n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Student ID</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t1\" value=\"");
      out.print(q);
      out.write("\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Name</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t2\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Department</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t3\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Address</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t4\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Phone No.</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t5\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>SGPA</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t6\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Percentage</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t7\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Email</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t8\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Photo</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t9\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Status</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t10\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Username</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t11\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password</td>\n");
      out.write("                        <td><input type=\"text\" name=\"t12\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td> <input type=\"submit\" value=\"ADD\" name=\"bt\" /></td>\n");
      out.write("            </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("                ");
 
if(request.getParameter("bt")!=null)
            {
            dbcon db=new dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tbl_student values(?,?,?,?,?,?,?,?,?,?,?,?)");
            String s1=request.getParameter("t1");
            ps.setString(1, s1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            String s2=request.getParameter("t2");
            ps.setString(2, s2);
             String s3=request.getParameter("t3");
            ps.setString(3, s3);
             String s4=request.getParameter("t4");
            ps.setString(4, s4);
             String s5=request.getParameter("t5");
            ps.setString(5, s5);
             String s6=request.getParameter("t6");
            ps.setString(6, s6);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            String s7=request.getParameter("t7");
            ps.setString(7, s7);
             String s8=request.getParameter("t8");
            ps.setString(8, s8);
             String s9=request.getParameter("t9");
            ps.setString(9, s9);
             String s10=request.getParameter("t10");
            ps.setString(10, s10);
             String s11=request.getParameter("t11");
            ps.setString(11, s11);
             String s12=request.getParameter("t12");
            ps.setString(12, s12);
            
            db.execution(ps);
               dbcon db4=new dbcon();
             PreparedStatement ps4=(PreparedStatement)db4.cn.prepareStatement("update param set Student_ID=?");
              int cc=Integer.parseInt(request.getParameter("t1"));
            ps4.setInt(1, cc);
              db4.execution(ps4);
       
            }
            
      out.write("\n");
      out.write("       \n");
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
