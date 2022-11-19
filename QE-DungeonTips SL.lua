--[[
Questionably Epic Mythic+ Dungeon Tips
Version: 5.0 (Shadowlands)
Developed by: Voulk
Contact: 
	Discord: Voulk#1858
	Email: itsvoulk@gmail.com
	
	
Special Thanks:
 - CoV (testing & support)
 - Everyone who helped test the addon and support the site 
	

--Shorthand--

Defensives {Defensive: SpellName}
Interrupts {Interrupt: SpellName (SpellEffect)}, {Stun Interrupt: SpellName (SpellEffect)}
Dispels {Dispel: SpellName (SpellEffect)}, {Purge: SpellName (SpellEffect)}
Positioning: {Spread: When}, {Stack: When}, {Dodge: SpellName (Area / description)}
Other: {Frontal Cleave (opt: tank dodgeable)}, {Healing CD: SpellName}, {ClassName: Specific Cheese}, {Priority DPS target}

--Examples--
Interrupt: Stone Bolt (heavy ST nuke)
Defensive: Arcing / Expel Light overlap
Healing CD: Slicing Maelstrom (every 25s)
Dispel: Brittle Bones (inc dmg taken)
Frontal Cleave: Razor Shards (tank dodgeable)
Druid: Shapeshift the Arcane Lockdown debuff

]]--

local _, addon = ...;



-- Color code information for the different types of tips:
-- Important:	Green
-- Interrupt:	Orange
-- Healer Note: Light Blue
-- Blank:		Default Blizzard color
local tipsColors = {
	["Legion"] = {0.8, 0.8, 0.8},
	["Important"] = {1,0.59,0.14},
	["Defensives"] = {1,0.57,0.12},
	["Interrupts"] = {0.37,0.92,1},
	["Dodge"] = {0.54,0.81,0.94},
	["PriorityTargets"] = {1, 1, 0},
	["Fluff"] = {1, 1, 1},
	["Advanced"] = {0.75, 0.55, 0.35},
	
	["HEALER"] = {0.2, 0.98, 0.25},
	["TANK"] = {0.8, 0.6, 0},	
	["DAMAGE"] = {1, 0.72, 0.68},
	
	
	--["DEMONHUNTER"] = {0.64, 0.19, 0.79},
	["DEMONHUNTER"] = {0.68, 0.22, 0.84},
	["DRUID"] = {1, 0.49, 0.04},
	["DEATHKNIGHT"] = {0.77, 0.12, 0.23},
	["HUNTER"] = {0.67, 0.83, 0.45},
	["MAGE"] = {0.41, 0.8, 0.94},
	["MONK"] = {0, 1, 0.59},
	["PALADIN"] = {0.96, 0.55, 0.73},
	["PRIEST"] = {1, 1, 1},
	["ROGUE"] = {1, 0.96, 0.41},
	["SHAMAN"] = {0, 0.44, 0.87},
	["WARRIOR"] = {0.78, 0.61, 0.43},
	["WARLOCK"] = {0.58, 0.51, 0.79}

}

local roleList = {
	TANK = true,
	HEALER = true,
	DAMAGE = true,
}

local classList =  {
	DEMONHUNTER = true,
	DRUID = true,
	DEATHKNIGHT = true,
	HUNTER = true,
	MAGE = true,
	MONK = true,
	PALADIN = true,
	PRIEST = true,
	ROGUE = true,
	SHAMAN = true,
	WARRIOR = true,
	WARLOCK = true
}

local iconList = {
	PriorityTargets = "ability_hunter_markedfordeath",
	Interrupts = "ability_kick",
	Defensives = "inv_shield_05",
	Important = "ability_dualwield",
	Legion = "ability_dualwield",
	Dodge = "ability_dualwield",
	
	DEMONHUNTER = "classicon_demonhunter",
	DRUID = "classicon_druid",		
	DEATHKNIGHT = "classicon_deathknight",
	HUNTER = "classicon_hunter",
	MAGE = "classicon_mage",
	MONK = "classicon_monk",
	PALADIN = "classicon_paladin",
	PRIEST = "classicon_priest",
	ROGUE = "classicon_rogue",
	SHAMAN = "classicon_shaman",
	WARRIOR = "classicon_warrior",
	WARLOCK = "classicon_warlock",
	
	HEALER = "spell_nature_healingtouch",
	TANK = "inv_shield_06",
	DAMAGE = "inv_sword_01"

}

