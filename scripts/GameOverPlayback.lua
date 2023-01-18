-- made by diamond24 this is a simple sctipr

function onCreate()
	addCharacterToList('bfDEAD', 'bf')
	makeLuaSprite('gameoverfade', 'shared/vignette',  0, 0)
	setSpriteShader('gameoverfade', 'thing')
	setObjectCamera('gameoverfade', 'hud')
	setProperty('gameoverfade.alpha', 0)
	addLuaSprite('gameoverfade',false)
end

-------------------------------------------- ACTUAL GAME OVER SCRIPT

function onUpdate()
	
	if getProperty('health') <= 0.15 then
		runTimer('demise', 0.021,1)
		doTweenZoom('deathstare', 'camGame', 15, 0.7, 'circIn')
		doTweenAlpha('thedeadscreen','gameoverfade', 1, 0.7)
		cameraShake('camGame', 0.0011, 1)
		cameraShake('camHUD', 0.00111, 1)
		cameraSetTarget('boyfriend')
		
		doTweenY('lookatyourhealth','healthBar', 360, 0.07 ,'circIn')
		doTweenY('lookatyou','iconP1', 280, 0.07 ,'circIn')
		doTweenY('lookatyourenemy','iconP2', 280, 0.07 ,'circIn')
		
		doTweenY('lookatyourtime','timeBar', 360, 0.07 ,'circIn')
		doTweenY('lookatyoutexttime','timeTxt', 340, 0.07 ,'circIn')
		
		for i=0,7 do
                noteTweenAlpha(i+0, i, 0, 1)
        end
		
---------------------------------------------------- PLAYBACK CONTROL ----
		function onStepHit()
			if curStep % 0.1 == 0 then
				setProperty('playbackRate', getProperty('playbackRate') - 0.02)
				setProperty('health', 0.15)
			end
		end
---------------------------------------------------- DEATH METHODS --
	
		function onPause()
			playSound('missnote' .. math.random(1, 3))
			setProperty('health', 0)
			return Function_Stop
		end
	
	function onTimerCompleted(tag, loops, loopsleft)
		if tag == 'demise' then
			setProperty('health', 0)
			setProperty('playbackRate', 1)
			doTweenZoom('deathstare', 'camGame', 1, 0.1, 'linear')
			
				if inGameOver then
				close()
				end
			end
		end
	end
end