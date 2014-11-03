<div class="container" ng-init="query = '${query}'">

	<div class="home-tron-search-inner " style="margin: 50px 0">
		<form role="search" method="get" id="search-form" name="search-form"
			action="search">
			<div class="row ">
				<div class="col-sm-8 col-xs-9" style="text-align: center">
					<div class="row">
						<div class="col-sm-12 col-sm-offset-1">
							<div class="input-group col-md-12">
								<input type="text" class="form-control col-sm-3" id="query"
									name="query" value="{{query}}"
									placeholder="e.g. BMW, 2 bed flat, sofa ">
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-xs-3" style="text-align: center">
					<div class="row">
						<div class="col-sm-11 pull-right">
							<button class="btn btn-primary search-btn">
								<i class="icon-search"></i>&nbsp;&nbsp;&nbsp;&nbsp;Search
							</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

	<div class="col-lg-2 ds">
		<h3>Filters</h3>
		<!-- First Action -->
		<div ng-controller="SearchController">
			<div class="desc" ng-repeat="city in cities">
				<div class="center">
					<p>
						<br /> <a href="#"><input type="checkbox" id="city_0" /><label
							for="city_0">{{city}}</label></a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-1"></div>
	<div class="col-lg-9 ds ">
		<div class="desc">Results</div>
		<!-- First Action -->
		<div ng-controller="SearchController">
				<div class="row" height="100%" ng-repeat="program in programs">
					<div class="col-md-12 " >
						<div class=" desc">
							<p>
								<muted>{{program.level}} in</muted>
								<br /> <a href="#">{{program.courseName}}</a> <br />{{program.instituteName}}
							</p>
						</div>
					</div>
			</div>

		</div>
	</div>
</div>
