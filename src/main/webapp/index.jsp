<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="<%=request.getContextPath()%>/images/welcom.jpg">
	<div>
<form action="login"></form>
		<font color="WHITE"
			style="color: black; font-size: xx-large; font-style: oblique; font-weight: bold;"><marquee
				direction="left"
				style="background: coral; height: 60px; padding-top: 20px;">Welcome
				To ShoppingBazaar</marquee></font>
		<table align="right">

			<tr>
				<td><a href="<%=request.getContextPath() %>/jsp/login.jsp" style="color: black; font-weight: bold;">Login</a>
				</td>

				<td><a href="<%=request.getContextPath() %>/jsp/registration.jsp" style="color: black; font-weight: bold;">Register</a>

				</td>

			</tr>

		</table>
		<!-- <img src="welcom.jpg" alt="Welcome"
			style="width: -webkit-fill-available; height: -webkit-fill-available; border-bottom-width: 40px; border-style: solid;"> -->

	</div>

</body>
</html>