Citizen.CreateThread(function()
    local playerPed = GetPlayerPed(-1)
    local maxDistance = 10.0
    while true do
        Wait(1000)
        local allPedsDeadOrFar = true
        for i, ped in ipairs(generatedPeds) do
            if not isPedDeadOrFar(ped, playerPed, maxDistance) then
                allPedsDeadOrFar = false
                break
            end
        end

        if allPedsDeadOrFar and #generatedPeds > 0 then
            local reward = getRandomReward()
            end
            generatedPeds = {}
        end
    end
end)