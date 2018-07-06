<%-- 
    Document   : company_insertion
    Created on : 20 Feb, 2018, 3:17:09 PM
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

          int p;int q=0;
                dbcon db2=new dbcon();
                PreparedStatement ps1=(PreparedStatement)db2.cn.prepareStatement("select * from param");
                ResultSet rs=db2.return_data(ps1);
                if(rs.next())
                {
                p=rs.getInt(1);
                q=p+1;
                }
        %>
    <body>
        <h1>COMPANY INSERTION</h1>
        <form>
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>Company_ID</td>
                        <td><input type="text" name="t1" value="<%=q%>" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="t2" value="" /></td>
                    </tr>
                    <tr>
                        <td>Head</td>
                        <td><input type="text" name="t3" value="" /></td>
                    </tr>
                    <tr>
                        <td>Phone No.</td>
                        <td><input type="text" name="t4" value="" /></td>
                    </tr>
                    <tr>
                        <td>Location</td>
                        <td><input type="text" name="t5" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email ID</td>
                        <td><input type="text" name="t6" value="" /></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><input type="text" name="t7" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="SUBMIT" name="bt" /></td>
                       
                    </tr>
                </tbody>
            </table>

        </form>
                 <% 
if(request.getParameter("bt")!=null)
            {
            dbcon db=new dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tbl_company values (?,?,?,?,?,?,?,?)");
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
            ps.setString(8,"pending..");
            db.execution(ps);
                dbcon db4=new dbcon();
             PreparedStatement ps4=(PreparedStatement)db4.cn.prepareStatement("update param set Company_ID=?");
               int s9=Integer.parseInt(request.getParameter("t1"));
            ps4.setInt(1,s9);
              db4.execution(ps4);
            }
            %>
    </body>
</html>
