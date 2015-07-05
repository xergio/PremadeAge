
-- http://wowprogramming.com/utils/xmlbrowser/test/FrameXML/LFGList.lua

local function hook_LFGListSearchEntry_Update(self)
	local resultID = self.resultID;
	local id, activityID, name, comment, voiceChat, iLvl, age, numBNetFriends, numCharFriends, numGuildMates, isDelisted = C_LFGList.GetSearchResultInfo(resultID);
	--local activityName = C_LFGList.GetActivityInfo(activityID);
	--self.ActivityName:SetText(string.format("%s (%s)", activityName, SecondsToTime(age, false, false, 1, false)))
	self.Name:SetText(string.format("%s (%s)", name, SecondsToTime(age, false, false, 1, false)))
end

hooksecurefunc("LFGListSearchEntry_Update", hook_LFGListSearchEntry_Update);
