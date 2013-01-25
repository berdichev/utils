# Console logger
# Binds console.log to global `log` shortcut
# Requries settings.logging flag to determine logging mode
#
# @example log 'hello', new Data()
# @param [Boolean] settings.logging settings flag to use console.log or stub
#
@log = if settings.logging then (_.bind console.log, console) else ->
