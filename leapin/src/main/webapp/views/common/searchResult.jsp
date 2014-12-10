<div class="jumbotron home-tron-search well ">
	<div class="container" ng-init="query = '${query}'">
		<div class="row" ng-controller="SearchController">

			<div class="col-sm-12">
				<div class="home-tron-search-inner">
					<form role="search" method="get" id="search-form"
						name="search-form" action="search">
						<div class="row">

							<div class="col-sm-8 col-xs-9" style="text-align: center">
								<div class="row">

									<div class="col-sm-12 col-sm-offset-1">
										<div class="input-group">
											<span
												class="input-group-addon input-group-addon-text hidden-xs">Find
												</span> <input type="text" class="form-control col-sm-3"
												id="query" name="query" value="{{query}}"
												placeholder="e.g. Photograpy, music, decoration ">
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
			</div>
		</div>
	</div>
</div>

<div class="container">

	<br />
	<div class="row">
		<div class="col-sm-12">
			<ol class="breadcrumb">
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-4  hidden-xs">
			<div class="sidebar ">
				<div class="row ">
					<div class="col-sm-11">
						<div class="panel panel-default">
							<div class="panel-heading">Refine category</div>
							<div class="panel-body">

								<div class="property">
									<a href="#AC+Cobra">AC Cobra</a>
								</div>
								<div class="property">
									<a href="#Acura">Acura</a>
								</div>
								<div class="property">
									<a href="#Alfa+Romeo">Alfa Romeo</a>
								</div>
								<div class="property">
									<a href="#American+Motors">American Motors</a>
								</div>
								<div class="property">
									<a href="#Aston+Martin">Aston Martin</a>
								</div>
								<div class="more" id="more_make_link">
									<a href="#" class="more link-info" id="more_make">More ...</a>
								</div>
								<div id="more_make_list" style="display: none;">
									<div class="property">
										<a href="#Audi">Audi</a>
									</div>
									<div class="property">
										<a href="#Austin+Healey">Austin Healey</a>
									</div>

									<div class="more">
										<a id="less_make" href="#" class="more link-info">Less ...</a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-sm-8 pull-right listings">
			<div class="row listing-row" style="margin-top: -10px;">
				<div class="pull-left">
					<strong>{{programs.length}} result(s) found</strong>
				</div>
				
			</div>
			<div class="row premium listing-row" ng-repeat="program in programs">

				<div class="col-sm-2">
					<a href="details.html" class="thumbnail "><img alt="176 * 120"
						src="assets/img/course.png"></a>
				</div>

				<div class="col-sm-10">
					<h3>
						<a class="" href="details.html">{{program.level}} in <strong>{{program.courseName}}</strong>
						</a>
					</h3>
					<p class="muted">
						offered by <strong>{{program.instituteName}}</strong>
					</p>
					<p class="ad-description">
						<strong>{{program.city}}</strong> | <strong>{{program.majorCategory}}</strong>
					</p>
					<p>
						<span class="classified_links pull-right"><a
							class="link-info underline" href="details.html">Details</a></span>
					</p>
				</div>
			</div>
		</div>
	</div>

</div>
