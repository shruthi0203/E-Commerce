<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="Resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="Resources/css/font-awesome.min.css">
<link href="Resources/animate.min.css" rel="stylesheet">
<link href="Resources/css/prettyPhoto.css" rel="stylesheet">
<link href="Resources/css/style.css" rel="stylesheet">
<link href="Resources/css/responsive.css" rel="stylesheet">
<link href="Resources/css/custom.css" rel="stylesheet">

</head>
<body class="homepage">
	<%@include file="all.jsp" %>
	
	
	<sql:setDataSource var="myDS"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;databaseName=SureVac" user="sa"
		password="mysqlserver" />

	<sql:query var="list1" dataSource="${myDS}">
            SELECT * FROM Cart;
        </sql:query>
        
    

<section id="cart" >
        <div class="container">
        <div class="row">
            <div class=" wrap-cart">
            <p>Order Confirmed: </p>
<table width="892" border="1" cellspacing="0">
  <tr>
    <td width="66" align="center"><strong>Item ID</strong></td>
    <td width="354" align="center"><strong>Product Name &amp; Model</strong></td>
    <td width="153" align="center"><strong>Brand</strong></td>
    <td width="148" align="center"><strong>Shipping Charges</strong></td>
    <td width="237" align="center"><strong>Total Cost</strong></td>
  </tr>
  <tr>
    <td height="75" align="center"></td>
    <td align="center"><c:forEach var="user" items="${list1.rows}">

							<h1>
								<c:out value="${user.name}" />
							</h1>
																			
						</c:forEach></td>
    <td align="center"></td>
    <td align="center">Rs. 0</td>
    <td align="center">Rs. </td>
  </tr>
</table>
<p>  <p>   <c:forEach var="user" items="${list1.rows}">

							<h1>
								<c:out value="${user.name}" />
							</h1>
																			
						</c:forEach></td></p>
<p><strong> Happy Shopping! </strong></p>
</div>
</div>
</div>
</section>

	<section id="bottom">
	<div class="container wow fadeInDown" data-wow-duration="1000ms"
		style="margin-top: 60px" data-wow-delay="600ms">
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<div class="widget">
					 <h3>Company</h3>
                        <ul>
                            <li><a href="about-us.jsp">About us</a></li>
                            <li><a href="Product.jsp">Products</a></li>
                            <li><a href="environment.jsp">Environment</a></li>                           
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="contact.jsp">Contact Us</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="register.jsp">Registration</a></li>
                            <li><a href="terms and condition.jsp">Terms and Conditions</a></li>                          
                        </ul>
				</div>
			</div>
			<!--/.col-md-3-->

		</div>
	</div>
	</section><!--/#bottom-->

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
		</div>
		<!--/.container-->
	</div>
	<!--/.top-bar--> 
	
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
</head>
<body>

</body>
</html>