require "files/player"
Camera = require "libraries/hump.camera"

function love.load()
  camera = Camera()
end

function love.update(dt)
  camera:lockPosition(player.posX, player.posY)
  playerUpdate()
end

function love.draw()
  camera:attach()
  playerDraw()
  camera:detach()
  playerDebug()
end

love.load()
love.update()
love.draw()