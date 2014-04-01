# Description:
#  None
#
# Dependencies:
#   twit: https://github.com/ttezel/twit
#
# Configuration:
#   HUBOT_TWITTER_CONSUMER_KEY
#   HUBOT_TWITTER_CONSUMER_SECRET
#   HUBOT_TWITTER_ACCESS_TOKEN
#   HUBOT_TWITTER_ACCESS_TOKEN_SECRET
#
# Commands:
#   hubot tweet <update> - posts the update to okizebot Twitter account
#
# Notes
#   None
#
# Author:
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

Twit = require 'twit'

# https://apps.twitter.com/app/
config =
  consumer_key: process.env.HUBOT_TWITTER_CONSUMER_KEY
  consumer_secret: process.env.HUBOT_TWITTER_CONSUMER_SECRET
  access_token: process.env.HUBOT_TWITTER_ACCESS_TOKEN
  access_token_secret: process.env.HUBOT_TWITTER_ACCESS_TOKEN_SECRET

module.exports = (robot) ->
  T = undefined

  # user forgot to include a status
  robot.respond /tweet($|\s)$/i, (msg) ->
    return msg.reply 'What did you want to tweet?'

  robot.respond /tweet\s(.+)$/i, (msg) ->

    # check that configuration keys have been set
    unless config.consumer_key
      msg.send 'Please set HUBOT_TWITTER_CONSUMER_KEY environment variable.'
      return

    unless config.consumer_secret
      msg.send 'Please set HUBOT_TWITTER_CONSUMER_SECRET environment variable.'
      return

    unless config.access_token
      msg.send 'Please set HUBOT_TWITTER_ACCESS_TOKEN environment variable.'
      return

    unless config.access_token_secret
      msg.send 'Please set HUBOT_TWITTER_ACCESS_TOKEN_SECRET environment variable.'
      return

    unless T
      T = new Twit config

    # text of status update
    status = msg.match[1]

    # post status update
    T.post 'statuses/update',
      status: status
    , (err, reply) ->

      if err
        return msg.send "#{err.message} -> #{JSON.parse(err.twitterReply).error}"
      if reply['text']
        id = reply['id_str']
        return msg.reply "Status updated! You can see it here: https://twitter.com/okizebot/status/#{id}"
      else
        return msg.reply "Ugh, I'm can't tell if that Tweet posted, please check http://twitter.com/okizebot"
