(function($j) {
	var result = angular.module("app.admin", []);

	result.controller("AdminController", [ '$scope', '$rootScope', '$http',
			'$filter', function($scope, $rootScope, $http, $filter) {

				$scope.currentTab = 0;
				$scope.showMyProfileTab = function() {
					$scope.currentTab = 0;
				};

				$scope.showNotificationTab = function() {
					$scope.currentTab = 1;
					
				};
				
				$scope.notificationCategories = {};
				
				var promiss = $http.get("getNotificationCategories");
				promiss.success(function(data) {
					$scope.notificationCategories = data;
				});
				
				$j('#startdatepicker').datetimepicker({
				    pickTime: false
				  });
				$j('#enddatepicker').datetimepicker({
					      pickTime: false
				  });
				
				
				//Notifications
				
				$scope.notification = {};
				$scope.saveNotification = function () {
					console.log($scope.notificationCategories);
					$j("#successMessage").hide();
					$j("#errorMessage").hide();
					$http.post("saveNotification", $scope.notification).success(function(result) {
						if (result) {
							$j("#successMessage").show();
						} else {
							$j("#errorMessage").show();
						}
					}).error(function () {
						$j("#errorMessage").show();
					});
				}
				
			} ]);
})(jQuery);
