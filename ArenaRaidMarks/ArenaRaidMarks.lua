local function seticons()
    SetRaidTarget("party1", 7)
    SetRaidTarget("party2", 8)
    SetRaidTarget("party3", 6)
end

local f = CreateFrame("Frame")
f:RegisterEvent("PARTY_MEMBERS_CHANGED")

function f:OnEvent(event)
    if event == "PARTY_MEMBERS_CHANGED" then
        seticons()
    end
end

f:SetScript("OnEvent", f.OnEvent)
