# Description:
#   Displays data that can be useful for writing and debugging Hubot scripts
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

util = require 'util'

module.exports = (robot) ->

  # number following command is the level of recursion to display
  robot.hear /hubot debugger [0-9]/i, (msg) ->
    depth = msg.match[0].substr 15, 16
    msg.send util.inspect msg, colors: true, depth: depth

  robot.hear /hubot version/i, (msg) ->
    msg.send "I am Hubot version #{msg.robot.version}"

  robot.hear /hubot room info/i, (msg) ->
    msg.send "This is the #{msg.message.room} room"