<div class="container">

	<br />

	<div class="home-tron-search-inner" style="margin: 50px 0">
	<form  role="search" method="get" id="search-form"
				name="search-form" action="search">
		<div class="row">
			<div class="col-sm-8 col-xs-9" style="text-align: center">
				<div class="row">
					<div class="col-sm-12 col-sm-offset-1">
						<div class="input-group col-md-12">
							<input type="text" class="form-control col-sm-3" id="query" name="query" value=""
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

	<div class="row mt btn-group-justified" align="justify">
		<!-- SERVER STATUS PANELS -->
		<div class="col-md-4 col-sm-4 mb">
			<div class="white-panel pn donut-chart">
				<div class="white-header">
					<h5>SERVER LOAD</h5>
				</div>
				<div class="row">
					<div class="col-sm-6 col-xs-6 goleft">
						<p>
							<i class="fa fa-database"></i> 70%
						</p>
					</div>
				</div>
				<canvas id="serverstatus01" height="120" width="120"></canvas>
				<script>
					var doughnutData = [ {
						value : 70,
						color : "#68dff0"
					}, {
						value : 30,
						color : "#fdfdfd"
					} ];
					var myDoughnut = new Chart(document.getElementById(
							"serverstatus01").getContext("2d"))
							.Doughnut(doughnutData);
				</script>
			</div>
		</div>
		<!-- /col-md-3-->


		<div class="col-md-4 col-sm-4 mb">
			<div class="white-panel pn">
				<div class="white-header">
					<h5>TOP PRODUCT</h5>
				</div>
				<div class="row">
					<div class="col-sm-6 col-xs-6 goleft">
						<p>
							<i class="fa fa-heart"></i> 122
						</p>
					</div>
					<div class="col-sm-6 col-xs-6"></div>
				</div>
				<div class="centered">
					<img src="assets/img/product.png" width="120">
				</div>
			</div>
		</div>
		<!-- /col-md-3 -->

		<div class="col-md-4 mb">
			<!-- WHITE PANEL - TOP USER -->
			<div class="white-panel pn">
				<div class="white-header">
					<h5>TOP USER</h5>
				</div>
				<p>
					<img src="assets/img/ui-zac.jpg" class="img-circle" width="80">
				</p>
				<p>
					<b>Zac Snider</b>
				</p>
				<div class="row">
					<div class="col-md-6">
						<p class="small mt">MEMBER SINCE</p>
						<p>2012</p>
					</div>
					<div class="col-md-6">
						<p class="small mt">TOTAL SPEND</p>
						<p>$ 47,60</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /col-md-3 -->


	</div>
	<!-- /row -->

</div>

