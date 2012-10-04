<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.css"/>
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.js"></script>
</head>
<body>

<div data-role="page">
    <div data-role="header" data-position="fixed">
        <h1>SiO sine studentkafeer</h1>
    </div>

    <div data-role="content">
        <ul data-role="listview" data-theme="g">
            <c:forEach items="${studentkafene}" var="kafe">
                <li><a href="${kafe.id}">${kafe.navn}</a></li>
            </c:forEach>
        </ul>
    </div>

    <div data-role="footer">
        <div data-role="navbar" data-position="fixed">
            <ul>
                <li><a href="${currentUrl}?site_preference=normal">Normal</a></li>
                <li><a href="${currentUrl}?site_preference=mobile">Mobile</a></li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>