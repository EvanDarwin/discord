function DetermineCurrentActivity()
    local ped = GetPlayerPed(-1)

    if IsPedInAnyVehicle(ped, false) then
        local MPH_FACTOR = 2.23693629
        local speed_mph  = GetEntitySpeed(ped) * MPH_FACTOR

        if IsPedGettingIntoAVehicle(ped) then
            return "Getting into a Vehicle"
        end

        if speed_mph > 85 then
            return "Speeding down " .. GetCurrentStreet()
        end

        if speed_mph == 0.0 then
            return "Idling on " .. GetCurrentStreet()
        end

        return "Driving on " .. GetCurrentStreet()
    end

    if IsPedRunning(ped) then
        return "Running down " .. GetCurrentStreet()
    end

    -- default is standing
    return "Standing on " .. GetCurrentStreet()
end

function GetCurrentStreet()
    local ped    = GetPlayerPed(PlayerId())
    local coords = GetEntityCoords(ped)
    return GetStreetNameFromHashKey(GetStreetNameAtCoord(coords.x, coords.y, coords.y))
end