'use strict';

/*var leaderboardApp = angular.module('leaderboardApp',['ngRoute']);

leaderboardApp.config(function($routeProvider){

$routeProvider
        .when('/', {
        templateUrl:'main.html',
        controller:'mainController'
    });
});
*/
angular
  .module('leaderboardApp', [
  	'templates',
  	'ngRoute',
  	'services',
  	'controllers'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'main.html',
        controller: 'MainCtrl'
      })
      .when('/driver',{
      	templateUrl:'driver.html',
      	controller: 'DriverCtrl'
      })
      .when('/driver/:num/:rank',{
      	templateUrl:'driver.html',
      	controller: 'DriverCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });

var controllers = angular.module('controllers',[]);
var services = angular.module('services',[]);