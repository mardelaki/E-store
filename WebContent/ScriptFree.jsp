<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/response-1.0"
	prefix="res"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/session-1.0"
	prefix="sess"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W4C//DTD HTML 4.01 Transitional//EN" "http://www.w4.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:useBean id="car" class="mypack.cart" scope="session" />
<jsp:setProperty name="car" property="*" />
<title>My E-Store</title>
</head>
<body>


	<res:addCookie name="cofQ">
		<res:value>${car.coffeequantity}</res:value>
		<res:maxAge>9999999</res:maxAge>
	</res:addCookie>
	<res:addCookie name="sugQ">
		<res:value>${car.sugarquantity}</res:value>
		<res:maxAge>9999999</res:maxAge>
	</res:addCookie>
	<res:addCookie name="watQ">
		<res:value>${car.waterquantity}</res:value>
		<res:maxAge>9999999</res:maxAge>
	</res:addCookie>
	<!-- 
	${cookie.cofQ.value} ${cookie.sugQ.value} ${cookie.watQ.value}
	${car.coffeequantity} -->

	<center>
		<h1>This is your Basket</h1>
	</center>
	<form action="ScriptFree.jsp" method="post">
		<table border=2 align="center">
			<tr>
				<td>Title</td>
				<td>Price</td>
				<td>Qty</td>
				<td>Total</td>
			</tr>

			<tr>

				<td>Cafe</td>
				<td>${initParam.Cafe}</td>

				<c:if test="${car.coffeequantity >= '0.0'}">
					<td><input type="text" name="coffeequantity"
						value="${car.coffeequantity}" /></td>
					<td>${car.coffeequantity * initParam.Cafe}</td>
				</c:if>
				<c:if test="${car.coffeequantity < '0.0'}">

					<c:if test="${empty cookie.cofQ.value}">
						<td><input type="text" name="coffeequantity" value="0.0" /></td>
						<td>0.0</td>
						<jsp:setProperty property="coffeequantity" name="car" value="0.0" />
					</c:if>
					<c:if test="${!empty cookie.cofQ.value}">
						<td>
						<input type="text" name="coffeequantity"
							value="${cookie.cofQ.value}" /></td>
						<td>${cookie.cofQ.value * initParam.Cafe}</td>
						<jsp:setProperty property="coffeequantity" name="car"
							value="${cookie.cofQ.value}" />
					</c:if>
				</c:if>

			</tr>
			<tr>
				<td>Sugar</td>
				<td>${initParam.Sugar}</td>

				<c:if test="${car.sugarquantity >= '0.0'}">
					<td><input type="text" name="sugarquantity"
						value="${car.sugarquantity}" /></td>
					<td>${car.sugarquantity * initParam.Sugar}</td>
				</c:if>
				<c:if test="${car.sugarquantity < '0.0'}">

					<c:if test="${empty cookie.sugQ.value}">
						<td><input type="text" name="sugarquantity" value="0.0" /></td>
						<td>0.0</td>
						<jsp:setProperty property="sugarquantity" name="car" value="0.0" />
					</c:if>

					<c:if test="${!empty cookie.sugQ.value}">
						<td><input type="text" name="sugarquantity"
							value="${cookie.sugQ.value}" /></td>
						<td>${cookie.sugQ.value * initParam.Sugar}</td>
						<jsp:setProperty property="sugarquantity" name="car"
							value="${cookie.sugQ.value}" />
					</c:if>
				</c:if>
			</tr>
			<tr>
				<td>Water</td>
				<td>${initParam.Water}</td>

				<c:if test="${car.waterquantity >= '0.0'}">
					<td><input type="text" name="waterquantity"
						value="${car.waterquantity}" /></td>
					<td>${car.waterquantity * initParam.Water}</td>
				</c:if>
				<c:if test="${car.waterquantity < '0.0'}">
					<c:if test="${empty cookie.watQ.value}">
						<td><input type="text" name="waterquantity" value="0.0" /></td>
						<td>0.0</td>
						<jsp:setProperty property="waterquantity" name="car" value="0.0" />
					</c:if>
					<c:if test="${!empty cookie.watQ.value}">
						<td><input type="text" name="waterquantity"
							value="${cookie.watQ.value}" /></td>
						<td>${cookie.watQ.value * initParam.Water}</td>
						<jsp:setProperty property="waterquantity" name="car"
							value="${cookie.watQ.value}" />
					</c:if>
				</c:if>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td>Total:</td>
				<td>${car.coffeequantity * initParam.Cafe + car.sugarquantity *
					initParam.Sugar + car.waterquantity * initParam.Water}</td>
			</tr>
		</table>
		</br> </br>
		<div align="center">
			<input type="submit" value="Confirm" />
		</div>
	</form>
	<div align="center">
		<form method="get" action="Redirector.do">
			<input type="Submit" value="Info">
		</form>
		<form method="get" action="GetCode.do">
			<input type="Submit" value="Code">
		</form>
	</div>
</body>
</html>