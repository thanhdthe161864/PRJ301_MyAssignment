<%-- 
    Author     : thanhdt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="login" method="POST">
            <table style="background-color: #99ffcc" >

                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" /></td> 
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr><td><input type="submit" value="Login" /></td></tr>
                <tr>
                    <td></td>
                    <td>
                        <div style="color: red">${requestScope.ms}</div>
                    </td>
                </tr>
            </table>
        </form>



    </body>
    <style type="text/css">
        body{
            position:relative;
            height:650px;
            width:1325px;
            margin:auto;
            background-image: url(img/fpt.jpg);
            background-size: cover;
            background-repeat: no repeat;
        }
        form{
            position:absolute;
            top:48%;
            height:50px;
            margin-top:-25px;
            
            padding:0 500px;
            width: 0;
            
        }
    </style>
</html>
