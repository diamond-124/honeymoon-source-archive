function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.7 then
        setProperty('health', health- 0.018);
    end
end