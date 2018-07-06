<%-- 
    Document   : login_page
    Created on : 15 Feb, 2018, 12:07:13 PM
    Author     : Admin
--%>

<%@page import="java.sql.Connection"%>
<%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <script type="text/javascript">
        function test()
        {
           // alert('mgm');
            x=form1.t1.value;
            y=form1.t2.value;
            if(x=='')
                {
                    alert('Please enter Username');
                   // return false;
                }
                if(y=='')
            {
                alert('Please enter Passord');
               // return false;
            }
            return true;
        }
    </script> 
    <body>
        <h1></h1>
         <form name="form1" method="POST">
            <table border="0">
             
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="t1" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="t2" value="" /></td>
                    </tr>
                    <tr>
                       
                        <td><input type="button" value="Login" onclick="test();" name="bt"/> </td>
                    </tr>
                </tbody>
            </table>

        </form> 
         <% 
             
            if(request.getParameter("bt")!=null)
            { System.out.println("hi");
                dbcon db=new dbcon();
                PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from dbtable where username=? && password=? ");
                String s=request.getParameter("t1");
                System.out.println(s);
                ps.setString(1, s);
                String s1=request.getParameter("t2");
                System.out.println(s1);
                ps.setString(2, s1);
                ResultSet rs=db.return_data(ps);
                if(rs.next())
                {
                    String a=rs.getString(1);
                    String b=rs.getString(2);
                    String c=rs.getString(3);
                    if(c.equals("admin"))
                    {
                        response.sendRedirect("admin_page1.jsp");
                    }
                    else
                    {
                        response.sendRedirect("user.jsp");
                    }
                   
                }

            }
            %>
    </body>
</html>
