<%-- 
    Document   : home
    Created on : Oct 17, 2022, 3:12:58 PM
    Author     : sonnt
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
        <c:if test="${sessionScope.account ne null}">
            Hello ${sessionScope.account.displayname}, click 
            <a href="logout">here</a> to logout. 
        </c:if>
        <c:if test="${sessionScope.account eq null}">
            click 
            <a href="login">here</a> to login. 
        </c:if>
    </body>
</html>
