angular.module('diehard_fundApp').directive 'membersCard', ->
  scope: {group: '='}
  restrict: 'E'
  templateUrl: 'generated/components/group_page/members_card/members_card.html'
  replace: true
  controller: ($scope, Records, AbilityService, ModalService, InvitationModal) ->
    Records.memberships.fetchByGroup $scope.group.key, per: 10

    $scope.canAddMembers = ->
      AbilityService.canAddMembers($scope.group)

    $scope.isAdmin = ->
      AbilityService.canAdministerGroup($scope.group)

    $scope.memberIsAdmin = (member) ->
      $scope.group.membershipFor(member).admin

    $scope.showMembersPlaceholder = ->
      AbilityService.canAdministerGroup($scope.group) and $scope.group.memberships().length <= 1

    $scope.invitePeople = ->
      ModalService.open InvitationModal, group: -> $scope.group
