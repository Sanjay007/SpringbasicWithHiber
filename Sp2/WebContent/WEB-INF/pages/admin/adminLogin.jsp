<!DOCTYPE html>

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



				<form:form action="adminLogin" method="post" id="login-form"
					modelAttribute="loginModel">
					<form:errors path="*" cssClass="errorblock" element="div" /> 
					<input type='hidden' name='csrfmiddlewaretoken'
						value='hr1xMFHAzyEu0jpwnEofoUaggFNl2P339kDUoaYmy1Hm4J0uq7UhgwBvmuZboftp' />
					<div class="form-row">

						<label class="required" for="id_username">Username:</label> <input
							autofocus="" id="id_username" maxlength="254" name="username"
							type="text" required />
					</div>
					<div class="form-row">

						<label class="required" for="id_password">Password:</label> <input
							id="id_password" name="password" type="password" required /> <input
							type="hidden" name="next" value="/admin/" />
					</div>


					<div class="submit-row">
						<label>&nbsp;</label><input type="submit" value="Log in" />
					</div>
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
