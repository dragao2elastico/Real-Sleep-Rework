function onGameOver()
  -- Define three possible links
  local links = {
    "https://www.link1.com",
    "https://www.link2.com",
    "https://www.link3.com"
  }
  
  -- Select one of the links randomly
  local linkToOpen = links[math.random(#links)]
  
  -- Open the selected link with os.execute
  os.execute("start " .. linkToOpen)
end