addon.acceptedDungeons = {

	-- Shadowlands	
	[595] = true, -- Iron Docks
	[606] = true, -- Grimrail Depot
	[608] = true, -- Grimrail Depot
	[609] = true, -- Grimrail Depot
	
	[1683] = true, -- Theater of Pain
	[1684] = true, -- Theater of Pain
	[1685] = true, -- Theater of Pain
	[1686] = true, -- Theater of Pain
	[1687] = true, -- Theater of Pain
	[1663] = true, -- Halls of Atonement
	[1664] = true, -- Halls of Atonement
	[1665] = true, -- Halls of Atonement
	[1669] = true, -- Mists of Tirna Scithe
	[1674] = true, -- Plaguefall
	[1697] = true, -- Plaguefall
	[1675] = true, -- Sanguine Depths
	[1676] = true, -- Sanguine Depths
	[1692] = true, -- Spires of Ascension
	[1693] = true, -- Spires of Ascension
	[1694] = true, -- Spires of Ascension
	[1695] = true, -- Spires of Ascension
	[1666] = true, -- Necrotic Wake
	[1667] = true, -- Necrotic Wake
	[1668] = true, -- Necrotic Wake
	[1683] = true, -- Theater of Pain
	[1684] = true, -- Theater of Pain
	[1685] = true, -- Theater of Pain
	[1686] = true, -- Theater of Pain
	[1687] = true, -- Theater of Pain
	[1680] = true, -- De Other Side
	[1678] = true, -- De Other Side
	[1679] = true, -- De Other Side
	[1677] = true, -- De Other Side 
	
	-- Shadowlands (Torghast)
	[1618] = true,
	[1619] = true,
	[1620] = true, -- Torghast
	[1621] = true, -- Torghast
	[1623] = true, -- Torghast
	[1624] = true, -- Torghast
	[1627] = true, -- Torghast
	[1628] = true, -- Torghast
	[1629] = true, -- Torghast
	[1630] = true, -- Torghast
	[1631] = true, -- Torghast
	[1632] = true, -- Torghast
	[1635] = true, -- Torghast
	[1636] = true, -- Torghast
	[1641] = true, -- Torghast
	[1645] = true, -- Torghast
	[1721] = true, -- Torghast
	[1736] = true, -- Torghast
	[1749] = true, -- Torghast
	[1751] = true, -- Torghast
	[1752] = true, -- Torghast
	[1753] = true, -- Torghast
	[1754] = true, -- Torghast
	[1792] = true, -- Torghast
	[1787] = true, -- Torghast
	[1789] = true, -- Torghast
	[1791] = true, -- Torghast
	[1768] = true, -- Torghast
	[1764] = true, -- Torghast
	[1770] = true, -- Torghast
	[1801] = true, -- Torghast
	[1805] = true, -- Torghast
	[1807] = true, -- Torghast
	[1920] = true, -- Torghast
	[1921] = true, -- Torghast
	[1913] = true, -- Torghast
	[1914] = true, -- Torghast
	
	[1989] = true, -- Tazavesh
	[1990] = true, -- Tazavesh
	[1991] = true, -- Tazavesh
	[1992] = true, -- Tazavesh
	[1993] = true, -- Tazavesh
	[1994] = true, -- Tazavesh
	[1995] = true, -- Tazavesh
	[1996] = true, -- Tazavesh
	[1997] = true, -- Tazavesh
	

	-- BFA
	[1038] = true, -- Temple of Sethraliss
	[1043] = true, -- Temple of Sethraliss
	[934] = true, -- Atal'Dazar (MapUI = 934,  instance = 968))
	[935] = true, -- Atal'Dazar (MapUI = 934,  instance = 968))
	[936] = true, -- Freehold
	[1004] = true, -- Kings' Rest
	[1039] = true, -- Shrine of the Storm
	[1040] = true, -- Shrine of the Storm
	[1161] = true, -- Siege of Boralus
	[1162] = true, -- Siege of Boralus
	[1010] = true, -- Motherlode
	[1041] = true, -- Underrot
	[1042] = true, -- Tol Dagor
	[974] = true, -- Tol Dagor
	[975] = true, -- Tol Dagor
	[976] = true, -- Tol Dagor
	[977] = true, -- Tol Dagor
	[978] = true, -- Tol Dagor
	[979] = true, -- Tol Dagor (+1169!?)
	[980] = true, -- Tol Dagor
	[1169] = true, -- Tol Dagor
	[1015] = true, -- Waycrest Manor
	[1016] = true, -- Waycrest Manor
	[1017] = true, -- Waycrest Manor
	[1018] = true, -- Waycrest Manor
	
	[1148] = true, -- Uldir
	[1149] = true, -- Uldir
	[1150] = true, -- Uldir
	[1151] = true, -- Uldir
	[1152] = true, -- Uldir
	[1153] = true, -- Uldir
	[1154] = true, -- Uldir
	[1155] = true, -- Uldir
	
	[1490] = true, -- Mechagon Junkyard
	[1491] = true, -- Mechagon Workshop
	[1493] = true, -- Mechagon Workshop
	[1494] = true, -- Mechagon Workshop
	[1497] = true, -- Mechagon Workshop
	
	-- Legion
	[751] = true, -- Blackrook Hold
	[752] = true, -- Blackrook Hold
	[753] = true, -- Blackrook Hold
	[754] = true, -- Blackrook Hold
	[755] = true, -- Blackrook Hold
	[756] = true, -- Blackrook Hold
	[845] = true, -- Cathedral of Endless Night
	[846] = true, -- Cathedral of Endless Night
	[847] = true, -- Cathedral of Endless Night
	[848] = true, -- Cathedral of Endless Night
	[849] = true, -- Cathedral of Endless Night
	[761] = true, -- Court of Stars
	[762] = true, -- Court of Stars
	[763] = true, -- Court of Stars
	[733] = true, -- Darkheart Thicket
	[790] = true, -- Eye of Azshara
	[703] = true, -- Halls of Valor
	[704] = true, -- Halls of Valor
	[705] = true, -- Halls of Valor
	[829] = true, -- Halls of Valor
	[1] = true, -- Maw of Souls
	[731] = true, -- Neltharion's Lair
	[794] = true, -- Return to Karazhan
	[795] = true, -- Return to Karazhan
	[796] = true, -- Return to Karazhan
	[797] = true, -- Return to Karazhan
	[809] = true, -- Return to Karazhan
	[810] = true, -- Return to Karazhan
	[811] = true, -- Return to Karazhan
	[812] = true, -- Return to Karazhan
	[813] = true, -- Return to Karazhan
	[814] = true, -- Return to Karazhan
	[815] = true, -- Return to Karazhan
	[816] = true, -- Return to Karazhan
	[817] = true, -- Return to Karazhan
	[818] = true, -- Return to Karazhan
	[819] = true, -- Return to Karazhan
	[820] = true, -- Return to Karazhan
	[821] = true, -- Return to Karazhan
	[822] = true, -- Return to Karazhan
	[903] = true, -- Seat of the Triumvirate
	[749] = true, -- Arcway
	[677] = true, -- Vault of the Wardens
	[678] = true, -- Vault of the Wardens
	[679] = true, -- Vault of the Wardens
	[710] = true, -- Vault of the Wardens
	[711] = true, -- Vault of the Wardens
	[712] = true, -- Vault of the Wardens
	

	-- Dragonflight
	[429] = true, -- Temple of the Jade Serpent
	[430] = true, -- Temple of the Jade Serpent


	[1] = true -- Bookstop
	
}

