( function () {
	var result = angular.module("app.controller", []);
	
	result.controller("SearchController",['$scope','$http', function($scope, $http) {
		$scope.programs = {};
		console.log("here");
		var promiss = $http.get("getPrograms",{params: {query: $scope.query}});
		promiss.success(function(data) {
			$scope.programs = data.programs;
			$scope.cities = data.cities;
		});
		
	}]);
})();

