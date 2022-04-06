<%-- 
<%@page import="com.bosch.project.bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	Product product=(Product)request.getAttribute("Employee");
		String pname = (String) product.getProductName();
		System.out.println("operationID update jsp : " + pname);
		double price =  product.getPrice();
		System.out.println("operationID update jsp : " + price);
		int quantity = product.getQuantity();
		System.out.println("operationID update jsp : " + quantity);
		String pCategory = (String)product.getPersonCategory();
		System.out.println("operationID update jsp : " + pCategory);
		String itemCategory = (String) product.getItemCategories();
		System.out.println("operationID update jsp : " + itemCategory);
		int size = product.getSize();
		byte[] pcompany =  product.getImage();
		
		Integer operationID = (Integer) product.getProductId();
		System.out.println("operationID update jsp : " + operationID);
		if (pCategory != null && itemCategory != null) {

			//int id = rs.getInt("IdEmployee");
			//String uname = uname.getString("UserName");
			//String pswd = password.getString("Password");
	%>
	<form action="/Training/update.do" method="post" id="myForm">
		<fieldset
			style="width: fit-content; align-items: center; background-color: skyblue;">
			<legend
				style="border-style: solid; border-color: blue; border-width: thick; padding-left: 10px; background-color: cornsilk;">Product Update Page:</legend>
			<div>
				<div>
					<label for="name">ProductName:</label> <input type="text"
						name="productname" value="<%=product.getProductName()%>"
						style="margin-left: 45px; border-image-width: auto; background-color: cornsilk;" />
				</div>
				<div>
					<br> <label for="name">Qantity:</label> <input
						type="text" name="qantity" value="<%=quantity%>"
						style="margin-left: 50px; border-image-width: auto; background-color: cornsilk;" />
				</div>
			</div>
			<div>
				<br> <label for="name">size:</label> <input type="text"
					
					style="margin-left: 65px; border-image-width: auto; background-color: cornsilk;"
					value="<%=size%>" name="email"/>
			</div>
			<div>
				<br> <label for="name">Item Category:</label> <select name="itemcategory"
					style="margin-left: 60px;">
					<%
						if (itemcategory != null && itemcategory.equalsIgnoreCase("clothes")) {
					%>
					<option value="india" selected>India</option>
					<%
						} else {
					%>
					<option value="india">India</option>
					<%
						}
					%>
					<%
						if (itemcategory != null && country.equalsIgnoreCase("electronics")) {
					%>
					<option value="electronics" selected>Electronics</option>
					<%
						} else {
					%>
					<option value="electronics">Electronics</option>
					<%
						}
					%>
					<%
						if (itemcategory != null && itemcategory.equalsIgnoreCase("shoes")) {
					%>
					<option value="shoes" selected>Shoes</option>
					<%
						} else {
					%>
					<option value="shoes">Shoes</option>
					<%
						}
					%>
					<%
						if (itemcategory != null && itemcategory.equalsIgnoreCase("cosmetics")) {
					%>
					<option value="cosmetics" selected>Cosmetics</option>
					<%
						} else {
					%>
					<option value="cosmetics">Cosmetics</option>
					<%
						}
					%>
					<%
						if (itemcategory != null && itemcategory.equalsIgnoreCase("toys")) {
					%>
					<option value="toys" selected>Toys</option>
					<%
						} else {
					%>
					<option value="toys">Toys</option>
					<%
						}
					%>
				</select>
			</div>
			<div>
				<br> <label for="name">PersonCategories:</label> <select
					style="margin-left: 60px;" value="<%=location%>" name="location" />

				<%
					if (location != null && location.equalsIgnoreCase("coimbatore")) {
				%>
				<option value="coimbatore" selected>Coimbatore</option>
				<%
					} else {
				%>
				<option value="coimbatore">Coimbatore</option>
				<%
					}
				%>
				<%
					if (location != null && location.equalsIgnoreCase("bangalore")) {
				%>
				<option value="bangalore" selected>bangalore</option>
				<%
					} else {
				%>
				<option value="bangalore">bangalore</option>
				<%
					}
				%>
				<%
					if (location != null && location.equalsIgnoreCase("delhi")) {
				%>
				<option value="delhi" selected>delhi</option>
				<%
					} else {
				%>
				<option value="delhi">delhi</option>
				<%
					}
				%>
				<%
					if (location != null && location.equalsIgnoreCase("hydrabad")) {
				%>
				<option value="coimbatore" selected>hydrabad</option>
				<%
					} else {
				%>
				<option value="hydrabad">hydrabad</option>
				<%
					}
				%>

				</select>
			</div>
			
			
			<input type="hidden" name="flag" value="updateForm" /> <input
				type="hidden" name="operationID" value="<%=operationID%>" /> <input
				type="submit" name="submit" />
		</fieldset>
	</form>
	<%
		
		}
	%>
</body>
</html>

<!-- if(country==india){
						<option value="volvo" selected="selected">India</option>
						}else{
						<option value="volvo">India</option>
						} -->

 --%>