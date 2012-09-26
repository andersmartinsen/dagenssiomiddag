<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <ul data-role="listview" data-theme="e">
            <c:forEach var="ukedager" items="${studentkafe.middager}">
                <li><a href="">${ukedager.key}</a></li>
            </c:forEach>
        </ul>

        <br />

        <div data-role="collapsible" data-theme="c" data-content-theme="a">
            <h3>Serveringtidspunkt</h3>

        </div>

        <div data-role="collapsible" data-theme="c" data-content-theme="a">
            <h3>Pris</h3>
            <p>${studentkafe.prisInformasjon.informasjon}</p>
        </div>

        <div data-role="collapsible" data-theme="c" data-content-theme="a">
            <h3>Adresse</h3>
            <p>${studentkafe.adresse.linje1}</p>
            <p>${studentkafe.adresse.linje2}</p>
            <p>${studentkafe.telefon.nummer}</p>
        </div>
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
</body>
</html>