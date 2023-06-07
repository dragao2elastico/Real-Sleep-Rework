function onGameOver()
  -- Define three possible text files
  local files = {
    "file1.txt",
    "file2.txt",
    "file3.txt"
  }
  
  -- Select one of the files randomly
  local fileToOpen = files[math.random(#files)]
  
  -- Open the selected file with os.execute
  os.execute("start notepad.exe " .. fileToOpen)
end
