<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Resources/css/bootstrap.css">
<link rel="stylesheet" href="Resources/css/products.css">
<link rel="stylesheet" href="Resources/css/admin.css">
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<title>displayproducts</title>
</head>
<body>

	<sql:setDataSource var="myDS"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;databaseName=SureVac"
		user="sa" password="mysqlserver" />

	<sql:query var="list1" dataSource="${myDS}">
            SELECT * FROM Product;
        </sql:query>

	<div id="nav"></div>
	<div id="nav1"></div>

	<div id="container">
		<div class="row">
			<div class="col-md-2">
				<div id="side-bar">
					<ul class="nav">
						<li style="background-color: #2980b9; color: #ffffff"><b>
								<center>DashBoard</center>
						</b></li>
						<li class="active"><a href="displayproducts.jsp"><i
								class="glyphicon">displayProduct's</i></a></li>
						<li><a href="addproducts.jsp"><i class="glyphicon ">AddProduct's</i></a></li>
						<li><a href="customers.jsp"><i class="glyphicon ">Customers</i></a></li>
						<li><a href="displaycase.jsp"><i class="glyphicon ">Case</i></a></li>
						<li><a href="contract.jsp"><i class="glyphicon ">Contract</i></a></li>
						<li><a href="displaycontracts.jsp"><i class="glyphicon ">ListContract</i></a></li>


					</ul>
				</div>
			</div>
			<div class="col-md-10">
				<div id="content-area">
				<table border="1" style="">
					<caption>
						<div class="center">
							<center>
								<div class="our-logo col-md-4 col-md-offset-4">
									<h2 style="color: crimson">PRODUCT</h2>

								</div>
							</center>
					</caption>
					<thead>
						<tr>
							<th>ProductCode</th>
							<th>ProductName</th>
							<th>ProductPrice</th>
							<th>Description</th>
							<th>Description</th>
							<th>Description</th>
							<th colspan="2"><center>Action</center></th>


						</tr>
					</thead>
					<tbody>

						<p>
							<c:forEach var="user" items="${list1.rows}">
								<tr>

									<td><br> <c:out value="${user.pcode}" /></td>
									<td><br> <c:out value="${user.pname}" /></td>
									<td><br> <c:out value="${user.pprice}" /></td>
									<td><br> <c:out value="${user.pdesc1}" /></td>
									<td><br> <c:out value="${user.pdesc2}" /></td>
									<td><br> <c:out value="${user.pdesc3}" /></td>
									<td><br> <a
										href="updateproduct.jsp?id=<c:out value="${user.pcode}"/>">Update</a></td>
									<td><br> <a
										href="DeleteProductServlet?id=<c:out value="${user.pcode}"/>">Delete</a></td>
								</tr>
							</c:forEach>
						</p>
					</tbody>
				</table>
				</div>

			</div>
		</div>
	</div>

	<div id="footer1"></div>
	<div id="footer"></div>


</body>
</html>