# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None



module.exports = (robot) ->

  robot.hear /Build (FAILED|PASSED)/, (msg) ->
    if msg.match[1] == 'FAILED'
      return msg.send 'request fail image'
    if msg.match[1] == 'PASSED'
      return msg.send 'request win image'
