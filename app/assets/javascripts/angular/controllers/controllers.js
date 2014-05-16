var kittenControllers = angular.module('kittenControllers', []);

kittenControllers.controller('KittenIndexCtrl', ['$scope', '$location', 'Kitten',
  function($scope, $location, Kitten) {

  $scope.kittens = Kitten.index();
  $scope.message = "test";

  $scope.detail = function() {
    $location.path("/kittens/" + kittenId)
  };

  $scope.animateKitten = function(childScope){
    element = $("#kitten-" + childScope.kitten.id);
    animation = "tada";
    element.addClass('animated ' + animation);
    //wait for animation to finish before removing classes
    window.setTimeout( function(){
      element.removeClass('animated ' + animation);
    }, 2000);
  }
}]);

kittenControllers.controller('KittenShowCtrl', ['$scope', '$routeParams', 'Kitten', '$location',
  function($scope, $routeParams, Kitten, $location) {
    $scope.kitten = Kitten.show({ id: $routeParams.id });

    $scope.submit = function() {
      Kitten.destroy($scope.kitten);
      $location.path("/kittens/" + kittenId)
    };

 }]);

kittenControllers.controller('KittenListCtrl', ['$scope', '$routeParams', 'Kitten',
  function($scope, $routeParams, Kitten) {
    $scope.kittens = Kitten.index();
}]);


kittenControllers.controller("KittenEditCtrl", ['$scope', '$routeParams', '$location', 'Kitten',
  function($scope, $routeParams, $location, Kitten) {

  if ($routeParams.id) {
    $scope.kitten = Kitten.show({ id: $routeParams.id });
  } else {
    $scope.kitten = new Kitten();
  }

  $scope.submit = function() {
    console.log("submit")

    function success(response) {
      console.log("success", response)
      $location.path("/kitten-list");
    }

    function failure(response) {
      console.log("failure", response)

      _.each(response.data, function(errors, key) {
        _.each(errors, function(e) {
          $scope.form[key].$dirty = true;
          $scope.form[key].$setValidity(e, false);
        });
      });
    }

    if ($routeParams.id) {
      Kitten.update($scope.kitten, success, failure);
    } else {
      Kitten.create($scope.kitten, success, failure);
    }

  };

  $scope.cancel = function() {
    $location.path("/kittens/"+$scope.kitten.id);
  };

  $scope.errorClass = function(name) {
    var s = $scope.form[name];
    return s.$invalid && s.$dirty ? "error" : "";
  };

  $scope.errorMessage = function(name) {
    var s = $scope.form[name].$error;
    result = [];
    _.each(s, function(key, value) {
      result.push(value);
    });
    return result.join(", ");
  };
}]);