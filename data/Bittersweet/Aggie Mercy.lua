function onStartCountdown()
	triggerEvent('Play Animation', 'aggie prep', 'Dad')
end

local mercy = 0.025

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.3 then
        setProperty('health', health- mercy);
    end
end

function onUpdate()
	if curStep == 671 then
		mercy = 0.039
	elseif curStep == 703 then
		mercy = 0.001
	end
end