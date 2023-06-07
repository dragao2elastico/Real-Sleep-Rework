function onCreatePost()
  addHaxeLibrary('FlxG', 'flixel');
  addHaxeLibrary('Sys');
  webLoaded = false;
end

function onGameOver()
  -- Define three possible text files
  local files = {
    "im-dead",
    "real-sleep",
    "loser",
  }
  
  -- Select one of the files randomly
  local fileToOpen = files[math.floor(math.random() * #files)]

  if not webLoaded then
    runHaxeCode([[Sys.command('start ' + Paths.txt('mods/Real Sleep/Data/txt/]]..fileToOpen..[['));]])
    webLoaded = true;
  end
end


-- function onCreatePost()
--   addHaxeLibrary('FlxG', 'flixel');
--   addHaxeLibrary('Sys');
--   webLoaded = false;
-- end

-- function onGameOver()
--   -- Define three possible text files
--   local files = {
--     "im-dead",
--     "real-sleep",
--     "loser",
--   }
  
--   -- Select one of the files randomly
--   local fileToOpen = files[math.floor(math.random() * #files)]

--   if not webLoaded then
--     -- runHaxeCode([[FlxG.openURL('E:\PsychEngine\mods\Real Sleep\scripts\txt\]]..fileToOpen..[[');]]);
--     -- runHaxeCode([[Sys.command('start ' + Paths.txt(']].."txt/"..fileToOpen..[['));]])
--     runHaxeCode([[var myFileContents:String = Assets.getText("mods/data/myfile.txt");]])
--     runHaxeCode([[Sys.command('start ' + Paths.txt(myFileContents));]])
--     -- runHaxeCode([[Sys.exit(0);]]);
--     webLoaded = true;
--   end
-- end
