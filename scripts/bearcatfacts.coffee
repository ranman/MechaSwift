# Description:
#   Retrieves random bearcat facts.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot bearcatfact - Reply back with random cat fact.
#
# Author:
#   Shy

module.exports = (robot) ->
    robot.respond /CATFACT$/i, (msg) ->
        msg.http('http://http://bearcatfacts.info/')
            .get() (error, response, body) ->
                # passes back the complete reponse
                response = body
                if response.success == "true"
                    msg.send response.facts[0]
                else
                    msg.send "Unable to get bearcat facts right now."

