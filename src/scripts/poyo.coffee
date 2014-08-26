# Description
#   A Hubot script that respond poyo
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_POYO_P
#
# Commands:
#   None
#
# Author:
#   bouzuya <m@bouzuya.net>
#
module.exports = (robot) ->
  robot.hear /.*/i, (res) ->
    return unless Math.random() < parseFloat(process.env.HUBOT_POYO_P ? '0.3')
    s = res.match[0]
    poyo = 'ぽよ'
    index = Math.floor(Math.random() * s.length)
    res.send(s.substring(0, index) + poyo + s.substring(index + poyo.length))
