local soundPlayed = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if vehicle and IsPedInAnyPlane(playerPed) then
            local speed = GetEntitySpeed(vehicle) * 3.6
            if speed > Config.SonicBoomKmh and not soundPlayed then
                TriggerServerEvent('InteractSound_SV:PlayOnAll', 'sonicboom', 1)
                soundPlayed = true
            elseif speed <= Config.SonicBoomKmh then
                soundPlayed = false
            end
        end
    end
end)

if Config.EnableSpeedHardlimit then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            local playerPed = GetPlayerPed(-1)
            if IsPedInAnyVehicle(playerPed, false) then
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                local speed = GetEntitySpeed(vehicle) * 3.6
                local name = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
                local limitByName = Config.SpeedLimitsByName[name]
                if limitByName and speed > limitByName then
                    SetEntityMaxSpeed(vehicle, limitByName / 3.6)
                else
                    SetEntityMaxSpeed(vehicle, Config.SpeedHardLimitOthers / 3.6)
                end
            end
        end
    end)
end


if Config.EnableUnlimitedWorldBorder then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            SetDeepOceanScaler(0.0)
            ExtendWorldBoundaryForPlayer(
                2147483647,
                2147483647,
                2147483647
            )
        end
    end)
end
