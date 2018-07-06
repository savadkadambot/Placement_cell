<%-- 
    Document   : apply_view3
    Created on : 28 Feb, 2018, 1:07:33 PM
    Author     : Admin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <%
         
           dbcon db1=new dbcon();
            PreparedStatement ps1=(PreparedStatement)db1.cn.prepareStatement("update  tbl_apply set status='Selected' where Company_ID=? ");
            String s1=request.getParameter("id");
            ps1.setString(1, s1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
          
          
            db1.execution(ps1);  
            %>
    <body>
        <form>
            
        </form>
    </body>
</html>
