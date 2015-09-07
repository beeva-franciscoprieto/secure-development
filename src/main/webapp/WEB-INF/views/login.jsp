<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
	<meta charset="UTF-8" />
	<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
	<title>Secure development</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Secure development" />
	<meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
	<meta name="author" content="Codrops" />

	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/demo.css'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/style.css'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/animate-custom.css'/>"/>


</head>
<body>
<div class="container">
	<section>
		<div id="container_demo" >
			<div id="wrapper">
				<div id="login" class="animate form">
					<form name='loginForm' action="<c:url value='/login' />" method='POST'>
						<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}"/>

						<h1>Secure development</h1>
						<p>
							<label for="username" class="uname" data-icon="u" > Your email</label>
							<input id="username" name="username" required="required" type="text" placeholder="mymail@mail.com"/>
						</p>
						<p>
							<label for="password" class="youpasswd" data-icon="p"> Your password </label>
							<input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" />
						</p>
						<p class="keeplogin">
							<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />
							<label for="loginkeeping">Keep me logged in</label>
						</p>
						<p class="login button">
							<input type="submit" value="Login" />
						</p>
						<p class="change_link">
							Not a member yet ?
							<a href="<c:url value='/register' />" class="to_register">Register</a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>