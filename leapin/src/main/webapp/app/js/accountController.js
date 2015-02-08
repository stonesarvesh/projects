(function($j) {
	var result = angular.module("app.admin", []);

	result.controller("AdminController", [ '$scope', '$rootScope', '$http',
			'$filter', function($scope, $rootScope, $http, $filter) {

				$scope.currentTab = 0;
				$scope.

				$scope.showMyProfileTab = function() {
					$scope.currentTab = 0;
				};

				$scope.showNotificationTab = function() {
					$scope.currentTab = 1;
				};

			} ]);
})(jQuery);