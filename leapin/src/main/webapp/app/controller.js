( function ($j) {
	var result = angular.module("app.controller", []);
	
	result.controller("SearchController",['$scope','$rootScope','$http', '$filter',function($scope, $rootScope,$http,$filter) {
		$rootScope.programs = {};
		$rootScope.stateFilter = {};
		$rootScope.levelFilter = {};
		$rootScope.typeFilter = {};
		$rootScope.listing = true;
		$rootScope.details = false;
		var promiss = $http.get("getPrograms",{params: {query: $scope.query}});
		promiss.success(function(data) {
			$rootScope.programs = data.programs;
			$rootScope.filteredPrograms = data.programs;
			$rootScope.states = data.states;
			$rootScope.levels = data.levels;
			$rootScope.types = data.types;
			$rootScope.listing = true;
			$rootScope.details = false;
		});
		
		$rootScope.showDetails = function (program) {
			$rootScope.listing = false;
			$rootScope.details = true;
			$rootScope.detailsProgram = program;
		};
		$rootScope.backToListing = function () {
			$rootScope.listing = true;
			$rootScope.details = false;
		}
		
		
		$scope.filterCity = function (city) {
			
		}
		
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
		
		$rootScope.filterProgram = function() {
			
			$rootScope.filteredPrograms = new Array();
			
			$rootScope.stateFilteredPrograms = new Array();
			var stateArray = new Array();
			for (key in $rootScope.stateFilter) {
				if ($rootScope.stateFilter[key] == true) {
					stateArray.push(key);
				}
			}
			
			var levelArray = new Array();
			for (key in $rootScope.levelFilter) {
				if ($rootScope.levelFilter[key] == true) {
					levelArray.push(key);
				}
			}
			
			
			
			if (stateArray.length > 0) {
				for (var i = 0; i < $rootScope.programs.length; i++) {
					for (var j = 0; j < stateArray.length; j++) {
						if ($rootScope.programs[i].state == stateArray[j]) {
							$rootScope.stateFilteredPrograms.push($rootScope.programs[i]);
							break;
						}
					}
				}
			} else {
				$rootScope.stateFilteredPrograms = $rootScope.programs;
			}
			
			if (levelArray.length > 0) {
				for (var i = 0; i < $rootScope.stateFilteredPrograms.length; i++) {
					for (var j = 0; j < levelArray.length; j++) {
						if ($rootScope.programs[i].level == levelArray[j]) {
							$rootScope.filteredPrograms.push($rootScope.stateFilteredPrograms[i]);
							break;
						}
					}
				}
			} else {
				$rootScope.filteredPrograms = $rootScope.stateFilteredPrograms;
			}
			
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

