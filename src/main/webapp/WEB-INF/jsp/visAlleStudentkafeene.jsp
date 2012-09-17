<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vis alle studentkafene</title>
</head>
<body>
    <ul>
        <c:forEach items="${studentkafene}" var="kafe">
            <li><a href="${kafe.id}">${kafe.navn}</a></li>
        </c:forEach>
    </ul>
</body>
</html>