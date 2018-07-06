<%-- 
    Document   : upload
    Created on : 1 Mar, 2018, 11:44:47 AM
    Author     : Admin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.dbcon"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
   
    String root = getServletContext().getRealPath("/");
      String dirName=root+"images";
    MultipartRequest multi = new MultipartRequest(request, dirName);
    
    String a=multi.getFilesystemName("nma");
           dbcon db=new dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tbl_apply(?)");
            ps.setString(1, a);
    db.execution(ps);

%>
    </body>
</html>
