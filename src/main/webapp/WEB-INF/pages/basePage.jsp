<!DOCTYPE html>
<html lang="en">
<head>
  <title>Nayan Corporation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navigationBar.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</head>
<body>

<div id = "parent-div">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
      <span class="sr-only">Toggle Navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">NAYAN CORPORATION</a>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        <li class="active">
          <a href="#">HOME</a>
        </li>
        <li><a href="#" data-toggle="modal" data-target="#MyModal">CEMENT</a></li>
        <li><a href="#" data-toggle="modal" data-target="#MyModal">ABOUT US</a></li>
        <li><a href="#" data-toggle="modal" data-target="#MyModal">CONTACT US</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
    <ol class="carousel-indicators">
      <li data-target="myCarousel" data-slide="0" class="active"></li>
      <li data-target="myCarousel" data-slide="1"></li>
      <li data-target="myCarousel" data-slide="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/images/nayanCorporation1.jpg">
        <div class="carousel-caption">
          <h1>We Build World</h1>
        </div>
      </div>
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/nayanCorporation2.jpg">
         <div class="carousel-caption">
          <h1>We Give Strength To Family </h1>
        </div>
      </div>
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/nayanCorporation3.jpg">
        <div class="carousel-caption">
          <h1>We Make Healthy Homes</h1>
        </div>
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
    </a>

    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
  </div>
      
</div>
</div>
</body>
</html>
