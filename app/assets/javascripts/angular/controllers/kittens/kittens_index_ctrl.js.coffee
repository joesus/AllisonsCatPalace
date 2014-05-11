App.controller 'KittensCtrl', ['$scope', 'Kitten', ($scope, Kitten) ->
  $scope.kittens = Kitten.query()
]