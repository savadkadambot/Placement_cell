<%-- 
    Document   : upload
    Created on : 13 Dec, 2017, 12:50:57 PM
    Author     : ansira
--%>

<%@page import="dbcon.dbcon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String root = getServletContext().getRealPath("/");
      String dirName=root+"Images";
    MultipartRequest multi = new MultipartRequest(request, dirName);
    
    String a=multi.getFilesystemName("nma");
      
    dbcon db=new dbcon();
   
    PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into file2_tb(?)");
   ps.setString(1, a);
   db.execution(ps);
%>