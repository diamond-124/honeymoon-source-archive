function onCreate()

	makeLuaSprite('bgThing', 'shared/albums/'.. songName, -500, 290) --song bg
    scaleObject('bgThing', 0.19, 0.19)
	setObjectCamera('bgThing', 'other')
    addLuaSprite('bgThing', true)
    setScrollFactor('bgThing', 0, 0)
    setObjectOrder('bgThing', 3)
	setProperty('bgThing.alpha', 0)
	setProperty('bgThing.antialiasing', false)
	
    makeLuaText('songText', songName, 400, -900, 480)  --song name
    setObjectCamera("songText", 'other');
    setTextColor('songText', 'ff638d')
    setTextSize('songText', 30);
    addLuaText("songText");
    setTextFont('songText', "beachday.ttf")
    setTextAlignment('songText', 'center')
	setObjectOrder('songText', 4)
	
	makeLuaSprite('play', 'shared/nowplaying', 10, 50) -- now playing
    scaleObject('play', 0.6, 0.6)
	setObjectCamera('play', 'other')
    addLuaSprite('play', true)
    setScrollFactor('play', 0, 0)
    setObjectOrder('play', 3)
	setProperty('play.alpha', 0)
	
	makeLuaSprite('pinkbarar','', -260, 0);
	makeGraphic('pinkbarar',540,820,'ff8ace');
	addLuaSprite('pinkbarar',false);
	setScrollFactor('pinkbarar',0,0);
	setObjectCamera('pinkbarar','hud');
	setObjectOrder('pinkbarar', 0);
	setProperty('pinkbarar.alpha', 0)
	setProperty('pinkbarar.angle', 345)
	setBlendMode('pinkbarar', 'multiply')
end

function onCreatePost()
    doTweenX('bgThingMoveIn', 'bgThing', 60, 1.3, 'circOut')
	doTweenAlpha('bgThingappear', 'bgThing', 1, 0.5, 'circOut')
	
	doTweenAlpha('playappear', 'play', 1, 0.5, 'circOut')
	doTweenY('playMoveIn', 'play', 205, 1.3, 'circOut')
	
	doTweenAlpha('blackbgmovein', 'pinkbarar', 0.9, 1.3, 'circOut')
	
    doTweenX('bgThingText', 'songText', -45, 1.3, 'circOut')  -- might need to mess with these for longer names
	
    runTimer('moveOut', 3.7, 1)
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 0 == 0 or counter % 2 == 0 then
	------------------------------------------------ BG THING
	setProperty('bgThing.scale.y', 0.21)
	setProperty('bgThing.scale.x', 0.21)
	doTweenX('bumpee', 'bgThing.scale', 0.19, 1.3, 'elasticOut')
	doTweenY('wumpee', 'bgThing.scale', 0.19, 1.3, 'elasticOut')
	end
	--------------------------------------------------------------- NOW PLAYING THING
	if counter % 2 == 0 then
	setProperty('play.y', 210)
	doTweenY('playbum', 'play', 205, 1.3, 'elasticOut')
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'moveOut' then
        doTweenX('bgThingLeave', 'bgThing', -700, 0.5, 'quartIn')
		doTweenX('playLeave', 'play', -700, 0.5, 'quartIn')
		doTweenAlpha('blackbgmovein', 'pinkbarar', 0, 0.5, 'quartIn')
        doTweenX('bgThingLeaveText', 'songText', -900, 0.5, 'quartIn')  -- might need to mess with these for longer names
		doTweenX('bgThingLeaveBar', 'pinkbarar', -500, 0.9, 'quartIn')
    end
end

function onTweenCompleted(tag)
    if tag == 'bgThingLeave' then
        removeLuaSprite('bgThing', true)
		removeLuaSprite('play', true)
		removeLuaSprite('pinkbarar', true)
		removeLuaText('songText', true)
    end
end