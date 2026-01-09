local Null = "NULL_00000000-0000-0000-0000-000000000000"

local EOWildlandsFlag = "MMM_EO_f3b64392-62a1-481b-bf70-9e40e374d26a"
local EOCrecheFlag = "MMM_EO_748ac83f-4bda-4364-be0e-f1d93d095fea"
local EOShadowlandsFlag = "MMM_EO_9fa120d5-f718-440a-91be-e41fc503f464"
local EOBGOFlag = "MMM_EO_478b90fe-2a9d-4d36-8aa9-1022ead8afb9"
local EOCityFlag = "MMM_EO_e599c58c-b35d-4115-93ff-3846760065cd"

local EOKuotoa1 = "EO_Kuotoa_1_2fe368c9-b693-4503-a8ed-39cba90f3635"
local EOKuotoa2 = "EO_Kuotoa_2_d7deae1e-95d1-4576-a42d-9f83c83283a1"
local EOKuotoa3 = "EO_KuoToa_HighPriest_1_a6b1515b-1f3d-487b-a649-b00223a09b7b"

local EOMindflayer = "EO_Mindflayer_2_ae53e44d-e27a-41af-b20f-47fa9c0fa653"

local EOOrzuk = "EO_Kobold_Leader_328b6afc-85d8-490d-bc43-dc58daf3039e"

local EOSharran1 = "EO_DefiledTemple_Gloomstalker_Ranger_6ebc6b87-eaeb-4d3b-afac-ddff545d3019"
local EOSharran2 = "EO_Justiciar_DefiledTemple_2_0e473c58-f86f-4952-a8c8-73e8ffb348c6"
local EOSharran3 = "EO_Justiciar_DefiledTemple_1_8c816816-0be7-42b1-a0ff-1960b0172658"
local EOSharran4 = "EO_DefiledTemple_Trickery_Cleric_fc83ce47-3ce0-4be5-b1bc-83501cb10251"

local DrowAssassin1 = "MMM_DROWASSASSIN_fc6882a1-2ed2-4d0d-8a59-86e8b5467d7f"

local EODryad = "EO_SCL_Dryad_d2d935cd-6113-4eab-8e78-c45bc34dd90b"

-- Osi.TeleportToPosition(sourceObject, x, y, z, "", 0, 0, 1, 1, 1)

Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level_name, is_editor_mode)
    if (level_name == "WLD_Main_A") then 
        if Osi.GetFlag(EOWildlandsFlag, Null) == 0 then
            Osi.SetFlag(EOWildlandsFlag, Null, 0, 1)
            Osi.TeleportToPosition(EOKuotoa1, 200.13059997559, 0.4375, 238.78073120117, "", 0, 0, 1, 1, 1)
            Osi.TeleportToPosition(EOKuotoa2, 189.53965759277, 0.4736328125, 241.78369140625, "", 0, 0, 1, 1, 1)
            Osi.TeleportToPosition(EOKuotoa3, 195.07652282715, 1.7158203125, 238.11259460449, "", 0, 0, 1, 1, 1)
            Osi.TeleportToPosition(EOMindflayer, 191.87202453613, 8.921875, 300.17535400391, "", 0, 0, 1, 1, 1)
            Osi.TeleportToPosition(EOOrzuk, 150.47071838379, 38.6611328125, 362.86276245117, "", 0, 0, 1, 1, 1)
            Osi.SetCombatGroupID(EOOrzuk, "0a932f83-3101-4d7c-a300-743673d0e221")
            Osi.TeleportToPosition(EOSharran1, 437.6178894043, 21.09375, 96.11695098877, "", 0, 0, 1, 1, 1)
            Osi.TeleportToPosition(EOSharran2, 439.25, 20.879220962524, 94.25, "", 0, 0, 1, 1, 1)
            Osi.TeleportToPosition(EOSharran3, 441.64297485352, 20.030555725098, 94.001274108887, "", 0, 0, 1, 1, 1)
            Osi.TeleportToPosition(EOSharran4, 438.54443359375, 20.030555725098, 98.648094177246, "", 0, 0, 1, 1, 1)
            Osi.TeleportToPosition(DrowAssassin1, -78.985908508301, 36.4228515625, 579.1787109375, "", 0, 0, 1, 1, 1)
        end
    elseif (level_name == "CRE_Main_A") then 
        return
    elseif (level_name == "SCL_Main_A") then 
        if Osi.GetFlag(EOShadowlandsFlag, Null) == 0 then
            Osi.SetFlag(EOShadowlandsFlag, Null, 0, 1)
            Osi.SetOnStage(EODryad, 0)
        end
    elseif (level_name == "BGO_Main_A") then 
        return
    elseif (level_name == "CTY_Main_A") then 
        return
    end
end)