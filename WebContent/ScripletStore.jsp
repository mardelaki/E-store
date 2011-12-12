<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%! String Qcafecookie,Qsugarcookie,Qwatercookie ="0.0"; %>
<%    Cookie cookies1[] = request.getCookies();
if (request.getParameter("Qcafe") != null) {
        session.setAttribute("Qsugar", request.getParameter("Qsugar"));
        session.setAttribute("Qwater", request.getParameter("Qwater"));
        session.setAttribute("Qcafe", request.getParameter("Qcafe"));
        Cookie Qcafecookie = new Cookie("Qcafecookie",request.getParameter("Qcafe"));
        Qcafecookie.setMaxAge(60*60*60*60);
        response.addCookie(Qcafecookie);
        Cookie Qsugarcookie = new Cookie("Qsugarcookie",request.getParameter("Qsugar"));
        Qsugarcookie.setMaxAge(60*60*60*60);
        response.addCookie(Qsugarcookie);
        Cookie Qwatercookie = new Cookie("Qwatercookie",request.getParameter("Qwater"));
        Qwatercookie.setMaxAge(60*60*60*60);
        response.addCookie(Qwatercookie);
}else if ((cookies1 != null) && (cookies1.length != 0)) {

	  for (int i = 0; i < cookies1.length; i++) {
	    Cookie c = cookies1[i];
	    if (c.getName().equals("Qcafecookie")) {
	    	session.setAttribute("Qcafe", c.getValue());
	  }
	    if (c.getName().equals("Qsugarcookie")) {
	    	session.setAttribute("Qsugar", c.getValue());
	  }
	    if (c.getName().equals("Qwatercookie")) {
	    	session.setAttribute("Qwater", c.getValue());
	  }}

	 }else{ 
    	session.setAttribute("Qsugar", "0.0");
        session.setAttribute("Qwater", "0.0");
        session.setAttribute("Qcafe", "0.0");
    	
    }%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart(using scriptlets)</title>
</head>
<body>

<%! Float cPrice,sPrice,wPrice =Float.parseFloat("0.0"); %>
<center><h1>This is your Basket</h1></center>
	<form method="post">
		<table border=2 align="center">
			<tr>
				<td>Title</td>
				<td>Price</td>
				<td>Qty</td>
				<td>Total</td>
			</tr>

			<tr>
				<td>Cafe</td>
				<td><%=application.getInitParameter("Cafe")%></td>
				<td><input type="text" name="Qcafe" value="<% if (session.getAttribute("Qcafe") != null) {%> <%=session.getAttribute("Qcafe").toString().trim()%> <%} else {%> <%=0.0%> <% }%>"/></td>
				<td>
				<% if(request.getParameter("Qcafe")!=null && !request.getParameter("Qcafe").isEmpty()){
					cPrice = Float.parseFloat((String) request.getParameter("Qcafe").trim())*Float.parseFloat((String) application.getInitParameter("Cafe"));
				}else if (session.getAttribute("Qcafe")!=null) {
					cPrice = Float.parseFloat((String) session.getAttribute("Qcafe"))*Float.parseFloat((String) application.getInitParameter("Cafe"));
					} 
				else {cPrice=Float.parseFloat("0.0");}
				%>	
				<%= cPrice %>
				</td>
			</tr>
			<tr>
				<td>Sugar</td>
				<td><%=application.getInitParameter("Sugar")%></td>
				<td><input type="text" name="Qsugar" value="<% if (session.getAttribute("Qsugar") != null) {%> <%=session.getAttribute("Qsugar").toString().trim()%> <%} else {%> <%=0.0%> <% }%>"/></td>
				<td>
				<% if(request.getParameter("Qsugar")!=null && !request.getParameter("Qsugar").isEmpty()){
					sPrice = Float.parseFloat((String) request.getParameter("Qsugar").trim())*Float.parseFloat((String) application.getInitParameter("Sugar"));
				}else if (session.getAttribute("Qsugar")!=null) {
					sPrice = Float.parseFloat((String) session.getAttribute("Qsugar"))*Float.parseFloat((String) application.getInitParameter("Sugar"));
					} else {sPrice=Float.parseFloat("0.0");}
				%>	
				<%= sPrice %>
					</td>
			</tr>
			<tr>
				<td>Water</td>
				<td><%=application.getInitParameter("Water")%></td>
				<td><input type="text" name="Qwater" value="<% if (session.getAttribute("Qwater") != null) {%> <%=session.getAttribute("Qwater").toString().trim()%> <%} else {%> <%=0.0%> <% }%>"/></td>
				<td>
				<% if(request.getParameter("Qwater")!=null && !request.getParameter("Qwater").isEmpty()){
					wPrice = Float.parseFloat((String) request.getParameter("Qwater").trim())*Float.parseFloat((String) application.getInitParameter("Water"));
				}else if (session.getAttribute("Qwater")!=null) {
					wPrice = Float.parseFloat((String) session.getAttribute("Qwater"))*Float.parseFloat((String) application.getInitParameter("Water"));
					} else {wPrice=Float.parseFloat("0.0");}
				%>	
				<%= wPrice %>
				</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td>Total:</td>
				<td>
				<% Float total = cPrice+(sPrice+wPrice); 
				if(total!=null){
				%>
				<%= total %>
				<%}
				%>
				</td>

			</tr>
		</table>
		</br></br>
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