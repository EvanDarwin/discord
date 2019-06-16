Discord = { active = false, customStatus = nil, locked = false }

function Discord:SetActive(value)
    self.active = value
end

function Discord:Lock()
    self.locked = true
end

function Discord:Unlock()
    self.locked = false
end

function Discord:GetStatus()
    return self.customStatus or DetermineCurrentActivity()
end

function Discord:SetCustom(presence)
    if self.locked == false then
        self.customStatus = presence
    end
end

function Discord:ResetCustom()
    self.customStatus = nil
    self.locked = false
end