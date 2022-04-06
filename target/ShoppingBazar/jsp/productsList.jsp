


<%@page import="com.bosch.project.bean.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="index.html">Insert New Employee</a>
<form action="/Training/welcome.do" method="post" id="myForm">
	<table border="2">
		<thead>
			<tr>
				<td>Product Id</td>
				<td>Product Name</td>
				<td>Size</td>
				<td>Quantity</td>
				<td>Price</td>
				<td>PersonCategory</td>
				<td>Item Categories</td>
				
				
			</tr>
		</thead>
		<%
		List<Product> pdtList = (List<Product>) request.getAttribute("emplyeeList");

		
		if (pdtList != null) { %>
<tbody>
	<% 
			for(Product product:pdtList){
				
				
	%>

			<tr>
				<td><%= product.getProductName() %></td>
				<td><%= product.getImage() %></td>
				<td><%= product.getItemCategories() %></td>
				<td><%= product.getPersonCategory() %></td>
				<td><%= product.getPrice() %></td>
				<td><%= product.getQuantity() %></td>
				<td><%= product.getSize() %></td>
				
				
				<td><a href="javascript:void(0);" onclick="javascirpt:deleteEmployee('<%= product.getProductId() %>');">Delete</a></td>
				<td><a href="javascript:void(0);" onclick="javascirpt:updateEmployee('<%= product.getProductId() %>');">Update</a></td>
				<%-- <td><a href="javascript:void(0);" onclick="javascirpt:insertEmployee('<%= rs.getString("IdEmployee") %>');">Insert</a></td> --%>
				
				
			</tr>
			<%
					} %>
					
					
					
		
	<% }
	%>
	</tbody>
	</table>
	<input type="hidden" name="operationID" id="operationID"/>
	<input type="hidden" name="flag" id="flag" />
	</form>
</body>

<script type="text/javascript">
function deleteEmployee(id){
	document.getElementById("operationID").value = id;
	document.getElementById("flag").value = "delete";
	document.getElementById("myForm").action = "/Training/delete.do";
	document.getElementById("myForm").submit();
}
function updateEmployee(id){
	document.getElementById("operationID").value = id;
	document.getElementById("flag").value = "update";
	document.getElementById("myForm").action = "/Training/update.do";
	document.getElementById("myForm").submit();
}



</script>
</html>


<%-- </thead>
		<%
				ResultSet rs = (ResultSet) request.getAttribute("emplyeeList");
				if (rs != null) { %>
		<tbody>
			<% 
					while(rs.next()){
			%>

			<tr>
				<td><%= rs.getString("IdEmployee") %></td>
				<td><%= rs.getString("Password") %></td>
				<td><%= rs.getString("email") %></td>
				<td><%= rs.getString("UserName") %></td>
				<td><%= rs.getString("country") %></td>
				<td><%= rs.getString("location") %></td>
				<td><%= rs.getString("gender") %></td>
				<td><%= rs.getString("prevorg") %></td>
				
				<td><a href="javascript:void(0);" onclick="javascirpt:deleteEmployee('<%= rs.getString("IdEmployee") %>');">Delete</a></td>
				<td><a href="javascript:void(0);" onclick="javascirpt:updateEmployee('<%= rs.getString("IdEmployee") %>');">Update</a></td>
				<td><a href="javascript:void(0);" onclick="javascirpt:insertEmployee('<%= rs.getString("IdEmployee") %>');">Insert</a></td>
				
				
			</tr>
			<%
					} %> --%>