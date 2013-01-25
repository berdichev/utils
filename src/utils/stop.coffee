# Stop the event propagation decorator
#
# @example Stop the event propagation in event handler
#   handler = stop() (event) -> log 'event fired'
# @example either Backbone.Event delegate
#   events:
#     'click': 'foo':
#   foo: stop() -> log 'foo clicked'
# @param [Function] decorated function to be decorated
# @return [Function] decorated function which stops event propagation before call
# @see http://api.jquery.com/event.stopPropagation/
#
@stop = -> (decorated) -> (event) ->
  event.stopPropagation()
  decorated.call @, event
