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
        <a href="student/timetable?stdid=${requestScope.account.student.id}"><h1>Time Table</h1></a> </br></br>
        <a href="student/attendedreport?stdid=${requestScope.account.student.id}"><h1>Attended Report</h1></a>
    </body>
</html>
