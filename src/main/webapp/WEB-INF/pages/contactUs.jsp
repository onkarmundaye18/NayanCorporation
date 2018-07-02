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
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" />
</noscript>
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/fav.ico" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/fav.ico" type="image/x-icon">
</head>
<body class="is-loading">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header"> <a
			href="${pageContext.request.contextPath}/" class="logo">Supercrete
			Associates</a> </header>

		<!-- Truck Animation -->
		<div class="container-fluid truck-animation-wrap"
			style="padding-left: 10; padding-right: 10; overflow: hidden; margin-right: 180px; margin-left: 180px">
			<div class="truck-animation"></div>
		</div>
		<!-- Nav -->
		<nav id="nav">
		<ul class="links">
			<li><a href="${pageContext.request.contextPath}/">Home</a></li>
			<li><a href="${pageContext.request.contextPath}/aboutUs">About
					Us</a></li>
			<li><a href="${pageContext.request.contextPath}/technology">Technology</a></li>
			<li><a href="${pageContext.request.contextPath}/projects">Projects</a></li>
			<li class="active"><a
				href="${pageContext.request.contextPath}/contactUs">Contact Us</a></li>

		</ul>
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
		</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Post -->
			<section class="post"> <header class="major"> <br>
			<h1>
				<a>Get in Touch<br> with Us
				</a>
			</h1>
			</header> </section>

		</div>

		<!-- Footer -->
		<footer id="footer"> <section>
		<form id="contactUs" method="post" action="">
			<div class="field">
				<label for="name">Name *</label> <input type="text" name="senderName"
					id="name" />
			</div>
			<div class="field">
				<label for="email">Email *</label> <input type="text"
					name="senderEmailId" id="email" />
			</div>
			<div class="field">
				<label for="mobile">Mobile *</label> <input type="text"
					name="senderMobileNumber" id="mobile" />
			</div>
			<div class="field">
				<label for="message">Message *</label>
				<textarea name="senderMessage" id="message" rows="3"></textarea>
			</div>
			<ul class="actions">
				<li><button type="submit" value="Send Message">Send
						Message</button></li>
			</ul>
		</form>
		</section> <section class="split contact"> <section class="alt">
		<h3>Address</h3>
		<p>
			1234 Somewhere Road #87257<br /> Nashville, TN 00000-0000
		</p>
		</section> <section>
		<h3>Phone</h3>
		<p>
			<a href="#">(000) 000-0000</a>
		</p>
		</section> <section>
		<h3>Email</h3>
		<p>
			<a href="#">info@untitled.tld</a>
		</p>
		</section> <section>
		<h3>Social</h3>
		<ul class="icons alt">
			<li><a href="#" class="icon alt fa-twitter"><span
					class="label">Twitter</span></a></li>
			<li><a href="#" class="icon alt fa-facebook"><span
					class="label">Facebook</span></a></li>
			<li><a href="#" class="icon alt fa-instagram"><span
					class="label">Instagram</span></a></li>
		</ul>
		</section> </section> </footer>

		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

		<!--The Spinner part  -->
		<div id="spinner"></div>

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
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/skel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	<script> 
			var contextPath= "${pageContext.request.contextPath}";
			var modal = document.getElementById('myModal');
			var span = document.getElementsByClassName("close")[0];
			var response = new Object();
			var spinnerVisible = false;
			//closes modal when clicks on close sign
			span.onclick = function() {
			    modal.style.display = "none";
			}
			
			$(document).ready(function() {
				
				/* Form Validation */
				
				/* $('#contactUs').validate({
				    // Specify validation rules
				    rules: {
				    
				    	  senderName: {
				    		  required:true
				    	  },
				    	  senderMobileNumber: {
				    		  required:true,
				    		  minlength: 10
				    	  },
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
				    	senderMobileNumber: {
				    		 required: "Please provide a message",
						     minlength: "Your message must be at least 5 characters long"
				    	},
				    	senderMessage: {
					        required: "Please provide a message",
					        minlength: "Your message must be at least 5 characters long"
				      },
				      senderEmailId: {
				    	  required: "Please enter a valid email address"
				      }
				    }  
				  /*   	submitHandler: function(form) {
				    		formSubmit();
				      	
				    }  
				  }); */
				
	 			 $('#contactUs').submit(function(e) {
			    	e.preventDefault();
			    	response.visitorName = $("#name").val();
					response.visitorEmailId = $("#email").val();
					response.visitorMobileNumber = $("#mobile").val();
					response.visitorMessage = $("#message").val();
					var visitorName = $("#name").val();
					var visitorMobileNumber = $("#mobile").val();
					var visitorEmailId = $("#email").val();
					var visitorMessage = $("#message").val();
					var flag = true;
					
					console.log("response.visitorName: "+response.visitorName+" response.visitorEmailId: "+response.visitorEmailId+" response.visitorMobileNumber: "+response.visitorMobileNumber
							+" response.visitorMessage: "+response.visitorMessage);
					$("#contactUs")[0].reset();
					/*  Jaquery form validation */
					 $(".error").remove();
 
				    if (visitorName.length < 1) {
				      $('#name').after('<p class="error" style="color:red;">This field is required</p>');
				      flag = false;
				    }
				    if (visitorMobileNumber.length < 1) {
				      $('#mobile').after('<p class="error" style="color:red;">This field is required</p>');
				      flag = false;
				    }else if(visitorMobileNumber.length < 10){
				    	$('#mobile').after('<p class="error" style="color:red;">MobileNumber must be 10 digit long</p>');
				    	flag = false;
				    }
				    if (visitorEmailId.length < 1) {
				      $('#email').after('<p class="error" style="color:red;">This field is required</p>');
				      flag = false;
				    }  else {
				      //var regEx = /^[A-Z0-9][A-Z0-9._%+-]{0,63}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/;
				      var regEx = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				      var validEmail = regEx.test(visitorEmailId);
				      if (!validEmail) {
				        $('#email').after('<p class="error" style="color:red;">Enter a valid email</p>');
				        flag = false;
				      } 
				    }
				    if (visitorMessage.length < 1) {
					      $('#message').after('<p class="error" style="color:red;">This field is required</p>');
					      flag = false;
					    }
					/* End of form validation */
					
				if(flag == true){ // if all validations are valid then only submit ajax
					showProgress();
				       $.ajax({
				           type: "POST", // method attribute of form
				           url: contextPath+"/sendMailTemplate",  // action attribute of form
				           data : response,
				           async : true,
				           success : function(result) {
								console.log("Inside success !!!"+result.msg);
								hideProgress();
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
				}					
			       
			 });  
				
			});
			
			/* function formSubmit(){
				console.log("Inside form submit !!!");
		    	e.preventDefault();
		    	response.visitorName = $("#name").val();
				response.visitorEmailId = $("#email").val();
				response.visitorMobileNumber = $("#mobile").val();
				response.visitorMessage = $("#message").val();
				console.log("response.visitorName: "+response.visitorName+" response.visitorEmailId: "+response.visitorEmailId+" response.visitorMobileNumber: "+response.visitorMobileNumber
						+" response.visitorMessage: "+response.visitorMessage);
				$("#contactUs")[0].reset();
				showProgress();
		       $.ajax({
		           type: "POST", // method attribute of form
		           url: contextPath+"/sendMailTemplate",  // action attribute of form
		           data : response,
		           async : true,
		           success : function(result) {
						console.log("Inside success !!!"+result.msg);
						hideProgress();
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
				
			} */
			
			function replyBackToVisitor(response) {
				console.log("Inside replyBackToVisitor function!!!"); 
				$.ajax({
					type : "POST",
					url : contextPath+"/replyBackToVisitor",
					data : response, // serializes the form's
					async : true,
					success : function(result) {
						/* hideProgress();
						modal.style.display = "block";
						$("#result").text(result.msg); */
						console.log("Inside replyBackToVisitor success !!!"+result.msg);
					}
				});
			}
			
			function showProgress() {
			    if (!spinnerVisible) {
			        $("div#spinner").fadeIn("fast");
			        spinnerVisible = true;
			    }
			}

			function hideProgress() {
			    if (spinnerVisible) {
			        var spinner = $("div#spinner");
			        spinner.stop();
			        spinner.fadeOut("fast");
			        spinnerVisible = false;
			    }
			}
			
			</script>

</body>
</html>
