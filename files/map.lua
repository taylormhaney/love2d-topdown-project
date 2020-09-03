local sti = require "libraries/sti/sti"

function mapload()
  map = sti("assets/test.lua")
end

function mapupdate(dt)
  map:update(dt)
end

function mapdraw()
  map:draw()
end