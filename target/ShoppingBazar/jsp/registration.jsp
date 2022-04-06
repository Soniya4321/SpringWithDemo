<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="registration.css">
<title>Registration</title>

</head>

<body background="<%=request.getContextPath()%>/images/welcom1.jpg">
	<div align="center"
		style="padding-top: 100px; background: /ShoppingBazar/src/main/webapp/welcom.jpg">
		<form:form action="registerProcess" method="post" commandName="registration">
			<fieldset
				style="width: 500px; height: 400px; align-items: center; background-color: gainsboro;">
				<legend
					style="border-style: solid; border-color: blue; border-width: thick; padding-left: 10px; background-color: cornsilk;">Registration
					information:</legend>
				<table align="center">

					<tr>
						<td><form:label path="username">Username</form:label>
						</td>
						<td><form:input path="username" name="username" id="username" />
						</td>
					</tr>
					<tr>
						<td><form:label path="password">Password</form:label></td>
						<td><form:input path="password" name="password"
								id="password" /></td>
					</tr>
					<tr>
						<td><form:label path="firstname">FirstName</form:label></td>
						<td><form:input path="firstname" name="firstname"
								id="firstname" /></td>
					</tr>
					<tr>
						<td><form:label path="lastname">LastName</form:label></td>
						<td><form:input path="lastname" name="lastname" id="lastname" />
						</td>
					</tr>
					<tr>
						<td><form:label path="email">Email</form:label></td>
						<td><form:input path="email" name="email" id="email" /></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><form:input path="address" name="address" id="address" />
						</td>
					</tr>
					<tr>
						<td>Phone</td>
						<td><form:input path="phone" name="phone" id="phone" /></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<button type="button" id="register" name="register">Register</button>
						</td>
					</tr>
					<tr></tr>
					<tr>
						<td></td>
						<td><a href="home.jsp"
							style="color: inherit; font-style: normal; font-size: smaller;">Home</a>
						</td>
					</tr>
				</table>
			</fieldset>
		</form:form>
	</div>
</body>

</html>