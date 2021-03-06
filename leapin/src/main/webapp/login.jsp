<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Login - LEAPin</title>
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<link href="css/styles.css" rel="stylesheet">
</head>
<body ng-controller="ApplicationController">
	<!--login modal-->
	<div id="loginModal" class="modal show" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">�</button>
					<h1 class="text-center">Login</h1>
				</div>
				<c:if test="${not empty error}">
					<div class="errorblock">
						Your login attempt was not successful, try again.<br /> Caused :
						${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
					</div>
				</c:if>
				${SPRING_SECURITY_LAST_EXCEPTION}
				<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}">
		            <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
		        </c:if>
				<div class="modal-body">
					<form class="form col-md-12 center-block"
						action="<c:url value='j_spring_security_check' />" method='POST'>
						<div class="form-group">
							<input type="text" class="form-control input-lg"
								name="j_username" placeholder="Username" id="username">
						</div>
						<div class="form-group">
							<input type="password" class="form-control input-lg"
								placeholder="Password" id="password" name="j_password">
						</div>
						<div class="form-group">
							<button class="btn btn-primary btn-lg btn-block" type="submit">Sign
								In</button>
							<span class="pull-right"><a href="#">Register</a></span><span><a
								href="#">Need help?</a></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<div class="col-md-12">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- script references -->
	<script src="assests/js/jquery.js"></script>
	<script src="assests/js/bootstrap.min.js"></script>
</body>
</html>