<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/response-1.0"
	prefix="res"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/session-1.0"
	prefix="sess"%>
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
	<!--${cookie.cofQ.value}
${car.coffeequantity}
${cookie.sugQ.value}
${cookie.watQ.value}-->

	<center>
		<h1>This is your Basket</h1>
	</center>
	<form action="index.jsp" method="post">
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
				<sess:isNew>				
				<td><input type="text" name="coffeequantity"
						value="${cookie.cofQ.value}" /></td>
					<td>${cookie.cofQ.value * initParam.Cafe}</td>
				</sess:isNew>
				<sess:isNew value="false">
  				<td><input type="text" name="coffeequantity"
						value="${car.coffeequantity}" /></td>
					<td>${car.coffeequantity * initParam.Cafe}</td>
				</sess:isNew>


			</tr>
			<tr>
				<td>Sugar</td>
				<td>${initParam.Sugar}</td>
				<sess:isNew>
					<td><input type="text" name="sugarquantity"
						value="${cookie.sugQ.value}" /></td>
					<td>${cookie.sugQ.value * initParam.Sugar}</td>

				</sess:isNew>
				<sess:isNew value="false">
					<td><input type="text" name="sugarquantity"
						value="${car.sugarquantity}" /></td>
					<td>${car.sugarquantity * initParam.Sugar}</td>
				</sess:isNew>
			</tr>
			<tr>
				<td>Water</td>
				<td>${initParam.Water}</td>
				<sess:isNew>
					<td><input type="text" name="waterquantity"
						value="${cookie.watQ.value}" /></td>
					<td>${cookie.watQ.value * initParam.Water}</td>
				</sess:isNew>
				<sess:isNew value="false">
					<td><input type="text" name="waterquantity"
						value="${car.waterquantity}" /></td>
					<td>${car.waterquantity * initParam.Water}</td>
				</sess:isNew>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td>Total:</td>
				<td><sess:isNew>
				${cookie.cofQ.value * initParam.Cafe + cookie.sugQ.value * initParam.Sugar + cookie.watQ.value * initParam.Water}
				</sess:isNew> <sess:isNew value="false">
                ${car.coffeequantity * initParam.Cafe + car.sugarquantity * initParam.Sugar + car.waterquantity * initParam.Water}
                 </sess:isNew></td>

			</tr>
		</table>
		</br>
		</br>
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