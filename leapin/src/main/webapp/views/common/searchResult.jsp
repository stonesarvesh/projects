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
											</span> <input type="text" class="form-control col-sm-3" id="query"
												name="query" value="{{query}}"
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

<div class="container" ng-show="listing" style="min-height: 320px">

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
							<div class="panel-heading">Filters</div>
							<div class="panel-body">
								<form class="form-inline mini" style="margin-bottom: 0px;">
									<fieldset>
										<div class="row filter-row">
											<div class="col-sm-12">
												<label><b>State</b></label>
											</div>
											<div class="col-sm-12" ng-repeat="state in states">
												<div class="radio" >
													<label> <input type="checkbox" id="state_{{$index}}" ng-model='stateFilter[state]' 
													ng-change="filterProgram()" > {{state}}
													</label>
												</div>
												<br />
											</div>
										</div>
									</fieldset>
									<fieldset>
										<div class="row filter-row">
											<div class="col-sm-12">
												<label><b>Level</b></label>
											</div>
											<div class="col-sm-12" ng-repeat="level in levels">
												<div class="radio" >
													<label> <input type="checkbox" id="level_{{$index}}" ng-model='levelFilter[level]' 
													 ng-change="filterProgram()"  > {{level}}
													</label>
												</div>
												<br />
											</div>
										</div>

									</fieldset>
								</form>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>

		<div class="col-sm-8 pull-right listings">
			<div class="row listing-row" style="margin-top: -10px;">
				<div class="pull-left">
					<strong>{{filteredPrograms.length}} result(s) found</strong>
				</div>

			</div>
			<div dir-paginate="program in filteredPrograms | itemsPerPage: 5"
				class="row premium listing-row">

				<div class="col-sm-2">
					<a href ng-click="showDetails(program)" class="thumbnail "><img alt="176 * 120"
						src="images/course.png"></a>
				</div>

				<div class="col-sm-10">
					<h3>
						<a class="" href ng-click="showDetails(program)">{{program.level}} in <strong>{{program.courseName}}</strong>
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
							class="link-info underline" href ng-click="showDetails(program)">Details</a></span>
					</p>
				</div>
			</div>
			<dir-pagination-controls></dir-pagination-controls>
		</div>
	</div>

</div>

<div class="container" id="details-page" ng-show="details">
	<div class="row">
		<div class="col-sm-12 listing-wrapper listings-top listings-bottom">
			<br /> <br />


			<div class="row">

				<div class="col-sm-7">

					<ol class="breadcrumb">
						<li><a href ng-click="backToListing()" class="link-info"><i
								class="fa fa-chevron-left"></i> Back to listings</a></li>
					</ol>

				</div>

			</div>

			<div class="row">

				<div class="col-sm-7">
					<h1>{{detailsProgram.courseName}}</h1>
					<p>{{detailsProgram.instituteName}}, {{detailsProgram.city}}</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-7">
					<h3>Course details</h3>
					<div class="row">
						<div class="col-xs-6">
							<table class="table">
								<tbody>
									<tr>
										<th>Level</th>
										<td>{{detailsProgram.level}}</td>
									</tr>
									<tr>
										<th>Duration</th>
										<td>{{detailsProgram.duration}}</td>
									</tr>
									<tr>
										<th>Title</th>
										<td>{{detailsProgram.degree}}</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div class="col-xs-6">
							<table class="table">
								<tbody>
									<tr>
										<th>Seats</th>
										<td>{{detailsProgram.seats}}</td>
									</tr>
									<tr>
										<th>Course category</th>
										<td>{{detailsProgram.majorCategory}}</td>
									</tr>
									<tr>
										<th>Type</th>
										<td>{{detailsProgram.type}}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<p>
						<strong> Min. qualifications : </strong>
						{{detailsProgram.qualification}}
					</p>
					<p>
						<strong> Admission procedure : </strong>
						{{detailsProgram.admissionProcedure}}
					</p>
					<p>
						<strong> Accomodation : </strong>
						{{detailsProgram.accomodationInfo}}
					</p>
					<p>
						<strong> Institute website : </strong>
						{{detailsProgram.instituteLink}}
					</p>
				</div>
			</div>
		</div>
	</div>
</div>