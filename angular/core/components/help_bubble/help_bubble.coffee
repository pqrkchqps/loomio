angular.module('diehardFundApp').directive 'helpBubble', ->
  scope: {helptext: '@'}
  restrict: 'E'
  templateUrl: 'generated/components/help_bubble/help_bubble.html'
  replace: true
