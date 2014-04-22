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

  robot.hear /Build (PASSED|FAILED)/, (msg) ->

    if msg.match[1] == 'PASSED'
      msg.http('http://blunder-cats.heroku.com/images/win')
        .get() (err, res, body) ->
          msg.send res
          msg.send body

    if msg.match[1] == 'FAILED'
      msg.http('http://blunder-cats.heroku.com/images/fail')
        .get() (err, res, body) ->
          msg.send res
          msg.send body
