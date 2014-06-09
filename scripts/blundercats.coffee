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

getImage = (msg, type) ->
  msg.http("http://blunder-cats.herokuapp.com/images/#{type}")
    .get() (err, res, body) ->
      msg.send body

module.exports = (robot) ->

  robot.hear /Build (PASSED|FAILED)/, (msg) ->

    if msg.match[1] == 'PASSED'
      getImage msg, 'win'

    if msg.match[1] == 'FAILED'
      getImage msg, 'fail'
