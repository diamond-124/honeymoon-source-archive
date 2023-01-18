function onCreate()
-- BACKGROUND CREATE STUFF --------------------------------
	makeLuaSprite('beachbg', 'rohnnie/bgbeach', -500, -660);
	setLuaSpriteScrollFactor('beachbg', 1.09, 0.95);
	scaleObject('beachbg', 1.2, 1.2);
	
	makeLuaSprite('beachfg', 'rohnnie/fgbeach', -500, -460);
	setLuaSpriteScrollFactor('beachfg', 1, 1);
	scaleObject('beachfg', 1.1, 1.1);
	
   	makeAnimatedLuaSprite('thegulls','rohnnie/gullbops', 10, 425)
	-----------------------------------------------------------------------LEFT--
			addAnimationByPrefix('thegulls','left','gullbopleft',24,false);
			objectPlayAnimation('thegulls','left',false);
	
	-----------------------------------------------------------------------RIGHT--
	   	addAnimationByPrefix('thegulls','right','gullbopright',24,false);
    	objectPlayAnimation('thegulls','right',false);
		
	setLuaSpriteScrollFactor('thegulls', 1.0, 1.0);
	scaleObject('thegulls', 1.1, 1.1);
	
-- adding the sprites -------------------------------------

	addLuaSprite('beachbg', false);
	addLuaSprite('beachfg', false);
	addLuaSprite('thegulls', false);
end

-- THE GULL BEAT ------------------------------------------
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 1 == 0 then
		objectPlayAnimation('thegulls', 'left');
	end
	
	if curBeat % 2 == 0 then
		objectPlayAnimation('thegulls', 'right');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 0 == 0 then
		objectPlayAnimation('thegulls', 'firs');
	end
end
