<%-- 
    Document   : index
    Created on : 17 Jun, 2015, 8:44:15 AM
    Author     : Dhiren
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="j_spring_security_logout" method="post">
            <c:out value="${owner.firstName}" />
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <input type="submit" value="Logout" />
        </form>
    </body>
</html>
