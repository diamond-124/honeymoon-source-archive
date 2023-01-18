function onCreate()
   	makeAnimatedLuaSprite('hpbar','shared/honeymoonhpbar', 0, 0)
			addAnimationByPrefix('hpbar','boppin','hpbar',24,false);
			objectPlayAnimation('hpbar','boppin',false);
			
	setObjectCamera('hpbar', 'hud')
	setScrollFactor('hpbar', 0.9, 0.9)
	addLuaSprite('hpbar', true)
end

function onUpdate()
    setProperty('hpbar.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))

    setProperty('hpbar.x', getProperty('healthBar.x') - 120)
    setProperty('hpbar.y', getProperty('healthBar.y') - 20.1)
	
    setProperty('hpbar.angle', getProperty('healthBar.angle'))
    setProperty('hpbar.scale.x', getProperty('healthBar.scale.x'))
    setProperty('hpbar.scale.y', getProperty('healthBar.scale.y'))
    setObjectOrder('hpbar', 4)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)
end

function onBeatHit()

	objectPlayAnimation('hpbar','boppin',true);

end