var kittenControllers = angular.module('kittenControllers', []);

kittenControllers.controller('KittenIndexCtrl', ['$scope', '$location', 'Kitten',
  function($scope, $location, Kitten) {

  $scope.kittens = Kitten.index();
  $scope.message = "test";

  $scope.detail = function() {
    $location.path("/kittens/" + kittenId)
  }

}]);

kittenControllers.controller('KittenShowCtrl', ['$scope', '$routeParams', 'Kitten',
  function($scope, $routeParams, Kitten) {
    $scope.kitten = Kitten.show({ id: $routeParams.id });

 }]);
