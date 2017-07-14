angular.module('diehard_fundApp').controller 'NewVoteItemController', ($scope, Records, TranslationService) ->
  $scope.vote = Records.votes.find($scope.event.eventable.id)

  TranslationService.listenForTranslations($scope)
