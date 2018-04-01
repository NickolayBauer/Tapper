-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local tapCount = 0
local background =   display.newRect( 0, 0, display.contentWidth, display.contentHeight )
background.x = display.contentCenterX
background.y = display.contentCenterY
local size = 200
local tapText = display.newText( tapCount, display.contentCenterX,  display.contentCenterY, native.systemFont, size)
	  
tapText:setFillColor( 255, 255, 0 )


local function push()
	if tapCount < 1000 then
	tapCount = tapCount + 1
	end
	if tapCount > 999 then
		 print(tapText.size)
		 tapText.text = "YOU WIN!"
		 tapText.size = 50
	else tapText.text = tapCount

	end 

end

background:addEventListener( "tap", push)