Citizen.CreateThread(function()
    SetDiscordAppId(Options.AppID)
    SetDiscordRichPresenceAsset(Options.AssetName)
    SetDiscordRichPresenceAssetText("")

    while true do
        SetRichPresence(Discord:GetStatus())
        Citizen.Wait(2500)
    end
end)