
<!DOCTYPE HTML>
<html>
<head>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0'/>
    <link href='style.css' rel='stylesheet'/>
</head>
<body>

<h1>Swipe</h1>

<h2>150px wide</h2>

<div id='slider' class='swipe' style='width:150px'>
    <ul>
        <li style='display:block'><div>1</div></li>
        <li style='display:none'><div>2</div></li>
        <li style='display:none'><div>3</div></li>
        <li style='display:none'><div>4</div></li>
        <li style='display:none'><div>5</div></li>
    </ul>
</div>


<h2>250px wide</h2>

<div id='slider2' class='swipe' style='width:250px'>
    <ul>
        <li style='display:block'><div>1</div></li>
        <li style='display:none'><div>2</div></li>
        <li style='display:none'><div>3</div></li>
        <li style='display:none'><div>4</div></li>
        <li style='display:none'><div>5</div></li>
    </ul>
</div>


<h2>Full width</h2>

<div id='slider3' class='swipe'>
    <ul>
        <li style='display:block'><div>1</div></li>
        <li style='display:none'><div>2</div></li>
        <li style='display:none'><div>3</div></li>
        <li style='display:none'><div>4</div></li>
        <li style='display:none'><div>5</div></li>
    </ul>
</div>

<a href='#' onclick='slider3.prev();return false;'>prev</a>
<a href='#' onclick='slider3.next();return false;'>next</a>
<br><br>

<h2>Arbitrary Elements</h2>

<div id='slider4' class='swipe'>
    <div>
        <div style='display:block'><div>1</div></div>
        <div style='display:none'><div>2</div></div>
        <div style='display:none'><div>3</div></div>
        <div style='display:none'><div>4</div></div>
        <div style='display:none'><div>5</div></div>
    </div>
</div>

<a href='#' onclick='slider4.prev();return false;'>prev</a>
<a href='#' onclick='slider4.next();return false;'>next</a>
<br><br>


<script src='swipe.js'></script>
<script>
    new Swipe(document.getElementById('slider'));
    new Swipe(document.getElementById('slider2'));
    var slider3 = new Swipe(document.getElementById('slider3'));
    var slider4 = new Swipe(document.getElementById('slider4'));
</script>

<script src="<spring:url value="/resources/js/swipe.js"/>" ></script>
<script>
    new Swipe(document.getElementById('slider'));
</script>


</body>
</html>