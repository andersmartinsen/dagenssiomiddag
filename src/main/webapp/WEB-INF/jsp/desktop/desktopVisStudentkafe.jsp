<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
   ================================================== -->
    <meta charset="utf-8">
    <title>${studentkafe.navn}</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Mobile Specific Metas
   ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
   ================================================== -->
    <link rel="stylesheet" href="stylesheets/base.css">
    <link rel="stylesheet" href="stylesheets/skeleton.css">
    <link rel="stylesheet" href="stylesheets/layout.css">

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Favicons
     ================================================== -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">

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