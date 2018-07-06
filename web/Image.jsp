<%-- 
    Document   : Image
    Created on : 1 Mar, 2018, 11:39:57 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 

        <form name="frm" action="upload.jsp" method="POST" enctype="multipart/form-data">
            <table border="0" cellspacing="1" cellpadding="1">
                
               
                    <tr>
                        <td>File</td>
                        <td><input type="file" name="nma" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Save" name="btnSave" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>

 