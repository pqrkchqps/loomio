angular.module('diehard_fundApp').factory 'ProposalRecordsInterface', (BaseRecordsInterface, ProposalModel) ->
  class ProposalRecordsInterface extends BaseRecordsInterface
    model: ProposalModel

    fetchByDiscussion: (discussion) ->
      @fetch
        params:
          discussion_key: discussion.key
        cacheKey: "proposalsFor#{discussion.key}"

    fetchClosedByGroup: (groupKey, options = {}) ->
      options['group_key'] = groupKey
      @fetch
        path: 'closed'
        params: options
