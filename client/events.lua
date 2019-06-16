AddEventHandler("discord:lock", function() Discord:Lock() end)
AddEventHandler("discord:unlock", function() Discord:Unlock() end)
AddEventHandler("discord:resetCustom", function() Discord:ResetCustom() end)
AddEventHandler("discord:setCustom", function(presence) Discord:SetCustom(presence) end)
