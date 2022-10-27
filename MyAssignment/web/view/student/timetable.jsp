<%-- 
    Document   : timetable
    Created on : Oct 15, 2022, 9:30:31 AM
    Author     : Ngo Tung Son
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr><td><h1 style="background-color: orange" ><center>TIME TABLE</center></h1></td></tr>
        </table>
        </br>
        Student: <input type="text" readonly="readonly" value="${requestScope.student.name}"/>
        <form action="timetable" method="GET">
            <input type="hidden" name="stdid" value="${param.stdid}"/>
            From : <input type="date" name="from" value="${requestScope.from}"/> </br>           
            To : <input type="date" name="to" value="${requestScope.to}"/> </br>
            <input type="submit" value="View"/> 
        </form>
        <table border="2px">
            <tr>
                <td> </td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td style="background-color: yellow"><center>${d}<br/>${helper.getDayNameofWeek(d)}</center></td>
                    </c:forEach>
            </tr>
            <c:forEach items="${requestScope.slots}" var="slot">
                <tr>
                    <td style="background-color: yellow"><center>${slot.description}</center></td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>
                            <c:forEach items="${requestScope.attandances}" var="att">
                                <c:if test="${helper.compare(att.session.date,d) eq 0 and (att.session.timeslot.id eq slot.id)}">
                                    <a href="att?id=${att.session.id}"><center>${att.session.group.name}-${att.session.lecturer.name}</center></a>
                                    <br/>
                                    <center>
                                        ${att.session.room.name}</center>
                                    <br/>

                                    <c:if test="${att.session.attandated}">
                                        <c:if test = "${att.present}"><a style="color: green"><center>attended</center></a></c:if>
                                        <c:if test = "${!att.present}"><a style="color: red"><center>absented</center></a></c:if>
                                        
                                    </c:if>
                                    <c:if test="${!att.session.attandated}">
                                        <a style = "color: blue"><center>not yet</center></a>
                                    </c:if>
                                </c:if>

                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
