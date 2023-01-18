function onCreate()
------------------------------------------------------------------------ FG DUST ---
		makeLuaSprite('dusts', 'rohnnie/dustsmall', -500, -460); --SMALL
        addLuaSprite('dusts', true);
		scaleObject('dusts', 3.1, 3.1);
		setProperty('dusts.visible', false)
		setObjectOrder('dusts', 10);
		setObjectCamera('dusts', 'hud')
		setLuaSpriteScrollFactor('dusts', 3.0, 3.0);
		
------------------------------------------------------------------------ FG DUST TINY ---
		makeLuaSprite('dustt', 'rohnnie/dusttiny', -500, -460); --SMALL
        addLuaSprite('dustt', true);
		scaleObject('dustt', 2.1, 2.1);
		setProperty('dustt.alpha', 0)
		setObjectCamera('dustt', 'hud')
		setObjectOrder('dustt', 10);
		setLuaSpriteScrollFactor('dustt', 2.0, 2.0);
end

stepHitFuncs = {
	
	[703] = function()
		setProperty('defaultCamZoom', 0.73)
		doTweenAlpha('brighten', 'blendin', 0, 2, 'backOut')
	end,
	
	[944] = function()
		setProperty('defaultCamZoom', 0.8)
	end,
	
	[960] = function()
		setProperty('defaultCamZoom', 0.56)
		setProperty('dustt.alpha', 1)
		setProperty('dusts.visible', true)
		doTweenAngle('turn', 'dustt', 500, 620, 'linear')
		doTweenAngle('trun', 'dusts', 300, 690, 'linear')
	end,
	
	[1018] = function()
		objectPlayAnimation('theplush', 'plushies monmon');
		doTweenAngle('hudbop', 'camHUD', 0.5, 0.05, 'backOut')
	end,
	
	[1020] = function()
		objectPlayAnimation('theplush', 'plushies matt matt');
		doTweenAngle('hudbop', 'camHUD', -0.5, 0.05, 'backOut')
	end,
	
	[1022] = function()
		objectPlayAnimation('theplush', 'plushies pan pan');
		doTweenAngle('hudbop', 'camHUD', 0.5, 0.05, 'backOut')
	end,
	
	[1024] = function()
		objectPlayAnimation('theplush', 'plushies hey all');
		doTweenAngle('hudbop', 'camHUD', 0, 0.05, 'backOut')
	end,
		
	[1082] = function()
		objectPlayAnimation('theplush', 'plushies monmon');
		doTweenAngle('hudbop', 'camHUD', 0.5, 0.05, 'backOut')
	end,
	
	[1084] = function()
		objectPlayAnimation('theplush', 'plushies matt matt');
		doTweenAngle('hudbop', 'camHUD', -0.5, 0.05, 'backOut')
	end,
	
	[1086] = function()
		objectPlayAnimation('theplush', 'plushies pan pan');
		doTweenAngle('hudbop', 'camHUD', 0.5, 0.05, 'backOut')
	end,
	
	[1088] = function()
		objectPlayAnimation('theplush', 'plushies hey all');
		doTweenAngle('hudbop', 'camHUD', 0, 0.05, 'backOut')
	end,
	
	[1344] = function()
		objectPlayAnimation('theplush', 'plushies hey all');
		setProperty('dustt.alpha', 0)
		setProperty('dusts.visible', false)
	end,
	
	[1520] = function()
		cameraFade('hud', '000000' , 8.5, true)
	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() 
    end 
end

function onBeatHit()
	if curStep >= 1088 and curStep < 1343 then
		if curBeat % 2 == 0 then
		objectPlayAnimation('theplush', 'plushies monmon');
		setProperty('camHUD.angle', 1)
		doTweenAngle('hudbop2', 'camHUD', 0, 1, 'backOut')
		end
		
		if curBeat % 4 == 0 then
		objectPlayAnimation('theplush', 'plushies pan pan');
		setProperty('camHUD.angle', -1)
		doTweenAngle('hudbop2', 'camHUD', 0, 1, 'backOut')
		end
	end
end
