module.exports = (robot) ->
  robot.respond /who are you/i, (msg) ->
    msg.reply "I'm Ryan Gosling!"
