<%-- 
    Document   : home
    Created on : Oct 26, 2022, 4:04:55 PM
    Author     : Admin
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
        
        <form acction ="timetable" method="get">
            <h1>Hello ${sessionScope.account.displayname}</h1>
            <a href=""><right>logout</right></a>
            <input type ="hidden" name="stdid" value="${sessionScope.account.student.id}">
            <input type ="hidden" name="lid" value="${sessionScope.account.lecture.id}">
        </form>
            <c:if test="${sessionScope.account.isstudent}">
                <a href="student/timetable?stdid=${sessionScope.account.student.id}"><h1>Time Table</h1></a> </br></br>
            </c:if>
            <c:if test="${!sessionScope.account.isstudent}">
                <a href="lecture/timetable?lid=${sessionScope.account.lecture.id}"><h1>Time Table</h1></a> </br></br>
            </c:if>
                
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
            color:white;
        }
        a{
            color:white;
        }
    </style>
</html>
