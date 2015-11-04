'use strict';

angular.module('controllers')
	.controller("DriverCtrl", [ '$scope', '$log', '$http', '$routeParams',
	 function($scope,$log,$http,$routeParams) {

	$scope.total = 0;
	$scope.thisweeksrank = $routeParams.rank;
	$http.get('/api/users/'+$routeParams.num+'/earnings')
		.success(function(result){

			$scope.earnings = result;
			updateDailystats();


		})
		.error(function(data){
			console.log(data)
		});

	$http.get('/api/users/'+$routeParams.num+'/driving_stats')
		.success(function(data){
			$scope.drivingstats = data;
		})
		.error(function(data){
			console.log(data)
		});

	$scope.goback = function(){
		window.history.back();
	}
	$scope.dailystats = {

		'daily' : {},
		'hourly': {}

		};

	$scope.getday = function(day){
		switch(day){
			case "0" : return "SUN";
			break;
			case "1" : return "MON";
			break;
			case "2" : return "TUE";
			break;
			case "3" : return "WED";
			break;
			case "4" : return "THU";
			break;
			case "5" : return "FRI";
			break;
			case "6" : return "SAT";
			break;
		};
	};
	var updateDailystats = function(){

		angular.forEach($scope.earnings,function(values,key){
			$scope.total += Number(values.amount);
			
			var earned_time = new Date(Date.parse(values.earned_at));
			if(!$scope.dailystats['daily'][earned_time.getDay()]){
				$scope.dailystats['daily'][earned_time.getDay()] = {
					"earnings" : 0
				}
			}
			if(!$scope.dailystats['hourly'][earned_time.getHours()]){
				$scope.dailystats['hourly'][earned_time.getHours()] = {
					"earnings" : 0
				}
			}
			console.log(values.amount);
			$scope.dailystats['daily'][earned_time.getDay()]['earnings'] += Number(values.amount);
			$scope.dailystats['hourly'][earned_time.getHours()]['earnings'] += Number(values.amount);
		});

		console.log($scope.dailystats);
	};

}]);