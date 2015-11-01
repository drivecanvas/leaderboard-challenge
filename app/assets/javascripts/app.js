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
  	'controllers',
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'main.html',
        controller: 'MainCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });

var controllers = angular.module('controllers',[]);