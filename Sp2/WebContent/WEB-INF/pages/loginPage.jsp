<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en-us">
<head>
<title>Log in</title>
<link rel="stylesheet" type="text/css" href="resources/css/base.css" />
<link rel="stylesheet" type="text/css" href="resources/css/login.css" />




<meta name="robots" content="NONE,NOARCHIVE" />
</head>


<body class=" login" data-admin-utc-offset="0">

	<!-- Container -->
	<div id="container">


		<!-- Header -->
		<div id="header">
			<div id="branding">

				<h1 id="site-name">
					<a href="/admin/">Leadership administration</a>
				</h1>

			</div>


		</div>
		<!-- END Header -->







		<!-- Content -->
		<div id="content" class="colM">







			<div id="content-main">

 <span
				style="color: red">${message}</span> <br />

				<form:form method="post" action="j_spring_security_check"
				modelAttribute="users">
				<table>
					<tr>
						<td>Username:</td>
						<td><form:input path="username" /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><form:input path="password" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" /></td>
					</tr>
				</table>
			</form:form>

			</div>


			<br class="clear" />
		</div>
		<!-- END Content -->

		<div id="footer"></div>
	</div>
	<!-- END Container -->

</body>
</html>
