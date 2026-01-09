local Karlach = "S_Player_Karlach_2c76687d-93a2-477b-8b18-8a14b549304c"
local Minsc = "S_Player_Minsc_0de603c5-42e2-4811-9dad-f652de080eba"
local Minthara = "S_GOB_DrowCommander_25721313-0c15-4935-8176-9f134385451b"
local Halsin = "S_GLO_Halsin_7628bc0e-52b8-42a7-856a-13a6fd413323"
local Jaheira = "S_Player_Jaheira_91b6b200-7d00-4d62-8dc9-99e8339dfa1a"
local Gale = "S_Player_Gale_ad9af97d-75da-406a-ae13-7071c563f604"
local Astarion = "S_Player_Astarion_c7c13742-bacd-460a-8f65-f864fe41f255"
local Laezel = "S_Player_Laezel_58a69333-40bf-8358-1d17-fff240d7fb12"
local Wyll = "S_Player_Wyll_c774d764-4a17-48dc-b470-32ace9ce447d"
local Shadowheart = "S_Player_ShadowHeart_3ed74f06-3c60-42dc-83f6-f034cb47c679"
local MountainChicken = "MMM_CHICKENRUN_42bd9bf1-80d8-42ee-a9a1-312ce9e630a0"
local MountainGob1 = "MMM_MOUNTAINGOBS_68304a4f-95ae-4a67-8626-5daf30725d5e"

Ext.Osiris.RegisterListener("EnteredCombat", 2, "after", function (object, combat)
    --Remove Ambush from enemies in combat
    if Osi.HasActiveStatus(object, "AMBUSHING") then
        Osi.RemoveStatus(object, "AMBUSHING")
    end
end)

--Animal Saved--
--Act One
-- Wilderness Campsite: This is the primary campsite the party visit when in the Wilderness or its outdoor locations.
-- TeleportToPosition(GetHostCharacter(), -644.44354248047, 0.0, -186.83346557617)

-- Overgrown Chapel Campsite: Interior of the Overgrown Ruins or inside the Shattered Sanctum of the Goblin Camp.
-- TeleportToPosition(GetHostCharacter(), -827.49859619141, -0.0009765625, -77.206909179688)

-- Blighted Village (Basement) Campsite: In the basement / cellar of any home in the Blighted Village.
-- TeleportToPosition(GetHostCharacter(), -1084.6918945312, 3.0040740966797e-05, -23.621147155762)

-- Cavern Campsite: In the Whispering Depths.
-- TeleportToPosition(GetHostCharacter(), -854.74224853516, -0.025309756398201, -378.09487915039)

-- Underdark Campsite: In the primary Underdark region.
-- TeleportToPosition(GetHostCharacter(), -1086.0716552734, -0.56640625, -224.98709106445)

-- Underdark (Grymforge) In the Grymforge area of the Underdark.
-- TeleportToPosition(GetHostCharacter(), -978.81683349609, 13.9208984375, -370.20126342773)

-- Underground Campsite: In underground over-land regions such as the Zhentarim Basement or the Underground Passage.
-- TeleportToPosition(GetHostCharacter(), -853.39965820312, -0.0009765625, -232.33283996582)

-- Rosymorn Monastery Trail Campsite: In the main area of Rosymorn Monastery Trail.
-- TeleportToPosition(GetHostCharacter(), -400.93112182617, 26.252183914185, -1000.9058227539)

-- Crèche Y'llek Campsite: Inside Crèche Y'llek.
-- TeleportToPosition(GetHostCharacter(), 570.75732421875, 18.359375, -902.02197265625)

-- Act Two
-- Shadow-Cursed Lands Campsite: In many of the areas within the Shadow-Cursed Lands.
-- TeleportToPosition(GetHostCharacter(), )

-- The Last Light Inn Campsite: In the Last Light Inn location of the Shadow-Cursed Lands.
-- TeleportToPosition(GetHostCharacter(), )

-- The Gauntlet of Shar Campsite: In the Gauntlet of Shar.
-- TeleportToPosition(GetHostCharacter(), )

-- Moonrise Towers Campsite: In Moonrise Towers.
-- TeleportToPosition(GetHostCharacter(), )

-- Act Three
-- Wyrm's Lookout Campsite: Intermission after completing Act Two.
-- TeleportToPosition(GetHostCharacter(), )

-- Rivington Campsite: In Rivington or Wyrm's Rock.
-- TeleportToPosition(GetHostCharacter(), )

-- Baldur's Gate Alley Campsite: In the Lower City.
-- TeleportToPosition(GetHostCharacter(), )

-- Elfsong Tavern Suite
-- TeleportToPosition(GetHostCharacter(), )
