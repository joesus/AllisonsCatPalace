var kittenServices = angular.module('kittenServices', ['ngResource']);

kittenServices.factory("Kitten", ['$resource',
  function($resource) {
  return $resource("/api/kittens/:id", { id: "@id" },
    {
      'create':  { method: 'POST' },
      'index':   { method: 'GET', isArray: true },
      'show':    { method: 'GET', isArray: false },
      'update':  { method: 'PUT' },
      'destroy': { method: 'DELETE' }
    }
  );
}]);