'use strict';

angular.module('controllers')
	.controller("MainCtrl", [ '$scope', '$log', '$http', 'driverService', function($scope,$log,$http,driverService) {

	$http.get('/api/users')
		.success(function(result){
			$scope.drivers = result;
			manipulateData($scope.drivers);

		})
		.error(function(data,status){
			console.log("Data not found");

		});


	$scope.overAllSelected = function(){
		
	}
	var manipulateData = function(data){
		angular.forEach($scope.drivers, function(values,key){
			values.total_earnings = parseFloat(values.total_earnings);
		});
	};
}]);