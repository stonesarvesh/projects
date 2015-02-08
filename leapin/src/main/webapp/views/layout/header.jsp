<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a href="home" class="navbar-brand "> <span class="logo"><strong>leap</strong><span
					class="handwriting">IN</span><br /> <small>choose your interest</small></span>
			</a>

		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right visible-xs">
<!-- 				<li><a href="my_account.html">Login</a></li> -->
<!-- 				<li><a href="register.html">Register</a></li> -->
<!-- 				<li><a href="listings.html">Listings</a></li> -->
				<li><a href="myaccount">My account</a></li>
				<sec:authorize access="isAuthenticated()">
					<li><a href="myaccount">Logout</a></li>
				</sec:authorize>
				
<!-- 				<li><a href="account_ad_create.html">Post an ad</a></li> -->
			</ul>
			<div class="nav navbar-nav navbar-right hidden-xs">
				<div class="row">

					<div class="pull-right">
<!-- 						<a data-toggle="modal" data-target="#modalLogin" href="#">Login</a> -->
<!-- 						| <a href="register.html">Register</a> -->
<!-- 						| -->
						 <a href="myaccount">My account</a> 
						 <sec:authorize access="isAuthenticated()">
						| <a href="j_spring_security_logout">Logout</a>
				</sec:authorize>
						 

					</div>
				</div>
			</div>
		</div>
	</div>
</nav>

<!-- Modal -->
<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog"
	aria-labelledby="modalLogin" aria-hidden="true">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">Sign in to your account</h4>
			</div>
			<div class="modal-body">
				<p>If you have an account with us, please enter your details
					below.</p>

				<form method="post" action="j_spring_security_check"
					 id="user-login-form" class="form ajax"
					data-replace=".error-message p">

					<div class="form-group">
						<input placeholder="Your username/email" class="form-control"
							name="username" type="text">
					</div>

					<div class="form-group">
						<input placeholder="Your password" class="form-control"
							name="password" type="password" value="">
					</div>

					<div class="row">
						<div class="col-md-6"></div>
						<div class="col-md-6">
							<button type="submit" class="btn btn-primary pull-right">Login</button>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<a data-toggle="modal" href="#modalForgot">Forgot your
								password?</a>
						</div>
					</div>

				</form>
			</div>

			<div class="modal-footer" style="text-align: center">
				<div class="error-message">
					<p style="color: #000; font-weight: normal;">
						Don't have an account? <a class="link-info" href="register.html">Register
							now</a>
					</p>
				</div>
			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
