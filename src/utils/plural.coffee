# Pluralize number
#
# @example Pluralize number
#   plural(apples.length, 'яблоко', 'яблока', 'яблок')
# @param [Number] number number to be pluralized
# @param [String] one single form string
# @param [String] two pair form string
# @param [String] five plural form string
# @return [String] one of the string params in depend of number
#
@plural = (number, one, two, five) ->
  number = Math.abs(number) % 100
  return five if number >= 5 and number <= 20
  number %= 10
  return one if number is 1
  return two if number >= 2 and number <= 4
  five

# Adjective pluralize
#
# @see plural
#
@adjective = (number, one, two) ->
  number %= 100
  return two if number is 11
  number %= 10
  return one if number is 1
  two
