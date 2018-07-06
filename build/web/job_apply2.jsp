<%-- 
    Document   : job_apply2
    Created on : 1 Mar, 2018, 12:51:53 PM
    Author     : Admin
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
    </head>
     
    <body>
        <h1>Successfully processed</h1>
                          <% 
                              
                              
                              
                              String root = getServletContext().getRealPath("/");
      String dirName=root+"image";
    MultipartRequest m=new MultipartRequest(request,dirName);
    
if(m.getParameter("bt")!=null)
            {
            dbcon db=new dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tbl_apply values (?,?,?,?,?,?,?,?)");
            String s1=m.getParameter("t1");
            ps.setString(1, s1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            String s2=m.getParameter("t7");
            ps.setString(2, s2);
             String s3=m.getParameter("t2");
            ps.setString(3, s3);
             
    String a=m.getFilesystemName("t3");
    ps.setString(4,a);
             String s4=m.getParameter("t4");
            ps.setString(5, s4);
             String s5=m.getParameter("t5");
            ps.setString(6, s5);
             String s6=m.getParameter("t6");
            ps.setString(7, s6);
            ps.setString(8,"pending..");
            db.execution(ps);
             response.sendRedirect("result.jsp");
            }
            %>

    </body>
</html>
