map = require "files/map"
player = require "files/player"
camera = require "files/camera"

function love.load()
  mapload()
  playerload()
  cameraload()
end

function love.update(dt)
  mapupdate(dt)
  cameraupdate(dt)
  playerupdate(dt)
end

function love.draw()
  camera:attach()
  mapdraw()
  playerdraw()
  camera:detach()
  love.graphics.print("FPS: "..tostring(love.timer.getFPS( )), 10, 10)
  love.graphics.print("player x: "..player.x, 10, 25)
  love.graphics.print("player y: "..player.y, 10, 40)
end