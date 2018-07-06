<%-- 
    Document   : company_verificn3
    Created on : 22 Feb, 2018, 3:59:57 PM
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
    <body>
        <h1>Hello World!</h1>
           <%
         
          /*  dbcon db1=new dbcon();
            PreparedStatement ps1=(PreparedStatement)db1.cn.prepareStatement("update tbl_company set status=? where Company_ID=?");
            String s1=request.getParameter("t11");
             ps1.setString(1, "pending..");
            ps1.setString(2, s1); 
              db1.execution(ps1);*/
             dbcon db=new dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("update tbl_company set status='Accepted' where Company_ID=?");
            String s=request.getParameter("t11");
            ps.setString(1, s);
            db.execution(ps);     
         %>
            <%   /*   if(request.getParameter("bt2")!=null)
         {
            dbcon db2=new dbcon();
            PreparedStatement ps2=(PreparedStatement)db2.cn.prepareStatement("update tbl_company set status=? where Company_ID=?");
            String s2=request.getParameter("t11");
            ps2.setString(1, "pending..");
            ps2.setString(2, s2); 
              db2.execution(ps2);
                 }
       */
%>   
            
    </body>
</html>
