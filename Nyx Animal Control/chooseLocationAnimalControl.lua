-- Load the configuration file
dofile("ChooseLocation.lua")

-- Function to choose a random location
local function getRandomLocation()
    local randomIndex = math.random(#locations)
    return locations[randomIndex]
end

-- Function to choose a random item
local function getRandomItem()
    local randomIndex = math.random(#items)
    return items[randomIndex]
end

-- Main function to choose a random location and a random item within that location
local function chooseRandomLocationAndItem()
    local location = getRandomLocation()
    local item = getRandomItem()
    print("Random Location: " .. location.name .. " (x: " .. location.x .. ", y: " .. location.y .. ", z: " .. location.z .. ")")
    print("Random Item: " .. item)
end

-- Trigger the main function
chooseRandomLocationAndItem()