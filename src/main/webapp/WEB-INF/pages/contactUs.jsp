<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Elements Reference - Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-loading">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="${pageContext.request.contextPath}/" class="logo">Supercrete Associates</a>
					</header>

                <!-- Truck Animation -->                
                <div class="container-fluid truck-animation-wrap" style="padding-left:10;padding-right:10;overflow:hidden;margin-right: 180px;margin-left:180px">
                    <div      class="truck-animation"></div>
                </div>
				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="${pageContext.request.contextPath}/">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/aboutUs">About Us</a></li>
                            <li><a href="${pageContext.request.contextPath}/technology">Technology</a></li>
							<li><a href="${pageContext.request.contextPath}/projects">Projects</a></li>							
							<li class="active"><a href="${pageContext.request.contextPath}/contactUs">Contact Us</a></li>

						</ul>
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<section class="post">
								<header class="major"><br>
                                    <h1><a>Get in Touch<br> with Us</a></h1>
								</header>								
							</section>

					</div>

				<!-- Footer -->
					<footer id="footer">
						<section>
							<form id="contactUs">
								<div class="field">
									<label for="name">Name</label>
									<input type="text" name="senderName" id="name" />
								</div>
								<div class="field">
									<label for="email">Email</label>
									<input type="text" name="senderEmailId" id="email" />
								</div>
                                <div class="field">
									<label for="mobile">Mobile</label>
									<input type="text" name="senderMobileNumber" id="mobile" />
								</div>
								<div class="field">
									<label for="message">Message</label>
									<textarea name="senderMessage" id="message" rows="3"></textarea>
								</div>
								<ul class="actions">
									<li><button type="submit" value="Send Message">Send Message</button></li>
								</ul>
							</form>
						</section>
						<section class="split contact">
							<section class="alt">
								<h3>Address</h3>
								<p>1234 Somewhere Road #87257<br />
								Nashville, TN 00000-0000</p>
							</section>
							<section>
								<h3>Phone</h3>
								<p><a href="#">(000) 000-0000</a></p>
							</section>
							<section>
								<h3>Email</h3>
								<p><a href="#">info@untitled.tld</a></p>
							</section>
							<section>
								<h3>Social</h3>
								<ul class="icons alt">
									<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								</ul>
							</section>
						</section>
					</footer>

				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>
					
				<!-- The Modal -->
					<div id="myModal" class="modal">
					
					  <!-- Modal content -->
					  <div class="modal-content">
					    <div class="modal-header">
					      <span class="close">&times;</span>
					      <h2>Supercrete Associates</h2>
					    </div>
					    <div class="modal-body">
					      <p id="result"></p>
					    </div>
					    <div class="modal-footer">
					      <h5>Empowering Builder, Empowering Nation!!!</h5>
					    </div>
					  </div>
					
					</div>

			</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
			<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
			<script> 
			var contextPath= "${pageContext.request.contextPath}";
			var modal = document.getElementById('myModal');
			var span = document.getElementsByClassName("close")[0];
			var response = new Object();
			//closes modal when clicks on close sign
			span.onclick = function() {
			    modal.style.display = "none";
			}
			
			$(document).ready(function() {
				
				/* Form Validation */
				
				$('#contactUs').validate({
				    // Specify validation rules
				    rules: {
				    
				    	senderName: "required",
				    	senderMobileNumber: "required",
				      senderEmailId: {
				        required: true,
				           email: true
				      },
				      senderMessage: {
				        required: true,
				        minlength: 5
				      }
				    },
				    messages: {
				    	senderName: "Please enter your firstname",
				    	senderMobileNumber: "Please enter your lastname",
				    	senderMessage: {
				        required: "Please provide a message",
				        minlength: "Your message must be at least 5 characters long"
				      },
				      senderEmailId: "Please enter a valid email address"
				    },  
				    /* submitHandler: function(form) {
				      form.submit();
				    } */
				  });
				
				
				$('#contactUs').submit(function(e) {
			    	e.preventDefault();
			    	response.visitorName = $("#name").val();
					response.visitorEmailId = $("#email").val();
					response.visitorMobileNumber = $("#mobile").val();
					response.visitorMessage = $("#message").val();
					console.log("response.visitorName: "+response.visitorName+" response.visitorEmailId: "+response.visitorEmailId+" response.visitorMobileNumber: "+response.visitorMobileNumber
							+" response.visitorMessage: "+response.visitorMessage);
					$("#contactUs")[0].reset();
			       $.ajax({
			           type: "POST", // method attribute of form
			           url: contextPath+"/sendMailTemplate",  // action attribute of form
			           data : $("#contactUs").serialize(),
			           async : false,
			           success : function(result) {
							console.log("Inside success !!!"+result.msg);
							modal.style.display = "block";
							$("#result").text(result.msg);
							if(result.msg != "An error occured while retriving your details.Please fill those again"){
								replyBackToVisitor(response);
							} 
						},
						error: function(XMLHttpRequest, textStatus, errorThrown) { 	
							console.log("Status: " + textStatus); console.log("Error: " + errorThrown); 
			           }  
			           
			        });
			 });
				
			});
			
			function replyBackToVisitor(response) {
				console.log("Inside replyBackToVisitor function!!!"); 
				$.ajax({
					type : "POST",
					url : contextPath+"/replyBackToVisitor",
					data : response, // serializes the form's
					async : false,
					success : function(data) {
						console.log("Inside replyBackToVisitor success !!!"+data.response);
					}
				});
			}
			
			</script>

	</body>
</html>