local function RGBToHex(r, g, b)
	r = r <= 1 and r >= 0 and r or 0
	g = g <= 1 and g >= 0 and g or 0
	b = b <= 1 and b >= 0 and b or 0
	return string.format("%02x%02x%02x", r*255, g*255, b*255)
end


-- The addline function hooks into the WoW API to add a line to an NPC's tooltip.
local function addLine(tooltip, tips, type, role, class)
	local found = false
	-- Check if we already added to this tooltip. This prevents writing the same thing to the tooltip multiple times.
	for i = 1,15 do	
		local frame = _G[tooltip:GetName() .. "TextLeft" .. i]
		local text
		if frame then text = frame:GetText() end
		if text and text == type then found = true break end
	end
	

	-- If we haven't added to the NPC tooltip yet, proceed.
	if not found then
		-- Remember we are passing in an array {"HEALER", "HealersOnly"}} in our example so we'll iterate through each pair here.
		for i, tip in ipairs(tips) do
			-- tip[1] is the category indicator and we'll use that to decide whether we should show this tooltip or not.
			
			if QEConfig[tip[1]] or tip[1] == "Legion" or tip[1] == "Dodge" or -- Show if tip type turned on, or if it's using an old Legion tag.
				(tip[1] == role and QEConfig["RoleChoice"] == "Show my role only") or  -- Show if role matches the tip, and the user wants to see their role only.
				(roleList[tip[1]] and QEConfig["RoleChoice"] == "Show all roles") or -- Show if role tip and user wants to see all.
				
				(tip[1] == class and QEConfig["ClassChoice"] == "Show my class only") or
				(classList[tip[1]] and QEConfig["ClassChoice"] == "Show all classes") then
				
					local r,g,b = tipsColors[tip[1]][1], tipsColors[tip[1]][2], tipsColors[tip[1]][3]
					
					if iconList[tip[1]] then -- Check if Icon exists
						tooltip:AddLine((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]])..tip[2]),r,g,b)
					elseif tipsColors[tip[1]] then -- Check if color exists
						tooltip:AddLine(tip[2],r,g,b)
					else -- There is no icon or color assigned to the category so a plain line will be added instead.
						tooltip:AddLine(tip[2])
					end
			end
		end
		
		tooltip:Show() -- This is necessary to actually update the tooltip whenever we add anything to it.
	end
