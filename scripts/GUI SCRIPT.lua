--------------------------------------------------------------- botplay stufs
function onCreate()
	get = getRandomInt(1,3)
end

function onUpdate()
		if get == 1 then
			setTextString("botplayTxt", "Botplay -n-")
			setProperty("botplayTxt.borderSize", 2.4)
	end
		if get == 2 then
			setTextString("botplayTxt", "im so mad rn")
			setProperty("botplayTxt.borderSize", 2.4)
	end
		if get == 3 then
			setTextString("botplayTxt", "not fair")
			setProperty("botplayTxt.borderSize", 2.4)
	end
end
--------------------------------------------------------------- T I M E   B A R
function formatTime(millisecond)
    local seconds = math.floor(millisecond / 1000)

    return string.format("%01d:%02d", (seconds / 60) % 60, seconds % 60)  
end

function onUpdatePost(elapsed)
    setTextString('timeTxt', formatTime(getSongPosition() - noteOffset) .. ' / ' .. formatTime(songLength))
end

function onCreatePost()
	setProperty('timeBar.color', getIconColor('dad'))
end

------------------------------------- c o m b o 

local comboOffsetW = {0, 0, 0, 0}
  
function onCreatePost() 
if downscroll then
comboOffsetW = {100, 100, 100, 100}
   end 
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if not lowQuality then
if not isSustainNote and getProperty('combo') > 1 then
makeLuaSprite('combo' .. getProperty('combo'), 'combo', 1050 + comboOffsetW[3] , 650 + comboOffsetW[4] )
setObjectCamera('combo' .. getProperty('combo'), 'hud')
scaleObject('combo' .. getProperty('combo'), 0.55, 0.55)
addLuaSprite('combo' .. getProperty('combo'), false)
setProperty('combo' .. getProperty('combo') .. '.velocity.y', 500)
setProperty('combo' .. getProperty('combo') .. '.velocity.y', -130)
doTweenAlpha('tweenCombo3' .. getProperty('combo'), 'combo' .. getProperty('combo'), 0, 0.4, 'circIn')
end
end
end

function onTweenCompleted(tag)
if tag == 'tweenCombo3' then
removeLuaSprite('combo', true);
	end
end