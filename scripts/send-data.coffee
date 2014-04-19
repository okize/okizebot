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

fs = require('fs')
http = require('http')
jsonify = (data) ->
  JSON.stringify data, null, 2

sendResults = (obj) ->
  data = jsonify(obj)
  options =
    host: process.env.HUBOT_JSON_DUMP_ADDRESS
    port: 80
    path: '/'
    method: 'POST'
    headers:
      'Content-Type': 'application/json'
      'Content-Length': Buffer.byteLength(data)

  req = http.request(options, (res) ->
    res.setEncoding 'utf8'
    res.on 'data', (chunk) ->
      return
  )

  req.write data

  req.on 'error', (err) ->
    throw err

  req.end()

module.exports = (robot) ->

  robot.hear /test/, (msg) ->
    sendResults brain: msg.robot.brain.data, regex: msg.match, message: msg.message
