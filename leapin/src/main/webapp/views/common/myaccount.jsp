<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="container">
	<div class="row" ng-controller="AdminController">
		<div class="col-sm-3">
			<div class="sidebar-account">
				<div class="row ">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">My account</div>
							<div class="panel-body">
								<ul class="nav">
									<li ng-class="{ 'bg-grey': currentTab == 0 ,'none' : currentTab != 0}"><a class="active " href ng-click="showMyProfileTab()">My
											Profile</a></li>
									<sec:authorize access="hasRole('admin')">
										<li ng-class="{ 'bg-grey': currentTab == 1 ,'none' : currentTab != 1}"><a class="active" href ng-click="showNotificationTab()">Create
												New Notification</a></li>
									</sec:authorize>
								</ul>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-sm-9" id="myProfileSection" ng-if="currentTab == 0">
			<div class="panel panel-default">
				<div class="panel-heading">My Profile</div>
				<div class="panel-body">

					<form class="form-horizontal">
						<fieldset>
							<div class="form-group">
								<div class="col-sm-8">
									<br />
									<div class="form-group">
										<label for="inputEmail1" class="col-sm-4 control-label">Name
										</label>
										<div class="col-sm-8">
											<input type="email" class="form-control" id="inputEmail1"
												readonly placeholder="The name you want other people to see">
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail1" class="col-sm-4 control-label">Email</label>
										<div class="col-sm-8">
											<input type="email" class="form-control" id="inputEmail1"
												readonly placeholder="http://">
										</div>
									</div>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-9" id="notificationSection" ng-if="currentTab == 1">
			<form class="form-vertical" action="">
				<div class="panel panel-default">
					<div class="panel-heading">Choose category</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12 ">
								<div class="form-group">
									<div class="row">
										<div class="col-sm-2" style="margin-top: 10px;">
											<label>Category</label>
										</div>
										<div class="col-sm-6">

											<select id="category" class="form-control " name="category">
												<option value="">Choose a category</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">Ad details</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="row">
								<div class="col-sm-12">
									<label>Title </label> <input type="text" class="form-control ">
								</div>
								<div class="col-sm-12">
									<br /> <label>Description </label>
									<textarea class="form-control col-sm-8 expand" rows="6"
										style="width: 99%"></textarea>
								</div>

								<div class="col-sm-12">
									<br /> <label>Keywords</label> <input type="text"
										class="form-control ">
								</div>
							</div>

						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>