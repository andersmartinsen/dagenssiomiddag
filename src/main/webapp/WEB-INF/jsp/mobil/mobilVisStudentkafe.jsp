<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${studentkafe.navn}</title>
</head>
<body>
<h1>${studentkafe.navn}</h1>

<div id="informasjon">
    <h3>${studentkafe.adresse.linje1}</h3>
    <h3>${studentkafe.adresse.linje2}</h3>
    <h3>${studentkafe.telefon.nummer}</h3>
</div>

<div id="uke">
    <p>${studentkafe.ukenummer}</p>
</div>

<div id="middager">
    <ul>
        <c:forEach var="ukedager" items="${studentkafe.middager}">
            <p>${ukedager.key}</p>
            <c:forEach var="middager" items="${ukedager.value}">
                <li>${middager.type} : ${middager.innhold}</li>
            </c:forEach>
        </c:forEach>
    </ul>
</div>

<div id="">

</div>

<a href="${currentUrl}?site_preference=normal">Normal</a> | <a href="${currentUrl}?site_preference=mobile">Mobile</a>
</body>
</html>