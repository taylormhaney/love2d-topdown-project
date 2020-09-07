Class = require "libraries/hump.class"

Entity = Class{}

-- create entity class to include player, enemies, and NPC objects
function Entity:init(sprite, speed, posX, posY, health)
  self.sprite = sprite
  self.speed = speed
  self.posX, self.posY = posX, posY
  self.health = health
end

-- create player object
player = Entity(love.graphics.newImage("assets/player.png"), 5, love.graphics.getWidth() / 2, love.graphics.getHeight() / 2, 10)

-- create movement function
function playerUpdate()
  local delta = love.timer.getDelta()
  -- move up
  if love.keyboard.isDown("w") then
    player.posY = player.posY + (player.speed * delta)
  -- move left
  elseif love.keyboard.isDown("a") then
    player.posX = player.posX - (player.speed * delta)
  -- move down
  elseif love.keyboard.isDown("s") then
    player.posY = player.posY - (player.speed * delta)
  -- move right
  elseif love.keyboard.isDown("d") then
    player.posX = player.posX + (player.speed * delta)
  end
end

-- display player position for camera & map debugging
function playerDebug()
  love.graphics.print("player x: "..tostring(player.posX), 10, 10)
  love.graphics.print("player y: "..tostring(player.posY), 10, 25)
end

function playerDraw()
  love.graphics.draw(player.sprite, player.posX, player.posY)
end