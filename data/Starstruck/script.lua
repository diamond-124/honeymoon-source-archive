------------------ SPRITES --------------------------
function onCreate()

----------------------------------------------------------------------- FG GLOW ---
		makeLuaSprite('fgglo', 'rohnnie/fg glow', -500, -460); --SMALL
        addLuaSprite('fgglo', true);
		scaleObject('fgglo', 1.1, 1.1);
		setProperty('fgglo.alpha', 0)
		setObjectOrder('fgglo', 5);

------------------------------------------------------------------------ FG DUST ---
		makeLuaSprite('dusts', 'rohnnie/dustsmall', -500, -460); --SMALL
        addLuaSprite('dusts', true);
		scaleObject('dusts', 3.1, 3.1);
		setProperty('dusts.visible', false)
		setObjectOrder('dusts', 8);
		setLuaSpriteScrollFactor('dusts', 3.0, 3.0);
		setSpriteShader('dusts', 'bloom')
		
------------------------------------------------------------------------ FG DUST TINY ---
		makeLuaSprite('dustt', 'rohnnie/dusttiny', -500, -460); --SMALL
        addLuaSprite('dustt', true);
		scaleObject('dustt', 2.1, 2.1);
		setProperty('dustt.alpha', 0)
		setObjectOrder('dustt', 8);
		setLuaSpriteScrollFactor('dustt', 2.0, 2.0);

end

----------------- EVENTS STUFF ----------------------
stepHitFuncs = {

    [1024] = function()
	setProperty('fgglo.alpha', 1)
	setProperty('dustt.alpha', 1)
	setProperty('dusts.visible', true)
	removeLuaSprite('blendin', true)
	setProperty('gf.alpha', 0)	
----------------------------------------------------- ROTATE
	doTweenAngle('turn', 'dustt', 500, 220, 'linear')
	doTweenAngle('trun', 'dusts', 300, 290, 'linear')
	end,
	
----------------------------------------------------- BEAT DROP
	[1520] = function()
	doTweenZoom('zoommm9', 'camGame', 1.4, 1.8, 'quintIn')
	end,
	
	[1536] = function()
	setProperty('fgglo.alpha', 0)
	setProperty('gf.alpha', 1)
	end,

	[1788] = function()
		setProperty('boyfriend.alpha', 0)
		cameraFade('hud', '000000' , 8.5,true)
		doTweenZoom('zoommm9', 'camHUD', 5, 6, 'circIn')
	end,
	
	[1828] = function()
		doTweenZoom('zoommm9', 'camHUD', 10, 20, 'circIn')
	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() 
    end 
end