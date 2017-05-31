<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Resource/css/products.css">
<link rel="stylesheet" href="Resource/css/bootstrap.css">
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

	<sql:setDataSource var="myDS"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;databaseName=SureVac"
		user="sa" password="mysqlserver" />

	<sql:query var="list1" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p101';
        </sql:query>

	<sql:query var="list2" dataSource="${myDS}">
            SELECT * FROM Product where pcode='p102';
        </sql:query>
	<div id="navp"></div>
	<div id="navp1"></div>

	<div id="container">
		<div class="content-area">
			<div class="col-md-10 col-md-offset-2">
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="" width="150" height="150"
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
								<a href="order.jsp?id=<c:out value="${user.pname}"/>"
								class="btn btn-primary">Add to Cart</a>
								
						</c:forEach>
					</p>

				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="" width="150" height="150"
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

						</c:forEach>
					</p>
					<a href="#" class="btn btn-primary">Buy</a>
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<h1>Lorem Ipsum</h1>
					<h3>Price:455rs</h3>
					<a href="#" class="btn btn-primary">Buy</a>
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<h1>Lorem Ipsum</h1>
					<h3>Price:455rs</h3>
					<a href="#" class="btn btn-primary">Buy</a>
				</div>
				<hr>
				<div class="row">
					<div class="image col-md-3">
						<img alt="" src="" width="150" height="150"
							style="border: solid 1px">
					</div>
					<div class="desc col-md-4"></div>
					<h1>Lorem Ipsum</h1>
					<h3>Price:455rs</h3>
					<a href="#" class="btn btn-primary">Buy</a>
				</div>
				<hr>

			</div>
		</div>
	</div>



</body>
</html>