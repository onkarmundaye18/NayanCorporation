<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Supercrete Associates</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
        <link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css"  rel="stylesheet">
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" /></noscript>
		<link rel="icon" href="${pageContext.request.contextPath}/resources/images/supercrete.ico" type="image/x-icon">
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/supercrete.ico" type="image/x-icon">
	</head>
	<body class="is-loading">      
        
        <i onclick="topFunction()" id="myBtn" title="Go to top" class="fa fa-angle-up"></i>

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">

				<!-- Intro -->
					<div id="intro">
						<h1>Supercrete<br />
						Associates</h1>
						<p>EMPOWERING BUILDERS, EMPOWERING NATION</p>
						<ul class="actions">
							<li><a href="#header" class="button icon solo fa-arrow-down scrolly">Continue</a></li>
						</ul>
					</div>

				<!-- Header -->
					<header id="header">
						<a href="${pageContext.request.contextPath}/" class="logo">Supercrete Associates</a>
					</header>

                <!-- Truck Animation -->                
                <div class="container-fluid truck-animation-wrap" style="padding-left:10;padding-right:10;overflow:hidden;margin-right: 180px;margin-left:180px;">
                    <div class="truck-animation"></div>
                </div>
                
				<!-- Nav -->
					<nav id="nav" class="sticky">
						<ul class="links">
							<li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/aboutUs">About Us</a></li>
                            <li><a href="${pageContext.request.contextPath}/technology">Technology</a></li>
							<li><a href="${pageContext.request.contextPath}/projects">Projects</a></li>							
							<li><a href="${pageContext.request.contextPath}/contactUs">Contact Us</a></li>
                            
						</ul>
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
								<header class="major">									
									<h2><a>This is a<br/>
									Supercrete headline</a></h2>
									<p>Supercrete Associates was started with the vision of providing quality concrete along with the excellence in service. This vision may seen to be simple & straight forward but it has a much deeper meaning because service in itself is a humongous task, fulfilling which can some times take a life time. Therefore we at Supercrete believe that service should be our utmost priority, for which we follow the policy of "customer above everything".But as an old saying goes, "Vision without action is  merely a dream". So as to accomplish our vision we at Supercrete have a policy according to which we focus on having a team in which no member feels isolated. Team work is the mantra of success. It is this mantra of ours that has kept us in hunt of achieving our vision.</p>
								</header>
								<a href="#" class="image main"><img src="${pageContext.request.contextPath}/resources/images/homeImage.jpg" alt="" /></a>
								<ul class="actions">
									<li><a href="https://theconstructor.org/concrete/types-concrete-applications/19779/" target="_blank" class="button big">Know More</a></li>
								</ul>
							</article>
						
                    </div>
        
				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>
			
         </div>       
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
			<script>
			window.onscroll = function() {scrollFunction()};

			function scrollFunction() {
    			if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        		document.getElementById("myBtn").style.display = "block";
    			} else {
        		document.getElementById("myBtn").style.display = "none";
    			}
			}

			function topFunction() {
   				document.body.scrollTop = 0;
    			document.documentElement.scrollTop = 0;
			}
			</script>
	</body>
</html>
