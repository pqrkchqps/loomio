angular.module('diehardFundApp').factory 'MembershipRequestRecordsInterface', (BaseRecordsInterface, MembershipRequestModel) ->
  class MembershipRequestRecordsInterface extends BaseRecordsInterface
    model: MembershipRequestModel

    fetchMyPendingByGroup: (groupKey, options = {}) ->
      options['group_key'] = groupKey
      @remote.get('/my_pending', options)

    fetchPendingByGroup: (groupKey, options = {}) ->
      options['group_key'] = groupKey
      @remote.get('/pending', options)

    fetchPreviousByGroup: (groupKey, options = {}) ->
      options['group_key'] = groupKey
      @remote.get('/previous', options)

    approve: (membershipRequest) ->
      @remote.postMember(membershipRequest.id, 'approve', group_key: membershipRequest.group().key)

    ignore: (membershipRequest) ->
      @remote.postMember(membershipRequest.id, 'ignore', group_key: membershipRequest.group().key)
