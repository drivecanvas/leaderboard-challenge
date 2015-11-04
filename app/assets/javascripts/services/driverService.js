'use strict';

angular.module('services')
	.service('driverService', ['$http',function($http){

var driverdata = {};

	this.fetchData = function(){
		
		$http.get('/api/users')
			.success(function(data){
				debugger;
				return data;
			})
			.error(function(data,status){
				console.log(data);
			});

		//return driverdata;
				
	};
}]);