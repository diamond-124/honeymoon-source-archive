----------------------------------------------------- HUDDIE BOP ---
function onStepHit()
	if (curStep >= 960 and curStep < 1344) then
		if curStep % 8 == 0 then
			doTweenY('rrr', 'camHUD', -4, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', -12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 8 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'circIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end