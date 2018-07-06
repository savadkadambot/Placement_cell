<%-- 
    Document   : student_insertion
    Created on : 20 Feb, 2018, 12:02:05 PM
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
        int p,q=0;
         dbcon db2=new dbcon();
                PreparedStatement ps1=(PreparedStatement)db2.cn.prepareStatement("select *  from param");
                ResultSet rs=db2.return_data(ps1);
                if(rs.next())
                {
                    p=rs.getInt(4);
                     q=p+1;
                }
                
        %>
    <body>
        <h1>STUDENT INSERTION</h1>
        <form>
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>Student ID</td>
                        <td><input type="text" name="t1" value="<%=q%>" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="t2" value="" /></td>
                    </tr>
                    <tr>
                        <td>Department</td>
                        <td><input type="text" name="t3" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="t4" value="" /></td>
                    </tr>
                    <tr>
                        <td>Phone No.</td>
                        <td><input type="text" name="t5" value="" /></td>
                    </tr>
                    <tr>
                        <td>SGPA</td>
                        <td><input type="text" name="t6" value="" /></td>
                    </tr>
                    <tr>
                        <td>Percentage</td>
                        <td><input type="text" name="t7" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="t8" value="" /></td>
                    </tr>
                    <tr>
                        <td>Photo</td>
                        <td><input type="text" name="t9" value="" /></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><input type="text" name="t10" value="" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="t11" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="t12" value="" /></td>
                    </tr>
                    <tr>
                        <td> <input type="submit" value="ADD" name="bt" /></td>
            </tr>
                </tbody>
            </table>

        </form>
                <% 
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
            %>
       
    </body>
</html>
