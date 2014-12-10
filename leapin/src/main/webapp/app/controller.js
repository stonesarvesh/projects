( function ($j) {
	var result = angular.module("app.controller", []);
	
	result.controller("SearchController",['$scope','$rootScope','$http', function($scope, $rootScope,$http) {
		$scope.programs = {};
		$scope.cityFilter = {};
		$scope.levelFilter = {levels : new Array()};
		$scope.typeFilter = {};
		
		var promiss = $http.get("getPrograms",{params: {query: $scope.query}});
		promiss.success(function(data) {
			$rootScope.programs = data.programs;
			$scope.cities = data.cities;
			$scope.levels = data.levels;
			$scope.types = data.types;
			console.log($scope.programs.length);
		});
		
		$scope.filterProgram = function(program) {
			console.log($scope.levelFilter.levels);
			if ($scope.levelFilter.levels.length == 0)
				return true;
			for (var index =0; index < $scope.levelFilter.levels.length;index++) {
				if (program.level.indexOf($scope.levelFilter.levels[index]) >= 0) {
					return true;
				}
			}
			return false;
		};
		
		$scope.updateLevels = function(program) {
			var levels = new Array();
			$j("input.level:checked").each(function () {
				levels.push($j(this).val());
			});
			$scope.levelFilter.levels = levels;
		}
	}]);
})(jQuery);

