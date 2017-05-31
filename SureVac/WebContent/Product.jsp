<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Product</title>

<!-- Bootstrap -->
<link href="Resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="Resources/css/font-awesome.min.css">
<link href="Resources/animate.min.css" rel="stylesheet">
<link href="Resources/css/prettyPhoto.css" rel="stylesheet">
<link href="Resources/css/style.css" rel="stylesheet">
<link href="Resources/css/responsive.css" rel="stylesheet">


</head>
<body class="Product">
	<%@include file="all.jsp"%>


	<sql:setDataSource var="myDS"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;databaseName=SureVac" user="sa"
		password="mysqlserver" />

	<sql:query var="list1" dataSource="${myDS}">
            SELECT * FROM Product;
        </sql:query>

	<%-- <sql:query var="list2" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p102';
        </sql:query>
        
        <sql:query var="list3" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p103';
        </sql:query>
        
        <sql:query var="list4" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p104';
        </sql:query>
         <sql:query var="list5" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p105';
        </sql:query>
         <sql:query var="list6" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p106';
        </sql:query>
         <sql:query var="list7" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p107';
        </sql:query>
         <sql:query var="list8" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p108';
        </sql:query>
         <sql:query var="list9" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p109';
        </sql:query>
         <sql:query var="list10" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p110';
        </sql:query>
         <sql:query var="list11" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p111';
        </sql:query>
         <sql:query var="list12" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p112';
        </sql:query> --%>


	<div id="navp"></div>
	<div id="navp1"></div>




	<section id="">

	<div class="container">
		<div class="content-area">
			<div class="col-md-10 col-md-offset-2">

				<div class="row">



					<table class="table">
						<form action="CartServlet" method="POST">

							<c:forEach var="user" items="${list1.rows}">

								<th>Product Name</th>
								<th>Price</th>
								<th>Description</th>
								<th>Actions</th>
								<tr>
									<td><c:out value="${user.pname}" /></td>
									<td>Rs: <c:out value="${user.pprice}" /></td>
									<td><c:out value="${user.pdesc1}" /></td>
									<td><input type="hidden" name="name" value="${user.pname}">
										<input type="hidden" name="price" value="${user.pprice}">
										<!-- <input type="hidden" name="desc" value="${user.pdesc1}"> -->
										<input type="submit"  value="Add to cart"></td>
										<%-- <a href="AddCartServlet?id=<c:out value="${user.pname}"/>">Add to cart</a></td> --%>
								</tr>
							</c:forEach>
						</form>
					</table>





				</div>


				<%--<form action="addtocart">>
                 Pizza Name <th>Price</th>  <th>Add to Cart</th>
            <tr><td>Muffuleta</td><td>$20</td><td><input type="hidden" name="name" value="Muffuleta">
            <input type="hidden" name="price" value="20"><input type="submit" value="Add to cart"></td>
        </tr>--%>





				<%-- <div class="row">
					<div class="image col-md-3">
						<img alt="cordless" src="Images/c1.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list1.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
							<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="ct.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
								
						</c:forEach>
					</p>

				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/c2.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list2.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
							<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>

						</c:forEach>
					</p>
					
				</div>
				
				
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/c3.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list3.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
                              <a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/h1.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list4.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/h2.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list5.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/h3.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list6.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/u1.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list7.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/u2.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list8.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/u3.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list9.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/r1.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list10.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/r2.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list11.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="Images/r3.jpg" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<p>
						<c:forEach var="user" items="${list12.rows}">

							<h1>
								<c:out value="${user.pname}" />
							</h1>
							<h3>
								Price:
								<c:out value="${user.pprice}" />
								Rs
							</h3>
<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Buy</a>
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
						</c:forEach>
					</p>
					
				</div>	 --%>
			</div>
		</div>
	</div>
	<!--/.container--> </section>

	<section id="bottom">
	<div class="container wow fadeInDown" data-wow-duration="1000ms"
		data-wow-delay="600ms">
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
			</div>
			<!--/.col-md-3-->

			<div class="col-md-3 col-sm-6">
				<div class="widget">
					<h3>Support</h3>
					<ul>
						<li><a href="contact.jsp">Contact Us</a></li>
						<li><a href="login.jsp">Login</a></li>
						<li><a href="register.jsp">Registration</a></li>
						<li><a href="terms and condition.jsp">Terms and
								Conditions</a></li>
					</ul>
				</div>
			</div>
			<!--/.col-md-3-->



		</div>
		<!--/.col-md-3-->
	</div>
	</div>
	</section>
	<!--/#bottom-->

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



	<%@include file="all.jsp"%>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="Resources/js/jquery.js"></script>
	<script src="Resources/js/bootstrap.min.js"></script>
	<script src="Resources/js/jquery.prettyPhoto.js"></script>
	<script src="Resources/js/jquery.isotope.min.js"></script>
	<script src="Resources/js/wow.min.js"></script>
	<script src="Resources/js/main.js"></script>

</body>
</html>

