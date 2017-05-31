<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
  <title>About Us</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
<link href="Resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="Resources/css/font-awesome.min.css">
<link href="Resources/animate.min.css" rel="stylesheet">
<link href="Resources/css/prettyPhoto.css" rel="stylesheet">
<link href="Resources/css/style.css" rel="stylesheet">
<link href="Resources/css/responsive.css" rel="stylesheet">
<link href="Resources/css/custom.css" rel="stylesheet">
<style>
 .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }</style>
</head>
<body>

	<%@include file="all.jsp" %>
	
<div class="jumbotron text-center">
  <h1>SureVac</h1> 
  <p>We specialize in Vacuum Cleaner</p> 
  <form class="form-inline">
    <div class="input-group">
      <input type="email" class="form-control" size="50" placeholder="Email Address" required>
      <div class="input-group-btn">
        <button type="button" class="btn btn-danger">Subscribe</button>
      </div>
    </div>
  </form>
</div>

<!-- Container (About Section) -->
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>About SureVac</h2>
      <h4>Vacuum Cleaner</h4>      
      <p>SureVac Technologies was started 15 years ago by four college graduates. It manufactures vacuum cleaning systems. Today, SureVac is a leader in vacuum cleaning technology. It sells its products through a massive network of 30 company-owned stores and 200 franchisee outlets.
SureVac today offers more than 10 products for home users and industry users. It caters to both the segments directly or through its dealers distribution network. 
The 30 company-owned stores sell vacuum cleaning equipment directly to home and industry users while the 200 franchisees sell vacuum cleaning systems to home users only.</p>
      <a href="contact.jsp"><button class="btn btn-default btn-lg">
      Get in Touch</button></a>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo"></span>
    </div>
    <div class="col-sm-8">
      <h2>Our Values</h2>
      <h4><strong>MISSION:</strong> CLEAN YOUR HOME   <br /> CONTROL THE AIR</h4>      
      
    </div>
  </div>
</div>

<div class="top-bar">
		<div class="container">
			<div class="row">
			    <div class="col-lg-12">
				   <div class="social">
						<ul class="social-share">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-skype"></i></a></li>
						</ul>
				   </div>
                </div>
			</div>
		</div><!--/.container-->
	</div><!--/.top-bar-->
	
<%@include file="all.jsp" %> 
	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="Resources/js/jquery.js"></script> <script
		src="Resources/js/bootstrap.min.js"></script> <script
		src="Resources/js/jquery.prettyPhoto.js"></script> <script
		src="Resources/js/jquery.isotope.min.js"></script> <script
		src="Resources/js/wow.min.js"></script> <script
		src="Resources/js/main.js"></script>
</body>
</html>