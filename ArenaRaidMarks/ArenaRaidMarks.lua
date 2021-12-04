local function SetMarks()
    SetRaidTarget("player", 5)
    SetRaidTarget("party1", 6)
    SetRaidTarget("party2", 7)
    SetRaidTarget("party3", 8)
end

local f = CreateFrame("Frame")
f:RegisterEvent("PARTY_MEMBERS_CHANGED")

function f:OnEvent(event)
    if event == "PARTY_MEMBERS_CHANGED" then
        setMarks()
    end
end

f:SetScript("OnEvent", f.OnEvent)
