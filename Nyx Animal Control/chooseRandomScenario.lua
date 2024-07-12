function chooseRandomElement(tbl)
    local index = math.random(#tbl)
    return tbl[index]
end

function spawnPed(pedType, modelHash, x, y, z, heading)
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    local ped = CreatePed(pedType, modelHash, x, y, z, heading, true, true)
    return ped
end

function getRandomBehavior()
    local behaviors = {'Aggressive', 'Flee', 'Ashamed', 'Calm'}
    return behaviors[math.random(#behaviors)]
end

function applyBehavior(ped, behavior)
    Config.PedBehavior[behavior](ped)
end

function isSafeSpawnLocation(x, y, z, radius)
    local playerPed = GetPlayerPed(-1)
    local safe = true
    local nearbyPeds = GetNearbyPeds(x, y, z, radius, playerPed)

    for i = 1, #nearbyPeds do
        if DoesEntityExist(nearbyPeds[i]) then
            safe = false
            break
        end
    end

    return safe
end

function getSafeSpawnLocation(x, y, z, radius)
    local safeX, safeY, safeZ = x, y, z
    local attempts = 0
    local maxAttempts = 10

    while not isSafeSpawnLocation(safeX, safeY, safeZ, radius) and attempts < maxAttempts do
        safeX = x + math.random(-radius, radius)
        safeY = y + math.random(-radius, radius)
        safeZ = z
        attempts = attempts + 1
    end

    return safeX, safeY, safeZ
end

function handleScenario(scenario)
    if scenario == 'Vagrancy' then
        local pedType = 26 -- Homeless
        local model = chooseRandomElement(Config.Peds.homeless)
        local x, y, z, heading = 0.0, 0.0, 72.0, 0.0 -- Replace with actual coordinates
        local safeX, safeY, safeZ = getSafeSpawnLocation(x, y, z, 5.0)
        local ped = spawnPed(pedType, model, safeX, safeY, safeZ, heading)
        applyBehavior(ped, getRandomBehavior())
    elseif scenario == 'FarmerTaboo' then
        local farmer = spawnPed(26, chooseRandomElement(Config.Peds.farmer), 0.0, 0.0, 72.0, 0.0)
        local livestock = spawnPed(28, chooseRandomElement(Config.Peds.livestock), 0.0, 0.0, 72.0, 0.0)
        applyBehavior(farmer, getRandomBehavior())
        applyBehavior(livestock, getRandomBehavior())
    elseif scenario == 'HankyPanky' then
        local groups = {Config.Peds.men, Config.Peds.women, Config.Peds.farmer, Config.Peds.homeless}
        for i = 1, math.random(2, 3) do
            local group = chooseRandomElement(groups)
            local x, y, z = 0.0, 0.0, 72.0 -- Replace with actual coordinates
            local safeX, safeY, safeZ = getSafeSpawnLocation(x, y, z, 5.0)
            local ped = spawnPed(26, chooseRandomElement(group), safeX, safeY, safeZ, 0.0)
            applyBehavior(ped, getRandomBehavior())
        end
    elseif scenario == 'Ocean' then
        local fish = spawnPed(28, chooseRandomElement(Config.Peds.fish), 0.0, 0.0, 72.0, 0.0)
        applyBehavior(fish, getRandomBehavior())
    elseif scenario == 'Pool' then
        local poolPed = spawnPed(28, chooseRandomElement(Config.Peds.fish), 0.0, 0.0, 72.0, 0.0)
        applyBehavior(poolPed, getRandomBehavior())
    elseif scenario == 'Infestation' then
        for i = 1, 10 do
            local rat = spawnPed(26, chooseRandomElement(Config.Peds.critters), 0.0, 0.0, 72.0, 0.0)
            applyBehavior(rat, 'Flee')
        end
    elseif scenario == 'Animal' then
        local groups = {Config.Peds.critters, Config.Peds.livestock, Config.Peds.pets}
        for i = 1, math.random(1, 2) do
            local group = chooseRandomElement(groups)
            local x, y, z = 0.0, 0.0, 72.0 -- Replace with actual coordinates
            local safeX, safeY, safeZ = getSafeSpawnLocation(x, y, z, 5.0)
            local animal = spawnPed(28, chooseRandomElement(group), safeX, safeY, safeZ, 0.0)
            applyBehavior(animal, getRandomBehavior())
        end
    end
end

Citizen.CreateThread(function()
    while true do
        Wait(0)
        if IsControlJustReleased(0, 24) then -- Left Mouse Button
            local scenario = chooseRandomElement(Config.ChooseScenario)
            handleScenario(scenario)
        end
    end
end)