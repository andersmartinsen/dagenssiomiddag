<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/>
    <link href='<spring:url value="/resources/css/style.css"/>' rel='stylesheet'/>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css"/>
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
    <title>${studentkafe.navn}</title>
</head>
<body>


<div data-role="page">
    <div data-role="header" data-position="fixed">
        <h1>${studentkafe.kortnavn}</h1>
    </div>

    <div data-role="content">
        <div id="slider" class="swipe">
            <ul>
                <li style='display:block'>
                    <div>
                        <c:forEach items="${studentkafe.mandag}" var="middag">
                            ${middag.type} : ${middag.innhold}
                            <c:if test="${middag.glutenfri}">
                                - <b>Glutenfri</b>
                            </c:if>
                            <c:if test="${middag.laktosefri}">
                               - <b>Laktosefri</b>
                            </c:if>
                            <br>
                        </c:forEach>
                    </div>
                </li>
                <li style='display:none'>
                    <div>
                        <c:forEach items="${studentkafe.tirsdag}" var="middag">
                            ${middag.type} : ${middag.innhold}
                            <c:if test="${middag.glutenfri}">
                                - <b>Glutenfri</b>
                            </c:if>
                            <c:if test="${middag.laktosefri}">
                                - <b>Laktosefri</b>
                            </c:if>
                            <br>
                        </c:forEach>
                    </div>
                </li>
                <li style='display:none'>
                    <div>
                        <c:forEach items="${studentkafe.onsdag}" var="middag">
                            ${middag.type} : ${middag.innhold}
                            <c:if test="${middag.glutenfri}">
                                - <b>Glutenfri</b>
                            </c:if>
                            <c:if test="${middag.laktosefri}">
                                - <b>Laktosefri</b>
                            </c:if>
                            <br>
                        </c:forEach>
                    </div>
                </li>
                <li style='display:none'>
                    <div>
                        <c:forEach items="${studentkafe.torsdag}" var="middag">
                            ${middag.type} : ${middag.innhold}
                            <c:if test="${middag.glutenfri}">
                                - <b>Glutenfri</b>
                            </c:if>
                            <c:if test="${middag.laktosefri}">
                                - <b>Laktosefri</b>
                            </c:if>
                            <br>
                        </c:forEach>
                    </div>
                </li>
                <li style='display:none'>
                    <div>
                        <c:forEach items="${studentkafe.fredag}" var="middag">
                            ${middag.type} : ${middag.innhold}
                            <c:if test="${middag.glutenfri}">
                                - <b>Glutenfri</b>
                            </c:if>
                            <c:if test="${middag.laktosefri}">
                                - <b>Laktosefri</b>
                            </c:if>
                            <br>
                        </c:forEach>
                    </div>
                </li>
            </ul>
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


<script src='swipe.js'></script>
<script>
    new Swipe(document.getElementById('slider'));
    new Swipe(document.getElementById('slider2'));
    var slider3 = new Swipe(document.getElementById('slider3'));
    var slider4 = new Swipe(document.getElementById('slider4'));
</script>

<script src='<spring:url value="/resources/js/swipe.js"/>'></script>
<script>
    new Swipe(document.getElementById('slider'));
</script>


</body>
</html>