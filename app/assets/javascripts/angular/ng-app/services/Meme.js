function Meme ($resource) {
  return $resource('/api/memes', {}, {
    all: {
      method: 'GET',
      isArray: true
    },
    show: {
      method: 'GET',
      url: '/api/memes/:id',
      params: { id: '@id' }
    },
    create: {
      method: 'POST'
    }
  });
}

angular.module('Memes').factory('Meme', ['$resource', Meme]);
