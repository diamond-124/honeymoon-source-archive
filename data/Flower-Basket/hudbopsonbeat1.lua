function onUpdate()
     if not inGameOver then
function onBeatHit()
	if (curStep >= 764 and curStep < 1279) or (curStep >= 1535 and curStep < 2048) then
		if curBeat % 4 == 0 then
			triggerEvent('Add Camera Zoom', 0.055, 0.04)
		end
	end
end
end
end
