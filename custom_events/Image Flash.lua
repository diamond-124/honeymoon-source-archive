function onEvent(name, value1, value2)
    if name == 'Image Flash' then
        makeLuaSprite('image2wow', value1, 0, 0);
        addLuaSprite('image2wow', true);
        doTweenColor('hello', 'image2wow', 'FFFFFFFF', 0.1, 'quartIn');
        setObjectCamera('image2wow', 'other');
        runTimer('waitplease', value2);
        
        function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'waitplease' then
                doTweenAlpha('byebyew', 'image2wow', 0, 2, 'linear');
            end
        end
        
        function onTweenCompleted(tag)
            if tag == 'byebyew' then
                removeLuaSprite('image2wow', true);
            end
        end
    end
end