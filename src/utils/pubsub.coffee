# Pub sub shortcuts for Backbone.Mediator publish/subscribe methods
#
# @see https://github.com/berdichev/Backbone-Mediator/blob/master/README.md
#

@pub = _.bind Backbone.Mediator.publish, Backbone.Mediator
@sub = _.bind Backbone.Mediator.subscribe, Backbone.Mediator
@subOnce = _.bind Backbone.Mediator.subscribeOnce, Backbone.Mediator
