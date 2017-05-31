<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Order</title>
</head>
<body>
	<sql:setDataSource var="myDS"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://localhost:1433;databaseName=SureVac" user="sa"
		password="mysqlserver" />

	<sql:query var="list1" dataSource="${myDS}">
            SELECT * FROM Product where pname='${param.pcode}';
        </sql:query>



	<section id="cart">
	<div class="container">
		<div class="row">
			<div class=" wrap-cart">
				<p>Order Confirmed:</p>
				<table width="892" border="1" cellspacing="0">

					<thead>
						<tr>
							<th width="66" align="center"><strong>Item ID</strong></th>
							<th width="354" align="center"><strong>Product Name
									&amp; Model</strong></th>
							<th width="153" align="center"><strong>Price</strong></th>
						</tr>
					</thead>
					<tr>
						<td>${user.pname}</td>
						<td>${user.pname}</td>
						<td>${user.pname}</td>
					</tr>






					<%-- <c:forEach var="Product" items="${Product.pname}">
	
			
			<c:out value="${Product.pname}" />
		
		<tr>
		<td height="75" align="center"><c:out value="${Product.pcode}" /></td>
		
		<td height="75" align="center"><c:out value="${Product.pname}" /></td>
		
		<td height="75" align="center"><c:out value="${Product.pprice}" /></td>
		</tr>		
		</c:forEach> --%>

				</table>
				<p>Your items are added in the cart.</p>
				<p>
					<strong> Happy Shopping! </strong>
				</p>
			</div>
		</div>
	</div>
	</section>


</body>
</html>