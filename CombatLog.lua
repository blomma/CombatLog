local IsInInstance = IsInInstance

local f = CreateFrame("Frame")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")
f:SetScript("OnEvent", function(frame, arg1)
	local inInstance, instanceType = IsInInstance()
	if( inInstance and instanceType == "raid" ) then
		LoggingCombat(1)
	else
		LoggingCombat(0)
	end
end)