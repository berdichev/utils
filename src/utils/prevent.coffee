# Prevent default event action decorator
#
# @example Prevent default event action in event handler
#   handler = prevent() (event) -> log 'event fired'
# @example either Backbone.Event delegate
#   events:
#     'click': 'foo':
#   foo: prevent() -> log 'foo clicked'
# @param [Function] decorated function to be decorated
# @return [Function] decorated function which prevent default event actionbefore call
# @see http://api.jquery.com/event.preventDefault/
#
@prevent = -> (decorated) -> (event) ->
  event.preventDefault()
  decorated.call @, event
