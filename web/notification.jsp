<%-- 
    Document   : notification
    Created on : 20 Feb, 2018, 4:18:52 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
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
          int p,q=0;        //  if(request.getParameter("bt")==null)
         
      
         dbcon db2=new dbcon();
                PreparedStatement ps1=(PreparedStatement)db2.cn.prepareStatement("select * from param");
                ResultSet rs=db2.return_data(ps1);
                if(rs.next())
                {
                    p=rs.getInt(2);
                     q=p+1;
                }
           // }    
        %>
    <body>
        <h1>NOTIFICATON</h1>
        <form action="notification.jsp" method="post">
            <table border="0">
             
                <tbody>
                    <tr>
                        <td>Notification ID</td>
                        <td><input type="text" name="t1" value="<%=q%>" /></td>
                    </tr>
                    <tr>
                        <td>Notification</td>
                        <td><input type="text" name="t2" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td><input type="text" name="t3" value=""  /></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><input type="text" name="t4" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="ADD" name="bt" /></td>
                       
                    </tr>
                </tbody>
            </table>

        </form>
                    <% 
if(request.getParameter("bt")!=null)
            {
            dbcon db=new dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tbl_notification values (?,?,?,?)");
            String s1=request.getParameter("t1");
            ps.setString(1, s1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            String s2=request.getParameter("t2");
            ps.setString(2, s2);
             String s3=request.getParameter("t3");
            ps.setString(3, s3);
             String s4=request.getParameter("t4");
            ps.setString(4, s4);
         
            
            db.execution(ps);
            dbcon db4=new dbcon();
             PreparedStatement ps4=(PreparedStatement)db4.cn.prepareStatement("update param set Notification_ID=?");
              int cc=Integer.parseInt(request.getParameter("t1"));
            ps4.setInt(1,q);
              db4.execution(ps4);
              response.sendRedirect("result.jsp");
            }
            %>
        
    </body>
</html>
