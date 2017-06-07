function MemesController (Meme) {
  var vm = this;

  vm.load = function () {
    Meme.all({}, function (r) {
      vm.memes = r;
    });
  }

  vm.timestamps = function (meme) {
    Meme.create({
      meme: meme
    }, function (r) {
      vm.memes.push(r);
    });
  }
}

angular.module('Memes').controller('MemesController', ['Meme', MemesController]);
