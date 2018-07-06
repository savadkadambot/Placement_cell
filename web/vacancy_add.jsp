

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
       
        <form  method="post" action="">
            <table border="0">
               
                <tbody>
                     <%

                int p,q=0;
                dbcon db2=new dbcon();
                PreparedStatement ps1=(PreparedStatement)db2.cn.prepareStatement("select * from param");
                ResultSet rs=db2.return_data(ps1);
                if(rs.next())
                {
                p=rs.getInt(5);
                q=p+1;
                }
        %>
                    <tr>
                        <td>Vacancy No.</td>
                        <td><input type="text" name="t1" value="<%=q%>" /></td>
                    </tr>
                    <tr>
                        <td>Company id</td>
                        <td><input type="text" name="t2" value="" /></td>
                    </tr>
                    <tr>
                        <td>Job Name</td>
                        <td><input type="text" name="t3" value="" /></td>
                    </tr>
                    <tr>
                        <td>Criteria</td>
                        <td><input type="text" name="t4" value="" /></td>
                    </tr>
                    <tr>
                        <td>Announcement Date</td>
                        <td><input type="date" name="t5" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last date</td>
                        <td><input type="date" name="t6" value="" /></td>
                    </tr>
                    <tr>
                        <td>No of vacancy</td>
                        <td><input type="text" name="t7" value="" /></td>
                    </tr>
                    <tr>
                        <td>Salary</td>
                        <td><input type="text" name="t8" value="" /></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><input type="text" name="t9" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="save" name="bt" /></td>
                       
                    </tr>
                </tbody>
            </table>

        </form>
          <% 
            if(request.getParameter("bt")!=null)
            {
            dbcon db=new dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tbl_vacancy values (?,?,?,?,?,?,?,?,?)");
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
            db.execution(ps);
             
            dbcon db4=new dbcon();
             PreparedStatement ps4=(PreparedStatement)db4.cn.prepareStatement("update param set Vacancy_No=?");
              int cc=Integer.parseInt(request.getParameter("t1"));
            ps4.setInt(1,cc);
              db4.execution(ps4);
              response.sendRedirect("result.jsp"); 
            }
        %>            
    </body>
</html>