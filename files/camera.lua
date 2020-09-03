Camera = require "libraries/hump/camera"
require "files/player"

function cameraload()
    camera = Camera(player.x, player.y)
end

function cameraupdate(dt)
    camera:lockX(player.x)
    camera:lockY(player.y)
end