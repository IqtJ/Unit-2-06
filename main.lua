-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-----Purpkle Background
display.setDefault( "background", 255, 0, 255 )

-------text boxes
local aOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 150, 25 )
aOfTrapezoidTextField.id = "a textField"

local bOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 150, 25 )
bOfTrapezoidTextField.id = "b textField"

local heightOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 150, 25 )
heightOfTrapezoidTextField.id = "h textField"

local areaOfTrapezoidTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 30 )
areaOfTrapezoidTextField.id = "area textField"
areaOfTrapezoidTextField:setFillColor( 1, 1, 1 )

local submitButton = display.newImageRect( "assets/submit.png", 150, 125 )
submitButton.x = 170
submitButton.y = 470
submitButton.id = "submit button"

local image = display.newImageRect( "assets/trapezoid.png", 200, 125)
image.x = 150
image.y = 150
image.id = "trapezoid"
 
local function submitButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local aOfTrapezoid
    local bOfTrapezoid
    local hOfTrapezoid
    local areaOfTrapezoid
 
    aOfTrapezoid = aOfTrapezoidTextField.text
    bOfTrapezoid = bOfTrapezoidTextField.text
    hOfTrapezoid = heightOfTrapezoidTextField.text
    areaOfTrapezoid = ((aOfTrapezoid+bOfTrapezoid) /2 ) *hOfTrapezoid
    -- print( areaOfSquare )
    areaOfTrapezoidTextField.text = "The area is " .. areaOfTrapezoid

    return true
end

submitButton:addEventListener( "touch", submitButtonTouch )