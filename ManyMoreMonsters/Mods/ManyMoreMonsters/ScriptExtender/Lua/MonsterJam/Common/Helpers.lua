-- ==================================== Helpers ====================================
-- Load with: local Helpers = Ext.Require("MonsterJam/Common/Helpers.lua")

local Helpers = {}

-- ==================================== Overhead dialogue
-- TODO: This could be more robust than just checking SG_Silenced.

function Helpers.SpeakOverhead(character, speakOverheadStatus)
    if Osi.HasActiveStatus(character, "SG_Silenced") == 0 then
        Osi.ApplyStatus(character, speakOverheadStatus, -1, 1, "")
    else
        Osi.ApplyStatus(character, "MMM_SPEAKOVERHEAD_BLOCKED", -1, 1, "")
    end
end

-- ==================================== Helpers - UUID
-- Osiris gives objects and flags as "Name_uuid", this cuts it down to the uuid so comparisons work either way

function Helpers.UUID(guid)
    return guid and string.sub(guid, -36) or nil
end

return Helpers
