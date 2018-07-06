<%-- 
    Document   : company_verificn2
    Created on : 21 Feb, 2018, 3:00:24 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
    
      
        <%
                String s=request.getParameter("S1");
            dbcon db=new dbcon();
                    PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tbl_company where Name=?");
                    ps.setString(1, s);
                    ResultSet rs=db.return_data(ps);
         if(rs.next())
            {
              %>
           
    <form method="post" >
                  <table border="1">
               
                          <tr>
                              <td>Company_ID</td>
                              <td><input type="text" value="<%=rs.getString(1)%>" name="t11"></td>
                          </tr>
                            <tr>
                              <td>Company Name</td>
                              <td><%=rs.getString(2)%></td>
                          </tr>
                          <tr>
                              <td>Head</td>
                              <td><%=rs.getString(3)%></td>
                          </tr>
                          <tr>
                              <td>Phone No.</td>
                              <td><%=rs.getString(4)%></td>
                          </tr>
                          <tr>
                              <td>Location</td>
                              <td><%=rs.getString(5)%></td>
                          </tr>
                          <tr>
                              <td>Email_ID</td>
                              <td><%=rs.getString(6)%></td>
                          </tr>
                          <tr>
                              <td>Description</td>
                              <td><%=rs.getString(7)%></td>
                          </tr>
                          <tr>
                              <td>Status</td>
                              <td><%=rs.getString(8)%></td>
                          </tr>
                          
                        
                          <tr> <input type="submit" value="ACCEPT" name="bbb"><input type="submit" value="REJECT" name="ccc"></tr>
                  </table><% } %>
           </form>
                  <%
         if(request.getParameter("bbb")!=null)
         {
           dbcon db1=new dbcon();
            PreparedStatement ps1=(PreparedStatement)db1.cn.prepareStatement("update tbl_company set status='Accepted' where Company_ID=?");
            String w=request.getParameter("t11");
            ps1.setString(1, w);
            db1.execution(ps1);  
         }
                  if(request.getParameter("ccc")!=null)
         {
            dbcon db2=new dbcon();
            PreparedStatement ps2=(PreparedStatement)db2.cn.prepareStatement("update tbl_company set status='Rejected' where Company_ID=?");
            String v=request.getParameter("t11");
            ps2.setString(1, v);
            db2.execution(ps2); 
         }
         %>