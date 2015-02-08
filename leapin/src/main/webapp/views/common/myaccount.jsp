<%@ taglib  uri="http://www.springframework.org/security/tags" prefix="sec"  %>
<div class="container">
	<div class="row">
		<div class="col-sm-3">
			<div class="sidebar-account">
				<div class="row ">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">My account</div>
							<div class="panel-body">
								<ul class="nav">
<!-- 									<li><a class="active" href="account_dashboard.html">Dashboard</a> -->
<!-- 									</li> -->
									<li><a class="active" href="account_profile.html">My
											Profile</a></li>
<!-- 									<li><a class="active" href="account_account.html">My -->
<!-- 											account</a></li> -->
<!-- 									<li><a class="active" href="account_ads.html">Manage -->
<!-- 											ads</a></li> -->
									<sec:authorize access="hasRole('admin')">
										<li><a class="active" href="account_ad_create.html">Create
												New Notification</a></li>
									</sec:authorize>
								</ul>

							</div>
						</div>
					</div>
				</div>

<!-- 				<div class="row hidden-xs"> -->
<!-- 					<div class="col-lg-12"> -->
<!-- 						<div class="well"> -->
<!-- 							<div class="row "> -->
<!-- 								<div class="col-lg-3"> -->
<!-- 									<img src="css/images/icons/Crest.png" width="45" /> -->
<!-- 								</div> -->
<!-- 								<div class="col-lg-9"> -->

<!-- 									<h4 style="margin-top: 0">Increase visibility</h4> -->
<!-- 									<p>Don't forget to 'bump' your listing to gain more -->
<!-- 										visibility</p> -->

<!-- 								</div> -->
<!-- 							</div> -->

<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

			</div>
		</div>

		<div class="col-sm-9">
			<div class="panel panel-default">
				<div class="panel-heading">My Profile</div>
				<div class="panel-body">

					<form class="form-horizontal">
						<fieldset>
							<div class="form-group">

<!-- 								<div class="col-sm-4"> -->
<!-- 									<div class="form-group"> -->
<!-- 										<label for="inputEmail1" class="col-sm-12 control-label">Your -->
<!-- 											logo</label> -->
<!-- 										<div class="col-sm-11"> -->
<!-- 											<img id="file-select" src="css/images/180x100.png" -->
<!-- 												width="100%" /><br /> <span -->
<!-- 												class="btn btn-default btn-file"> Click to upload <input -->
<!-- 												type="file"> -->
<!-- 											</span> -->

<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
								<div class="col-sm-8">
									<br />
									<div class="form-group">
										<label for="inputEmail1" class="col-sm-4 control-label">Name
											</label>
										<div class="col-sm-8">
											<input type="email" class="form-control" id="inputEmail1" readonly
												placeholder="The name you want other people to see">
										</div>
									</div>

<!-- 									<div class="form-group"> -->
<!-- 										<label for="inputEmail1" class="col-sm-4 control-label">Company -->
<!-- 											name</label> -->
<!-- 										<div class="col-sm-8"> -->
<!-- 											<input type="email" class="form-control" id="inputEmail1" -->
<!-- 												placeholder="Your company name"> -->
<!-- 										</div> -->
<!-- 									</div> -->


									<div class="form-group">
										<label for="inputEmail1" class="col-sm-4 control-label">Email</label>
										<div class="col-sm-8">
											<input type="email" class="form-control" id="inputEmail1" readonly
												placeholder="http://">
										</div>
									</div>

								</div>
							</div>

<!-- 							<div class="form-group"> -->
<!-- 								<div class="col-sm-12"> -->
<!-- 									<label for="inputEmail1" style="width: 100%" -->
<!-- 										class="control-label">About you</label><br /> <br /> -->
<!-- 									<textarea class="form-control col-sm-8" rows="6" -->
<!-- 										style="width: 99%"></textarea> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<hr /> -->

<!-- 							<div class="form-group"> -->
<!-- 								<label for="inputEmail1" class="col-sm-2 control-label">Address</label> -->
<!-- 								<div class="col-sm-10"> -->
<!-- 									<input type="email" class="form-control" id="inputEmail1" -->
<!-- 										placeholder="Your address"> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<div class="form-group"> -->
<!-- 								<label for="inputEmail1" class="col-sm-2 control-label">Email -->
<!-- 									address</label> -->
<!-- 								<div class="col-sm-10"> -->
<!-- 									<input type="email" class="form-control" id="inputEmail1" -->
<!-- 										placeholder="Must be valid, we'll send you a validation message"> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<div class="form-group"> -->
<!-- 								<label for="inputEmail1" class="col-sm-2 control-label">Mobile</label> -->
<!-- 								<div class="col-sm-10"> -->
<!-- 									<input type="email" class="form-control" id="inputEmail1" -->
<!-- 										placeholder="Your mobile number"> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<div class="form-group"> -->
<!-- 								<label for="inputEmail1" class="col-sm-2 control-label">Home -->
<!-- 									phone</label> -->
<!-- 								<div class="col-sm-10"> -->
<!-- 									<input type="email" class="form-control" id="inputEmail1" -->
<!-- 										placeholder="Don't forget to include the area code"> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<div class="form-group"> -->
<!-- 								<label for="inputEmail1" class="col-sm-2 control-label">Fax</label> -->
<!-- 								<div class="col-sm-10"> -->
<!-- 									<input type="email" class="form-control" id="inputEmail1" -->
<!-- 										placeholder="If you still use a fax machine"> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<br /> -->
<!-- 							<button type="submit" class="btn btn-primary">Save -->
<!-- 								profile</button> -->
				</div>




			</div>

		</div>

		</fieldset>
		</form>
	</div>
</div>
