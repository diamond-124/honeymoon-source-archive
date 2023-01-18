----------------------------------------------------- DUST PREPERATION ---
function onStepHit()
		if curStep % 16 == 0 then
		setProperty('dustt.alpha', 1)
		
		elseif curStep % 16 == 1 then
		doTweenAlpha('dusd', 'dustt', 0.6, 0.9999, 'circOut')
	end
end

function onStepHit()
		if curStep % 16 == 0 then
		setProperty('dusts.alpha', 1)
		
		elseif curStep % 16 == 1 then
		doTweenAlpha('dustts', 'dusts', 0.2, 0.9999, 'circOut')
	end
end