App.factory 'Kitten', ['$resource', ($resource) ->
  $resource '/kittens/:id', id: '@id'
]