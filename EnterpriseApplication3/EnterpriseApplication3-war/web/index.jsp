<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="index-page.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="AuthController" method="POST">
            <table border="0" width="500" cellpadding="5">
                <tbody>
                    <tr>
                        <td>Enter login</td>
                        <td>
                            <input type="text" name="login" value="" />
                        </td>
                        <td>
                            <input type="submit" value="Log in" name="sign"  />    
                            <input type="reset" value="Reset"  />
                        </td>                        
                    </tr>
                    <tr>
                        <td>Enter password</td>
                        <td>
                            <input type="password" name="psw" value="" />
                        </td>
                        <td>
                            <input type="submit" value="Get message" name="msg" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        <p>
            <%if (request.getAttribute("authResult") != null) {%>
                <output name="result"><b><big><%= request.getAttribute("authResult")%></big></b></output>
            <%}%>
        </p>
        <p>
            <%if (request.getAttribute("authMessage") != null) {%>
                <output name="result2"><b><big><%= request.getAttribute("authMessage")%></big></b></output>
            <%}%>  
        </p>
    </body>
</html>
