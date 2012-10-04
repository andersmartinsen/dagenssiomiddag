<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/>
    <link href='<spring:url value="/resources/css/style.css"/>' rel='stylesheet'/>
</head>
<body>

<h1>Swipe</h1>

<h2>Full width</h2>

<div id='slider' class='swipe'>
    <ul>
        <li style='display:block'><div>1</div></li>
        <li style='display:none'><div>2</div></li>
        <li style='display:none'><div>3</div></li>
        <li style='display:none'><div>4</div></li>
        <li style='display:none'><div>5</div></li>
    </ul>
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