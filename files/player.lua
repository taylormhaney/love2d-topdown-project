local dt = love.timer.getDelta()

function playerload()
  player = {
    img = love.graphics.newImage("assets/purple.png"),
    x = love.graphics.getWidth() / 2,
    y = love.graphics.getHeight() / 2,
  }
end

function playerupdate(dt)
  
  if love.keyboard.isDown("d", "right") then 
    player.x = player.x + 32
  elseif love.keyboard.isDown("a", "left") then
    player.x = player.x - 32
  end
  if love.keyboard.isDown("s", "down") then 
    player.y = player.y + 32
  elseif love.keyboard.isDown("w", "up") then
    player.y = player.y - 32
  end
end

function playerdraw()
  love.graphics.draw(player.img, player.x, player.y, nil, nil, nil, 16)
end