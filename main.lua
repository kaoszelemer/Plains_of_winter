screenWidth = 320
screenHeight = 200
bgImage = love.graphics.newImage("background.png")

map = {
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
1,2,3,2,3,2,3,4,2,1,2,3,4,3,3,3,3,3,2,1,
1,1,1,1,1,1,1,1,2,2,3,4,3,2,2,3,2,1,2,3,
1,1,2,3,2,1,1,1,1,2,3,3,4,5,2,1,1,1,1,1,
1,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,2,2,2,
}

character = {
img = love.graphics.newImage("character.png"),
x = 50,
y = 50,
speed = 100,
}

function drawBg()


end

function love.load()
    love.window.setMode(screenWidth,screenHeight)  
end

function love.update(dt)
    if love.keyboard.isDown('left','a') then
		character.x = character.x - (character.speed*dt)
	elseif love.keyboard.isDown('right','d') then
		character.x = character.x + (character.speed*dt)

    elseif love.keyboard.isDown('up','w') then
		character.y = character.y - (character.speed*dt)
    elseif love.keyboard.isDown('down','d') then
		character.y = character.y + (character.speed*dt)
	end
end

function love.draw()
    love.graphics.draw(bgImage, 1, 1)
    love.graphics.draw(character.img, character.x, character.y)
end