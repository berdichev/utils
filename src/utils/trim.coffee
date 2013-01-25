# Trim the returning string
#
# @example Trim the returning string decorator
#   trim() -> ' stringWithWhitespaces  '
# @example either as method decorator
#   {
#     foo: trim() (value) -> "  Messy #{value} processor   "
#   }
# @param [Function] decorated function to be decorated
# @return [Function] decorated function which returns trimmed string
# @see http://api.jquery.com/jQuery.trim/
#
@trim = -> (decorated) -> -> $.trim decorated.apply @, arguments
