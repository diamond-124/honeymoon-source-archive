function onCreate()
	get = getRandomInt(1,2)
end

function onStartCountdown()
		if get == 1 then
			triggerEvent('Play Animation', 'prep1', 'BF')
	end
		if get == 2 then
			triggerEvent('Play Animation', 'prep2', 'BF')
	end
end