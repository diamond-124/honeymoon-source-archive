stepHitFuncs = {
	[128] = function()
		triggerEvent('Alt Idle Animation', 'Dad', '-alt')
	end,
	
	[672] = function()
		triggerEvent('Play Animation', 'opening', 'GF')
	end,
	
	[703] = function()
		triggerEvent('Alt Idle Animation', 'Dad', '')
		triggerEvent('Alt Idle Animation', 'GF', '-alt')
		triggerEvent('Change Character', 'BF', 'rosiebee')
		triggerEvent('Alt Idle Animation', 'BF', '-alt')
		triggerEvent('Play Animation', 'beeLook', 'Dad')
		triggerEvent('Play Animation', 'beeYay', 'BF')
	end,
	
	[944] = function()
		triggerEvent('Alt Idle Animation', 'Dad', '-alt')
	end,
	
	[1216] = function()
		triggerEvent('Alt Idle Animation', 'Dad', '')
	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() 
    end 
end