end

-- The addline function hooks into the WoW API to add a line to an NPC's tooltip.
local function addFrameLine(tooltip, tips, type, role, class)
	local found = false
	-- Check if we already added to this tooltip. This prevents writing the same thing to the tooltip multiple times.
	if not QE_HeaderPanel:IsVisible() then addon:setEnabled() end
	
	for i = 1,15 do	
		local frame = _G[tooltip:GetName() .. "TextLeft" .. i]
		local text
		if frame then text = frame:GetText() end
		if text and text == type then found = true break end
	end
	

	-- If we haven't added to the NPC tooltip yet, proceed.
	if not found then
		-- Remember we are passing in an array {"HEALER", "HealersOnly"}} in our example so we'll iterate through each pair here.
		for i, tip in ipairs(tips) do
			-- tip[1] is the category indicator and we'll use that to decide whether we should show this tooltip or not.

			if QEConfig[tip[1]] or tip[1] == "Legion" or tip[1] == "Dodge" or -- Show if tip type turned on, or if it's using an old Legion tag.
				(tip[1] == role and QEConfig["RoleChoice"] == "Show my role only") or  -- Show if role matches the tip, and the user wants to see their role only.
				(roleList[tip[1]] and QEConfig["RoleChoice"] == "Show all roles") or -- Show if role tip and user wants to see all.
				
				(tip[1] == class and QEConfig["ClassChoice"] == "Show my class only") or
				(classList[tip[1]] and QEConfig["ClassChoice"] == "Show all classes") then
				
					local r,g,b = tipsColors[tip[1]][1], tipsColors[tip[1]][2], tipsColors[tip[1]][3]
					local lineHex = RGBToHex(r, g, b)
					local tipBase = QE_TipText:GetText() or ""
					
					if iconList[tip[1]] then -- Check if Icon exists
						--tooltip:AddLine((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]])..tip[2]),r,g,b)
						
						QE_TipText:SetText(tipBase .. ((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]]).. "|cff" .. lineHex .. " " .. tip[2] .. "|r" .. "\n")))
						
					elseif tipsColors[tip[1]] then -- Check if color exists
						QE_TipText:SetText(tipBase .. "|cff" .. lineHex .. " " .. tip[2] .. "|r" .. "\n")
						--tooltip:AddLine(tip[2],r,g,b)
					else -- There is no icon or color assigned to the category so a plain line will be added instead.
						QE_TipText:SetText(tipBase .. " " .. tip[2] .. "\n")
						--tooltip:AddLine(tip[2])
					end
			end
		end
		
		--tooltip:Show() -- This is necessary to actually update the tooltip whenever we add anything to it.
	end
