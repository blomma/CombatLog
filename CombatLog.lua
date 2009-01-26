local IsInInstance = IsInInstance

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(frame, arg1)
	local inInstance, instanceType = IsInInstance()
	if( inInstance and instanceType == "raid" ) then
		LoggingCombat(1)
	else
		LoggingCombat(0)
	end
	
	if LoggingCombat() then
		DEFAULT_CHAT_FRAME:AddMessage( "Combat log enabled" )
	else
		DEFAULT_CHAT_FRAME:AddMessage( "Combat log disabled" )
	end
end)