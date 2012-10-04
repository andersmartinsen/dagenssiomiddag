<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/>
    <link href='<spring:url value="/resources/css/style.css"/>' rel='stylesheet'/>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.css" />
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.js"></script>
</head>
<body>


<div data-role="page">
    <div data-role="header">
        <h1>SiO sine studentkafeer</h1>
    </div>

    <div data-role="content" id="slider" class="swipe">
            <ul>
                <li style='display:block'><div>1</div></li>
                <li style='display:none'><div>2</div></li>
                <li style='display:none'><div>3</div></li>
                <li style='display:none'><div>4</div></li>
                <li style='display:none'><div>5</div></li>
            </ul>
    </div>

    <div data-role="footer">
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