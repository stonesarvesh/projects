<section class="wrapper site-min-height-home"
	ng-init="query = '${query}'">

	<div class="">
		<div class="col-sm-10 col-md-10" style="margin: 50px 0 75px 120px">
			<form class="navbar-form" role="search" method="get" id="search-form"
				name="search-form" action="search">
				<div class="input-group col-md-8">
					<input type="text" class="form-control" placeholder="search" ng-model="query"
						id="query" name="query" value="">
					<div class="input-group-btn">
						<button type="submit" class="btn btn-success">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="col-lg-3 ds">
		<h3>Results</h3>
		<!-- First Action -->
		<div ng-controller="SearchController">
			<div class="desc" ng-repeat="program in programs">
				<div class="thumb">
					<span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
				</div>
				<div class="details">
					<p>
						<muted>{{program.level}} in</muted>
						<br/><a href="#">{{program.courseName}}</a> 
						<br />{{program.instituteName}}
					</p>
				</div>
			</div>
		</div>

	</div>
</section>