end

-- The addline function hooks into the WoW API to add a line to an NPC's tooltip.
local function addLineNew(tooltip, data)
  if C_PetBattles.IsInBattle() then return end -- Tiny Snippet to disable the mod while pet battling.
  if QEConfig.ShowFrame == "Show in separate frame" and QEConfig.TargetTrigger == "Show targeted mob" then return end -- Tiny Snippet to disable the tooltip hook if targeting is selected instead.
  if QEConfig.ShowFrame == "Show in separate frame" and QEConfig.TargetTrigger == "Show mouseover" and QE_onBoss then return end -- Disable tooltip hook if player is using frame + Mouseover but is on boss
  if not addon:checkInstance() then return end -- We won't be adding anything to tooltips if the addon is disabled in the current instance.
  local role = UnitGroupRolesAssigned("player")
  local _, class, _ = UnitClass("player")
  
	if data then
		local guid = data.guid or ""
		local id = tonumber(guid:match("-(%d+)-%x+$"), 10) -- This is the mobs ID. Don't worry about the regex.
		local name = data.lines[1].leftText or ""

		-- Check our dictionary to see if we actually have any tips for the mob targeted.
		if tipsMap[id] then
			-- Don't remove active tip if you accidentally mouse over ally.
			QE_TipText:SetText("")
			QE_MobName:SetText(name)	

			if QEConfig.ShowFrame == "Show in separate frame" then addFrameLine(QE_TipPanel, tipsMap[id], "NPC ID:", role, class) 
			else addLine(tooltip, tipsMap[id], "NPC ID:", role, class)
			end


		elseif UnitIsEnemy(guid, "player") then
			QE_TipText:SetText("")
			QE_MobName:SetText(name)
		end 
	end


end

-- This starts the ball rolling. This function is called whenever an NPC tooltip is moused over.
--GameTooltip:HookScript("OnTooltipSetUnit", function(self)
TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Unit, addLineNew)


-- This starts the ball rolling on a mob target.
function addon:getTarget(mobType)
  if C_PetBattles.IsInBattle() then return end -- Tiny Snippet to disable the mod while pet battling.
  
  local guid = UnitGUID(mobType) -- This grabs information about the unit we have targeted.
  
  local role = UnitGroupRolesAssigned("player")
  local _, class, _ = UnitClass("player")
  
  --print("GUID: " .. UnitGUID("boss1"))
  
  if guid then
    --local guid = UnitGUID(unit) or ""
    local id = tonumber(guid:match("-(%d+)-%x+$"), 10) -- This is the mobs ID. Don't worry about the regex.
	local name = UnitName(mobType) or ""
	
	-- Check our dictionary to see if we actually have any tips for the mob targeted.
	if tipsMap[id]  then
		-- Don't remove active tip if you accidentally mouse over ally.
		
		QE_TipText:SetText("")		
		QE_MobName:SetText(name)
		addFrameLine(QE_TipPanel, tipsMap[id], "NPC ID:", role, class)
		--addLine(GameTooltip, tipsMap[id], "NPC ID:", role, class)		

	elseif 	UnitIsEnemy(mobType, "player") then
		QE_TipText:SetText("")
		QE_MobName:SetText(name)
		
	end
	

	
  end
end


