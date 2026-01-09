print("Many More Monsters Debug Listener Loaded")

function GetNearbyCharacters(radius)
    local sourceEntity = Ext.Entity.Get(Osi.GetHostCharacter())
    local nearbyCharacters = {}
    if sourceEntity then
        local pos = sourceEntity.Transform.Transform.Translate
        for _, entity in ipairs(Ext.Entity.GetAllEntitiesWithComponent("BaseHp")) do
            if entity.ServerCharacter ~= nil then
                local target = entity.Transform.Transform.Translate
                local distance = math.sqrt((pos[1] - target[1])^2 + (pos[2] - target[2])^2 + (pos[3] - target[3])^2)
                if distance <= radius then
                    table.insert(nearbyCharacters, {
                        Entity = entity,
                        Guid = entity.Uuid.EntityUuid,
                        Name = entity.ServerCharacter.Template.Name,
                        Distance = distance,
                        Handle = Ext.Loca.GetTranslatedString(entity.DisplayName.NameKey.Handle.Handle),
                    })
                end
            end
        end
    end

    table.sort(nearbyCharacters, function(a,b) return a.Distance < b.Distance end)
    return nearbyCharacters
end

-- Ext.Osiris.RegisterListener("DoorTemplateClosing", 3, "after", function(itemTemplate, item2, character)
--     _D{"DoorTemplateClosing;", {
--         itemTemplate = itemTemplate,
--         item2 = item2,
--         chraacter = chraacter
--     }}
-- end)

-- Ext.Osiris.RegisterListener("ScreenFadeCleared", 2, "after", function(userID, fadeID)
--     _D{"ScreenFadeCleared;", {
--         userID = userID,
--         fadeID = fadeID
--     }}
-- end)

-- Ext.Osiris.RegisterListener("ScreenFadeDone", 2, "after", function(userID, fadeID)
--     _D{"ScreenFadeDone;", {
--         userID = userID,
--         fadeID = fadeID
--     }}
-- end)

-- Ext.Osiris.RegisterListener("Teleported", 9, "after", function(target, cause, oldX, oldY, oldZ, newX, newY, newZ, spell)
--     _D{"Teleported;", {
--         target = target,
--         oldX, oldY, oldZ = oldX, oldY, oldZ,
--         newX, newY, newZ = newX, newY, newZ,
--         spell = spell
--     }}
-- end)

-- Ext.Osiris.RegisterListener("EntityEvent", 2, "after", function(object, event)
--     _D{"EntityEvent;", {
--         object = object,
--         event = event
--     }}
-- end)

-- Ext.Osiris.RegisterListener("FlagSet", 3, "after", function(flag, speaker, dialogInstance)
--     _D{"FlagSet;", {
--         flag = flag,
--         speaker = speaker,
--         dialogInstance = dialogInstance
--     }}
-- end)

-- Ext.Osiris.RegisterListener("FlagLoadedInPresetEvent", 2, "after", function(object, flag)
--     _D{"FlagLoadedInPresetEvent;", {
--         object = object,
--         flag = flag
--     }}
-- end)

-- Ext.Osiris.RegisterListener("StatusApplied", 4, "before", function(object, status, cause, storyActionID)
--     _D{"StatusApplied;", {
--         object = object,
--         status = status,
--         cause = cause,
--         storyActionID = storyActionID
--     }}
-- end)

-- Ext.Osiris.RegisterListener("StatusTagSet", 5, "after", function(target, tag, sourceOwner, source2, storyActionID)
--     _D{"StatusTagSet;", {
--         target = target,
--         tag = tag,
--         sourceOwner = sourceOwner,
--         source2 = source2,
--         storyActionID = storyActionID
--     }}
-- end)

-- Ext.Osiris.RegisterListener("TagEvent", 2, "after", function(tag, event)
--     _D{"TagEvent;", {
--         tag = tag,
--         event = event
--     }}
-- end)

-- Ext.Osiris.RegisterListener("AutomatedDialogStarted", 2, "after", function(dialogresource, integer)
--     _D{"DialogStarted;", {
--         dialogresource = dialogresource,
--         integer = integer
--     }}
-- end)

-- Ext.Osiris.RegisterListener("NestedDialogPlayed", 2, "after", function(dialogresource, integer)
--     _D{"DialogStarted;", {
--         dialogresource = dialogresource,
--         integer = integer
--     }}
-- end)

-- Ext.Osiris.RegisterListener("RollResult", 6, "after", function(eventName, roller, rollsubject, resultType, isActiveRoll, criticality)
--     _D{"RollResult;", {
--         eventName = eventName,
--         roller = roller,
--         rollsubject = rollsubject,
--         resultType = resultType,
--         isActiveRoll = isActiveRoll,
--         criticality = criticality
--     }}
-- end)

-- Ext.Osiris.RegisterListener("Saw", 3, "after", function(character, targetcharacter, targetwassneaking)
--     _D{"Saw;", {
--         character = character,
--         targetcharacter = targetcharacter,
--         targetwassneaking = targetwassneaking
--     }}
-- end)

-- Ext.Osiris.RegisterListener("Died", 1, "after", function(character)
--     _D{"Died;", {
--         character = character
--     }}
-- end)

-- Ext.Osiris.RegisterListener("ObjectTransformed", 2, "after", function(object, toTemplate)
--     _D{"ObjectTransformed;", {
--         object = object,
--         toTemplate = toTemplate
--     }}
-- end)

-- Ext.Osiris.RegisterListener("DestroyedBy", 4, "after", function(item, destroyer, destroyerOwner, storyActionID)
--     _D{"DestroyedBy;", {
--         item = item,
--         destroyer = destroyer,
--         destroyerOwner = destroyerOwner,
--         storyActionID = storyActionID
--     }}
-- end)

-- Ext.Osiris.RegisterListener("DroppedBy", 2, "after", function(object, mover)
--     _D{"DroppedBy;", {
--         object = object,
--         mover = mover
--     }}
-- end)

-- Ext.Osiris.RegisterListener("WentOnStage", 2, "after", function(object, isOnStageNow)
--     _D{"WentOnStage;", {
--         object = object,
--         isOnStageNow = isOnStageNow
--     }}
-- end)

-- Ext.Osiris.RegisterListener("UseStarted", 2, "after", function(character, item)
--     _D{"UseStarted;", {
--         character = character,
--         item = item
--     }}
-- end)

-- Ext.Osiris.RegisterListener("TurnStarted", 1, "after", function(object)
--     _D{"TurnStarted;", {
--         object = object
--     }}
-- end)

-- Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function(caster, target, spell, spellType, spellElement, storyActionID)
--     _D{"UsingSpellOnTarget;", {
--         caster = caster,
--         target = target,
--         spell = spell,
--         spellType = spellType,
--         spellElement = spellElement,
--         storyActionID = storyActionID
--     }}
-- end)

-- Ext.Osiris.RegisterListener("DialogStartRequested", 2, "after", function(target, player)  
--     _D{"DialogStartRequested;", {
--         target = target,
--         player = player
--     }}
-- end)

-- Ext.Osiris.RegisterListener("GameBookInterfaceClosed", 2, "after", function(item, character)
--     _D{"GameBookInterfaceClosed;", {
--         item = item,
--         character = character
--     }}
-- end)