<!DOCTYPE html>
<html>
<title>Nayan Corporation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath}/resources/css/w3.css" rel="stylesheet" type="text/css">
<style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}
</style>
<body> 

<div class="w3-container">
  <h2>Slideshow Indicators</h2>
</div>

<div class="w3-content w3-display-container" style="max-width:42%;max-height:100%">
  <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/Koala.jpg" alt="Koala" style="width:100%">
  <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/Penguins.jpg" alt="Penguins" style="width:100%">
  <img class="mySlides" src="${pageContext.request.contextPath}/resources/images/Lighthouse.jpg" alt="Lighthouse" style="width:100%">
  <!--<img class="mySlides" src="Koala.jpg" style="width:100%">
  <img class="mySlides" src="Penguins.jpg" style="width:100%">
  <img class="mySlides" src="Lighthouse.jpg" style="width:100%">-->
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n==undefined){n = ++slideIndex}
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
  setTimeout(showDivs, 6000);
}
</script>
</body>
</html> 