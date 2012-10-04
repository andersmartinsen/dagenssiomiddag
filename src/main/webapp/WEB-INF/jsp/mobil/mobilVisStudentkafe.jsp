<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>${studentkafe.navn}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.css" />
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.js"></script>
    <title>${studentkafe.navn}</title>
</head>
<body>
<div data-role="page">
    <div data-role="header">
        <h1>${studentkafe.kortnavn}</h1>
    </div>

    <div data-role="content">
      <%--  <ul  data-role="listview" data-theme="e">
            <c:forEach var="ukedager" items="${studentkafe.middager}">
                <li><a href="">${ukedager.key}</a></li>
            </c:forEach>
        </ul>--%>
            <ul id='slider' >
                <li style='display:block'><div>1</div></li>
                <li style='display:none'><div>2</div></li>
                <li style='display:none'><div>3</div></li>
                <li style='display:none'><div>4</div></li>
                <li style='display:none'><div>5</div></li>
            </ul>
    </div>




    <div data-role="footer" data-position="fixed">
        <div data-role="navbar">
            <ul>
                <li><a href="${currentUrl}?site_preference=normal">Normal</a></li>
                <li><a href="${currentUrl}?site_preference=mobile">Mobile</a></li>
            </ul>
        </div>
    </div>
</div>

<script src="<spring:url value="/resources/js/swipe.js"/>"></script>
<script>
new Swipe(document.getElementById('slider'));
</script>

</body>
</html>