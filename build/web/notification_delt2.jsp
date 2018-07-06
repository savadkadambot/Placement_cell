<%-- 
    Document   : after_deletion
    Created on : 20 Feb, 2018, 3:03:57 PM
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
        <% 
        
          dbcon db=new dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("delete from tbl_notification where Notification_ID=?");
           String s1=request.getParameter("id");
            ps.setString(1, s1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
          
            db.execution(ps);
        %>
    </body>
</html>
