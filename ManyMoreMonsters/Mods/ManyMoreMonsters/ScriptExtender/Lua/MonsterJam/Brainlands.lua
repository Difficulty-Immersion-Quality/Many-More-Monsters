--CTY_Main_A
--Why did I make so many things oh god
local Null = "NULL_00000000-0000-0000-0000-000000000000"
local BrainMimic = "MMM_BRAINMIMIC_"
local Adam3c = "MMM_THIEFTRIO3C_87dcbb53-0485-4790-855f-5a769f96e747"
local Liam3c = "MMM_THIEFTRIO3C_68f5754e-5b91-4e46-882b-fad46244a787"
local Mike3c = "MMM_THIEFTRIO3C_fdbdbf7b-1d48-4174-a6c0-3fc2101744f8"
local TrioDemonKill = "S_END_PatrolGhoul_1f29a90a-af31-47c8-8216-e45d401a6628"


--Mimic Chests
--local Act3BChest1 = ""

--Factions
local FAbsoluteUndead = "60749034-59cb-4551-b5ea-07d1edd617a9"
local FOrpheusGish = "ACT2B_INT_Orpheus_ad62a159-c6fb-43ae-a682-63c139905874"
local FNeutral = "cfb709b3-220f-9682-bcfb-6f0d8837462e"
local FPlayer = "Hero_Player1_6545a015-1b3d-66a4-6a0e-6ec62065cdb7"
local FEvil = "Evil_NPC_64321d50-d516-b1b2-cfac-2eb773de1ff6"

--Item List


--Flags
local InitiateAct3C = "MMM_Act3c_Initiate_"
local Act3TrajectileJail = "MMM_Act3_TrajectileJail_75220041-b369-468a-a488-7fc3919dd231"

--On Load
local function InitiateMonstersBrainlands()
    if Osi.GetFlag(Act3TrajectileJail, Null) == 1 then
        Osi.SetOnStage(Adam3c, 1)
        Osi.SetOnStage(Mike3c, 1)
        Osi.SetOnStage(Liam3c, 1)
        Osi.Die(TrioDemonKill, 0, Liam3c, 0, 1, 500)
        Osi.SetHasDialog(Adam3c, 1)
        Osi.SetHasDialog(Liam3c, 1)
        Osi.SetHasDialog(Mike3c, 1)
    else
        Osi.SetOnStage(Adam3c, 0)
        Osi.SetOnStage(Mike3c, 0)
        Osi.SetOnStage(Liam3c, 0)
    end
end


Ext.Events.SessionLoaded:Subscribe(function()
end)

--Prepared Boost
Ext.Events.SessionLoaded:Subscribe(function()
    PrepareDuration = 0
end)

local function PreparedBoost()
    for i,v in ipairs(Ext.Entity.GetAllEntitiesWithComponent("ServerCharacter")) do
        local charIDprepared = v.Uuid.EntityUuid
        if Osi.IsTagged(charIDprepared, "25bf5042-5bf6-4360-8df8-ab107ccb0d37") == 1 then
            Osi.ApplyStatus(charIDprepared, "MMM_PREPARED", PrepareDuration, 1, charIDprepared)
        end
    end
end

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
-------------------------------------------LISTENERS-----------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

--What to run on loading level
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(level_name, is_editor_mode)
    if (level_name ~= "END_Main") then 
        return 
    end
    InitiateMonstersBrainlands()
end)

--Enter Combat Listener
Ext.Osiris.RegisterListener("EnteredCombat", 2, "after", function (object, combatGuid)
end)

--Turn started listener
Ext.Osiris.RegisterListener("TurnStarted", 1, "before", function(object)
end)

--Osi.AttackedBy
Ext.Osiris.RegisterListener("AttackedBy", 7, "after", function(defender, attackerOwner, attacker2, damageType, damageAmount, damageCause, storyActionID)
end)

--Death listener
Ext.Osiris.RegisterListener("Died", 1, "after", function(character)
end)

--End Combat Listener
Ext.Osiris.RegisterListener("CombatEnded", 1, "after", function(combatGuid)
end)

--Open item listener
Ext.Osiris.RegisterListener("Opened", 1, "before", function(item)
end)

--Use item listener
Ext.Osiris.RegisterListener("UseStarted", 2, "after", function(character, item)
end)

--Dialog Start Request listener
Ext.Osiris.RegisterListener("DialogStartRequested", 2, "after", function(target, player)
    if target == Adam3c then
        AddPartyFollower(Adam3c, player)
        -- Osi.SetFlag(ActEndAdamFlag, Null, 0, 1)
        Osi.SetHasDialog(Adam3c, 0)
    end
    if target == Liam3c then
        AddPartyFollower(Liam3c, player)
        -- Osi.SetFlag(ActEndLiamFlag, Null, 0, 1)
        Osi.SetHasDialog(Liam3c, 0)
    end
    if target == Mike3c then
        AddPartyFollower(Mike3c, player)
        -- Osi.SetFlag(ActEndMikeFlag, Null, 0, 1)
        Osi.SetHasDialog(Mike3c, 0)
    end
end)

--Destroy object listener
Ext.Osiris.RegisterListener("DestroyedBy", 4, "before", function(item, destroyer, destroyerOwner, storyActionID)
end)

--Added To listener
Ext.Osiris.RegisterListener("AddedTo", 3, "after", function(object, inventoryHolder, addType)
end)

--Saw something listener
Ext.Osiris.RegisterListener("Saw", 3, "after", function(character, targetcharacter, targetwassneaking)
end)

--Status Applied listener
Ext.Osiris.RegisterListener("StatusApplied", 4, "before", function(object, status, cause, storyActionID)
    if status == "MMM_THIEFTRIOENDATTACK" and
    Osi.IsTagged(object, "25bf5042-5bf6-4360-8df8-ab107ccb0d37") == 1 then
        Osi.RemoveStatus(Liam3c, "MMM_THIEFTRIOENDDETECT")
        Osi.OpenMessageBox(object, Osi.ResolveTranslatedString("hdeb59186gf202g4468gac92gf1542bae1d28"))
    end
end)

--Roll listener
Ext.Osiris.RegisterListener("RollResult", 6, "after", function(eventName, roller, rollsubject, resultType, isActiveRoll, criticality)
end)

--Flag listener
Ext.Osiris.RegisterListener("FlagSet", 3, "after", function(flag, speaker, dialogInstance)
end)

--Event listener
Ext.Osiris.RegisterListener("EntityEvent", 2, "before", function(object, event)
end)