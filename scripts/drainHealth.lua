function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.02);
	end
end     
function onCreatePost()
   setProperty('health', 0.5)
end

function onSongStart()
   setProperty('health', 0.5)
end