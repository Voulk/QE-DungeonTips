
-- This is the full database of tips.

local _, addon = ...;


-- The Tips maps holds tooltip information and mob ID's for all 13 legion dungeons, 10 BFA dungeons and the 8 Shadowlands dungeons. This is basically the database.
-- Each array uses the format: {{"Type", "Tip1"}, {"Type", "Tip2"}}
tipsMap = {
	-- Example
	[126389] = {{"Blank", "A+ Tip right here. \n It's a shame it's so damn long eh? It just goes on and on and on and ooon"}, 
				{"Interrupt", "INTERRUPT: Stone Bolt"}}, -- In this example case, all roles will see "A+ Tip right here" on the mobs tooltip but only Healers will see the second tip.
	
		--
	[99999] = {{"Important", "PlaceholderImportant"}, {"Important", "PlaceholderImportant"},
				{"Advanced", "PlaceholderAdvanced"}}, -- Tirnenn Villager	
	[8903218] = {{"Important", ""}},	

	---------------------------------------------------
	-------------------Dragonflight--------------------
	---------------------------------------------------

	-----------------------
	-- Algeth'ar Academy --
	-----------------------

	-- Trash
	[196045] = {{"Important", ""}}, -- Corrupted Manafiend
	[196576] = {{"Important", ""}}, -- Spellbound Scepter
	[196577] = {{"Important", ""}}, -- Spellbound Battleaxe
	[196671] = {{"Important", ""}}, -- Arcane Ravager
	[196694] = {{"Important", ""}}, -- Arcane Forager
	[196044] = {{"Important", ""}}, -- Unruly Textbook
	[192680] = {{"Important", ""}}, -- Guardian Sentry
	[197406] = {{"Important", ""}}, -- Aggravated Skitterfly
	[197398] = {{"Important", ""}}, -- Hungry Lasher
	[197219] = {{"Important", ""}}, -- Vile Lasher
	[192329] = {{"Important", ""}}, -- Territorial Eagle

	-- Bosses
	[194181] = {{"Important", "Boss will fire five orbs around the arena. You need to stand in them to soak the damage."},
				{"Important", "At 100 energy: Pushes back all players, and then summons swirls underneath you for a few seconds."},
				{"Important", "When circle around you: Move to the side of the room since you'll drop a puddle when it expires."},
				{"Dodge", "Frontal Cleave (Arcane Expulsion). Will follow the tank."},
				{"HEALER", "On Mythic: Soaking orb will put +200% orb dmg taken debuff on people. This can be dispelled."}}, -- Vexamus
	[196482] = {{"Important", "During Germinate: You'll drop swirls that will spawn into adds. Try and drop them all close to boss."},
				{"Important", "When treant spawns: Interrupt it's healing casts, and kill it ASAP. It also puts a bleed on party on spawn."},
				{"Important", "Killing the Treant will drop a healing pool that will also clear your bleeds."},
				{"HEALER", "Mythic: Adds stack poison on target. Dispel it as often as you can."}}, -- Overgrown Ancient
	[191736] = {{"Important", "Frontal (targets random players, can be dodged)"},
				{"Important", "During defeaning screech: Stop casting, or include shorter casts since boss will interrupt you when it finishes."},
				{"Important", "When Orbs spawn: Pick them up and run them to either the Fire or Wind circle then press your extra action button."},
				{"Important", "Scoring in Fire: Boss will be stunned and take +75% damage for 12s. Fire swirls for rest of combat."},
				{"Important", "Scoring in Wind: Players can pick up +45% haste motes until end of combat. Cyclones will spawn for rest of combat."}}, -- Crawth
	[190609] = {{"Important", "You'll get a stacking dmg buff (overwhelming power) that turns into a rift at 4 stacks. Try not to drop these in bad places."},
				{"Important", "Rifts will occasionally release orbs which give more stacks of overwhelming power and thus spawns even more Rifts."},
				{"Important", "When pulled in: Run out. Boss will do a 2yd AoE."},
				{"Important", "When circle around you: Run out of the group and drop it somewhere safe."},
				{"Dodge", "FRONTAL CLEAVE"}}, -- Echo of Doragosa


	-------------------------
	-- Azure Vault --
	-------------------------

	-- Trash
	[191164] = {{"Interrupt", "Interrupt Erratic Growth to avoid turning player into sapling. If dispelled, spreads sapling debuff to nearby players."}}, -- Arcane Tender
	[196102] = {{"Interrupts", "Interrupt Mystic Vapors to avoid stacking DoT."}}, -- Conjured Lasher
	[187159] = {{"Important", "CC the Shriek cast or else nearby mobs will be called into battle."}}, -- Shrieking Whelp
	[186741] = {{"Interrupts", "Interrupt Waking Bane to prevent this sleep cast from going off, else dispel."}}, -- Arcane Elemental
	[187154] = {{"Interrupts", "Interrupt Heavy Tome (tank damage)."}, 
				{"Dodge", "Dodge swirls or you will be disoriented."}}, -- Unstable Curator
	[187155] = {{"Interrupts", "Interrupt Icy Bindings to avoid the groupwide root, else dispel."}}, -- Rune Seal Keeper
	[187160] = {{"Dodge", "Frontal cone aimed at tank."}}, -- Crystal Fury
	[196117] = {{"Important", "Do not stand in a debuffed player's Splintering Shards circle."}}, -- Crystal Thrasher
	[186740] = {{"Dodge", "Frontal cone aimed at tank."}}, -- Arcane Construct
	[189555] = {{"Dodge", "Dodge the dark blue swirlies from Unstable Power casts."}}, -- Astral Attendant
	[190510] = {{"TANK", "Ice Cutter does a large amount of damage, use mitigation."}}, -- Vault Guard
	[191739] = {{"Dodge", "Frontal cone aimed at tank."}, 
				{"TANK", "Ice Cutter does a large amount of damage, use mitigation."}}, -- Scalebane Lieutenant
	[187240] = {{"Important", "Shoulder Slam will target a player and knock them back, position to avoid triggering runes."}, 
				{"Defensives", "Bestial Roar deals heavy group damage, mitigate it if possible."}}, -- Drakonid Breaker
	[187246] = {{"Important", "The frogs will jump to a random ranged player's location, try to stay near melee to keep them grouped/CCed."}}, -- Nullmagic Hornswog
	
	-- Bossess
	[186644] = {{"Important", "Boss will summon Ley-Line Sprouts that need to be destroyed via other mechanics.  When sprout is destroyed, a small add will spawn from it."}, 
				{"Important", "Explosive Brand will knock back all players, debuffing them with a circle that, upon expiration, will destroy any Sprouts inside."}, 
				{"Important", "Consuming Stomp deals group damage based on how many Sprouts are alive."}, 
				{"Important", "Boss will cast a frontal at tank (Erupting Fissure) that will destroy any Sprouts in its path and knock back any players. Once it starts casting the frontal, it will not move."}}, -- Leymor
	[186739] = {{"Interrupts", "When dragonkin spawn, interrupt their Illusionary Bolt casts (and kill them quickly)."}, 
				{"Dodge", "Ancient Orb will shoot out an orb from the boss, dodge it."}, 
				{"Important", "Boss will run to midand spawn four images, becoming immune.  Kill the images to continue the fight, while dodging orbs."}, 
				{"Dodge", "Arcane Cleave is a frontal on tank."}, 
				{"HEALER", "Save healing CDs for Overwhelming Energy phase."}}, -- Azureblade
	[197025] = {{"Important", "Drop Frost Bombs (leaves an icy patch) near edges to avoid filling up space."}, 
				{"Important", "During Absolute Zero, find the safe blue bubble on the floor and get inside."}, 
				{"Defensives", "If targetted by Icy Devastator, help your healer by popping a defensive."},
				{"HEALER", "Save healing CDs for Absolute Zero."}}, -- Telash Greywing
	[186738] = {{"TANK", "Make sure to pop something to mitigate Dragon Strike."}, 
				{"HEALER", "Save healing CDs for Unleashed Destruction.  Be careful of the Crackling Vortex add, which will almost always target you due to healing aggro."}, 
				{"Important", "Manage your Oppressive Miasma stacks - a slow that ramps up every time you move, lasts 10 seconds."}, 
				{"Dodge", "Crystalline Roar is a frontal targetted at a random player."}, 
				{"PriorityTargets", "Kill the Detonating Crystal spawns before they finish their Fracture cast."}}, -- Umbrelskul


	-------------------------
	-- Brackenhide Hollow --
	-------------------------

	-- Unique Action Items
	[194675] = {{"Important", "Any player with 25+ Alchemy Skill can click these cauldrons to release a Cleansed Rot Brew, allowing one party member to grab it for later use (removes disease, one use)."}}, -- Decaying Cauldron
	[376959] = {{"Important", "To spawn the first boss, free 5 Tuskarrs within these cages - once opened, enemy gnolls will attack."}}, -- Meat Storage

	-- Trash
	[185508] = {{"TANK", "Tank buster, applies stacking bleed."}, 
				{"Important", "Claw Fighter's will fixate players, run away or use Shadowmeld/Vanish/etc."}, 
				{"HEALER", "You must heal the Bloody Bite bleed off your tank by getting them above 90% health."}}, -- Claw Fighter
	[186206] = {{"TANK", "Tank buster, applies stacking bleed and movement slow debuff."}, 
				{"HEALER", "You must heal the Bloody Bite bleed off your tank by getting them above 90% health."}}, -- Cruel Bonecrusher
	[185691] = {{"Important", "The hyena will reduce the tank's healing taken via Infected Bite."}}, -- Vicious Hyena
	[185534] = {{"Important", "PriorityTargets", "Casts high damage on random players."}, 
				{"Dodge", "Dodge the Toxic Traps."}, {"Defensives", "If targetted by Bone Bolt, help your healer out by popping a defensive."}}, -- Bonebolt Hunter
	[185528] = {{"Interrupts", "Interrupt Earth Bolt."}}, -- Trickclaw Mystic
	[186191] = {{"PriorityTargets", "If a Rotchanting Totem spawns, kill it immediately, else it will stack up Withering Burst on players (disease effect)."}}, -- Decay Speaker
	[195135] = {{"TANK", "Do not pull the Warscourge with other mobs as it will empower them."}, 
				{"PriorityTargets", "Increases damage done of nearby allies by 15%."}, 
				{"Interrupts", "Interrupt Hideous Cackle or get mass-feared for 7 seconds."}, 
				{"Dodge", "Move out during Ragestorm."}}, -- Bracken Warscourge
	[186246] = {{"Interrupts", "Interrupt Screech."}}, -- Fleshripper Vulture
	[186284] = {{"TANK", "Deals high tank damage with Maul."}}, -- Gutchewer Bear
	[197857] = {{"TANK", "Tank buster, applies stacking bleed."}, 
				{"Defensives", "If debuffed with Withering Poison, help your healer out by popping a defensive."}, 
				{"HEALER", "You must heal the Bloody Bite bleed off your tank by getting them above 90% health."}}, -- Gutstabber
	[186208] = {{"TANK", "Do not pull the Warscourge with other mobs as it will empower them."}, 
				{"PriorityTargets", "Increases damage done of nearby allies by 15%."}, 
				{"Important", "PriorityTargets", "Casts high damage on random players."}, 
				{"Defensives", "If targetted by Bone Bolt, help your healer out by popping a defensive."}, 
				{"Dodge", "Dodge Bone Bolt Volley. (40 yard range)"}, 
				{"Important", "CC and slow any nearby Vultures or Hyenas, as they will fixate party members if Scented Meat targets them."}}, -- Rotbow Stalker
	[187033] = {{"Dodge", "Run away from Violent Whirlwind."}, {"Dodge", "Dodge the frontal cone, Stink Breath, or be disoriented for 4 seconds."}}, -- Stinkbreath
	[189299] = {{"Important", "Leaves behind a puddle of slime when killed."}}, -- Decaying Slime
	[186220] = {{"Interrupts", "Interrupt Touch of Decay."}}, -- Brackenhide Shaper
	[189363] = {{"PriorityTargets", "Kill them quickly before the bleeds stack up."}}, -- Infected Lasher
	[189531] = {{"Important", "Summons Infected Lashers."}}, -- Decayed Elder
	[186229] = {{"Important", "Deals aoe damage and summons Infected Lashers."}}, -- Wilted Oak
	[185656] = {{"Interrupts", "Interrupt Decay Surge"}, 
				{"Dodge", "Dodge the Rotting Surge puddles."}}, -- Filth Caller
	[187315] = {{"Important", "Tank buster, absorbing healing received and leaving a bleed."}, 
				{"HEALER", "You must heal the Bloody Bite bleed off your tank by getting them above 90% health."}}, -- Disease Slasher
	[186226] = {{"TANK", "Do not pull the Warscourge with other mobs as it will empower them."}, 
				{"PriorityTargets", "Increases damage done of nearby allies by 15% and summons dangerous Totems (kill them ASAP)."}, 
				{"Interrupts", "Interrupt Burst of Decay"}}, -- Fetid Rotsinger
	[187224] = {{"Important", "Spread at least 5 yards from each other to prevent spreading Withering Contagion."}, 
				{"Important", "Run away from Siphon Decay or else the add will be empowered."}}, -- Vile Rothexer
	[187231] = {{"TANK", "Tank buster, applies stacking bleed."}, 
				{"HEALER", "You must heal the Bloody Bite bleed off your tank by getting them above 90% health."}}, -- Wither Biter
	
	-- Bossess
	[186122] = {{"Important", "If dropped below 15% health, rages in a Bloodfrenzy, increasing haste and damage done by fellow gnolls by 30% until the end of the fight."}, 
				{"HEALER", "Bosses will be empowered with haste based on how much health is missing from your group, keep them above 90% to avoid this."}, 
				{"Dodge", "Run away during Bladestorm."}, 
				{"Dodge", "Auto attacks cleave on tank, do not stand in front of boss."}, 
					{"Important", "During Savage Charge, stand in the path of boss and player to help soak the damage."}}, -- Hackclaw's War-Band (Rira Hackclaw)
	[186124] = {{"Important", "If dropped below 15% health, rages in a Bloodfrenzy, increasing haste and damage done by fellow gnolls by 30% until the end of the fight."}, 
				{"HEALER", "Bosses will be empowered with haste based on how much health is missing from your group, keep them above 90% to avoid this."}, 
				{"Important", "A bleed will periodically be applied to the group, and is removed by healing above 90% health."}, 
				{"Defensives", "If Marked for Butchery, pop a defensive to help your healer and stay alive."}, 
				{"Important", "Dispel Decayed Senses or become mind-controlled for 15 seconds."}}, -- Hackclaw's War-Band (Gashtooth)
	[186125] = {{"Important", "If dropped below 15% health, rages in a Bloodfrenzy, increasing haste and damage done by fellow gnolls by 30% until the end of the fight."}, 
				{"HEALER", "Bosses will be empowered with haste based on how much health is missing from your group, keep them above 90% to avoid this."}, 
				{"Interrupts", "Interrupt Greater Healing Rapids at all costs.  Spare interrupts can get Earth Bolt."}, 
				{"PriorityTargets", "When a Hextrick Totem is spawned, nuke it immediately to prevent it from hexing a random player."}}, -- Hackclaw's War-Band (Tricktotem)
	[186116] = {{"Dodge", "Dodge the Traps the boss chucks out, OR kite the Hyenas into them.  Note - When boss cast's Master's Call, hyenas will be freed."}, 
				{"TANK", "Gut shot will deal high damage and knock you back, be careful not to get knocked into a trap."}, 
				{"Important", "After killing the boss, it is recommended to go down the left bridge."}}, -- Gutshot
	[194745] = {{"PriorityTargets", "Kill these quickly as they will occassionally fixate other players.  If you are fixated, run/slow/CC!"}, 
				{"Dodge", "Avoid standing in the Bounding Leap danger zone, it will stun you."}}, -- Gutshot's adds, Rotfang Hyena
	[186120] = {{"Dodge", "Dodge the Decay Spray frontal ability."}, 
				{"Important", "When boss pulls group in with Grasping Vines, it will consume any player within 10 yards.  Break the shield to free the players. Do not get eaten twice in a row.  If no player is consumed, boss permanently gains a 150% damage increase."}, 
				{"Dodge", "Be careful of the frontal Vine Whip, it follows the tank and will knock back players hit."}, 
				{"Defensives", "If Consumed, pop a defensive to make your healer a happy healer."}}, -- Treemouth
	[186121] = {{"Important", "At 100 energy, boss will cast Decaying Strength, which empowers her damage by 5% and applies a DoT to all players, increasing based on Withering Rot stacks."},
				 {"Dodge", "Avoid being hit by the Choking Rotclouds or you will be silenced and receive a stack of Withering Rot, which reduces your damage done by 5%."}, 
				 {"PriorityTargets", "Swap to the Rotburst Totem as soon as it spawns, as it applies Withering Rot."}, 
				 {"TANK", "Use mitigation during Decaystrike, it stacks and applies a healing absorb."}, 
				 {"HEALER", "Heal off the Decaystrike debuff from your tank, it is a healing absorb."}}, -- Decatriarch Wratheye


	-------------------------
	-- Halls of Infusion --
	-------------------------

	-- Unique Action Items
	[197560] = {{"Important", "If a player has 25+ Engineering skill, click this to unlock a Cheat Death buff on players (disappears after it procs once)."}} -- Limited Immortality Device

	-- Trash
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	
	-- Bossess
	[189719] = {{"Dodge", "Dodge Spark Volley puddles, they leave a DoT."}, 
				{"Important", "Kill 3 Nullification Devices near the boss to remove its Ablative Barrier."}, 
				{"Interrupts", "Interrupt Purifying Blast from the Nullification Device."}, 
				{"Dodge", "Frontal slam, do not stand on tank."},
				{"Defensives", "3 players will be debuffed with a nasty DoT, dispel one and defensive the others."}}, -- Watcher Irideus
	[189722] = {{"Dodge", "Dodge the falling earth effects."},
				{"PriorityTargets", "Nuke the Swoglets to avoid the stacking poison, will kill you at 10 stacks."},
				{"Important", "Feed one player to the boss during Gulp or he will get enraged.  Be aware the player will receive 3 stacks of poison."}}, -- Gulping Goliath
	[189727] = {{"Important", "Hide behind Ice Boulders to survive the Hailstorm."},
				{"Dodge", "Dodge the rings of ice during Glacial Surge."},
				{"Important", "If targetted with Cyclone, do not aim it towards an Ice Boulder or it will explode."},
				{"HEALER", "Dispel the slow effect on players targetted by Frost Shock."}}, -- Khajin the Unyielding
	[189729] = {{"Important", "At 100 energy players will be split into two groups and will travel through a tsunami maze to return to boss."},
				{"Dodge", "Dodge the ground spheres and waves, or be slowed/knocked back."},
				{"Interrupts", "Interrupt the Infuse ability cast by Primalist Infusers as it will empower the boss."},
				{"TANK", "Use mitigation for Squall Buffet, and return quickly to the boss after the knockback to prevent it from casting its AoE."}}, -- Primal Tsunami


	-------------------------
	-- Neltharus --
	-------------------------

	-- Trash
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	
	-- Bossess
	[181861] = {{"Dodge", "Lava Spray will target a random player and do a cone of damage towards them."}, 
				{"Dodge", "Boss will charge towards a wall, causing lava waves that must be dodged."},
				{"Important", "The longer the fight goes on, the more tentacles and waves the party must deal with."},
				{"Important", "If the boss stands in lava, he will deal 50% more damage."}}, -- Magmatusk
	[189340] = {{"Important", "Boss will chain 3 players to the floor. Players should run away from chain, creating a tripwire to kite the boss over.  Once boss trips 3 times, he is stunned and takes increased damage."},
				{"TANK", "During Fiery Fixate, interrupt the fixate by tripping the boss on wires."},
				{"Dodge", "Dodge the waves and fire puddles coming from the boss."},
				{"Defensives", "If targetted by the Dragon Strike bleed, pop a defensive to make your healer happy."}}, -- Chargath
	[189478] = {{"Dodge", "When boss returns to anvil, be prepared to dodge the hammers he will throw at the group."}, 
				{"Dodge", "Dodge the fire swirls during the encounter.  Fire bad, no buff."},
				{"Important", "Once defeated, a player with Blacksmithing can click the anvil, granting action button that throws the hammer at enemies."}}, -- Forgemaster Gorek
	[189901] = {{"Important", "During Magma shield, dig through piles of gold to find items that will break the shield faster."},
				{"Dodge", "Dodge the firey swirlies while digging for items."},
				{"PriorityTargets", "Once the shield is broken, boss will take 100% increased damage."},
				{"Important", "Raging Embers spawn and fixate players, dropping lava puddles - CC and slow to conserve space, the add will disappear when the fixate ends."},
				{"Dodge", "Dodge the randomly aimed frontal cone (The Dragon's Kiln)."}}, -- Warlord Sargha

	----------------------
	-- Nokhud Offensive --
	----------------------
	-- Trash
	[192789] = {{"Important", ""}}, -- Nokhud Longbow
	[192791] = {{"Important", ""}}, -- Nokhud Warspear
	[192796] = {{"Important", ""}}, -- Nokhud Hornsounder
	[191847] = {{"Important", ""}}, -- Nokhud Plainstomper
	[192803] = {{"Important", ""}}, -- War Ahuna
	[192794] = {{"Important", ""}}, -- Nokhud Beastmaster
	[192800] = {{"Important", ""}}, -- Nokhud Lancemaster
	[195696] = {{"Important", ""}}, -- Primalist Thunderbeast
	[194317] = {{"Important", ""}}, -- Stormcaller Boroo
	[194898] = {{"Important", ""}}, -- Primalist Arcblade
	[194897] = {{"Important", ""}}, -- Stormsurge Totem
	[195579] = {{"Important", ""}}, -- Primal Gust
	[194315] = {{"Important", ""}}, -- Primal Stormshield
	[194315] = {{"Important", ""}}, -- Stormcaller Solongo
	[194894] = {{"Important", ""}}, -- Primalist Stormspeaker
	[194895] = {{"Important", ""}}, -- Unstable Squall
	[196263] = {{"Important", ""}}, -- Nokhud Neophyte
	[194316] = {{"Important", ""}}, -- Stormcaller Zarii
	[195265] = {{"Important", ""}}, -- Stormcaller Arynga
	[195878] = {{"Important", ""}}, -- Ukhel Beastcaller
	[195875] = {{"Important", ""}}, -- Desecrated Bakar
	[195876] = {{"Important", ""}}, -- Desecrated Ohuna
	[195877] = {{"Important", ""}}, -- Risen Mystic
	[195851] = {{"Important", ""}}, -- Ukhel Deathspeaker
	[195855] = {{"Important", ""}}, -- Risen Warrior
	[195842] = {{"Important", ""}}, -- Ukhel Corruptor
	[195928] = {{"Important", ""}}, -- Soulharvester Duuren
	[195927] = {{"Important", ""}}, -- Soulharvester Galtmaa
	[195930] = {{"Important", ""}}, -- Soulharvester Mandakh
	[195929] = {{"Important", ""}}, -- Soulharvester Tumen

	-- Last boss trash still missing.
	[0] = {{"Important", ""}}, -- 
	[0] = {{"Important", ""}}, -- 
	[0] = {{"Important", ""}}, -- 
	[0] = {{"Important", ""}}, -- 
	[0] = {{"Important", ""}}, -- 
	[0] = {{"Important", ""}}, -- 

	-- Bosses
	[186616] = {{"Important", "There are three Lances (big crossbows) around his arena. Clicking one will stun the boss for 5 seconds."},
				{"Important", "You will want to use one of these to cancel the bosses 'Eruption' cast which will kill you quickly otherwise."},
				{"Important", "Mythic: The boss will spawn a Saboteur add that'll try and disable the Lances. Kill these quickly. You can CC them."}
				{"Important", "Dodge: The big circle cast around the boss."}} -- Granyth
	[186615] = {{"Important", "Boss will spawn orbs. Picking them up deals dmg to you, but gives you +5% dmg / healing buff that stacks."},
				{"Important", "Avoid letting any orbs hit the boss, but pop a defensive if you're going to hit a lot of them at once."}
				{"Important", "Orb buff lasts 15 seconds and you should try and refresh it before it runs out."},
				{"Important", "When big blue circle: Avoid stacking up. Can use these to kill any excess orbs too."},
				{"Important", "Purge (!!): Energy Surge (+100% atk spd + nature damage)"},
				{"TANK", "If you run out of range of the boss, he'll do heavy nature damage to you."},
				{"HEALER", "Very high damage fight. Make sure you get orbs yourself since you'll need them to heal it."}}, -- The Raging Tempest
	[195723] = {{"Important", "Aim to keep the bosses close together. They jump around a bit."},
				{"Important", "When targeted with arrow: Run out of the group. You'll drop tornadoes."},
				{"Dodge", "Dodge: Brown swirlies. These spawn under players so it can be easier to handle if you all stack."},
				{"Dodge", "Dodge: Big purple circle. This will fear you and it's a big circle so run ASAP."},
				{"INTERRUPTS", "Interrupt (!): Guardian Wind (AoE pushback)"}}, -- Teera (& Maruuk)
	[186338] = {{"Important", "Aim to keep the bosses close together. They jump around a bit."},
				{"Important", "When targeted with arrow: Run out of the group. You'll drop tornadoes."},
				{"Dodge", "Dodge: Brown swirlies. These spawn under players so it can be easier to handle if you all stack."},
				{"Dodge", "Dodge: Big purple circle. This will fear you and it's a big circle so run ASAP."},
				{"INTERRUPTS", "Interrupt (!): Guardian Wind (AoE pushback)"}}, -- (Teera) & Maruuk
	[186151] = {{"Important", "When targeted with circle: Walk out of the group, and then run after the spear lands since the boss will charge that location."},
				{"Important", "During Upheaval: Walk out of the brown cone, and then separate so that you don't splash each other."},
				{"Important", "P2 (60%): Boss will channel and adds will activate. CC and kill them. They aren't too dangerous."},
				{"Important", "P2: When pulled in by Static Spear, run ASAP. Use mobility if you have it since boss will charge that location."}}, -- Balakar Khan


	-------------------------
	-- Ruby Life Pools --
	-------------------------

	-- Trash
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	[0] = {{"Important", ""}}, -- Mob
	
	-- Bossess
	[188252] = {{"Important", "Getting hit by mechanics will cause stacks of Primal Chill, slows and at 8 stacks freezes the player.  Can be dispelled."},
				{"HEALER", "Manage your group's stacks of Primal Chill by dispelling players with highest stacks first.  Dispel the tank when Infused Whelps spawn."},
				{"PriorityTargets", "Nuke the Whelps when they spawn to save your tank from freezing."},
				{"TANKS", "Magic immunities will prevent application of Primal Chill from the Whelps."}}, -- Melidrussa Chillworn
	[189232] = {{"Important", "Position to bait Firestorms against the edge, saving space - they explode upon death, leaving lava puddle."},
				{"Dodge", "Dodge the boulder chucked at the tank, do not be in front."},
				{"TANK", "Position so the boulder goes into a wall, while also staying near Firestorms to cleave."}}, -- Kokia Blazehoof
	[193435] = {{"Important", "Stop casting during Interrupting Cloudburst, or get interrupted."},
				{"Dodge", "During Winds of Change, do not get pushed into Flaming Embers."},
				{"Important", "If you touch fire, you get debuffed - 3 seconds later, drop a Flaming Ember add (put it in a good spot!)."},
				{"Dodge", "Watch Kyrakka's position on the sides, they will breathe fire occassionally."},
				{"TANK", "Stormslam stacks, pop big mitigation on higher stacks."}}, -- Kyrakka 


	-------------------------
	--       Uldaman       --
	-------------------------
	-- Trash
	[0] = {{"Important", ""}}, -- Haunting Sha
	[0] = {{"Important", ""}}, -- Haunting Sha
	[0] = {{"Important", ""}}, -- Haunting Sha
	[0] = {{"Important", ""}}, -- Haunting Sha

	-- Bosses
	[6906] = {{"Dodge", "Baelog: During Heavy Arrow Cast: Avoid being in the direct line he's facing. Big damage + knockback."},
			{"Dodge", "Dodge: Dodge the brown swirly. Erik will charge there soon after."},
			{"Important", "Stay spread more than 5 yards where possible."},
			{"Interrupts", "Interrupt: Defensive Bulwark (-75% boss dmg taken)."},
			{"Important", "During Longboat: Players will drop swirls. Can move as a group to make them easier to dodge."},
			{"Important", "Killing a dwarf early will cause swirls for rest of fight, but it's still fine to do so."}}, -- Lost Dwarves
	[184018] = {{"PriorityTargets", "Priority Target: Quaking Totem. Killing will stun all Troggs within 8 yds."},
			{"Important", "Boss will cast Bloodlust on all troggs. With good timing you can kill Quaking Totem just after the cast."},
			{"Dodge", "Dodge: Big blue circles."},
			{"Interrupts", "Interrupt (!): Chain Lightning (AoE dmg) - Cast by the Geomancers."}}, -- Bromach
	[184124] = {{"Important", "If boss reaches 100 energy: She enrages and becomes immune to CC."},
			{"Important", "Drag boss through golden orbs to stun her. Avoid touching them yourself. The first, and then every 3rd Orb will stun her."},
			{"Important", "When golden circle around you: Drop it close to boss since it'll drop an orb."},
			{"Important", "If boss reaches 100 energy: She enrages and becomes immune to CC."},
			{"Important", "Boss also has a knock back. Check your positioning so you don't get knocked into an Orb."}}, -- Sentinel Talondras
	[184422] = {{"Important", "FRONTAL CONE: Follows tank."},
			{"Dodge", "Dodge: Big burning orbs"},
			{"Important", "When boss at 100 energy: Goes immune and you have to kill adds to continue."},
			{"Important", "Watch out for the big fire beam during intermission, and use your defensives if you're spread around the room since it's tough to heal."},
			{"Important", "When red circle around you: Spread so that you're not in two circles at once."}}, -- Emberon
	[184125] = {{"Important", "Avoid pools on the ground until boss channels Reverse Timeflow, then stand in them during the cast."},
			{"Important", "Targeted with Time Sink debuff: Run out and get dispelled. Will spawn swirly under you on removal."},
			{"HEALER", "Healer: Wait until the debuffed player is out before dispelling to avoid dropping a pool on top of your group."},
			{"Dodge", "FRONTAL CONE"}}, -- Chrono-Lord Deios 



	-------------------------
	-- Jade Serpent Temple --
	-------------------------

	-- Trash
	[59555] = {{"Important", ""}}, -- Haunting Sha
	[65314] = {{"Important", ""}}, -- Xiang
	[59547] = {{"Important", ""}}, -- Jiang
	[59598] = {{"Important", ""}}, -- Lesser Sha
	[59546] = {{"Important", ""}}, -- The Talking Fish
	[59553] = {{"Important", ""}}, -- The Songbird Queen
	[59545] = {{"Important", ""}}, -- The Golden Beetle
	[59552] = {{"Important", ""}}, -- The Crybaby Hozen
	[59544] = {{"Important", ""}}, -- The Nodding Tiger
	[57080] = {{"Important", ""}}, -- Corrupted Scroll
	[62358] = {{"Important", ""}}, -- Corrupt Droplet
	[200126] = {{"Important", ""}}, -- Fallen Waterspeaker
	[59873] = {{"Important", ""}}, -- Corrupt Living Water
	[200387] = {{"Important", ""}}, -- Shambling Infester
	[200137] = {{"Important", ""}}, -- Depraved Mistweaver
	[200131] = {{"Important", ""}}, -- Sha-Touched Guardian
	[57109] = {{"Important", ""}}, -- Minion of Doubt
	
	-- Bosses
	[56448] = {{"Important", ""}}, -- Wise Mari
	[59051] = {{"Important", ""}}, -- Strife
	[59726] = {{"Important", ""}}, -- Peril
	[56732] = {{"Important", ""}}, -- Liu Flameheart
	[56439] = {{"Important", ""}}, -- Sha of Doubt


	---------------------------------------------------
	-------------------Shadowlands---------------------
	---------------------------------------------------
	

	-----------------------
	-- Mechagon Junkyard --
	-----------------------
	[150146] = {{"Important", ""}}, -- Scrapbone Shaman
	[150143] = {{"Important", ""}}, -- Scrapbone Grinder
	[150249] = {{"Important", ""}}, -- Pistonhead Scrapper
	[150253] = {{"Important", ""}}, -- Weaponized Crawler
	[150547] = {{"Important", ""}}, -- Scrapbone Grunter
	[152009] = {{"Important", ""}}, -- Malfunctioning Scrapbot
	[150160] = {{"Important", ""}}, -- Scrapbone Bully
	[150146] = {{"Important", ""}}, -- Scrapbone Shaman
	[150142] = {{"Important", ""}}, -- Scrapbone Trashtosser
	[150276] = {{"Important", ""}}, -- Heavy Scrapbot
	[150254] = {{"Important", ""}}, -- Scraphound
	[150250] = {{"Important", ""}}, -- Pistonhead Blaster
	[150165] = {{"Important", ""}}, -- Slime Elemental
	[150195] = {{"Important", ""}}, -- Gnome-Eating Slime
	[150297] = {{"Important", ""}}, -- Mechagon Renormalizer
	[155094] = {{"Important", ""}}, -- Mechagon Trooper
	[155090] = {{"Important", ""}}, -- Anodized Coilbearer
	[150168] = {{"Important", ""}}, -- Toxic Monstrosity
	[150169] = {{"Important", ""}}, -- Toxic Lurker
	[150292] = {{"Important", ""}}, -- Mechagon Cavalry
	[150293] = {{"Important", ""}}, -- Mechagon Prowler
	
	[150159] = {{"Important", ""}}, -- King Gobbamak
	[150712] = {{"Important", ""}}, -- Trixie Tazer
	[153755] = {{"Important", ""}}, -- Naeno Megacrash
	[150222] = {{"Important", ""}}, -- Gunker
	[150295] = {{"Important", ""}}, -- Tank Buster MK 1
	[150190] = {{"Important", ""}}, -- HK-8 Aerial Oppression Unit
	
	-----------------------
	-- Mechagon Workshop --
	-----------------------
	[151657] = {{"Important", ""}}, -- Bomb Tonk
	[151658] = {{"Important", ""}}, -- Strider Tonk
	[151659] = {{"Important", ""}}, -- Rocket Tonk
	[144293] = {{"Important", ""}}, -- Waste Processing Unit
	[144301] = {{"Important", ""}}, -- Living Waste
	[151773] = {{"Important", ""}}, -- Junkyard D.0.G
	[144303] = {{"Important", ""}}, -- GUARD
	[144294] = {{"Important", ""}}, -- Mechagon Tinkerer
	[144298] = {{"Important", ""}}, -- Defense Bot Mk III
	[151649] = {{"Important", ""}}, -- Defense Bot Mk I
	[151476] = {{"Important", ""}}, -- Blastatron X-80
	[151812] = {{"Important", ""}}, -- Detect o bot
	[144295] = {{"Important", ""}}, -- Mechagon Mechanic
	[144296] = {{"Important", ""}}, -- Spider Tank
	[144299] = {{"Important", ""}}, -- Workshop Defender
	
	[144244] = {{"Important", ""}}, -- Platinum Pummeler
	[145185] = {{"Important", ""}}, -- Gnomercy
	[144246] = {{"Important", ""}}, -- Ku'j0
	[144248] = {{"Important", ""}}, -- Head Machinist Sparkflux
	[150396] = {{"Important", ""}}, -- Aerial Unit R-21/X (King Mechagon)
	[144249] = {{"Important", ""}}, -- Omega Buster (King Mechagon)
	[150397] = {{"Important", ""}}, -- King Mechagon
	
	
	--------------------
	-- Grimrail Depot --
	--------------------
	[81235] = {{"Important", "A mostly unimportant mob."}}, -- Grimrail Laborer
	[81212] = {{"Important", "FRONTAL CLEAVE."}}, -- Grimrail Overseer
	[81236] = {{"Interrupts", "Interrupt (!!): Activating (activates an Iron Star which deals heavy AoE damage)"},
				{"Interrupts", "Stun Interrupt (!!): 50,000 Volts (Stun + ST Damage)"}}, -- Grimrail TechnicianD
	[81407] = {{"Important", "Throws down red circles which you have to dodge."},
				{"Important", "It's often easier to pull these back into the boss room."}}, -- Grimrail Bombardier
	[80940] = {{"Important", "No notable abilities"}}, -- Iron Infantry
	[80937] = {{"Important", "During Shrapnel Blast: Move behind the Gunner to avoid the heavy, stacking DoT."}}, -- Grom'kar Gunner
	[80936] = {{"Important", "Throws Grenades at people. They can technically be dodged by moving as it's cast, but it might be easier to just stay lightly spread."}}, -- Grom'kar Grenadier
	[88163] = {{"Important", "SPREAD OUT."},
				{"Important", "When Flame Wreath goes out it'll silence an ally but if nobody is nearby then it'll end instantly."}}, -- Grom'kar Cinderseer
	[80935] = {{"Dodge", "DODGE: The big red circles (Blackrock Mortar)"},
							{"Dodge", "During Cannon Barrage: Rotate around the mob so you're not in the line of fire."}}, -- Grom'kar Boomer
	[80938] = {{"Important", "Deals increasingly high melee damage over time."},
				{"Important", "Either focus this mob down, or use externals and heavy defensives to keep your tank alive."}}, -- Grom'kar Hulk
	[82579] = {{"Important", "Purge: Lightning Shield (dmg taken on attack)"}}, -- Grom'kar Far Seer
	[82594] = {{"Important", "No notable abilities."}}, -- Grimrail Loader
	[82597] = {{"Important", "If the Captain charges to you, move to avoid the Reckless Slash."}}, -- Grom'kar Captain
	[82590] = {{"Interrupts", "Stun Interrupt: Arcane Blitz (puts a dmg puddle on the floor)"},
				{"Important", "Avoid any purple spots on the ground."}}, -- Grimrail Scout
	
	[77816] = {{"Important", "Important: Kill both at the same time or they'll enrage."},
				{"Important", "When Rocketspark flies into the air: Tank needs to aim Mad Dash at him to interrupt the cast."},
				{"Important", "Slam interrupts spell casts."}}, -- Borka the Brute
	[77803] = {{"Important", "Important: Kill both at the same time or they'll enrage."},
				{"Important", "When Rocketspark flies into the air: Tank needs to aim Mad Dash at him to interrupt the cast."},
				{"Important", "Slam interrupts spell casts."}}, -- Railmaster Rocketspark
	[79545] = {{"Important", "P1 (until 60%) takes place in an ultra cramped room. Spread as much as you can."},
				{"Important", "P2: Kill Boomer adds to loot Mortar Shells."},
				{"Important", "Click on a cannon with a shell and then use Homing Shell on the Assault Cannon"},
				{"Important", "Three Homing Shells will break the cannon."},
				{"Dodge", "When targeted by Suppression Fire: Run behind a pillar."}}, -- Nitrogg Thundertower
	[79548] = {{"Important", "P1 (until 60%) takes place in an ultra cramped room. Spread as much as you can."},
				{"Important", "P2: Kill Boomer adds to loot Mortar Shells."},
				{"Important", "Click on a cannon with a shell and then use Homing Shell on the Assault Cannon"},
				{"Important", "Three Homing Shells will break the cannon."},
				{"Dodge", "When targeted by Suppression Fire: Run behind a pillar."}}, -- Assault Cannon
	[80005] = {{"Important", "You can't dodge the initial breath damage, but can get out of the floor effect afterwards."},
				{"Important", "Get ready to pop defensives and health potions here since damage is high."},
				{"Dodge", "Dodge: Freezing Snares. The boss will place them under random players."},
				{"Dodge", "Dodge: Spinning Spear. Randomly targeted. If the boss is facing your direction then get ready to side step."}}, -- Skylord Tovra
	
	---------------
	--Iron Docks --
	---------------
	[83028] = {{"Important", "Has a slow but not too dangerous."}}, -- Grom'kar Deadeye
	[81283] = {{"Important", "No notable abilities."}}, -- Grom'kar Footsoldier
	[83025] = {{"Important", ""}}, -- Grom'kar Battlemaster
	[83578] = {{"Important", "Deals heavy tank damage and moderate AoE."}}, -- Ogron Laborer
	[81432] = {{"Important", ""}}, -- Grom'kar Technician
	[83026] = {{"Important", "Melee: Move 5 yards away during Shattering Strike cast."},
				{"Important", "Ranged: Move if Olugar throws his weapon at you."}}, -- Siegemaster Olugar
	[86809] = {{"Important", "No notable abilities."}}, -- Grom'kar Incinerator
	[84520] = {{"Important", "Stay out of melee during Bladestorm."},
				{"Important", "Will sometimes chain in a random ranged player. Pop a defensive and run out."}}, -- Pitwarden Gwarnok
	[83762] = {{"Important", ""}}, -- Grom'kar Deckhand
	[86526] = {{"Important", ""}}, -- Grom'kar Chainmaster
	[81279] = {{"Important", ""}}, -- Grom'kar Flameslinger
	[83392] = {{"Important", ""}}, -- Rampaging Clefthoof
	[83390] = {{"Important", ""}}, -- Thunderlord Wrangler
	[83389] = {{"Important", ""}}, -- Ironwing Flamespitter
	[84028] = {{"Important", "Melee: Move 5 yards away during Shattering Strike cast."},
				{"Important", "Ranged: Move if Rokra throws her weapon at you."}}, -- Siegemaster Rokra
	
	[81297] = {{"Important", "You can stand on top of chains to avoid the Burning Arrows. Alternatively just move out of them."},
				{"Important", "During Reckless Provocation: Do NOT DPS the boss. You will get Feared."},
				{"Important", "When the boss dismounts, finish off Dreadfang first and Nok'gar afterwards."}}, -- Dreadfang
	[81305] = {{"Important", "You can stand on top of chains to avoid the Burning Arrows. Alternatively just move out of them."},
				{"Important", "During Reckless Provocation: Do NOT DPS the boss. You will get Feared."},
				{"Important", "When the boss dismounts, finish off Dreadfang first and Nok'gar afterwards."}}, -- Fleshrender Nok'gar
	[80805] = {{"Important", "Will summon lava waves 5 yards from him. VERY DANGEROUS."},
				{"Important", "Make sure you are either stacked close to the boss, or a good distance away."}}, -- Makogg Emberblade
	[80816] = {{"Important", "Will put an absorb shield on lowest health enemy. Do NOT DPS through it. If you do it'll heal them all for a lot."},
				{"Interrupts", "Interrupt: Blood Bolt (ST damage)"}}, -- Ahri'ok Dugru
	[80808] = {{"Important", "Avoid the mines on the ground."},
				{"Important", "Kill order is Ahri > Makogg > Neesa."}}, -- Neesa Nox
	[79852] = {{"Important", "Time to Feed: Will pick one person and deal heavy damage to them. Deal 8% of his health to break them out."},
				{"Important", "This person will require heavy healing."},
				{"Important", "When he releases adds from a cage, stun them and DPS them down."}}, -- Oshir
	[83612] = {{"Important", "Skulloc has two adds, Zoggosh will activate after the other dies. Hard nuke Koramar."},
				{"Dodge", "Koramar will jump to random targets, bladestorm and has a frontal cleave."},
				{"Important", "Cannon Barrage: Hide behind the walls as the 5s casts complete. Reaching the boss will end the phase."}}, -- Skulloc
	[83613] = {{"Important", ""}}, -- Koramar
	[83616] = {{"Important", ""}}, -- Zoggosh
	
	
	--------------
	-- Tazevesh --
	--------------
	[175616] = {{"Important", "Interrogation: When targeted, run far from the boss. You'll be imprisoned and the group will have to DPS you out before boss reaches you."},
				{"Important", "Do not walk in front of the boss when he is moving toward Imprisoned target."},
				{"Important", "When pacified: walk over your weapon on the ground to pick it back up."},
				{"Important", "HardMode: You must fight boss with Portalmancer up. Pop Lust and burn Portalmancer quickly."},
				{"Important", "HardMode: You also can't clear trash on Hard. Instead you have to fight the boss in the sliver of space where they start."}}, -- Zo'phex the Sentinel (Boss)
	[175646] = {{"Important", "Stand in: big purple swirls. If you don't soak they will splash on the ground, and space here is crucial."},
				{"Important", "Stack for: Money Order (Big golden swirl on one player). This damage is split."},
				{"Important", "Use defensives during Fan Mail. This is big unavoidable AoE damage."},
				{"Important", "Unstable Goods (red suitcases): Pick them up and then throw them into the vent with wind in it."},
				{"Important", "You can throw goods from person to person to take care of them more quickly (and this is mandatory in Hard Mode."},
				{"Important", "HardMode: Unstable Goods now roots. Have one person act as the middleman, and pass them around the room. You must be VERY fast."}}, -- Mailroom Mayhem
	[176564] = {{"Important", "Before the fight: Pick up instruments. During the fight, use your extra action button to pick up notes on the floor for a stacking buff."},
				{"Important", "During Crowd Control (puts his shield up): Move behind him to avoid the deflect, and the forthcoming huge frontal."},
				{"Dodge", "Dodge: Suppression Spark. The boss will pull you toward him. Run. Don't finish cast. RUN!"},
				{"Dodge", "Dodge: Green rotten food swirls."},
				{"Important", "HardMode: The band you replaced are angry. They will fixate the person playing their instrument. Kite them, and burn Hips first."}}, -- Zo'Gron
	[176563] = {{"Important", "Before the fight: Pick up instruments. During the fight, use your extra action button to pick up notes on the floor for a stacking buff."},
				{"Important", "During Crowd Control (puts his shield up): Move behind him to avoid the deflect, and the forthcoming huge frontal."},
				{"Dodge", "Dodge: Suppression Spark. The boss will pull you toward him. Run. Don't finish cast. RUN!"},
				{"Dodge", "Dodge: Green rotten food swirls."},
				{"Important", "HardMode: The band you replaced are angry. They will fixate the person playing their instrument. Kite them, and burn Hips first. Use defensives here."}}, -- Zo'Gron
	-- The Grand Menagerie  176705
	[176556] = {{"Important", "Three bosses that spawn on a fixed timer so DPS is worth a premium."},
				{"Important", "Gluttony (DoT that jumps between players). Whoever has Gluttony needs to soak the balls for a dps increase."},
				{"Dodge", "Alcruux: Run out when gripped in."},
				{"Important", "Two sets of circles will spawn on different timers. Stand in the second to spawn until the first explode, then move to the safe zone."},
				{"Important", "Achillite: When targeted by Purification Protocol: Move away from players then get dispelled."},
				{"Important", "Dodge the balls UNLESS you have Gluttony, then soak them."},
				{"Important", "Venza Goldfuse: When dragged toward boss: Run as hard as you can, and use mobility CDs."},
				{"Important", "When player is chained: DPS the chains to break them out. Quickly now."}}, -- Alcruux
	[176555] = {{"Important", "Three bosses that spawn on a fixed timer so DPS is worth a premium."},
				{"Important", "Gluttony (DoT that jumps between players). Whoever has Gluttony needs to soak the balls for a dps increase."},
				{"Important", "Achillite: When targeted by Purification Protocol: Move away from players then get dispelled."},
				{"Important", "Dodge the balls UNLESS you have Gluttony, then soak them."},
				{"Important", "Venza Goldfuse: When dragged toward boss: Run as hard as you can, and use mobility CDs."},
				{"Important", "When player is chained: DPS the chains to break them out. Quickly now."}}, -- Achillite
	[176705] = {{"Important", "Three bosses that spawn on a fixed timer so DPS is worth a premium."},
				{"Important", "Gluttony (DoT that jumps between players). Whoever has Gluttony needs to soak the balls for a dps increase."},
				{"Important", "Venza Goldfuse: When dragged toward boss: Run as hard as you can, and use mobility CDs."},
				{"Important", "When player is chained: DPS the chains to break them out. Quickly now."}}, -- Venza Darkfuse
	
	-- Part Two --
	[175806] = {{"Important", "Triangle, Square and Circle teleporters will spawn through the fight in pairs. Stepping into one will teleport you to the other of the same shape."},
				{"Important", "You will use these to follow the boss around the room, since the boss will put walls up and teleport."},
				{"Interrupts", "Interrupt (!!!): Double Technique. You need to interrupt this twice (3x on hard mode). "},
				{"Important", "There is also a large wave-like AoE ability and you can use the teleporters to avoid it."},
				{"Important", "You CAN also blink through the walls and over the wave, and this can be very helpful."}}, -- So'azmi
	[175663] = {{"Dodge", "Dodge: Purged by Fire (yellow line that follows one player)."},
				{"Dodge", "Dodge: Titanic Crash (Frontal that will stun you)."},
				{"Important", "During intermission: One player clicks the console at the back of the room, it will show which console each rune needs to be put in."},
				{"Important", "The other four players will need to pick up one rune each, and take it to the correct console."},
				{"Important", "This is all about communication and is much easier in voice, if available."},
				{"Important", "Kill the Purifier adds as you do the runes, as they will lock random consoles while alive."}}, -- Hylbrande
	[175546] = {{"Important", "During Infinite Breath: have tank line it up with adds, then run out when it stops following you. INSTAKILLS enemies."},
				{"Dodge", "Dodge: Avoid the tail. It has a tail swipe."},
				{"Important", "When chained: Run against it to stop yourself bring dragged into water."},
				{"Important", "HardMode: During Hard Mode slowing bubbles will spawn, and you just have to avoid them."}}, -- Timecap'n Hooktail
	[177269] = {{"Important", "IMPORTANT: Walk into the orbs to soak a stack. Each orb has 4 stacks and should be fully soaked."},
				{"Important", "HOWEVER, each time you soak a stack the raid takes an AoE 3s DoT. Stagger your soaks to not overwhelm your healer."},
				{"Important", "After Power Overwhelming: Have one player stand behind each relic such that the line from the boss cuts through them. Boss is immune to dmg."},
				{"Interrupts", "During the add phase, interrupt them and kill as quickly as possible."},
				{"Dodge", "Dodge: Relics will explode in a large AoE circle. Walk out."}}, -- So'leah
	
	[177807] = {{"Dodge", "Dodge: Throws an AoE swirl at random players."}}, -- Customs Security
	[178392] = {{"Important", "Does a large AoE pulse ability. Not that dangerous."}}, -- Gatewarden Zo'mazz
	[177817] = {{"Important", "Interrupt (!!): Hard Light Barrier (Big absorb on one enemy)"}}, -- Support Officer
	[177816] = {{"Interrupt", "Interrupt / Dispel (!!!) Statis Beam (Stun / Heavy damage)"},
				{"HEALER", "Dispel (!): Glyph of Restraint (DoT)"},
				{"Important", "You'll usually want to interrupt Beam, and then save dispel for Glyph of Restraint."}}, -- Interrogation Specialist
	[177808] = {{"Dodge", "Throws out a long beam that rotates. Stacks a big DoT if you get hit."}}, -- Armored Overseer
	[179334] = {{"Important", "Killing Portalmancer will summon the first boss!"},
				{"Important", "Dodge: Portals will spawn big lines to dodge, multiple at once."},
				{"Important", "Dispel and heal: Glyph of Restraint. This time it's party-wide."}}, -- Portalmancer Zo'honn
	
	
	[179893] = {{"Important", "Nothing dangerous or notable."}}, -- Cartel Skulker
	[180335] = {{"Important", "If targeted by circle: run away from allies. It can also be dispelled."}}, -- Cartel Smuggler
	[180336] = {{"Dodge", "Dodge: Run out of the large circle on the ground. "}}, -- Cartel Wiseguy
	[180348] = {{"Important", "During his Chronolight Enhancer buff: kite. He does huge damage, but is also very slowed."}}, -- Cartel Muscle
	[176396] = {{"Important", "Will try and open the creature cages. You can CC them to interrupt the cast."}}, -- Defective Sorter
	[176394] = {{"Important", "Nothing notable or dangerous."}}, -- POST Worker
	[176395] = {{"Important", "Interrupt / Purge (!): Spam Filter (50% DR on enemy)"},
				{"Important", "Throws Junk Mail at random players. Not that dangerous but healer will need to press buttons."},
				{"Important", "On death: creates large purple bubble that gives +50% haste to players / enemies."}}, -- Overloaded Mailemental
	[175677] = {{"Important", "Soothe: Feral (Damage increase)."}}, -- Smuggled Creature
	[178388] = {{"Important", "Will fixate whoever is carrying the event item. Hits VERY hard so you will want to kite and kill."}}, -- Bazaar Strongarm
	
	[179840] = {{"Important", "Have everyone stack in melee, or it'll charge a random player 10 yards away."},
				{"Interrupts", "Stun Interrupt: Phalanx Field (75% magic DR)"}}, -- Market Peacekeeper
	[179841] = {{"Interrupts", "Interrupt (!!): Hyperlight Salvo (Big ST damage on random player). You can also have the tank stand in the way of the projectile."}}, -- Sparkcaster
	[179842] = {{"Important", "Does a big tank knockback. Don't stand with your back to unpulled mobs."},
				{"Important", "Soothe: Force Multiplier (AoE dmg inc). Also increases damage taken, but for now you should just soothe."}}, -- Commerce Enforcer
	[179821] = {{"Dodge", "Dodge: Don't walk into the orbs."},
				{"Important", "Will link players together. Run away to stay apart until the debuff ends."},
				{"Important", "Does a big tank knockback. Don't stand with your back to unpulled mobs."}}, -- Commander Zo'far (Miniboss)
	
	[178165] = {{"Important", "Tidal Stomp: huge stacking AoE damage. 50 yard range."},
				{"Important", "While technically outrangeable, you will fare better if you just hard burn the mob."},
				{"Dodge", "Dodge: Boulder Throw (brown swirl)"}}, -- Coastwalker Goliath
	[178163] = {{"Important", "Not individually dangerous, but travel in big packs."}}, -- Murkbrine Shorerunner
	[178139] = {{"Interrupts", "Stun Interrupt (!): Cry of Mrrggllrrgg (AoE Enrage, +50% dmg)"}}, -- Murkbrine Shellcrusher
	[178141] = {{"Important", "Stun Interrupt (!!): Invig Fish Stick (AoE healing totem, DPS down if not interrupted)."}}, -- Murkbrine Scalebinder
	[178142] = {{"Interrupts", "Dodge / Interrupt: Volatile Pufferfish (blue AoE swirl on the ground)"},
				{"Interrupts", "Interrupt: Waterbolt (Medium dmg ST nuke)"}}, -- Murkbrine Fishmancer
	[178133] = {{"Important", "Jumps around on random players, but this does not seem to be at all dangerous."}}, -- Murkbrine Wavejumper
	[178171] = {{"Dodge", "Dodge: Charged Pulse (3s cast - blue AoE circle)"},
				{"Dodge", "Dodge: The Blue lines. They stick around for a while so watch your positioning."}}, -- Stormforged Guardian
				
	[180015] = {{"Interrupts", "Stun Interrupt: Disruptive Shout (AoE damage)."},
				{"Important", "Soothe: Super Saison (+100% dmg buff)"}}, -- Burly Deckhand
	[179388] = {{"Dodge", "Dodge: Tidal Burst (blue AoE swirl)"}}, -- Hourglass Tidesage
	[179386] = {{"Dodge", "Dodge: Sword Toss. HEAVY, channeled AoE damage in a random direction."}}, -- Corsair Officer
	
	[180429] = {{"Important", "Will summon a little star that will blow up your group. Kill it quickly."},
				{"Important", "During Drifting Star cast: circle behind mob. Big projectile that fires across the room."}}, -- Adorned Starseer
	[180432] = {{"PriorityTargets", "Priority Target."},
				{"Important", "Stacks dmg taken increase on the tank. Kill quickly or start kiting."},
				{"Interrupts", "Interrupt (!!): Reinvigorate (Heal + haste buff)"}}, -- Devoted Accomplice
	[180431] = {{"Interrupts", "Interrupt (!!): Unstable Rift (big AoE damage)"}}, -- Focused Ritualist
	
	
	
	
	-- Torghast --
	[152594] = {{"Important", ""}}, -- Broker Ve'ken
	
	-- Bosses --
	[159190] = {{"Important", "Interrupting Slam: Stop casting"},
				{"Important", "Adds a stacking -haste, -movement speed debuff. "},
				{"Important", "Boss is basically just a hard DPS check. "}}, -- Synod
	[156015] = {{"Important", "Splits into smaller and smaller blobs as you kill him."},
				{"Important", "If you're not overflowing with power then kill each new blob as it spawns."},
				{"Important", "Avoid being overwhelmed by 8+ slimes. Remember to use AoE CC in a pinch."}}, -- Writhing Soulmass
	[153451] = {{"Important", "Stacks an enrage buff when you move."},
				{"Important", "Move to dodge swirls, and stay still the entire rest of the fight."}}, -- Kosarus the Fallen
	[157122] = {{"Dodge", "Dodge the red scars on the ground. They hurt a lot."},
				{"Important", "Interrupt (!): Dark Volley (Nuke)"}}, -- Patrician Cromwell
	[151331] = {{"Dodge", "Shockwave: Large frontal cone that stuns"},
				{"Important", "RUN during Lumbering Might. He'll be slow but hit VERY hard."},
				{"Important", "Stop DPS during Crumbling Walls or you'll spawn adds."},
				{"Important", "Not an easy fight. Hope you got some good powers."}}, -- Cellblock Sentinel
	[156239] = {{"Interrupts", "Interrupt: Shadow Rip (Dmg + DoT)"},
				{"Important", "Deals very heavy damage so consider kiting if low."},
				{"Important", "Purge or Steal: Stygian Shield (30% DR)."}}, -- Dark Ascended Corrus
	[170418] = {{"Interrupts", "Stun Interrupt (!!): Mass Devour (Dmg + boss shield)"},
				{"Important", "DPS orbs down whenever they're up to stop him eating them."}}, -- Goxul the Devourer
	[171422] = {{"Interrupts", "Interrupt: Soul Bolt (Big ST Nuke, boss will chain-cast but get as many as you can)"},
				{"Dodge", "Dodge the swirls from Suppress."},
				{"Important", "Deaden Magic will give him a small magic shield which can be purged, but is very small anyway."}}, -- Arch-Suppressor Laguas
				
	[151329] = {{"Dodge", "Dodge (!!!): Hulking Charge (Wait for start of cast then move)"}, 
				{"Dodge", "Dodge: Rat Traps (Root + Damage)"}, 
				{"HUNTER", "Enrage (!!): Use Tranquilizing Shot"}, 
				{"DRUID", "Enrage (!!): Use Soothe"},
				{"Defensives", "Kite during enrage if you can't remove it."},
				{"Interrupts", "Interrupt: Rats! (Slows Player +Physical Damage)"}}, -- Warden Skoldus	
				
	[152995] = {{"Important", "Kite Boss out of Well of Souls (Void zone that buffs boss and Shade add damage)"}, 
				{"Important", "Cleave Soul Fragment adds"},
				{"Interrupts", "Interrupt or Outrange: Fearsome Howl (12 yard AoE Fear)"}}, -- Warden of Souls
				
	[153011] = {{"Important", "CC undead adds from Bind Souls to immediately kill"}, 
				{"Dodge", "Dodge: Soul Echo (Deals Shadow Damage + Knockback)"},
				{"Interrupts", "Interrupt: Shadow Bolt (ST nuke)"}}, -- Binder Baritas
				
	[153165] = {{"Important", "Use Blinding Smoke Capsules (from vendor) to mitigate severe melee dam"}, 
				{"Important", "Do NOT attack while boss under effect of Thorned Shell (Deals 60yd AoE)"}, 
				{"Dodge", "Dodge: Noxious Cloud"}, 
				{"Interrupts", "Interrupt: Meat Hook (Pulls player to boss & Stuns)"}}, -- Custodian Thonar
	[153174] = {{"Interrupts", "Interrupt or run away (!!): Fearsome Howl (12 yard AoE Fear)"}, 
				{"Important", "Interrupt Steal Vitality if you have spare, but it is much lower priority."},
				{"Dodge", "Dodge: Prophecy of Death (Swirls)"}}, -- Watchers of Death
				
	[153382] = {{"Important", "Stun or CC Devour. It'll eat a random Obleron power (the stat %s)"}, 
				{"Interrupts", "Interrupt: Gunk (60yd ST nuke & big slow)"}}, -- Maw of the Maw
				
	[155250] = {{"Important", "During Hardened Shell: Use fast attacks to drop its buff, then pop DPS cooldowns when it's off"}, 
				{"Dodge", "Dodge/Dispel Poison: Acid Bomb (use remove Poison if you have this ability)"}}, -- Decayspeaker
				
	[155251] = {{"Dodge", "Avoid Crush (Frontal-Cone Stun)"},
				{"Important", "During Hardened Shell: Use fast attacks to drop its buff, then pop DPS cooldowns when it's off"}, 
				{"Interrupts", "(!!) Interrupt/Dispel: Bounty of the Forest (Huge HoT)"}}, -- Elder Longbranch
	[155945] = {{"Interrupts", "Interrupt: Deafening Howl (3s school lockout)"}, 
				{"Important", "Incorporeal (-99% boss dmg taken). Good opportunity to heal."}}, -- Gherus the Chained
				
	[159755] = {{"Interrupts", "Interrupt (!): Withering Roar (-10% max HP)"},
				{"Interrupts", "Dodge/Interrupt: Ground Crush (15 yard AoE stun)"}, 
				{"Dodge", "Dodge: Inferno (Fire Swirls that throw you into the air)"},
				{"Important", "Focus hard on dodging and this boss should cause few issues."}}, -- The Grand Malleare
				
	[169859] = {{"Important", "DODGE (!!!): Aerial Strikes (Swirl)"}, 
				{"Important", "Stun/CC Ocular Beam (Nuke & Knockback). Don't get knocked off."}, 
				{"Interrupts", "Interrupt: Focused Blast (ST nuke)"}}, -- Observer Zelgar
			
	[0] = {{"Important", ""}}, -- Default
	
	-- Regular Mobs --
	
	[157634] = {{"Important", "Sidestep the Fanning the Flames cast. Otherwise not dangerous."}}, -- Flameforge Enforcer
	[157584] = {{"Interrupts", "Interrupt: Fireball (Medium ST nuke)"}}, -- Flameforge Master
	[152875] = {{"Important", "Outrange: Mighty Slam (10 yds). Knocks you back but otherwise not that dangerous."},
				{"Important", "Melee hits are quite dangerous."}}, -- Massive Crusher
	[157571] = {{"Interrupts", "Interrupt (!!): Inner Flames (AoE heal & Dmg increase)"}}, -- Mawsworn Flametender
	[157572] = {{"Interrupts", "Interrupt: Fireball (Medium ST nuke)"}}, -- Mawsworn Firecaller
	[157583] = {{"Interrupts", "Interrupt: Fireball (Medium ST nuke)"},
				{"Interrupts", "Interrupt (or dodge): Flamestrike (Small AoE nuke)"}}, -- Forge Keeper
	[150958] = {{"Interrupts", "Interrupt (!): Accursed Strength (big damage buff)"},
				{"Dodge", "Dodge: Massive Strike (big frontal)"}}, -- Mawsword Guard		
	
	[168105] = {{"Interrupts", "Interrupt (!!): Inner Flames (AoE heal & Dmg increase, 30s cooldown)"}}, -- Empowered Mawsworn Flametender
	[168104] = {{"Interrupts", "Interrupt: Fireball (Medium ST nuke)"},
				{"Important", "Will basically just spam Fireballs and you have to lock him down or burst him before he kills you."}}, -- Empowered Flameforge Master
	[151128] = {{"Important", "This guy is dangerous. You'll want to stun interrupt Whirlwind, or use a mobility CD to get away."},
				{"Dodge", "Dodge: Lockdown (grey swirl)"}}, -- Lord of Locks
				
	[152661] = {{"Interrupts", "Travel in packs but don't do anything dangerous."}}, -- Mawsworn Ward
	[157810] = {{"Interrupts", "Interrupt (!): Pain Spike (ST Nuke)"}}, -- Mawsworn Endbringer
	[153874] = {{"Important", "Has a disarm so if you're a melee then careful pulling this with too many mobs."}}, -- Mawsworn Sentry
	[151353] = {{"Important", "Will flee below half health. Not dangerous."}}, -- Mawrat
	[155824] = {{"Interrupts", "Interrupt (!): Bone Armor (Large absorb)"},
				{"Important", "Explodes on Death"}}, -- Lumbering Creation
	[154129] = {{"Interrupts", "Interrupt (!!!): Conflagrate (Disorient + DoT)"},
				{"Interrupts", "Interrupt: Fuselighter (AoE. Much lower priority)"}}, -- Burning Emberguard
	[168002] = {{"Important", "Shackles: Run away when shackled. You're slowed so blinks / dashes if you have them."},
				{"Important", "Crippling Blow: Reduces healing by 25%. Not dangerous but take care."}}, -- Empowered Mawsworn Shackler
	[157807] = {{"Interrupts", "Interrupt (!): Wracking Torment (Channeled dmg)"},
				{"Interrupts", "Interrupt: Pain Spike (ST Nuke, lower prio)"}}, -- Mawsworn Soulweaver
	[155812] = {{"Important", "Will summon more skeletons, making this is a good priority target."},
				{"Interrupts", "Interrupt: Soul Blast / Soul Volley"}}, -- Mawsworn Ritualist
	[152708] = {{"Important", "Deafening Howl: Interrupts spell casts at the end. Outrangeable in groups."}}, -- Mawsworn Seeker
	[168107] = {{"Important", "You MUST avoid the traps on the ground. They stun you."},
				{"Important", "Otherwise doesn't do much. Just high ranged autoattack damage."}}, -- Empowered Mawsworn Interceptor
	[155831] = {{"Interrupts", "Interrupt (!): Dark Binding (Channeled dmg + slow)"},
				{"Interrupts", "Interrupt / Dispel: Cripple (atk spd slow)"}}, -- Mawsworn Soulbinder
	[168108] = {{"Important", "Interrupt Bone Armor, but otherwise just does high sustained melee dmg."}}, -- Empowered Lumbering Creation
	[155908] = {{"Interrupts", "Interrupt (!!): Wave of Suffering (large nuke)"}}, -- Deathspeaker
	[155828] = {{"Interrupts", "Interrupt (!!): Terrifying Roar (2s Fear). SHORT RANGE."}}, -- Runecarved Colossus
	[152508] = {{"Dodge", "Dodge: Goring Swipe (Knockback)"},
				{"Important", "Does have a second knock that you can't avoid, face your back to the wall."}}, -- Dusky Tremorbeast   // has knock, thrash not dodgeable
	[152905] = {{"Important", "Applies a haste debuff to the floor. Increases in intensity closer to the mob."},
				{"PriorityTargets", "Priority Target"}}, -- Tower Sentinel
	[169108] = {{"Interrupts", "Interrupt (!): Soul Blast / Soul Volley (Nukes)"}}, -- Empowered Mawsworn Ritualist
	[151127] = {{"Interrupts", "Interrupt (!!): Eternal Torment (Channeled Nuke)"},
				{"Interrupts", "Interrupt (!!): Wave of Suffering (AoE Nuke)"}}, -- Lord of Torment
	[154011] = {{"Important", ""}}, -- Armed Prisoner
	[165060] = {{"Important", "Hides as an anima power but you'll know that before you read this... woops."}}, -- Animimic (hides as a power)
	[168004] = {{"Important", ""}}, -- Empowered Imperial Consular
	[157809] = {{"Important", ""}}, -- Mawswarn Darkcaster
	[168110] = {{"Important", ""}}, -- Empowered Imperial Duelist
	[150965] = {{"Important", ""}}, -- Mawsworn Shackler
	[0] = {{"Important", ""}}, -- Default
	[0] = {{"Important", ""}}, -- Default
	[0] = {{"Important", ""}}, -- Default
	
	-- Coldheart
	[156157] = {{"Interrupts", "Interrupt: Shadow Rip (Nuke + DoT)."},
				{"Important", "If you're in a group spread out since Falling Strike hits in a 5yd AoE."},
				{"Important", "Purge or steal: Dark Fortress (-dmg taken)."}}, -- Coldheart Ascendant
	[156213] = {{"Interrupts", "Interrupt: Shadow Rip (Nuke + DoT)."},
				{"Important", "Purge or steal: Dark Fortress (-dmg taken)."}}, -- Coldheart Guardian
	[156219] = {{"Important", "Throws spears and dies quickly."},
				{"Important", "Purge or steal: Fallen Armaments (+haste)."}}, -- Coldheart Scout
	[156159] = {{"Important", "Will throw a net on you that stops you moving. Priority target."},
				{"Important", "Purge or steal: Fallen Armaments (+haste)."}}, -- Coldheart Javelineer
	[156244] = {{"Dodge", "Rebounding Blades: fires from the front of the mob and then comes back to him."}}, -- Winged Automaton
	[156226] = {{"Interrupts", "Interrupt (!): Shadow Storm (AoE dmg, can also be outranged)."}}, -- Coldheart Binder
	[156241] = {{"Interrupts", "Gains a stacking damage buff when you move. Stay still whenever possible and this is an easy kill."}}, -- Monstrous Guardian
	
	[168098] = {{"Interrupts", "Interrupt (!!): Terror (Long Fear, 20yd range)."},
				{"Important", "Will spam Shadow Spear on you for very high damage."},
				{"Important", "You'll want to use all of the control and self healing in your kit to keep yourself alive."},
				{"Important", "Use everything here, including DPS cooldowns."}}, -- Empowered Coldheart Agent
	[156245] = {{"Dodge", "Dodge: Thundering Stomp (10yrd range, BIG damage)."}}, --  Grand Automaton
	[156212] = {{"Interrupts", "Interrupt (!!): Terror (Long Fear, 20yd range)."},
				{"PriorityTargets", "Priority Target"}}, -- Coldheart Agent
	[156158] = {{"Interrupts", "Interrupt (!!): Crushing Shadows (Long Stun)"},
				{"Interrupts", "Interrupt: Shadow Bolt Volley (AoE Nuke)"}}, -- Adjutant Felipos (Rare)
	[168099] = {{"Important", "Will throw a net on you that stops you moving."},
				{"Important", "Spams spears on you. Pure DPS check before it kills you."}}, -- Empowered Coldheart Javelineer
	
	
	----- Mists -----
	[172995] = {{"Important", ""}}, -- Hydra Seed
	[164567] = {{"Important", "Focus Droman first to 20%. Feel free to cleave Ingra, especially if it's a single target DPS increase."},
				{"Important", "When Droman is low she'll stun Ingra and increase his dmg taken by 200% for 12s. Pop DPS cooldowns and burst."},
				{"Dodge", "DODGE: The blue frontal beam & the purple swirls. Avoid the black puddles."},
				{"Interrupts", "Interrupt (!): Spirit Bolt (Random target ST Nuke)."},
				{"HEALER", "Make sure you contribute damage to the burst phase. Every bit counts and incoming dmg is low."},
				}, -- Ingra Maloch
	[170217] = {{"Important", "Minigame is at 70, 40 and 10%. You'll need to kill the illusion that stands out from the others in Shape, Circle, or Opacity."},
				{"Important", "Shape: Leaf vs Flower. Opacity: Shapes can either be 'filled in' or 'clear'. Circle is self explanatory."},
				{"Important", "Save your cooldowns for 10% and you can burst her down before the third mini-game."},
				{"Important", "Interrupt(!!!): Patty Cake. Will chop the tank in half. MUST be interrupted by the tank themselves."},
				{"Dodge", "If the white fox touches you, it'll AoE freeze. You can CC it, and of course kite it."}}, -- Mistcaller
	[172312] = {{"Important", "DODGE THE GREEN SWIRLY. It'll knock you off the edge. Stand with your back to the bridge where possible."}}, -- Spinemaw Gorger
	[164501] = {{"Important", "Minigame is at 70, 40 and 10%. You'll need to kill the illusion that stands out from the others in Shape, Circle, or Opacity."},
				{"Important", "Shape: Leaf vs Flower. Opacity: Shapes can either be 'filled in' or 'clear'. Circle is self explanatory."},
				{"Important", "Save your cooldowns for 10% and you can burst her down before the third mini-game."},
				{"Important", "Interrupt(!!!): Patty Cake. Will chop the tank in half. MUST be interrupted by the tank themselves."},
				{"Dodge", "If the white fox touches you, it'll AoE freeze. You can CC it, and of course kite it."}},-- Mistcaller
	[164517] = {{"Important", "Mind Link: Quickly spread out to break the chains."},
				{"Important", "Kite and DPS down the Larvas. They'll fixate a player in a later boss phase."},
				{"Important", "Interrupt (!!): Parasitic X (will pacify / stun / MC a player depending on phase)."},
				{"Dodge", "Dodge: green and blue swirls. The green stuff on the floor from Larva deaths."}}, -- Tred'ova
	[166301] = {{"Important", "Moderate tank damage."}}, -- Mistveil Stalker
	[167111] = {{"Important", "Interrupt(!!): Stimulate Resistance (large AoE absorb, can be purged)"},
				{"Important", "Interrupt(!!): Stiumlate Regeneration (large AoE healing channel)"}}, -- Spinemaw Staghorn
	[173655] = {{"Important", "Puts down a large healing pool. You MUST move her out of this asap."}, {"Important", "Has a large AoE frontal cone. The tank can also dodge it after cast begins."}}, -- Mistveil Matriarch
	[164804] = {{"Important", "Focus Droman first to 20%. Feel free to cleave Ingra, especially if it's a single target DPS increase."},
				{"Important", "When Droman is low she'll stun Ingra and increase his dmg taken by 200% for 12s. Pop DPS cooldowns and burst."},
				{"Dodge", "DODGE: The blue frontal beam & the purple swirls. Avoid the black puddles."},
				{"Interrupts", "Interrupt (!): Spirit Bolt (Random target ST Nuke)."},
				{"HEALER", "Make sure you contribute damage to the burst phase. Every bit counts and incoming dmg is low."}}, -- Droman Oulfarran
	[173720] = {{"Important", "Lightly Spread. Run 12+ yards away from the boss during the Poisonous Secretions cast."}, {"Important", "Avoid his frontal attack lest you be tongue lashed."}}, -- Mistveil Gorgegullet
	[167116] = {{"Important", "These patrol around. Try and pull them early so they don't surprise you."},
				{"Important", "Will poison random players. Dispel it if you can."}}, -- Spinemaw Reaver
	[164920] = {{"Important", "Dispel: Soul Split (Increased Damage Taken, DANGEROUS)"}, {"Tank", "The mob will buff itself with Hand of Thros, ideally kite it during this time to prevent it self-healing."},
				{"HEALER", "You must dispel the Soul Split debuff ASAP or the tank will need huge healing."}}, -- Drust Soulcleaver
	[165108] = {{"Important", ""}}, -- Illusionary Clone
	[166304] = {{"Important", "Spread out with the Anima Injection debuff (circle AoE around you)."}}, -- Mistveil Stinger
	[167113] = {{"Important", "Move out of the group if you get the Volatile Acid debuff. Can be kicked but low priority compared to the others in the pack."}}, -- Spinemaw Acidgullet
	[165512] = {{"Important", ""}}, -- Cocoon of Lakali
	[172992] = {{"Important", ""}}, -- Overgrown Hydra
	[165251] = {{"Important", "RUN AWAY. You can also CC the poor fox."}}, -- Illusionary Vulpin
	[164929] = {{"Dodge", "LARGE FRONTAL CONE. Basically a big blue kamehameha that will disorient you."}, {"Important", "Will cocoon a random player. Break it with damage."}, {"Important", "Becomes friendly at 20% and heals / restores mana"}, {"HEALER", "The disorient is dispellable because we both know at least one DPS is walking into it"}}, -- Tirnenn Villager
	[164921] = {{"Interrupts", "Interrupt(!): Harvest Essence (AoE Channel + Heal"}}, -- Drust Harvester
	[167117] = {{"Dodge", "Drops an acid pool on death."}}, -- Spinemaw Larva
	[166276] = {{"Important", "Bucking Rampage can be stunned during it's initial cast."}}, -- Mistveil Guardian
	[166299] = {{"Important", "Interrupt(!): Nourish the Forest (large AoE HoT, can also be purged / spellstolen)"}}, -- Mistveil Tender
	[164926] = {{"Important", "For the dobule Boughbreaker pack, kill them one at a time because they do a large unavoidable AoE channel at 50% health."}}, -- Drust Boughbreaker
	[165560] = {{"Important", ""}}, -- Gormling Larva
	[166275] = {{"Important", "Interrupt(!!): Bramblethorn Coat (shield that AoE roots when broken)."}}, -- Mistveil Shaper
	[173714] = {{"Important", ""}}, -- Mistveil Nightblossom
	[170229] = {{"Important", "Focus Droman first to 20%. Feel free to cleave Ingra, especially if it's a single target DPS increase."},
				{"Important", "When Droman is low she'll stun Ingra and increase his dmg taken by 200% for 12s. Pop DPS cooldowns and burst."},
				{"Dodge", "DODGE: The blue frontal beam and the purple swirls"},
				{"HEALER", "Make sure you contribute damage to the burst phase. Every bit counts and incoming dmg is low."}}, -- Droman Oulfarran
	[165111] = {{"Important", "Explodes on death, cursing all allies AND ENEMIES within 30 yards, increasing dmg taken. Stacks."}, {"Important", "Inflict a small 8 yd bleed. Lightly spread"}}, -- Drust Spiteclaw
	[163058] = {{"Important", "SOOTHE: Protector's Rage (+50% damage buff)"}, {"Important", "If you don't have a soothe available, kill this mob first since it gains the enrage effect on ally death."},
				{"Important", "Frontal Cleave"}, {"TANK", "You can move out of Spear Flurry once the cast begins."}}, -- Mistveil Defender
	[171772] = {{"Important", "SOOTHE: Protector's Rage (+50% damage buff)"}, {"Important", "If you don't have a soothe available, kill this mob first since it gains the enrage effect on ally death."},
				{"Important", "Frontal Cleave"}, {"TANK", "You can move out of Spear Flurry once the cast begins."}}, -- Mistveil Defender
	[172991] = {{"Important", "Dispel: Soul Split (Increased Damage Taken)"}, {"Tank", "The mob will buff itself with Hand of Thros, ideally kite it during this time to prevent it self-healing."}}, -- Drust Soulcleaver
	[168988] = {{"Important", "Break your ally out! Quickly! He's losing DPS!"}}, -- Overgrowth
	[173680] = {{"Important", "+10% primary stat for 10 minutes."}}, -- Savory Statshroom
	[165120] = {{"Important", "LARGE FRONTAL CONE. Basically a big blue kamehameha that will disorient you."}, {"Important", "Will cocoon a random player. Break it with damage."}, {"Important", "Becomes friendly at 20% and heals / restores mana"}, {"HEALER", "The disorient is dispellable because we both know at least one DPS is walking into it"}}, -- Tirnenn Villager
	[170218] = {{"Important", "Focus Droman first to 20%. Feel free to cleave Ingra, especially if it's a single target DPS increase."},
				{"Important", "When Droman is low she'll stun Ingra and increase his dmg taken by 200% for 12s. Pop DPS cooldowns and burst."},
				{"Dodge", "DODGE: The blue frontal beam and the purple swirls"},
				{"HEALER", "Make sure you contribute damage to the burst phase. Every bit counts and incoming dmg is low."}}, -- Droman Oulfarran
	[172647] = {{"Important", ""}}, -- Parasitic Infestor
	[173679] = {{"Important", "+10% Stamina for 10 minutes."}}, -- Tasty Toughshroom
	[167707] = {{"Important", "Dawww"}}, -- Tirnenn Sapling
	
	----- De Other Side -----
	
	[169769] = {{"Important", "Master of Dance has three possible vectors which he'll cast randomly. Left, Right, and 'Close' (the front half of the platform)."},
				{"Important", "Watch the boss closely to see where he'll slam next, and move accordingly."},
				{"Important", "During Shatter Reality, take one of the portals that spawn, kill the add in front of you, then click the giant totem"},
				{"Important", "Boss dies at 10%. Each add killed removes 20% and gives you a large haste buff."}}, -- Mueh'zala
	[164450] = {{"Important", "The traps on the ground throw you into the air. Walk into them when:"},
				{"Important", "- You have a bomb debuff that expires within 2s OR"},
				{"Important", "- The Explosive Contrivance boss cast finishes with 2s."}}, -- Dealer Xy'exa
	[166473] = {{"Important", "Focus the fixating adds as priority. Kill them away from the boss since they drop big red pools on death."},
				{"Important", "Spread with Corrupted Blood. It spreads out of control quickly otherwise."},
				{"Important", "Save DPS cooldowns for the Blood Barrier phase. Interrupt Blood Barrage once the shield is broken."}}, -- Hakkar the Soulflayer
	[101976] = {{"Important", "VERY high tank damage. Save defensives for high bleed stacks."},
				{"Important", "Summons two squirrel bombs. Click them to disarm."},
				{"Important", "When targeted by a blue circle, run it close to Millificent to stun her. Lets tank reset bleed."}}, -- Millificent Manastorm
	[169905] = {{"Important", "Soothe: Undying Rage (Unkillable + huge dmg inc)"},
				{"Dodge", "Dodge the giant red whirlwind. Scary."}}, -- Risen Warlord
	[164861] = {{"Important", "Interrupt: Bark Binder (Minor absorb)"}}, -- Spriggan Barkbinder
	[170147] = {{"Important", ""}}, -- Volatile Memory
	[171184] = {{"Important", "Mini-boss that can be skipped by sticking hard to the right."},
				{"Important", "Has a short-range fear. Run out during it's long 3s cast."}}, -- Mythresh, Sky's Talons
	[168934] = {{"Important", "Don't bother killing the mask spawns. It's easier to just focus on dodging the swirls."},
				{"Important", "Rage is a heavy AoE damage channel. It can be interrupted via displacement. Else, pop defensive cooldowns."},
				{"PriorityTargets", "Priority Target"}}, -- Enraged Spirit
	[170490] = {{"Important", "Interrupt (!): Heal (... Heals)"},
				{"HEALER", "Dispel the Shadow Word: Pain."}}, -- Atal'ai High Priest
	[164558] = {{"Important", "Focus the fixating adds as priority. Kill them away from the boss since they drop big red pools on death."},
				{"Important", "Spread with Corrupted Blood. It spreads out of control quickly otherwise."},
				{"Important", "Save DPS cooldowns for the Blood Barrier phase. Interrupt Blood Barrage once the shield is broken."}}, -- Hakkar the Soulflayer
				
	[174327] = {{"Important", ""}}, -- Mask of Bwonsamdi
	[164556] = {{"Important", "Intercept the beams that fire from Crystals around the room. They give dmg buff."},
				{"Important", "Two players targeted by Echo Finger Laser. Run to either side of Millhouse to stun him."},
				{"Dodge", "Move from the laser after the initial hit fires to dodge the stun."}}, -- Millhouse Manastorm
	[171342] = {{"Important", ""}}, -- Juvenile Runestag
	[164862] = {{"Important", "Jump to remove the curse. Can also be decursed. Not dangerous."}}, -- Weald Shimmermoth
	[167962] = {{"Important", "Line of sight around a pillar during Haywire (Large AoE damage)."}}, -- Defunct Dental Drill
	[164873] = {{"Important", ""}}, -- Runestag Elderhorn
	
	[167964] = {{"Important", "Random player will get a circle that'll stun. Spread out for it."}}, -- 4.RF-4.RF
	[166608] = {{"Important", "Master of Dance has three possible vectors which he'll cast randomly. Left, Right, and 'Close' (the front half of the platform)."},
				{"Important", "Watch the boss closely to see where he'll slam next, and move accordingly."},
				{"Important", "During Shatter Reality, take one of the portals that spawn, kill the add in front of you, then click the giant totem"},
				{"Important", "Boss dies at 10%. Each add killed removes 20% and gives you a large haste buff."}}, -- Mueh'zala
				
	[168942] = {{"Important", "Purge / Steal (!!): Death's Embrace (100% haste)"},
				{"Important", "Erupting Darkness is a line knockback. Avoid the beam or you'll be knocked off the platform."}}, -- Death Speaker
	[170486] = {{"Important", "Stun Interrupt (!!): Devoted Sacrifice (Transforms into dangerous mob)"}}, -- Atal'ai Devoted
	[170480] = {{"Important", "Turns into a dangerous spirit when killed. RUN!"},
				{"Important", "Stun Interrupt (!): Bladestorm (AoE damage, can also run away)"}}, -- Atal'ai Deathwalker
				
	[170572] = {{"Important", "Interrupt (!!): Lightning Discharge (AoE Nuke)"},
				{"Important", "Interrupt (!): Healing Wave (A heal, in wave form)"},
				{"Important", "Interrupt (!): Hex (ST CC)"}}, -- Atal'ai Hoodoo Hexxer
	[164555] = {{"Important", "VERY high tank damage. Save defensives for high bleed stacks."},
				{"Important", "Summons two squirrel bombs. Click them to disarm."},
				{"Important", "When targeted by a blue circle, run it close to Millificent to stun her. Lets tank reset bleed."}}, -- Millificent Manastorm
	[171181] = {{"Important", "Stacks a tank debuff. Not overly dangerous."}}, -- Territorial Bladebeak
	[175588] = {{"Important", ""}}, -- Acrobatic Steward
	[167965] = {{"Important", "Interrupt (!): Lubricate (reduces hit chance)"},
				{"Important", "Interrupt (!): Self-Cleaning Cycle (Channeled Heal)"}}, -- Lubricator
	[168141] = {{"Important", "On our team... for now..."}}, -- Bwonsamdi
	[167963] = {{"Important", "Interrupt: Discharge (ST nuke)"},
				{"Important", "Will do a big spinny AoE attack. It doesn't hurt too much but be careful."}}, -- Headless Client
	[169501] = {{"Important", ""}}, -- Shadowlands Wormhole
	[171343] = {{"Important", "Soothe: Angering Shriek (AoE dmg increase)"}, {"Important", "Stacks a debuff on the tank but it isn't very dangerous."}}, -- Bladebeak Matriarch
	[170488] = {{"PriorityTargets", "Priority Target"}, {"Important", "Fixates a random player. Drops a large red pool on death."}}, -- Son of Hakkar
	[167967] = {{"Important", "Interrupt (!!): Essential Oil (ST Nuke to random target)."}}, -- Sentient Oil
	[168986] = {{"Important", ""}}, -- Skeletal Raptor
	
	[168992] = {{"Dodge", "Dodge the little purple flowers. You can also stun the cast (Dark Lotus)."}}, -- Risen Cultist
	[164857] = {{"Important", ""}}, -- Spriggan Mendbender
	[168949] = {{"Important", "Frontal knockback"}}, -- Risen Bonesoldier
	[169912] = {{"Important", ""}}, -- Enraged Mask
	[171341] = {{"Important", "Light tank damage."}}, -- Bladebeak Hatchling
	[165905] = {{"PriorityTargets", "Priority Target"}, {"Important", "Fixates a random player. Drops a large red pool on death."}}, -- Son of Hakkar
	[168326] = {{"Important", ""}}, -- Shattered Visage
	[173458] = {{"Important", ""}}, -- Meikothe, Clutch Guardian
	[170483] = {{"Important", ""}}, -- Atal'ai Deathwalker's Spirit
	[171333] = {{"Important", "Stun Interrupt (!!): Devoted Sacrifice (Transforms into dangerous mob)"}}, -- Atal'ai Devoted
	[167966] = {{"Important", "Explode on touching player."},
				{"Important", "Yes Mass Grip and knockbacks all work. Do with this information what you will."}}, -- Experimental Sludge
	[171472] = {{"Important", ""}}, -- Bwonsamdi
	
	----- Sanguine Depths -----
	[165318] = {{"Important", "At 100 energy casts Gloom Squall. You need to use your big shield ability and stack in it."},
				{"Important", "When marked with Wicked Rush, spread out."},
				{"Dodge", "Does large line attacks across the arena. Once a line fires, move into it to dodge the others."},
				{"Important", "Dies at 50% health."}}, -- General Kaal
	[162103] = {{"Important", "SPREAD during Castigate. Pop a defensive because the damage is very high."},
				{"Important", "Two orbs will fly around the arena. One close to the outer wall, one closer to the inner wall."},
				{"Important", "Once an orb passes you, move to that 'lane', alternating with each orb that passes."},
				{"Important", "Hard focus on burning down the adds, then move once they die since they'll drop a puddle."}}, -- Executor Tarvold
	[166689] = {{"Important", ""}}, -- General Draven
	[162100] = {{"Important", "During Juggernaut Rush: Stack in a line to split the damage."},
				{"Important", "After Severing Smash: Soak the orbs one by one. They deal AoE dmg to the party so take care."},
				{"Important", "Orbs that hit the boss will heal him."},
				{"Interrupts", "Interrupt (!!): Hungering Drain (AoE Dmg + boss dmg buff)"}}, -- Kryxis the Voracious
	[162102] = {{"Important", "During Rite of Supremacy: soak 3-4 yellow orbs. Pop a defensive if you come up short."},
				{"Dodge", "Dodge the big yellow swirls. These really hurt."},
				{"TANK", "Pop a defensive during Iron Spikes."}}, -- Grand Proctor Beryllia
	[169617] = {{"Important", ""}}, -- Duraka the Unbreakable
	[162040] = {{"PriorityTargets", "Priority Target"}, {"Interrupts", "Interrupt (!): Gloom Burst (ST Nuke)"},
				{"Important", "When chained: move away from the boss to break."}}, -- Grand Overseer
	[166396] = {{"Important", "Stun Interrupt: Animate Weapon. Wep will despawn when mob dies."}}, -- Noble Skirmisher
	[171455] = {{"Important", "These continually spawn in a gauntlet fashion but aren't at all dangerous."}}, -- Stonewall Gargon
	[174001] = {{"Important", ""}}, -- Anima Collector
	[162099] = {{"Important", "At 100 energy casts Gloom Squall. You need to use your big shield ability and stack in it."},
				{"Important", "When marked with Wicked Rush, spread out."},
				{"Dodge", "Does large line attacks across the arena. Once a line fires, move into it to dodge the others."},
				{"Important", "Dies at 50% health."}}, -- General Kaal
	[162057] = {{"Important", "DANGEROUS frontal cone bleed. Face away from party."},
				{"Dodge", "Dodge: The brown swirls will knock you up."},
				{"Interrupts", "Interrupt (!): Stoneskin (dmg reduction, can be stolen)"}}, -- Chamber Sentinel
	[168591] = {{"Important", ""}}, -- Ravenous Dreadbat
	[162039] = {{"Interrupts", "Interrupt (!): Wrack Soul (Dispellable DoT)"},
				{"Interrupts", "Interrupt (!!): Curse of Suppression (5s silence)"},
				{"Important", "Stay lightly spread."}}, -- Wicked Oppressor
	[171448] = {{"Important", "Avoid the big red traps."}}, -- Dreadful Huntmaster
	[171799] = {{"Important", ""}}, -- Depths Warden
	[162038] = {{"Important", "Will thrust in front of him. Next thrust cast will reactivate previous thrusts."},
				{"Important", "Can play around this mechanic by tanking him in one place and sidestepping the thrust."},
				{"Important", "He will drop a pool that increases his dmg, but this isn't dangerous if you dodge thrusts."}}, -- Regal Mistdancer
	[168882] = {{"Important", ""}}, -- Fleeting Manifestation
	[165076] = {{"Interrupts", "Interrupt: Engorge (Explodes on death for number of Engorge stacks."}}, -- Gluttonous Tick
	[171376] = {{"Dodge", "Dodge: the big tornado. It's speedy."},
				{"Important", "Will empower one of the little grubs around him. Focus that target down."}}, -- Head Custodian Javlin
	[167956] = {{"Important", ""}}, -- Dark Acolyte
	[162133] = {{"Important", "At 100 energy casts Gloom Squall. You need to use your big shield ability and stack in it."},
				{"Important", "When marked with Wicked Rush, spread out."},
				{"Important", "Does large line attacks across the arena. Once a line fires, move into it to dodge the others."},
				{"Important", "Dies at 50% health."}}, -- General Kaal
	[162049] = {{"Important", ""}}, -- Vestige of Doubt
	[162047] = {{"Dodge", "Dodge: blue swirl. Will heal the boss if hit."}}, -- Insatiable Brute
	[171384] = {{"Dodge", "Dodge: the big fire swirls."}}, -- Research Scribe
	[172265] = {{"Interrupts", "Interrupt (!): Explosive Anger (AoE damage, does increase player dmg so don't kick if you're healthy)"}}, -- Remnant of Fury
	[162041] = {{"Important", "If Empowered then focus down. Otherwise not dangerous."}}, -- Grubby Dirtcruncher
	[162056] = {{"Important", ""}}, -- Rockbound Sprite
	[168457] = {{"Important", ""}}, -- Stonewall Gargon
	[169903] = {{"Important", ""}}, -- Sinfall Flyer
	[162051] = {{"Important", ""}}, -- Frenzied Ghoul
	[167955] = {{"Important", ""}}, -- Sanguine Cadet
	[169753] = {{"Important", "Not particularly dangerous."}}, -- Famished Tick
	[166219] = {{"Important", ""}}, -- General Draven
	[165073] = {{"Important", ""}}, -- Forlorn Captive
	[162046] = {{"Important", "Not dangerous."}}, -- Famished Tick
	[171805] = {{"Dodge", "Dodge: the big fire swirls."}}, -- Research Scribe
	[168594] = {{"Important", ""}}, -- Chamber Sentinel
	[168058] = {{"Important", ""}}, -- Infused Quill-feather
	[156540] = {{"Important", ""}}, -- Scrawny Rat
	[166589] = {{"Important", "Despawns when owner dies."}}, -- Animated Weapon
	[165556] = {{"Important", ""}}, -- Fleeting Manifestation
	[168703] = {{"Important", ""}}, -- Spider
	[162158] = {{"Important", ""}}, -- Starving Prisoner
	[170129] = {{"Important", ""}}, -- Lingering Manifestation
	[166692] = {{"Important", ""}}, -- Sinfall Defender
	[166691] = {{"Important", ""}}, -- Sinfall Defender
	[169898] = {{"Important", ""}}, -- Sinfall Flyer
	
	----- Halls of Atonement -----
	[164218] = {{"Dodge", "Will throw statues. Statues face the direction they're going to fly and can be dodged."},
				{"Important", "Ritual of Woe: One player must stand between the boss and each statue. If not, you'll take massive AoE dmg"},
				{"Important", "Pop defensives during the Ritual since the damage is quite high even with perfect play."},
				{"Important", "Ritual of Woe is cast at 70% and 40% health."},
				{"HEALER", "Allocate a cooldown to each Ritual of Woe."}}, -- Lord Chamberlain
	[165410] = {{"Important", "Ghosts will fixate players. Run them into the jars around the room."},
				{"Important", "Ghosts do an AoE around them. It hurts. Keep your distance."},
				{"Interrupts", "Interrupt (!!!): Volley of Power (large AoE nuke)"},
				{"Interrupts", "Interrupt (!): Bolt of Power (med nuke on tank)"}}, -- High Adjudicator Aleez
	[165408] = {{"Important", "(Mythic) Stay in the red circle or you'll be perma feared."},
				{"Important", "The beam can CHANGE DIRECTIONS. Stay in the middle of the two beams so you can move quickly."},
				{"Important", "(Heroic) A random player will be feared. You can dispel them."},
				{"Important", "If you must run through glass, pop defensives."}}, -- Halkias
				
	[164563] = {{"Important", "Can be enraged by nearby Houndmasters. Soothe or kite. VERY high tank damage."}}, -- Vicious Gargon
	[167876] = {{"Important", "Clear out the Tormented Souls before you DPS him. He'll drain them to heal otherwise."}}, -- Inquisitor Sigar
	[156827] = {{"Important", "When targeted with leap (circle): stand near dead statues to shatter them."},
				{"Important", "Non-shattered adds will respawn."},
				{"Important", "Focus adds down first, shatter them with the debuff and avoid the red pools"}}, -- Echelon
	[174175] = {{"Important", "VENTHYR: Press your extra action button when near to control the Stoneborn."},
				{"Important", "Frontal Cone."}}, -- Loyal Stoneborn
	[164557] = {{"Important", "Thrash is a large AoE damage ability. This can be outranged on high keys, but otherwise pop defensives."},
				{"Important", "Each Shard of Halkias you kill will restore anima to Halkias. Kill all three to summon boss."}}, -- Shard of Halkias
	[164562] = {{"Interrupts", "Stun Interrupt (!!): Loyal Beasts (large enrage effect, soothable)"}}, -- Depraved Houndmaster
	[164185] = {{"Important", "When targeted with leap (circle): stand near dead statues to shatter them."},
				{"Important", "Non-shattered adds will respawn."},
				{"Important", "Focus adds down first, shatter them with the debuff and avoid the red pools"}}, -- Echelon
	[165515] = {{"Important", "FRONTAL CONE"}}, -- Depraved Darkblade
	[165529] = {{"Interrupts", "Interrupt (!!): Collect Sins (Mass add summon)"},
				{"Interrupts", "Interrupt (!): Siphon Life (health drain)"}}, -- Depraved Collector
	[165414] = {{"Interrupts", "Interrupt (!): Curse of Obliteration (AoE Shadow Dam around target."}}, -- Depraved Obliterator
	[167610] = {{"Important", "Will bite your ankles and stun you. You can AoE stun them then burn down."}}, -- Stonefiend Anklebiter
	[165415] = {{"Important", ""}}, -- Toiling Groundskeeper
	[167612] = {{"Important", "Dispel (!!): Stony Veins. Kills at 10 stacks."}}, -- Stoneborn Reaver
	[167607] = {{"Important", "FRONTAL CONE - Knocks back targets."}}, -- Stoneborn Slasher
	[175588] = {{"Important", ""}}, -- Acrobatic Steward
	[164363] = {{"Important", ""}}, -- Undying Stonefiend
	[165913] = {{"Important", ""}}, -- Ghastly Parishioner
	[167611] = {{"Important", ""}}, -- Stoneborn Eviscerator
	[167892] = {{"PriorityTargets", "Priority target. Kill before Sigar."}}, -- Tormented Soul
	[167806] = {{"Important", ""}}, -- Animated Sin
	[167615] = {{"Important", ""}}, -- Depraved Darkblade
	[167898] = {{"Important", "Will fixate a random player. Kite and kill."}}, -- Manifestation of Envy
	[175577] = {{"Important", ""}}, -- Sinfall Flyer  
	
	----- Plaguefall -----
	[164266] = {{"Important", "No mechanics happening: stay stacked."},
				{"Important", "Shadow Ambush: Run the circle out of the party, then restack after the stun."},
				{"Important", "When Brood Assasins are cast, run around the webs casting zone AoEs or knockbacks to reveal spiders."},
				{"Important", "Focus these spiders down since they're very dangerous."},
				{"Important", "If any players make mistakes and are webbed, break them out ASAP."}}, -- Domina Venomblade
	[164967] = {{"Important", "HARD focus the Plague Bomb add before it completes it's channel."},
				{"Important", "Tank the Congealed Slime away from the Plague Bomb. It reduces dmg by 75%."},
				{"Important", "Pull the trash on every platform BACK before you engage boss. He will jump between platforms."}}, -- Doctor Ickus
	[164267] = {{"Important", "Tentacles spawn in multiple patterns and crash down a few seconds later."},
				{"Important", "Dodging them is an absolute priority."},
				{"Important", "Tank should soak the small circle under the add or it'll explode."},
				{"Important", "Focus on survivability. Boss doesn't have much health."}}, -- Margrave Stradama
	[174195] = {{"Important", ""}}, -- Hairball
	[164255] = {{"Dodge", "Slive Wave: Large cone at random player. Stay close to boss to dodge."},
				{"Important", "You MUST kill the big ooze when it spawns. You can also CC it. It mustn't touch the boss."},
				{"Important", "Once the big ooze is dead, kill as many smaller oozes as possible."}}, -- Globgrog
	[163857] = {{"Important", "HEAVY tank damage, but slow. Easy to kite."},
				{"Important", "Ickor will buff one of them. Make sure that it's slowed and kited."}}, -- Plaguebound Devoted
	[163892] = {{"Important", ""}}, -- Rotting Slimeclaw
	[168969] = {{"Important", "Not particularly dangerous."}}, -- Gushing Slime
	[165357] = {{"Important", ""}}, -- Pestilence Slime
	[163894] = {{"Dodge", "FRONTAL CONE: Festering Belch (tank can dodge after cast start"}}, -- Blighted Spinebreaker
	[165010] = {{"Important", ""}}, -- Congealed Slime
	[168627] = {{"Important", ""}}, -- Plaguebinder
	[168580] = {{"Important", ""}}, -- Plagueborer
	[168365] = {{"Important", ""}}, -- Fungret Shroomtender
	[163891] = {{"Important", ""}}, -- Rotmarrow Slime
	[168886] = {{"Important", ""}}, -- Virulax Blightweaver
	[169498] = {{"PriorityTargets", "Prio Target. Must die before cast ends."}}, -- Plague Bomb
	[163882] = {{"Interrupts", "Interrupt: Creepy Crawlers (summons adds)"}}, -- Decaying Flesh Giant
	[168153] = {{"Important", "Knocks tank back. Just don't tank near the cliff."}}, -- Plagueroc
	[168396] = {{"Important", "Will summon oozes that run to him and heal. Focus them down. Can also be CC'd."}}, -- Plaguebelcher
	[171474] = {{"Important", ""}}, -- Finger Food
	[168878] = {{"Important", "Will blow itself up. Explosion hits allies and enemies alike."}}, -- Rigged Plagueborer
	[173840] = {{"Important", ""}}, -- Plaguebound Devoted
	[168310] = {{"Important", "Knocks tank back. Just don't tank near the cliff."}}, -- Plagueroc
	[170474] = {{"Important", "Break out of stealth with zone AoE and then focus down."}}, -- Brood Assassin
	[171887] = {{"Important", ""}}, -- Slimy Smorgasbord
	[164737] = {{"Important", "Will hide Stealthlings somewhere. You need to AoE CC them or they'll hard nuke a random player."},
				{"Important", "Enveloping Webbing is a channeled root which isn't dangerous."}}, -- Brood Ambusher
	[168578] = {{"Interrupts", "Interrupt (!): Wonder Grow (dmg buff, stealable)"}}, -- Fungalmancer
	[168572] = {{"Important", "Has a channeled Bladestorm. Consider CC because it's tough to dodge without pulling more mobs."}}, -- Fungi Stormer
	[163862] = {{"Interrupts", "Stun Interrupt (!): Bulwark of Maldraxxus (bubble that reduces dmg by 90%)"}}, -- Defender of Many Eyes
	[165430] = {{"Important", ""}}, -- Malignant Spawn
	[163915] = {{"Important", ""}}, -- Hatchling Nest
	[169696] = {{"Important", ""}}, -- Mire Soldier
	[168837] = {{"Important", ""}}, -- Stealthling
	[169861] = {{"Important", "Will jump between packs when low. You can mostly focus on just killing the skeletons."}}, -- Ickor Bileflesh
	[168393] = {{"Important", "Will summon oozes that run to him and heal. Focus them down. Can also be CC'd."}}, -- Plaguebelcher
	[167493] = {{"Important", ""}}, -- Venomous Sniper
	[169501] = {{"Important", ""}}, -- Shadowlands Wormhole
	[168361] = {{"Important", ""}}, -- Fen Hornet
	[168022] = {{"Important", "Will grab the tank. Don't pull with too many other mobs but otherwise very easy."}}, -- Slime Tentacle
	[164705] = {{"Important", ""}}, -- Pestilence Slime
	[169159] = {{"Important", "Explodes on death. Hits enemy mobs!"}}, -- Unstable Canister
	[164362] = {{"Important", ""}}, -- Slimy Morsel
	[170851] = {{"Important", ""}}, -- Volatile Plague Bomb
	[168574] = {{"Important", ""}}, -- Pestilent Harvester
	[170927] = {{"Important", ""}}, -- Erupting Ooze
	[168579] = {{"Important", ""}}, -- Fen Hatchling
	[169430] = {{"Important", ""}}, -- Ur'zul
	[168932] = {{"Important", ""}}, -- Doomguard
	[172093] = {{"Important", ""}}, -- Hearty Haunch
	[164707] = {{"PriorityTargets", "Prio target. Reduces nearby enemy damage taken by 75%"}}, -- Congealed Slime
	[168891] = {{"Important", ""}}, -- Rigged Plagueborer
	[169421] = {{"Important", ""}}, -- Felguard
	[168968] = {{"Important", ""}}, -- Plaguebound Fallen
	[168907] = {{"Important", "Will grab the tank. Don't pull with too many other mobs but otherwise very easy."}}, -- Slime Tentacle
	[169425] = {{"Important", ""}}, -- Felhound
	[164552] = {{"Important", ""}}, -- Rotmarrow Slime
	[172064] = {{"Important", ""}}, -- Unstable Larva
	[170021] = {{"Important", ""}}, -- Gushing Ooze
	[169429] = {{"Important", ""}}, -- Shivarra
	[164550] = {{"Important", ""}}, -- Slithering Ooze
	[168747] = {{"Important", ""}}, -- Venomfang
	[169265] = {{"Important", ""}}, -- Creepy Crawler
	[169426] = {{"Important", ""}}, -- Infernal
	[168398] = {{"PriorityTargets", "Priority Target"}}, -- Slimy Morsel
	[173360] = {{"Important", "Will summon oozes that run to him and heal. Focus them down. Can also be CC'd."}},
	[173339] = {{"Important", "Will summon oozes that run to him and heal. Focus them down. Can also be CC'd."}},
	[172335] = {{"Important", "Will summon oozes that run to him and heal. Focus them down. Can also be CC'd."}},
	[173359] = {{"Important", ""}}, -- Slimy Morsel
	[172336] = {{"Important", ""}}, -- Decaying Flesh Giant
	[173361] = {{"Important", ""}}, -- Slimy Morsel
	[168394] = {{"Important", ""}}, -- Slimy Morsel
	[172282] = {{"Important", ""}}, -- Web Wrap
	[169428] = {{"Important", ""}}, -- Wrathguard
	[171188] = {{"Important", ""}}, -- Plaguebound Devoted
	
	----- Theater of Pain -----
	[162329] = {{"Important", "Big priority on killing the banner. Stacking slow will kill you during the dance."},
				{"Important", "Dance involves watching where the boss is facing and avoiding the receptacle."},
				{"Important", "Two DPS will be pulled down to duel. In key pushes let a player win. In M0, it's to the DEATH."}}, -- Xav the Unfallen
	[162309] = {{"Important", "Your soul will be pulled from your body. You'll take heavy damage until you retrieve it."},
				{"Important", "Stand behind the grasping roots so that when your soul is taken from you, it doesn't move far."},
				{"Important", "Dispel: Phantasmal Parasite. Two go out so dispel one and defensive the other."}}, -- Kul'tharok
	[165946] = {{"Important", "Most Dangerous: Sub 50% health boss spawns ghost horses that will run across the room."},
				{"Important", "Position yourself near a wall and make dodging them your highest priority."},
				{"Dodge", "Dodge: The big black beam. The soldiers that fight in swirls in the middle of the room."},
				{"Important", "Run hard against the Grasping Rift. It'll kill you if it can suck you in."}}, -- Mordretha, the Endless Empress
	[164451] = {{"Important", "Recommended Kill Order: Sathel -> Paceran -> Dessia"},
				{"Important", "When below 40%: Absorb Shield + Fixates a random player. CAN BE REMOVED WITH SOOTHE."}}, -- Dessia the Decapitator
	[162317] = {{"Dodge", "Try and stay in the center of the room to dodge the wall of hooks."},
				{"Important", "Boss will sometimes pull you before hook wall. Quickly find the gap."},
				{"Important", "Try and kill the little adds away from teh center since they drop pool on death."}}, -- Gorechop
	[170690] = {{"Important", "Disease: Reduces tank health by 5% per stack."},
				{"Interrupts", "Interrupt: Meat Shield (Absorb)"}}, -- Diseased Horror
	[170850] = {{"Important", "Soothe: Raging Tantrum (AoE channeled damage)."},
				{"Important", "Side step the Horn Rush. It has a 2s cast time."}}, -- Raging Bloodhorn
	[164461] = {{"Important", "Recommended Kill Order: Sathel -> Paceran -> Dessia"},
				{"Important", "When below 40%: Shields for 30% life and becomes interruptable while it holds."}}, -- Sathel the Accursed
	[164463] = {{"Important", "Recommended Kill Order: Sathel -> Paceran -> Dessia"}, 
				{"Important", "When below 40%: Players get debuff that spawns mushrooms near them."},
				{"Important", "Encounter Warning: Xira will pop out and stun a random player. CC her to break it."}}, -- Paceran the Virulent
	[164464] = {{"Important", "Will stun a random player. CC her to break it."}}, -- Xira the Underhanded
	[175588] = {{"Important", ""}}, -- Acrobatic Steward
	[174210] = {{"Interrupts", "Interrupt (!!): Withering Discharge (AoE disease that reduces dam / healing)."}}, -- Blighted Sludge-Spewer
	[164506] = {{"PriorityTargets", "Priority Target"},
				{"Important", "Gives allies an AoE damage reduction aura."}}, -- Ancient Captain
	[174197] = {{"Important", "Adds healing absorb to target. Heal through it."},
				{"Interrupts", "Interrupt (!): Unholy Fervor (buffs ally: heals on atk)"}}, -- Battlefield Ritualist
	[169927] = {{"Interrupts", "Stun Interrupt: Devour Flesh (health drain)"}}, -- Putrid Butcher
	[170838] = {{"Important", "Soothe: Death Wish (+20% dmg done, +20% phys dmg taken)"}}, -- Unyielding Contender
	[170882] = {{"Interrupts", "Stun Interrupt (!!): Bone Spear (big bleed, will one shot on high keys)"}}, -- Bone Magus
	[165260] = {{"Important", ""}}, -- Oozing Leftovers
	[169875] = {{"Important", "Pull these out of the gauntlet area they're in and you won't have to dodge swirls!"},
				{"Interrupts", "Interrupt: Bind Soul (High damage to random target)"}}, -- Shackled Soul
	[170671] = {{"Important", ""}}, -- Grandmaster Vole
	[166524] = {{"Important", ""}}, -- Deathwalker
	[170750] = {{"Important", ""}}, -- Battlefield Reaper
	[173675] = {{"Important", ""}}, -- Ghostly Contender
	[163086] = {{"Important", "Eruption: Cone out his front and... back. Sidestep."}}, -- Rancid Gasbag
	[162744] = {{"Important", "Interrupting Roar interrupts spell casts. Slide an instant in instead."}}, -- Nekthara
	[167998] = {{"Important", "Soulstorm is a large, scary AoE. Pop your defensives and healing CDs here."},
				{"Important", "Dispel (Curse): Shadow Vulnerability."}},
	[169893] = {{"Important", "Summons giant tornado. It WILL knock you off. Sidestep before the cast goes off."},
				{"Important", "Dispel: Curse of Desolation (zones under feet every 3s)"}}, -- Nefarious Darkspeaker
	[162744] = {{"Important", "Interrupting Roar interrupts all casts. Slide an instant in instead."},
				{"Dodge", "Dodge: Whirling Blade (brown swirl; spinning weapon after)"}}, -- Nekthara
	[167532] = {{"Important", "Interrupting Roar interrupts all casts. Slide an instant in instead."},
				{"Dodge", "Dodge: Ground Smash (swirl)"}}, -- Heavin the Breaker
	[167536] = {{"Important", "When you get a red circle around you, run away from allies."},
			{"Interrupts", "Interrupt (!!): Battle Trance (absorb and atk spd buff)"}}, -- Harugia the Bloodthirsty
	[167534] = {{"Important", "Straightforward but very heavy damage to the tank, and moderate to the party."}}, -- Rek the Hardened

	

	
	----- Necrotic Wake -----
	[166945] = {{"Important", "Comet Storm will spawn swirls under you. You need to run because these hurt a lot."},
				{"Important", "When player is rooted: everyone runs out of circle then dispel. DONT DISPEL EARLY."},
				{"Important", "One DPS will be chosen for gauntlet run. Run to the end, interrupt and kill the miniboss then talk to the 'angel'"},
				{"Important", "When you return from gauntlet you'll explode a few seconds later and drop a pool. Drop to the side. Enjoy your 100% crit buff."}}, -- Nalthor the Rimebinder
	[166882] = {{"Important", "The add will cast Meat Hook which needs to be aimed at the boss to grip him down."},
				{"Important", "If you're chosen for Meat Hook then stand between the add and boss, then move once it's locked on"},
				{"Important", "Fixates a random player: Run away because this HURTS."},
				{"Important", "Two adds at once will wipe your group so hard focus one down if a second spawns."}}, -- Surgeon Stitchflesh
	[166880] = {{"Important", "Face Heaving Retch away from the group. Randomly targeted."},
				{"Important", "Hard focus, and kite, the Carrion Worms. If they hit you 3 times they'll explode for BIG damage."},
				{"Important", "Kite the boss away from the disease patches so that DPS have room to kite worms."}}, -- Blightbone
	[163157] = {{"Important", "Focus down adds so that they're dead before Final Harvest."},
				{"Interrupts", "Interrupt (!): Frost Volley (adds)"},
				{"Important", "Final Harvest: Corpses explode 8yd AoE. Live mobs deal damage to all players."},
				{"Dodge", "Dodge: Breath ability. Will rotate in one direction."}}, -- Amarth
	[171750] = {{"Important", ""}}, -- Malfunctioning Goliath
	[164479] = {{"Important", ""}}, -- Bonefang
	[162693] = {{"Important", "Comet Storm will spawn swirls under you. You need to run because these hurt a lot."},
				{"Important", "When player is rooted: everyone runs out of circle then dispel. DONT DISPEL EARLY."},
				{"Important", "One DPS will be chosen for gauntlet run. Run to the end, interrupt and kill the miniboss then talk to the 'angel'"},
				{"Important", "When you return from gauntlet you'll explode a few seconds later and drop a pool. Drop to the side. Enjoy your 100% crit buff."}}, -- Nalthor the Rimebinder
	[162691] = {{"Important", "Face Heaving Retch away from the group. Randomly targeted."},
				{"Important", "Hard focus, and kite, the Carrion Worms. If they hit you 3 times they'll explode for BIG damage."},
				{"Important", "Kite the boss away from the disease patches so that DPS have room to kite worms."}}, -- Blightbone
	[162729] = {{"Important", "Easy mob. Pull 20 of them before remembering the AoE damage cap."}}, -- Patchwerk Soldier
	[162689] = {{"Important", "The add will cast Meat Hook which needs to be aimed at the boss to grip him down."},
				{"Important", "If you're chosen for Meat Hook then stand between the add and boss, then move once it's locked on"},
				{"Important", "Fixates a random player: Run away because this HURTS."},
				{"Important", "Two adds at once will wipe your group so hard focus one down if a second spawns."}}, -- Surgeon Stitchflesh
	[165824] = {{"Dodge", "Dodge: Death Orbs (silence + dam). Big green balls."},
				{"Important", "Purge / Steal: Dark Shroud (Phys immunity, AoE damage)"}}, -- Nar'zudah
	[165137] = {{"Important", "Adds a stacking DoT that increases over time. When dispelled it resets to 0 and jumps target."},
				{"HEALER", "You can dispel this about every 10-12 seconds to keep it's damage low."}}, -- Zolramus Gatekeeper
	[162692] = {{"Important", "Focus down adds so that they're dead before Final Harvest."},
				{"Interrupts", "Interrupt (!): Frost Volley (adds)"},
				{"Important", "Final Harvest: Corpses explode 8yd AoE. Live mobs deal damage to all players."},
				{"Dodge", "Dodge: Breath ability. Will rotate in one direction."}}, -- Amarth
	[163121] = {{"Interrupts", "Stun Interrupt: Meat Shield (absorb)"},
				{"Important", "Soothe: Seething Rage (atk spd, stacks)"}}, -- Stitched Vanguard
	[172981] = {{"PriorityTargets", "Priority Target."}, 
				{"Important", "Stacks damage taken debuff on tank."}}, -- Kyrian Stitchwerk
	[165919] = {{"Interrupts", "Interrupt (!!): Rasping Scream (15yd AoE Fear)"},
				{"Important", "FRONTAL CLEAVE"}}, -- Skeletal Marauder
	[163618] = {{"PriorityTargets", "Priority Target. Nearby minions die when he dies."},
				{"Important", "Grim Fate: Spread out (green swirl around one player)."}}, -- Zolramus Necromancer
	[164702] = {{"Important", ""}}, -- Carrion Worm
	[166302] = {{"Important", ""}}, -- Corpse Harvester
	[173016] = {{"Interrupts", "Interrupt (!!): Drain Fluids (ST Stun)"},
				{"Interrupts", "Interrupt (!): Goresplatter (AoE DoT)"}}, -- Corpse Collector
	[164578] = {{"Important", ""}}, -- Stitchflesh's Creation
	[165872] = {{"Important", "Hooks random players. Stand behind monsters and it'll hit them instead."},
				{"Interrupt", "Interrupt (!): Repair Flesh (Heals loyal creation)"}}, -- Flesh Crafter
	[171095] = {{"Important", ""}}, -- Grisly Colossus
	[167731] = {{"Important", "Hooks random players. Stand behind monsters and it'll hit them instead."},
				{"Important", "Run if fixated."}}, -- Separation Assistant
	[174783] = {{"Important", ""}}, -- Opeth
	[163621] = {{"Important", "Stacks damage taken increase on tank."},
				{"Important", "FRONTAL CLEAVE"}}, -- Goregrind
	[165138] = {{"Important", "Explodes on death which hits allies AND enemies."}}, -- Blight Bag
	[165197] = {{"Important", "Very large tank damage due to stacking debuff. Pop DPS cooldowns and kill quickly."},
				{"Dodge", "Dodge: blue swirls"}}, -- Skeletal Monstrosity
	[163128] = {{"Important", ""}}, -- Zolramus Sorcerer
	[168246] = {{"Important", ""}}, -- Reanimated Crossbowman
	[175588] = {{"Important", ""}}, -- Acrobatic Steward
	[163619] = {{"Interrupts", "Stun Interrupt (!): Boneflay (reduces tank MaxHP)"}}, -- Zolramus Bonecarver
	[173044] = {{"Important", "Hooks random players. Stand behind monsters and it'll hit them instead."},
				{"Important", "Interrupt (!!): Drain Fluids (ST Stun)"}}, -- Stitching Assistant
	[163620] = {{"Important", "Drops poison cloud. Not dangerous for miniboss."}}, -- Rotspew
	[166266] = {{"Important", "Harmless."}}, -- Spare Parts
	[165911] = {{"Important", "Will enrage if Flesh Crafter dies first. Soothable."}}, -- Loyal Creation
	[164427] = {{"Important", ""}}, -- Reanimated Warrior
	[164414] = {{"Important", ""}}, -- Reanimated Mage
	[165222] = {{"Interrupts", "Interrupt (!!): Final Bargain (huge heal)"},
				{"Interrupts", "Interrupt (!): Bonemend (small heal)"}}, -- Zolramus Bonemender
	[163126] = {{"Interrupts", "Interrupt (!): Frostbolt Volley (AoE damage)"}}, -- Brittlebone Mage
	[163122] = {{"Important", ""}}, -- Brittlebone Warrior
	[163622] = {{"Important", ""}}, -- Goregrind Bits
	[168607] = {{"Important", ""}}, -- Xandria
	[163623] = {{"Important", ""}}, -- Rotspew Leftovers
	[164815] = {{"Important", ""}}, -- Zolramus Siphoner
	[171500] = {{"Important", ""}}, -- Shuffling Corpse
	[171463] = {{"Important", ""}}, -- Spare Parts
	[166079] = {{"Important", ""}}, -- Brittlebone Crossbowman
	[174785] = {{"Important", ""}}, -- Skeletal Marauder
	[166264] = {{"Important", ""}}, -- Spare Parts
	[168357] = {{"Important", ""}}, -- Zolramus Sorcerer
	[164814] = {{"Important", ""}}, -- Gilded Champion
	[168343] = {{"Important", "Easy mob. Crush in groups."}}, -- Patchwerk Soldier
	[165597] = {{"Important", "Easy mob. Use them to pad damage."}}, -- Patchwerk Soldier
	[165528] = {{"Important", ""}}, -- Gilded Champion
	[165605] = {{"Important", ""}}, -- Winged Champion
	[164959] = {{"Important", ""}}, -- Captured Aspirant
	[171750] = {{"Important", "KYRIAN: Summon your Steward to bring the Goliath to life, summoning orbs of power"}},
	
	----- Spires of Ascension -----
	[167410] = {{"Important", "Stand in the big blue safe zone."},
				{"Important", "Will charge random players. There's enough room in the bubble to lightly spread."},
				{"Important", "During P2 boss will take off. Collect orbs and move them to the spear in the middle."},
				{"Important", "When all orbs are collected, click the spear and throw it at the boss to bring her back down."},
				{"HEALER", "Dispel on cooldown in P2. You have to deal with a heavy stacking DoT, and regular dispels will keep stacks down."}}, -- Devos
	[162060] = {{"Important", "Take the Purifying Blast (blue circle) debuff out of the party."},
				{"Important", "Stack for Empyreal Ordnance to stack the resulting zones in one place."},
				{"Important", "During Recharge Anima: soak balls released from said zones. Try spread them across your party."},
				{"Important", "There's also a tank stomp, make sure you're not close to the tank for it."}}, -- Oryphrion
	[162058] = {{"Important", "The pass fail here is dodging the small black orbs which will knock you up."},
				{"Important", "They'll spawn from rifts the boss leaves behind when he Shadow whirls. Tank the boss close to rifts."},
				{"TANK", "Blinding Flash: Sidestep the boss after the cast locks on."},
				{"HEALER", "Dark Strides target will take a MASSIVE DoT. They'll need a lot of healing."}}, -- Ventunax
	[162059] = {{"Dodge", "The pass-fail here is whether you dodge the small black missiles fired from Azules"},
				{"Important", "The further you stand from the bird, the easier they are to dodge."},
				{"Important", "Charged Spear can't really be dodged, but you should spread so it only hits one target."},
				{"Important", "Boss health is shared. Let me see your MULTI DOTS."}}, -- Kin-Tara
	[163077] = {{"Important", ""}}, -- Azules
	[163506] = {{"Important", "Stealthed mob that adds a bleed. Let the tank go first."}}, -- Forsworn Stealthclaw
	[162061] = {{"Important", "Stand in the big blue safe zone."},
				{"Important", "Will charge random players. There's enough room in the bubble to lightly spread."},
				{"Important", "During P2 boss will take off. Collect orbs and move them to the spear in the middle."},
				{"Important", "When all orbs are collected, click the spear and throw it at the boss to bring her back down."},
				{"HEALER", "Dispel on cooldown in P2. You have to deal with a heavy stacking DoT, and regular dispels will keep stacks down."}}, -- Devos
	[163503] = {{"Important", "Throws projectiles and DoTs up tank. Not too dangerous."}}, -- Etherdiver
	[168318] = {{"Interrupts", "Interrupt (!!): Rebellious Fist (AoE)"},
				{"Important", "Burst mob during Recharge Anima to break shield."}}, -- Forsworn Goliath
	[171456] = {{"Important", ""}}, -- Shattered Devastator
	[163520] = {{"PriorityTargets", "Priority Target"},
				{"Important", "Nearby enemies take 75% reduced AoE dmg."}}, -- Forsworn Squad-Leader
	[169501] = {{"Important", ""}}, -- Shadowlands Wormhole
	[168681] = {{"Important", "AoEs the group and drops void zones on the ground."}}, -- Forsworn Helion
	[163457] = {{"Important", "FRONTAL CLEAVE"}}, -- Forsworn Vanguard
	[163459] = {{"Interrupts", "Interrupt (!!): Forsworn Doctrine (HoT, can be purged / stolen)"},
				{"Important", "Purge: Imbue Weapon (Arcane dmg on autoattack)"}}, -- Forsworn Mender
	[163458] = {{"Interrupts", "Interrupt (!): Burden of Knowledge (DoT)"}}, -- Forsworn Castigator
	[168718] = {{"Interrupts", "Interrupt (!!): Greater Mending (AoE Heal)"},
				{"Important", "Purge / Steal: Bless Weapon (Dmg + Heal on atk)"}}, -- Forsworn Warden
	[168420] = {{"Important", ""}}, -- Forsworn Champion
	[163524] = {{"Dodge", "Dodge: Slice-Spell. Random charge on a player."}}, -- Kyrian Dark-Praetor
	[168845] = {{"Important", "Pull one at a time and let debuffs fall off!"},
				{"Dodge", "Dodge: black swirl (Charged Spear)"}}, -- Astronos
	[168843] = {{"Important", "Pull one at a time and let debuffs fall off!"},
				{"Important", "Stacks a DoT on group."}}, -- Klotos
	[168844] = {{"Important", "Pull one at a time and let debuffs fall off!"},
				{"Important", "Stacks a dmg taken debuff on group."}}, -- Lakesis
	[168418] = {{"Interrupts", "Interrupt: Dark Lash (tank dmg)"},
				{"Interrupts", "Interrupt: Internal Strife (DoT on random players that AoEs"}}, -- Forsworn Inquisitor
	[168717] = {{"Important", ""}}, -- Forsworn Justicar
	[165714] = {{"Important", ""}}, -- Kyrestia the Firstborne
	[163501] = {{"Important", "Spears random targets."}}, -- Forsworn Skirmisher
	[163589] = {{"Important", ""}}, -- Kyrian Ascendant
	[166411] = {{"Important", ""}}, -- Forsworn Usurper
	
	----- Castle Nathria -----
	-- COMING SOON --
		
	
	---------------------------------------------------
	----------------Battle for Azeroth-----------------
	---------------------------------------------------
	----- Ataldazar -----
	
	-- Trash toward Priestess
	[122971] = {{"Important", "Ranged players should stay spread 8 yards to avoid his charge hitting more than one player"}, {"Important", "Enrage: Dispel or Kite away during Fanatic's Rage"},
				{"Advanced", "The charge can be avoided completely with blinks / or sprints (stand as far away as possible)"}}, -- Dazar'ai Juggernaut
	[127799] = {{"Important", "Minor tank damage. Not dangerous."}}, -- Dazar'ai Honor Guard
	[127757] = {{"PriorityTargets", "Priority Target"}, {"Important", "MUST kill the reanimation totem first."}, {"Important", "Will pulse HEAVY AoE to the party after totem is dead. Kill quickly."}}, -- Reanimated Honor Guard
	[122973] = {{"Interrupts", "Interrupt(!): Bwonsamdi's Mantle (big CC immunity bubble)"}, {"Interrupts", "Interrupt: Mending Word (medium heal)"}, 
				{"TANK", "If they get a bubble off then you'll need to drag all of the mobs out of it."}}, -- Dazar'ai Confessor
	[122972] = {{"Interrupts", "Interrupt(!!): Fiery Enchant (buffs a nearby Juggernaut to throw fire)"}, 
				{"Important", "Will also cast Wild Fire (dmg + DoT) on random players but this is a less important interrupt"}}, -- Dazar'ai Augur
	[122984] = {{"PriorityTargets", "Priority Target: will heal and gain damage every time a nearby mob dies"}, {"Defensives", "Defensive: Soul Burn (Heavy DoT on one player)"}}, -- Dazar'ai Colossus
	[132126] = {{"Important", "Not dangerous. Stand in blood pools before transfusion to kill them more quickly"}}, -- Gilded Priestess
	
	-- Trash toward Vol'kaal
	[128435] = {{"Important", "Will jump to random allies and deal damage in a small AoE"}, {"Important", "Stay grouped but with a 3yd gap between each player."}}, -- Toxic Saurid
	[128434] = {{"Interrupts", "Interrupt(!!): Terrifying Screech (long AoE fear)"}}, -- Feasting Skyscreamer
	[128455] = {{"Important", "Skippable! Just walk carefully around the edge of the platform."}, {"Important", "Will charge a random player. Other allies should stand clear so only one is hit"}}, -- T'lonja
	[129552] = {{"Important", "Skippable! Just walk carefully around the edge of the platform."}}, -- Monzumi
	[129553] = {{"Important", "Skippable! Just walk carefully around the edge of the platform."}, {"Interrupts", "Interrupt or Purge: Dino Might (medium HoT)"}}, -- Dinomancer Kish'o
	[122969] = {{"Interrupts", "Interrupt or decurse: Unstable Hex (long CC)"}, {"Important", "The Hex spreads to allies within 8 yards when dispelled. Give them time to walk out."}}, -- Zanchuli Witch-Doctor
	[127879] = {{"Important", "Channels a big damage reduction shield that protects nearby enemies"}, {"Important", "Knockbacks are key here because you can knock his shield away from the rest of the pack"},
				{"Important", "Will Shield Bash nearby enemies if tank isn't in range. This really hurts so keep distance."}}, -- Shieldbearer of Zul
	[135989] = {{"Important", "Channels a big damage reduction shield that protects nearby enemies"}, {"Important", "Knockbacks are key here because you can knock his shield away from the rest of the pack"},
				{"Important", "Will Shield Bash nearby enemies if tank isn't in range. This really hurts so keep distance."}}, -- Shieldbearer of Zul
	[122970] = {{"Important", "Start stealthed and will stun you if they get the jump on you. Let the tank lead."}, {"Important", "Heavy tank damage. Particularly during Venonfang Strike (dispellable poison)"}, 
				{"Fluff", "The mob is stealthed so by the time you read this you might already be dead..."}}, -- Shadowblade Stalker
	
	-- Bosses
	[122967] = {{"Important", "Stand in the blood pools before Transfusion is cast"}, {"Important", "The debuff lasts 15 seconds so you can grab it early"},
				{"PriorityTargets", "Priority Target (or CC): Spirit of Gold (eats blood pools)"}, {"HEALER", "Contribute DPS and keep the tank alive. Very easy fight."}}, -- Priestess Alun'za
		[131009] = {{"Important", "Stand in the blood pools before Transfusion is cast"}, {"Important", "The debuff lasts 15 seconds so you can grab it early"},
				{"PriorityTargets", "Priority Target (or CC): Spirit of Gold (eats blood pools)"}, {"HEALER", "Contribute DPS and keep the tank alive. Very easy fight."}}, -- Priestess Alun'za (Spirit of Gold)
				
	[122965] = {{"Important", "Totems first. Boss second. Totems MUST die within 7 seconds of each other."}, {"Important", "Consider assigning one DPS to each totem."},
				{"Important", "Boss will instantly heal until totems are dead so don't multi-DoT him."}, {"HEALER", "Heavy ticking damage. Be efficient, use your cooldowns regularly."},
				{"HEALER", "The damage tends to be heavier while the totems are up so it's ok if you use more mana / CD's there."}}, -- Vol'kaal
	[122963] = {{"Important", "Don't stand on piles of bones"}, {"Important", "Line of Sight: Terrifying Visage"}, {"Important", "Tank the boss up against a pillar on the side of the room. You can use them for easy LoS."},
				{"Important", "Run from: Pursuit (though currently undertuned)"}}, -- Rezan
	[122968] = {{"Important", "Put down a raid marker 40 yards from the boss. During Soulrend, DPS / Healers stack on this point."}, {"Important", "This lets you stun and AoE down the adds that spawn."},
				{"Important", "There's plenty on the floor to dance around. It all hurts."}, {"HEALER", "Healing CD: Soulrend. Otherwise spot heal anyone who stands in spiders."}}, -- Yazma
	
	
	
	--- Freehold
	-- Trash toward Skycap'n Kragg
	[128551] = {{"Important", "Moderate tank damage."}, {"DRUID", "Soothe: Beastial Wrath (50% dmg buff)"}, {"HUNTER", "Tranq Shot: Beastial Wrath (50% dmg buff)"}}, -- Irontide Mastiff
	[129788] = {{"Important", "Moderate tank damage."}, {"Interrupts", "Interrupt (or purge): Healing Balm (medium HoT)"}, {"HEALER", "Dispel: Infected Wound (Disease, -healing taken)"}}, -- Irontide Bonesaw
	[129602] = {{"Important", "VERY annoying mob. Frontal cleave (tank can dodge after cast starts)"}, {"Important", "Will throw the tank but no longer drops threat. Pull one at a time if possible."}}, -- Irontide Enforcer
	[126928] = {{"Important", "Moderate tank damage."}, {"HEALER", "Dispel: Poisoning Strike (Poison, DoT, wait until 2 stacks)"}}, -- Irontide Corsair
	[126918] = {{"Important", "Move out of the red swirls. They burn. Don't burn."}, {"TANK", "These don't really move but still have threat table. Tank everything on top of them."}}, -- Irontide Crackshot
	[129598] = {{"Important", "Why are you killing the poor mules!?"}, {"Important", "No notable mechanics but still... why!?"}},
	
	-- The Village	
	[130522] = {{"Important", "Mostly harmless. Pull as few of them as you can."}}, -- Freehold Shipmate (Neutral)
	[130521] = {{"Important", "Mostly harmless. Pull as few of them as you can."}}, -- Freehold Deckhand (Neutral)
	[127124] = {{"Important", "Mostly harmless. Pull as few of them as you can."}}, -- Freehold Barhand (Neutral)
	[129526] = {{"Important", "Mostly harmless. Pull as few of them as you can."}}, -- Bilge Rat Swabby (Neutral)	
	[130024] = {{"Important", "Stacks healing debuff on tank. Pull out your AoE CC here."}}, -- Soggy Shiprat
	[127111] = {{"Interrupts", "Interrupt or Dodge: Sea Spout (conjures dodgeable blue swirls everywhere)"}}, -- Irontide Oarsman
	[130400] = {{"Important", "Two abilities to dodge. Boulder toss is a grey swirl that will stun you (if you live)."}, {"Important", "Ground Shatter is a 9 yard AoE around him that you'll move out of."}}, -- Irontide Crusher
	[130404] = {{"Important", "Will lay traps around the area. Standing in one roots you and deals very heavy damage"}}, -- Vermin Trapper
	[129527] = {{"Important", ""}}, -- Bilge Rat Buccaneer
	[129600] = {{"Important", ""}}, -- Bilge Rat Brinescale
	[129550] = {{"Important", "Will jump to random players."}, {"Important", "Don't stand 50 yards away so they stay in AoE (looking at you, Hunters)"}, {"HEALER", "Dispel: Plague Step (Disease, small DoT & -healing taken"}}, -- Bilge Rat Padfoot
	[129548] = {{"Important", "Have a minor AoE slow but otherwise harmless"}}, -- Blacktooth Brute
	[129529] = {{"Important", "Fixates random allies. The scrapper should be kited or you should pop a major defensive."}, {"DRUID", "Soothe: Blind Rage (yes, you can stop the fixate. Soothe is god.)"},
				{"HUNTER", "Tranq Shot: Blind Rage (yes, you can stop the fixate.)"}}, -- Blacktooth Scrapper
	[129547] = {{"Interrupts", "Interrupt(!): Shattering Bellow (AoE damage, spell interrupt)"}, {"Important", "Bellow only has a 30 yard range so it doesn't hurt to stand back if you're a caster."}}, -- Blacktooth Knuckleduster
	[129599] = {{"Important", "Has a bouncing blade. Stand 8 yards apart to minimize bouncing."}}, -- Cutwater Knife Juggler
	[129601] = {{"Important", "Will drag random ranged players into him. Consider using a defensive."}, {"Important", "The real danger here is that you get dragged into the Crushers abilities."}}, -- Cutwater Harpooner
	[129559] = {{"Important", ""}}, -- Cutwater Duelist	
		
	[135978] = {{"Important", ""}}, -- Bilge Rat Grog Jerk (Allied - Hands out drinks)
	[135353] = {{"Important", ""}}, -- Veteran Man O' Warden (World Quest mob)
	[130090] = {{"Important", ""}}, -- Gukguk "The Motivator" (Allied)
	
	-- Path to Sweete
	[130012] = {{"Interrupts", "Interrupt: Painful Motivation (45% dmg buff)"}, {"Important", "The buff also deals heavy damage to the mobs. The risk is up to you."}}, -- Irontide Ravager
	[126919] = {{"Interrupts", "Interrupt: Thundering Squall (moderate 12s 10yrd AoE)"}, {"Important", "You can walk out of this but your melee will lose damage."}}, -- Irontide Stormcaller
	[130011] = {{"Important", "Frontal Cleave (Blade Barrage, tank can dodge after cast start)"}}, -- Irontide Buccaneer
	[127106] = {{"Important", "Heavy tank damage."}, {"HEALER", "Dispel(!): Oiled Blade (Magic, 75% healing reduction)"}}, -- Irontide Officer
		
	-- Bosses
	[126832] = {{"Important", "Phase 1 (above 75% HP): Just dodge the brown charge swirl."}, {"Interrupts", "Interrupt: Revitalizing Brew (HoT). You can drink it off the floor after you interrupt it."},
				{"Important", "Spread around the boss. His powder shot deals damage in a big cone in a random players direction."}, 
				{"Important", "Big bird will swoop through the arena dealing heavy dmg. Watch what direction he's facing."}}, -- Skycap'n Kragg
	[126845] = {{"Important", "Don't fight all three at once! You need to complete a mini game to remove one from the fight."}, {"Important", "Mini-game rotates weekly. Find the dog, drink with vulperas or beat up the knuckledusters."},
				{"Important", "Raoul: Throws barrels on allies heads. Destroy them (barrel, not player). Dodge swirls."}, {"Important", "Eudora: Hits random allies, then casts big series of cones across arena."},
				{"Important", "Jolly: Dodge spinning blades. Watch out for boss charge."}, {"Important", "Honestly this fight has way too many mechanics. Check website soon for more information."}}, -- CoC: Captain Jolly
	[126847] = {{"Important", "Don't fight all three at once! You need to complete a mini game to remove one from the fight."}, {"Important", "Mini-game rotates weekly. Find the dog, drink with vulperas or beat up the knuckledusters."},
				{"Important", "Raoul: Throws barrels on allies heads. Destroy them (barrel, not player). Dodge swirls."}, {"Important", "Eudora: Hits random allies, then casts big series of cones across arena."},
				{"Important", "Jolly: Dodge spinning blades. Watch out for boss charge."}, {"Important", "Honestly this fight has way too many mechanics. Check website soon for more information."}}, -- CoC: Captain Raoul
	[126848] = {{"Important", "Don't fight all three at once! You need to complete a mini game to remove one from the fight."}, {"Important", "Mini-game rotates weekly. Find the dog, drink with vulperas or beat up the knuckledusters."},
				{"Important", "Raoul: Throws barrels on allies heads. Destroy them (barrel, not player). Dodge swirls."}, {"Important", "Eudora: Hits random allies, then casts big series of cones across arena."},
				{"Important", "Jolly: Dodge spinning blades. Watch out for boss charge."}, {"Important", "Honestly this fight has way too many mechanics. Check website soon for more information."}}, -- CoC: Captain Eudora
	[130099] = {{"Important", "Phase 1 (Pig). You need to click him 5 times as a group."}, {"Important", "Phase 2 (Turtle): Dodge the big shells."}, {"Important", "Phase 3 (Shark Puncher): Move from Sharknado, run from flailing sharks."},
				{"Important", "You need to run the sharks through the chum to slow them down."}, {"TANK", "Go too close to the side of the arena and spectators will throw fruit. Heavy fruit."}}, -- RoB: Lightning (Pig)
	[129699] = {{"Important", "Phase 1 (Pig). You need to click him 5 times as a group."}, {"Important", "Phase 2 (Turtle): Dodge the big shells."}, {"Important", "Phase 3 (Shark Puncher): Move from Sharknado, run from flailing sharks."},
				{"Important", "You need to run the sharks through the chum to slow them down."}, {"TANK", "Go too close to the side of the arena and spectators will throw fruit. Heavy fruit."}}, -- RoB: Ludwig Von Tortollan
	[126969] = {{"Important", "Phase 1 (Pig). You need to click him 5 times as a group."}, {"Important", "Phase 2 (Turtle): Dodge the big shells."}, {"Important", "Phase 3 (Shark Puncher): Move from Sharknado, run from flailing sharks."},
				{"Important", "You need to run the sharks through the chum to slow them down."}, {"TANK", "Go too close to the side of the arena and spectators will throw fruit. Heavy fruit."}}, -- RoB: Trothak (Shark Puncher)
	[126983] = {{"Important", "When marked with Cannon Barrage run from the party. You'll spawn swirls."}, {"Important", "Prioritize the adds that spawn. They'll fixate a player and self-destruct. CC, slow, kill."},
				{"Important", "Sabers spawn near the boss and fly in the direction they're facing. Stand between them."}, {"Important", "At 30% life he'll take and deal double damage. Save defensive, and offensive cooldowns."}, {"Fluff", "Not good looking."}}, -- Harlan Sweete
	
	
	----- King's Rest -----
	-- Trash toward Golden Serpent
	[133935] = {{"Important", "Frontal Cleave ('Suppression Slam', stuns, dodgeable by tank)"}, {"Tank", "MUCH more dangerous with the Released Inhibitors buff (gained a few moments in). Take care."}}, -- Animated Guardian
	[133943] = {{"Important", "Fixates random players and fears if they touch."}, {"Important", "Purge / Mass Dispel / Arcane Torrent will instantly kill them."}}, -- Minion of Zul
	[134158] = {{"Important", "Will block all spells from a direction with Vigilant Defense. Attack from behind."}, {"TANK", "Deals very heavy damage with Ancestral Fury. Cooldown if no soothe available."},
				{"DRUID", "Soothe: Ancestral Fury (+100% dmg)"}, {"HUNTER", "Tranq Shot: Ancestral Fury (+100% dmg)"}}, -- Shadow-Borne Champion
	[134174] = {{"Interrupts", "Interrupt(!!): Shadowbolt Volley (AoE nuke)"}}, -- Shadow-Borne Witch Doctor
	[134157] = {{"Important", "Do your best to avoid the tornados. Melee especially."}}, -- Shadow-Borne Warrior
	
	-- Trash toward Mchima. The traps.
	[137474] = {{"Important", "Bladestorm will wreck your life. Dread it. Run from it. Bladestorm arrives all the same."}}, -- King Timalji
	[137478] = {{"Important", "Will Mind Control a random player. Dispel it. Don't kill them."}}, -- Queen Wasi
	
	[134331] = {{"Important", "Channels HEAVY AoE lightning. Move. Quickly."}, {"Important", "If you stopped to read this you're probably already dead."}}, -- King Rahu'ai
	[137473] = {{"Interrupts", "Stun Interrupt(!): Axe Barrage (Heavy AoE DoT)"}}, -- Guard Captain Atu
	[134251] = {{"Interrupts", "Interrupt or Purge(!!): Induce Regeneration (big ST heal)"}}, -- Seneschal M'bara
	
	[137486] = {{"Important", "Don't stand in the big purple pools. Easy."}}, -- Queen Patlaa
	[137487] = {{"Important", "Will leap to a random player and then spam cleave. Just move away / behind it."}}, -- Skeletal Hunting Raptor
	
	[137484] = {{"Important", "While debuffed you'll poop pools behind you. Don't drop them on friends."}, {"HEALER", "Dispel: Hidden Blade (Poison, causes the green pools)"}}, -- King A'akul
	[137485] = {{"Important", "Will teleport to the purple swirls and AoE. Just move from them."}}, -- Bloodsword Agent
	
	
	[134739] = {{"Important", "Will spin a beam in a clockwise direction. Follow it around so you don't get hit."}, {"Important", "Don't stand in the fire. You've been practicing for 14 years."}}, -- Purification Construct

	-- Trash toward Council. The walkway.
	[135204] = {{"Interrupts", "Interrupt(!): Hex (long adorable CC)"}}, -- Spectral Hex Priest
	[135167] = {{"PriorityTargets", "Priority Target"}, {"Important", "The tank must stay within 10 yards of the mob to soak Severing Blade casts."},
				{"Important", "The mob will leap to random players. Don't stand too far away, and run when he moves."}, {"HEALER", "These deal HEAVY tank damage. It's Ironbark / Sac / Guardian Spirit time."}}, -- Spectral Beserker
	[135231] = {{"Important", "Huge, easily dodgeable ground AoE attack. Ranged should keep distance to minimize movement."}}, -- Spectral Brute
	[135239] = {{"Important", "You must kill the Healing Tide Totem they put down."}}, -- Spectral Witch Doctor
	[135235] = {{"Important", "If targeted by Poison Barrage you must move out of the party."}, {"Important", "A large cone AoE will be fired in your direction and only you must be hit."},
				{"Important", "Also has a knockback. Stand close to the edge at your own peril."}}, -- Spectral Beastmaster
	[135192] = {{"Important", "Wait for it to jump to a target, then run behind it. It's like a cleave."}}, -- Honored Raptor	
	
	-- Trash toward Dazar
	[138489] = {{"Important", "If afflicted with Dark Revelation then run from the group. Deals proximity dmg on expiry."}, {"Important", "On debuff expiry focus fire the add that spawns."},
				{"Important", "One player stands in each dark pool. You'll soak the damage for the party."}}, -- Shadow of Zul
	
	-- Bosses
	[135322] = {{"Important", "When afflicted with Spit Gold you should run to a corner that your party pre-selects."}, {"Important", "You'll drop a pool when it expires. You want all the pools grouped closely together"},
				{"Important", "When Lucre's Call is cast all pools will turn into adds which will run to the boss."}, {"Important", "CC them, slow them, kill them. If they reach the boss he'll get an absorb shield and dmg buff."},
				{"Important", "When the boss is low CC the adds and burn him down."}, {"Important", "Dodge the Serpentine Gust. It's a basic 15yd AoE."}, 
				{"TANK", "You need to pull the boss away from the gold blobs wherever possible. You're first to die if they reach him."},
				{"HEALER", "Spit Gold targets will need heavy spot healing."}, {"HEALER", "You have CC of your own. Time to pull out that utility."}}, -- The Golden Serpent
		[135406] = {{"Important", "When afflicted with Spit Gold you should run to a corner that your party pre-selects."}, {"Important", "You'll drop a pool when it expires. You want all the pools grouped closely together"},
				{"Important", "When Lucre's Call is cast all pools will turn into adds which will run to the boss."}, {"Important", "CC them, slow them, kill them. If they reach the boss he'll get an absorb shield and dmg buff."},
				{"Important", "When the boss is low CC the adds and burn him down."}, {"Important", "Dodge the Serpentine Gust. It's a basic 15yd AoE."}, 
				{"TANK", "You need to pull the boss away from the gold blobs wherever possible. You're first to die if they reach him."},
				{"HEALER", "Spit Gold targets will need heavy spot healing."}, {"HEALER", "You have CC of your own. Time to pull out that utility."}}, -- The Golden Serpent (Animated Gold)
				
	[134993] = {{"Important", "Mchimba here is going to shut one of you in a crypt. Spam action button to shake your coffin."}, {"Important", "The rest of the party finds the wiggling sarcophagus and lets them out"},
				{"Important", "Opening the wrong one spawns a mummy. Interrupt its Wretched Discharge or pay the price."}, {"Important", "There's also plenty of fire around the room to dodge."},
				{"HEALER", "Debuff: Drain Fluids / Dessication. Spam heal the player to above 90% life."}}, -- Mchimba
	[135470] = {{"Important", "Council. Order you fight them in changes week to week. When you kill one they'll cast as spirits."}, {"Important", "Aka'ali: Barrel Through. targeted on player. Rest of party stands between them and boss to soak."},
				{"Important", "Kula: Dodge the spinning axes"}, {"Important", "Zanazal(!!!): Kill the Explosive Totem immediately. Party wipe if cast goes off."}, {"Important", "Totem kill order is otherwise Explosive > Thundering > Torrent > Earthwall"},
				{"TANK", "Aka'ali: Run away from boss after Debilitating Backhand knockback. You take triple dmg during debuff."}, {"HEALER", "Kula: Spot heal the Severing Axe debuff."}}, -- Council of Tribes (Aka'ali the Conqueror)
	[135475] = {{"Important", "Council. Order you fight them in changes week to week. When you kill one they'll cast as spirits."}, {"Important", "Aka'ali: Barrel Through. targeted on player. Rest of party stands between them and boss to soak."},
				{"Important", "Kula: Dodge the spinning axes"}, {"Important", "Zanazal(!!!): Kill the Explosive Totem immediately. Party wipe if cast goes off."}, {"Important", "Totem kill order is otherwise Explosive > Thundering > Torrent > Earthwall"},
				{"TANK", "Aka'ali: Run away from boss after Debilitating Backhand knockback. You take triple dmg during debuff."}, {"HEALER", "Kula: Spot heal the Severing Axe debuff."}}, -- Council of Tribes (Kula the Butcher)
	[135472] = {{"Important", "Council. Order you fight them in changes week to week. When you kill one they'll cast as spirits."}, {"Important", "Aka'ali: Barrel Through. targeted on player. Rest of party stands between them and boss to soak."},
				{"Important", "Kula: Dodge the spinning axes"}, {"Important", "Zanazal(!!!): Kill the Explosive Totem immediately. Party wipe if cast goes off."}, {"Important", "Totem kill order is otherwise Explosive > Thundering > Torrent > Earthwall"},
				{"TANK", "Aka'ali: Run away from boss after Debilitating Backhand knockback. You take triple dmg during debuff."}, {"HEALER", "Kula: Spot heal the Severing Axe debuff."}}, -- Council of Tribes (Zanazal the Wise)
	[136160] = {{"Important", "Busy boss, but most of it isn't threatening."}, {"Important", "Dodge tornados, move away from the raptor after it leaps. Kill Reban quickly when he spawns."},
				{"Important", "Will cast an uninterruptable fear while riding T'zala. Again, not that dangerous."}, {"Important", "At 40% you'll have to dodge patterns of brown spear swirls. Focus on your movement instead of DPS."}}, -- Dazar, The First King
		
	
	----- Siege of Boralus -----
	-- Siege has multiple IDs for a lot of mobs. I'm theorising that they change after your first clear (with the first being tied heavily into the questline) but that needs more testing.
	-- Until then this section is a mess of duplicates. Horde / Alliance also see different mobs leading up to the first boss. Same mechanics, different names / IDs. So there's that too.
	
	-- Path to the Horde / Alliance boss
	[141283] = {{"Important", "Look. This isn't related to the mob, but don't swim in the water. A shark will eat you."}, {"Important", "Frontal Cleave ('Slobber Knocker', tank can dodge)"}}, -- Kul Tiran Halberd
	[141565] = {{"PriorityTargets", "Priority Target"}, {"Important", "Mostly just wreck your tank including a -haste debuff."}}, -- Kul Tiran Footman
	[141284] = {{"Interrupts", "Interrupt or Purge(!!!): Watertight Shell (90% AoE DR, AoE damage on expiration)"}}, -- Kul Tiran Wavetender
	[132532] = {{"Important", "Throws fire at random players. Mostly harmless."}}, -- Kul Tiran Marksman
	[132481] = {{"Important", "Frontal Cleave ('Heavy Slash', stuns, tank can dodge)"}}, -- Kul Tiran Vanguard
	[133990] = {{"Important", "Completely harmless. Your healer could 1 v 1 it."}}, -- Scrimshaw Gutter
	[138002] = {{"Important", "Completely harmless. Your healer could 1 v 1 it."}}, -- Scrimshaw Gutter (2nd ID)
	[129374] = {{"Important", "No notable mechanics."}}, -- Scrimshaw Enforcer
	[143934] = {{"Important", "Dangerous. Don't punch."}}, -- Bloodcrazed Shark
	
	-- Path to Lockwood
	[144071] = {{"Interrupts", "Interrupt or Purge(!!!): Watertight Shell (90% AoE DR, AoE damage on expiration)"}}, -- Irontide Waveshaper (wavetender dup)
	[129370] = {{"Interrupts", "Interrupt or Purge(!!!): Watertight Shell (90% AoE DR, AoE damage on expiration)"}}, -- Irontide Waveshaper (wavetender dup, 2nd ID)
	[138254] = {{"Important", "Throws fire at random players. Mostly harmless."}}, -- Irontide Powdershot (marksman dup)
	[137521] = {{"Important", "Throws fire at random players. Mostly harmless."}}, -- Irontide Powdershot (marksman dup, 2nd ID)
	[129373] = {{"Important", "Will charge random players. Spread out."}}, -- Dockhound Packmaster
	[129640] = {{"PriorityTargets", "Priority Target"}, {"Important", "The hound and packmaster get +125% dmg while together so kill the dog quickly."}}, -- Snarling Dockhound
	[129371] = {{"Important", "Watch for the swirl he'll mark on the ground. He's apparently a stealthy little shit."}, {"Important", "Frontal Cleave ('Singing Steel', tank can dodge)"}}, -- Riptide Shredder
	[129369] = {{"Important", "Has an AoE attack called Savage Tempest. Step away from the mob at that time."}, {"Important", "Will hook random players and there's nothing you can do about it."}}, -- Irontide Raider
	[129372] = {{"Important", "Spread 5 yards and dodge any Burning Tar patches."}}, -- Blacktar Bomber
	[138247] = {{"PriorityTargets", "Stacks a curse on the tank. Dispel it, or focus this mob first."}}, -- Irontide Marauder
	[128969] = {{"Important", "Will focus a random player and charge toward them. All players must dodge this."}, {"Important", "Once fixated he won't follow the player, so even they can avoid it."},
				{"Important", "Will cast Bolstering Shout (DR buff to nearby allies). Try and tank him away from the others where possible."}}, -- Ashvane Commander
	[138255] = {{"Important", "Keep her rooted or slowed to stop her leaping around the room."}, {"Important", "A player will get a Sighted Artillery debuff. Their location is hit with missiles every 1.5s"},
				{"Important", "These missiles also damage trash. Use wisely and don't die."}}, -- Ashvane Spotter
	[138464] = {{"Important", "Frontal Cleave ('Crimson Swipe')"}}, -- Ashvane Deckhand
	[135258] = {{"Important", "Completely harmless. Your grandma could 1 v 1 it."}}, -- Irontide Marauder
	
	-- Path to Darkfathom
	[129366] = {{"Important", "D-don't walk into the bananas."}}, -- Bilge Rat Buccaneer
	[135241] = {{"Important", "Frontal Cleave ('Viscous Slobber', tank can't dodge)"}}, -- Bilge Rat Pillager
	[135245] = {{"Important", "Frontal Cleave ('Crushing Slam', stuns, tank CAN dodge)"}, {"Important", "Terrifying Roar is a 30yd AoE Fear. Ranged players should stand at max distance."}}, -- Bilge Rat Demolisher
	[129367] = {{"Interrupts", "Interrupt(!): Revitalizing Mist (Big ST heal)"}, {"Interrupts", "Interrupt or Dispel(!): Choking Waters (DoT, silence)"}}, -- Bilge Rat Tempest
	[137511] = {{"Important", "Moderate tank threat. Stacks -healing debuff."}, {"HEALER", "Dispel: Rotting Wounds (Disease, -healing, stacks)"}}, -- Bilge Rat Cutthroat
	
	
	-- Bosses
	[144158] = {{"Important", "Focus all adds over the boss until he's low."}, {"Important", "Boss will fixate a ranged player who must kite. He'll hit you with iron pipe if he catches you."},
				{"Important", "Kite the boss into the munitions to stun him."}, {"Important", "Will re-fixate every 20 seconds. He does speed up so if you're going to get hit then pop defensive CD."},
				{"DRUID", "BEAR FORM THE IRON PIPE. Or... just run."}}, -- Sergeant Bainbridge (Horde version of the boss)
	[128649] = {{"Important", "Focus all adds over the boss until he's low."}, {"Important", "Boss will fixate a ranged player who must kite. He'll hit you with iron pipe if he catches you."},
				{"Important", "Kite the boss into the munitions to stun him."}, {"Important", "Will re-fixate every 20 seconds. He does speed up so if you're going to get hit then pop defensive CD."},
				{"DRUID", "BEAR FORM THE IRON PIPE. Or... just run."}}, -- Sergeant Bainbridge (Horde version of the boss)
				
	[144160] = {{"Important", "Focus all adds over the boss until he's low."}, {"Important", "Boss will fixate a ranged player who must kite. He'll hit you with iron pipe if he catches you."},
				{"Important", "Kite the boss into the munitions to stun him."}, {"Important", "Will re-fixate every 20 seconds. He does speed up so if you're going to get hit then pop defensive CD."},
				{"DRUID", "BEAR FORM THE IRON PIPE. Or... just run."}}, -- Chopper Redhook (Alliance version of the boss)
	[128650] = {{"Important", "Focus all adds over the boss until he's low."}, {"Important", "Boss will fixate a ranged player who must kite. He'll hit you with iron pipe if he catches you."},
				{"Important", "Kite the boss into the munitions to stun him."}, {"Important", "Will re-fixate every 20 seconds. He does speed up so if you're going to get hit then pop defensive CD."},
				{"DRUID", "BEAR FORM THE IRON PIPE. Or... just run."}}, -- Chopper Redhook (Alliance version of the boss, second ID for some reason)
				
	[129208] = {{"Important", "Keep her rooted or slowed to prevent her running and Gut Shotting people."}, {"Important", "When boss reaches full energy she'll return to her ship and start firing in patterns."},
				{"Important", "AoE the adds down until a cannoneer drops an ordnance to fire back at the boss."}, {"Important", "This causes her to re-engage and the fight repeats."},
				{"Important", "Frontal Cleave (Deckhands & boss)"}}, -- Dread Captain Lockwood
				
	[128651] = {{"Important", "Will shoot damaging pools in a straight line in front of him. Don't stand in them."}, {"Important", "You'll want to tank him near a corner to minimize space taken up by pools."},
				{"Important", "He'll also target random allies with Break Water which leave identical pools. Watch your position."}, {"Important", "Hide behind the statue during the massive wave. It won't hurt you there."}}, -- Hadal Darkfathom
	[130086] = {{"Important", "Will shoot damaging pools in a straight line in front of him. Don't stand in them."}, {"Important", "You'll want to tank him near a corner to minimize space taken up by pools."},
			{"Important", "He'll also target random allies with Break Water which leave identical pools. Watch your position."}, {"Important", "Hide behind the statue during the massive wave. It won't hurt you there."}}, -- Hadal Darkfathom

	
	[128652] = {{"PriorityTargets", "Target order: Demolishing Terror > Gripping Terror. Target swap whenever a new Demo spawns."}, {"Important", "Demolishers need to be tanked quickly or they'll deal crushing AoE damage to the party."},
				{"Important", "Killing Gripping Terrors will reactive the cannon. Use it to damage the boss."}, {"Important", "After firing cannon move left to the next one. There are three total. The water hurts. Don't swim."},
				{"HEALER", "The cannons line of sight healing. Zzzzzzzzzzzzzz."}, {"HEALER", "Dispel Putrid Waters on cooldown or the 30s debuff will overwhelm you."}}, -- Viq'Goth
		[137614] = {{"PriorityTargets", "Target order: Demolishing Terror > Gripping Terror. Target swap whenever a new Demo spawns."}, {"Important", "Demolishers need to be tanked quickly or they'll deal crushing AoE damage to the party."},
				{"Important", "Killing Gripping Terrors will reactive the cannon. Use it to damage the boss."}, {"Important", "After firing cannon move left to the next one. There are three total. The water hurts. Don't swim."},
				{"HEALER", "The cannons line of sight healing. Zzzzzzzzzzzzzz."}, {"HEALER", "Dispel Putrid Waters on cooldown or the 30s debuff will overwhelm you."}}, -- Viq'Goth (Demolishing Terror)
		[137405] = {{"PriorityTargets", "Target order: Demolishing Terror > Gripping Terror. Target swap whenever a new Demo spawns."}, {"Important", "Demolishers need to be tanked quickly or they'll deal crushing AoE damage to the party."},
				{"Important", "Killing Gripping Terrors will reactive the cannon. Use it to damage the boss."}, {"Important", "After firing cannon move left to the next one. There are three total. The water hurts. Don't swim."},
				{"HEALER", "The cannons line of sight healing. Zzzzzzzzzzzzzz."}, {"HEALER", "Dispel Putrid Waters on cooldown or the 30s debuff will overwhelm you."}}, -- Viq'Goth (Gripping Terror)
	
	
	
	----- Temple of Sethraliss -----
	-- Path to Twin Snakes
	[134600] = {{"Important", "Will cast a slow Power Shot at a player. Hits in a line and all players should avoid when cast starts."}, {"Important", "No threat table. Attacks random players."},
				{"Important", "Don't move with Neurotoxin unless in the way of Power Shot. It'll sleep you."}}, -- Sandswept Marksman
	[134900] = {{"Interrupts", "Interrupt(!): Healing Surge (moderate heal)"}, {"Interrupts", "Will also lightning bolt random players but this is low priority."}}, -- Charged Dustdevil
	[134991] = {{"Important", "Has a 30yd mini-interrupt. Casters must stand further away."}}, -- Sandfury Stonefist
	[134616] = {{"Important", "These interrupt random players. I hate to say this, but you're going to have to kill some puppies."}}, -- Krolusk Pup
	[134602] = {{"Important", "Will blade flurry the tank. Tank can take it but nearby melee should stay 5yds away."}}, -- Shrouded Fang (stealthed)
	[134990] = {{"Interrupts", "Interrupt(!!): Healing Surge (Large ST Heal)"}}, -- Charged Dust Devil
	
	-- Path to Merektha
	[134629] = {{"Important", "Frontal Cleave (Noxious Breath, DoT, tank can dodge after cast start)"}, {"Important", "They also have a SECOND frontal cleave so definitely face away"},
				{"Important", "When Electrified Scales is up you'll take reflect damage. Don't stop DPS, just watch health."}}, -- Scaled Krolusk Rider
	[135562] = {{"HEALER", "Dispel: Cytotoxin (Poison, Stacking DoT, dispel on 2+)"}}, -- Venomous Ophidian
	[135846] = {{"PriorityTargets", "Priority Target"}, {"Important", "Drag mobs out of the sandcloud they drop. It causes everything to miss."}}, -- Sand-Crusted Striker
	[134686] = {{"Important", "Frontal Cleave (Scouring Sand, large area)"}, {"Important", "Frontal Cleave (Noxious Breath, DoT, tank can dodge after cast start)"}}, -- Mature Krolusk
	[139422] = {{"Important", "Frontal Cleave"}, {"Important", "When Electrified Scales is up you'll take reflect damage. Don't stop DPS, just watch health."}}, -- Scaled Krolusk Tamer
	[139425] = {{"Important", "Move out of the lightning circles on the ground"}, {"Important", "Will self destruct when low. Kill quickly or move away from it."},
				{"Interrupts", "Interrupt(!!): Stoneshield Potion (90% damage reduction)"}}, -- Crazed Incubator
	[134364] = {{"Important", "Healer mob. Don't pull too many at once or you'll spend half your timer here."}, {"Interrupts", "Stun Interrupt: Drain (big heal, dmg buff)"}, 
				{"Interrupts", "Interrupt: Greater Healing Potion (Big heal)"},
				{"HEALER", "Dispel: Venomous Spit (Poison, DoT, Stacks)"}}, -- Faithless Tender
	[134390] = {{"PriorityTargets", "Priority Target"}, {"Important", "Drag mobs out of the sandcloud they drop. It causes everything to miss."}}, -- Sand-crusted Striker
	
	-- Path to Galvazzt
	[136076] = {{"Interrupts", "Interrupt or Purge(!!): Accumulate Charge (damage buff)"}, {"Important", "Will deal heavy AoE damage based on number of charges."}}, -- Agitated Nimbus
	[134599] = {{"Important", "Don't stand in the swirls."}, {"Important", "Will Shock random players for medium damage. Save your kicks for the Nimbus."}}, -- Imbued Stormcaller
	[134691] = {{"Important", "Will deal persistent AoE to random allies. Not overly dangerous."}}, -- Static Charged Dervish
	
	-- Path to Avatar
	[139110] = {{"Important", "Engaging him will stop sparks on the bridge so your... less-mobile allies can make it across."}, {"Important", "Dodge the blue swirls."},
				{"Interrupts", "Interrupt: Shock (damage burst on random ally)"}}, -- Spark Channeler
	[135971] = {{"Important", "Exist only to whack the orb carrier. AoE them down, keep as much threat as you can."}, {"Important", "Respawn after a minute or so."}}, -- Faithless Conscript
	[135007] = {{"PriorityTargets", "Priority Target"}, {"Important", "You need to pick up orbs from each side of the room and move them to the big skull door."},
				{"Important", "You can throw the orbs between players with the extra action button and should do so"}, {"Important", "Getting hit by a mob will cause you to drop it and be unable to pick it back up for a bit."},
				{"Important", "This mob will steal the orb back. CC them and focus them down."}, {"Important", "Respawn after a minute or so."}}, -- Orb Guardian
	[136250] = {{"HEALER", "Dispel: Flame Shock (Magic, moderate DoT)"}}, -- Hoodoo Hexer (also involved in boss fight)
	[139949] = {{"Interrupts", "Interrupt: Chain Lightning (AoE dmg)"}, {"HEALER", "Dispel(!!): Snake Charm (Magic, long CC)"}}, -- Plague Doctor
	[139946] = {{"PriorityTargets", "Priority Target"}, {"Important", "Stacks a damage taken increase on the tank. Kite if low DPS."}}, -- Heart Guardian
	
	-- Bosses
	[133944] = {{"Important", "DON'T ATTACK THE ONE WITH LIGHTNING SHIELD"}, {"Important", "Lightly spread around the room to minimize movement"}, {"Important", "Run out: Conduction debuff (8 yard AoE on expiry)"}, 
				{"Important", "If you have 0-1 melee then have a ranged stay within 15yds to split Arcing Blade"},
				{"Defensives", "Defensive: Static Shock (2s cast, used when Aspix at 100 energy)"}}, -- A&A: Aspix
	[133379] = {{"Important", "DON'T ATTACK THE ONE WITH LIGHTNING SHIELD"}, {"Important", "Lightly spread around the room to minimize movement"}, {"Important", "Run out: Conduction debuff (8 yard AoE on expiry)"}, 
				{"Important", "If you have 0-1 melee then have a ranged stay within 15yds to split Arcing Blade"},
				{"Defensives", "Defensive: Static Shock (2s cast, used when Aspix at 100 energy)"}}, -- A&A: Adderis
	[133384] = {{"Important", "LOOK AWAY DURING BLINDING SAND. AHHHHH."}, {"Important", "You can break allies from snakes with stun / incap. Otherwise DPS them out."}, 
				{"Important", "Boss only burrows twice. Even on tyrannical +30."},
				{"Important", "During Boss burrow: DPS the adds and watch out for her dashes across the arena."},
				{"HEALER", "Dispel: Cytotoxin (Posion, heavy DoT)"}}, -- Merektha
	[133389] = {{"Important", "You need to intercept beams so they don't hit boss or he'll gain energy"}, {"Important", "Beams debuff you and deal more damage over time. Take full beam, then switch for next set"},
				{"Defensives", "Defensive: Consume Charge (at 100 energy, heavy AoE)"}, {"HEALER", "Damage gets worse longer the fight lasts. Channel healing into beam soakers"},
				{"HEALER", "Healing CD: Consume Charge. Cast as boss nears 100 energy since party likely isn't topped"}}, -- Galvazzt
	[133392] = {{"Important", "Kill Order: Heart Guardian > Toads > Plague Doctor > Hoodoo Hexer"}, {"Important", "Toads must be kept off your healer. They can be CC'd to buy time"},
				{"HEALER", "After hexers die you can heal boss in increments of 10->40, 40->70, 70-100% health"}, {"HEALER", "You have as MUCH TIME AS YOU NEED. New hexers won't spawn until you heal him 30%."},
				{"HEALER", "That means don't burn all of your mana rushing it. Save your cooldowns for the rest of the fight"}}, -- Avatar of Sethraliss (Friendly)
	
	
	----- Motherlode!! -----
	-- Path to the... coin dude
	[130436] = {{"Important", "Will wang random allies with wrenches. Just heal through it."}}, -- Off-Duty Laborer
	[136470] = {{"PriorityTargets", "Priority Target"}, {"Interrupts", "Interrupt(!): Iced Spritzer (DoT, stun if full channel)"},
				{"Interrupts", "Interrupt(!): Kaja'Cola Refresher (HoT)"}, {"HEALER", "You can dispel the Brain Freeze stun if nobody interrupts."}}, -- Refreshment Vendor
	[136006] = {{"Important", "Harmless."}}, -- Rowdy Reveler
	[130488] = {{"Important", "Must be CC'd if they try and run to a mech or they'll get inside."}, {"Important", "Dodge the red swirls to avoid knockback"}}, -- Mech Jockey
	[136139] = {{"Important", "Energy Shield blocks attacks from one direction. Just move around it."}, {"Important", "Watch out for the Tear Gas clouds. They disorient."}}, -- Mechanized Peacekeeper
	[134232] = {{"Interrupts", "Interrupt(!): Toxic Blades (causes DoT on all attacks)"}, {"Important", "Stun / CC Interrupt(!): Hail of Flechettes (heavy AoE)"},
				{"Important", "The Flechettes have a huge radius so outranging isn't really an option."}}, -- Hired Assassin
	[130435] = {{"Important", "Will charge random allies and stun them. Rude."}, {"Interrupts", "Interrupt: Inhale Vapors (+50% phys dmg)"}, {"DRUID", "Soothe: Inhale Vapors"},
				{"HUNTER", "Tranq Shot: Inhale Vapors"}}, -- Addled Thug
	
	-- Path to the... rock dude
	[130653] = {{"Important", "When sappers get low they'll cast Final Blast. Kill or CC them to prevent the cast or move away from it."},
				{"Important", "The big red swirls hurt. You have five seconds to move from them."}}, -- Wanton Sapper
	[130437] = {{"Important", "Pelt random allies with rocks. Annoying but not dangerous."}}, -- Mine Rat
	[130661] = {{"Interrupts", "Interrupt or Purge(!): Earth Shield (DR + healing when hit)"}}, -- Venture Co. Earthshaper
	[136643] = {{"Important", "Frontal Cleave (Power through)"}}, -- Azerite Extractor
	[136688] = {{"Important", "Moderate tank damage."}}, -- Fanatical Driller
	[130635] = {{"Interrupts", "Interrupt(!!): Furious Quake (Heavy AoE)"}, {"Interrupts", "Interrupt or Purge(!): Tectonic Barrier (DR + interrupt immunity)"}}, -- Stonefury
	[134005] = {{"Important", "Mostly harmless."}}, -- Shalebiter
	[134012] = {{"Important", "During the Cower cast just drag away nearby trash. It's a big DR shield."}, {"Important", "Will deal heavy tank damage when below 20% HP."},
				{"Important", "Kill the Sappers first. This guy isn't too dangerous."}}, -- Taskmaster Askari
	
	-- Path to the boss whose name I can't remember because she dies so quickly
	[133345] = {{"Interrupts", "Interrupt(!!): Transfiguration Serum"}, {"Interrupts", "Interrupt: Blowtorch (frontal cone AoE)"}}, -- Feckless Assistant
	[136934] = {{"Important", "This mob is awful. During Force Cannon you need to rotate around him. Randomly targeted."}, {"Important", "Frontal Cleave (Echo Blade, tank can't dodge, silences)"},
				{"HEALER", "You can dispel the Echo Blade silence debuff that hopefully only the tank got."}}, -- Weapons Tester
	[133432] = {{"Interrupts", "Interrupt or Dispel: Transmute Enemy to Goo (10s Polymorph)"}}, -- Venture Co. Alchemist
	[133430] = {{"PriorityTargets", "Priority Target"}, {"Important", "Watch out for the purple orbs. They heal the mob."}, {"Important", "Purge: Azerite Injection (heal, +dmg)"}, 
				{"HEALER", "Energy Lash targets need heavy spot healing."}}, -- Venture Co. Mastermind
	[133963] = {{"Important", "Mostly harmless but do get stronger over time so clear them quickly."}}, -- Test Subject
	
	-- The part you probably want to invis potion
	[133482] = {{"Important", "These will fixate a player and explode. Kill them quickly or kite them."}}, -- Crawler Mine
	[137029] = {{"Interrupts", "Interrupt: Artillery Barrage (conjures 100 red swirls to dodge)."}}, -- Ordnance Specialist
	[133436] = {{"Important", "Will fixate a target with a red laser. It can be intercepted by standing in it when shot fires."}, {"Important", "The shot does give you a -healing debuff, so take care if the tank soaks it."}}, -- Venture Co. Skyscorcher
	[133463] = {{"Important", "Will rock the tank with Charged Shot. They'll need a defensive."}}, -- Venture Co. War Machine
	[133593] = {{"Interrupts", "Stun Interrupt(!): Repair (heal on the war machine)"}, {"Interrupts", "Interrupt: Overcharge (haste buff on war machine)"}}, -- Expert Tactician
	
	-- Bosses
	[129214] = {{"Important", "Let's play football. The boss will throw balls around the arena."}, {"Important", "You have to click them to kick them toward the boss. You have to aim them."},
				{"Important", "Any that aren't kicked into the boss will explode for big AoE damage."}, {"Important", "Frontal Cleave (Shocking Claw, tank dodgeable after cast starts)"},
				{"TANK", "Try and move the boss away from the coin piles. He'll suck them in for a damage bonus."}}, -- Coin-Operated Crowd Pummeler
	[129227] = {{"Important", "The adds will fixate random targets. They must be kited and killed very quickly."}, {"Important", "Frontal Cleave (Tectonic Smash, tank can dodge after cast start)."},
				{"Important", "Boss will sometimes empower an add, it'll deal and take more damage. Nuke it."}, {"Important", "When the boss casts Resonant Pulse all alive adds must be CC'd."},
				{"HEALER", "Almost all of the damage is in the first minute. Pop your cooldowns immediately."}}, -- Azerokk
	[129231] = {{"Important", "You can use Propellant Blast to push the azerite pools off the platform."}, {"Important", "Other than that, don't stand in pools and this is very easy."},
				{"HEALER", "Dispel: Chemical Burn (DoT)"}}, -- Rixxa Fluxflame
	[129232] = {{"Important", "Homing Missle will target ranged players. Run it from the group."}, {"Important", "Two boomba adds will fly around the arena. They'll fire red swirlies across 3/4 of the platform."},
				{"Important", "You can avoid them by looking up at standing in the quarter they're not facing."}, {"Important", "In P2 all players must stand near the brown rockets (look like closets)"},
				{"Important", "Random player will be targeted and resulting Drill Smash will break the rockets."}, {"Important", "Break them all and boss will return to platform."},
				{"HEALER", "Phase 1 is damage light, phase 2 quite heavy. Save your cooldowns."}}, -- Mogul Razdunk
	
	
	----- The Underrot -----
	-- Path to Elder Leaxa
	[131402] = {{"Important", "Look small but are vicious."}, {"Important", "Stacks HEAVY DoT on the tank and explodes on death."}, 
				{"Important", "Pull as few of these as possible and stagger your kills so your healer can recover."}}, -- Underrot Tick
	[130909] = {{"Important", "Frontal breath in a random allies direction."}, {"Important", "Wait until the cast starts, then make sure you're nowhere near the front of the mob."}}, -- Fetid Maggot
	[131436] = {{"PriorityTargets", "Priority Target"}, {"Important", "Frontal Cleave (Savage Cleave, heavy damage + DoT)"}, {"Important", "Warcry heavily buffs all nearby enemies. It can be soothed / tranq shotted."}, 
				{"Important", "Try and go down whichever path has fewer Blood Matrons"}}, -- Chosen Blood Matron
	[133663] = {{"Important", "Will pelt random allies. Hooked Snare is a DoT. Consider defensives here."}}, -- Fanatical Headhunter
	[131492] = {{"Interrupts", "Interrupt(!!): Dark Reconstitution (big heal)"}, {"Interrupts", "Interrupt or Purge(!): Gift of G'huun (+100% damage, unkillable)"}}, -- Devout Blood Priest
	[133685] = {{"Interrupts", "Interrupt(!!!): Harrowing Despair (BIG AoE)"}, {"Important", "Will also channel on random players. Spread a little so you don't share the damage"}, 
				{"HEALER", "Dark Omen should be on you bars and they'll need some decent healing."}}, -- Befouled Spirit
	
	-- The Crag
	[133835] = {{"Important", "Will fixate a random player. Kite, CC, don't get hit."}, {"Interrupts", "Interrupt: Sonic Screech (AoE damage, interrupts spells)"}}, -- Feral Bloodswarmer
	[133870] = {{"Interrupts", "Interrupt(!!): Decaying Mind (Long CC)"}, {"Important", "If a Decaying Mind goes off it can be cleansed by healing through the healing absorb."},
				{"Important", "It can also be cleansed (disease)"}, {"Important", "If it was targeted on the healer you are likely to wipe. Interrupt it."}}, -- Diseased Lasher
	[133852] = {{"Important", "Drop green pools around them. Can interrupt but low priority."}}, -- Living Rot
	
	-- Path to Sporecaller Zancha
	[133836] = {{"Important", "Will cast Bone Shield, a big absorb on themselves. Try and AoE CC them and burn."}}, -- Reanimated Guardian
	[138338] = {{"Important", "Will cast Bone Shield, a big absorb on themselves. Try and AoE CC them and burn."}}, -- Reanimated Guardian (second ID)
	[138187] = {{"Interrupts", "Interrupt(!!): Death Bolt (AoE dmg + DoT)"}, {"Important", "You really need to interrupt every Death Bolt here."}}, -- Grotesque Horror
	[134284] = {{"Interrupts", "Interrupt: Raise Dead (summons a Guardian)"}, {"Interrupts", "Interrupt or Soothe: Wicked Frenzy (+100% haste)"}}, -- Fallen Deathspeaker
	[133912] = {{"Interrupts", "Interrupt(!!): Withering Curse (+dmg taken, -dmg done)"}, {"Interrupts", "Interrupt(!): Shadowbolt Volley (Medium AoE)"},
				{"Important", "Summons a totem that MUST be killed or run away from within 6 seconds (6yd AoE)."}}, -- Bloodsworn Defiler
	
	-- Path to the Abomination
	[138281] = {{"Important", "Dodge: Maddening Gaze (Long fear, targeted in random players direction)"}, {"Important", "Move away from tentacles when they spawn. They're easy to dodge."}}, -- Faceless Corruptor
	
	
	-- Bosses
	[131318] = {{"Important", "When Leaxa or an add casts Sanguine Feast you must walk away from them"}, {"Important", "Dodge: Creeping Rot (moving ground effect that leaves from boss)"}, 
				{"PriorityTargets", "Priority Target: Blood Effigy"}, {"Interrupts", "Interrupt: Blood Bolt (where possible, ST nuke)"}, 
				{"HEALER", "All boss abilities inflict stacking DoT / healing absorb on target."}}, -- Elder Leaxa
	[131817] = {{"Important", "Larva spawn when boss uses abilities. Stand on them to squish."}, {"Important", "Larva grow into adds if not stood on within 8 seconds"},
				{"Important", "Dodge: Charge (Cast on random target, BIG damage)"}, {"HEALER", "Healing CD: Tantrum (big AoE damage, cast at 100 energy)"}}, -- Cragmaw the Infested
	[131383] = {{"Important", "Every mushroom that explodes leaves a stacking DoT. Avoid taking more than 2 stacks."}, {"Important", "Targeted by Upheaval: stand next to a group of mushrooms then run out of the swirl"}, 
				{"Important", "Run into lone mushrooms to detonate them"}, {"Important", "Boss will explode all mushrooms every ~50s. You must clear all mushrooms beforehand"},
				{"TANK", "Frontal Cleave: It also destroys mushrooms"}, {"HEALER", "Consider saving healing CDs for Boundless Rot since it's big dmg if mushrooms are alive"},
				{"ROGUE", "Immunity: the mushroom debuff. Run into as many as possible"}}, -- Sporecaller Zancha
	[133007] = {{"Important", "Boss gains energy instead of taking damage. At 100 he releases adds."}, {"Important", "Dodge: Floating Spores, Vile Expulsion (Cone targeted at player)"},
				{"Important", "Yellow circle around you? Party stacks in it. Clears your debuffs"}, {"PriorityTargets", "Priority Target: Blood Visage > Boss. Killing Blood Visages damages boss."},
				{"Important", "Spores can be one-shot. Clear any that are getting close."},
				{"HEALER", "Stacking dispellable DoT on entire party. Yellow circle clears it. Dispel newbies that miss circle."}}, -- Unbound Abomination
		[137103] = {{"Important", "Boss gains energy instead of taking damage. At 100 he releases adds."}, {"Important", "Dodge: Floating Spores, Vile Expulsion (Cone targeted at player)"},
				{"Important", "Yellow circle around you? Party stacks in it. Clears your debuffs"}, {"PriorityTargets", "Priority Target: Blood Visage > Boss. Killing Blood Visages damages boss."},
				{"Important", "Spores can be one-shot. Clear any that are getting close."},
				{"HEALER", "Stacking dispellable DoT on entire party. Yellow circle clears it. Dispel newbies that miss circle."}}, -- Unbound Abomination (Blood Visage)
	
	
	
	
	----- Tol Dagor -----
	-- Outside
	[127480] = {{"Important", "Stack a light DoT on the party. Just AoE them down."}}, -- Stinging Parasite
	[127381] = {{"Important", "Will squeeze random players for moderate dmg. Don't pull too many at once."}, {"HEALER", "Make sure you can see the Squeeze debuff on your party frames."},
				{"DRUID", "You can shapeshift out of Squeeze. Nice."}}, -- Silt Crab
	
	
	-- Sewer / Lower Prison
	[127482] = {{"Important", "Will lower the max health of the tank. Don't pull too many at once."}}, -- Sewer Vicejaw
	[130025] = {{"Interrupts", "Interrupt(!!): Debilitating Shout (AoE dmg + dmg dealt reduction"}}, -- Irontide Thug
	[131112] = {{"Important", "Low priority mob. Harmless."}}, -- Cutwater Striker
	[135366] = {{"Important", "Prominent torch chucker. Will give your healer something to dispel but not otherwise dangerous."}, {"HEALER", "Dispel: Torch Strike (Magic, DoT, stacking, dispel at 2+)"}}, -- Blacktooth Arsonist
	[127485] = {{"Important", "Moderate tank damage."}, {"Important", "You can AoE purge (Mass dispel, Arcane Torrent) their Darkstep buff."}}, -- Bilge Rat Looter
	[130582] = {{"Important", ""}}, -- Despondent Scallywag (Neutral)
	[130026] = {{"Interrupts", "Interrupt(!!): Watery Dome (AoE damage reduction)"}}, -- Bilge Rat Seaspeaker
	[135254] = {{"Important", "Harmless."}}, -- Irontide Raider
	[131445] = {{"Important", ""}}, -- Block Warden
	
	-- Upper Prison
	[135699] = {{"Interrupts", "Stun / CC Interrupt: Riot Shield (dmg reduction, spell reflect)"}, {"Important", "Will REFLECT spells during Riot Shield. Ow."}}, -- Ashvane Jailer
	[127486] = {{"Interrupts", "Interrupt(!): Handcuff (Silence, pacify, DoT)"}, {"Interrupts", "Stun / CC Interrupt: Riot Shield (dmg reduction, spell reflect)"}}, -- Ashvane Officer
	[127488] = {{"Important", "Fuselighter will create a swirl under a random player. Dodge. Definitely dodge."}}, -- Ashvane Flamecaster
	[130027] = {{"Important", "Have a threat table but a ranged basic attack."}, {"Important", "Frontal Cleave (Suppression Fire, tank must take, DoT)"}}, -- Ashvane Marine
	[136665] = {{"Important", "Will blow up a barrel when engaged. Don't stand in it."}, {"Important", "Has a threat table but a ranged basic attack."}, 
				{"Important", "Frontal Cleave (Suppression Fire, tank must take, DoT)"}}, -- Ashvane Spotter
	[133972] = {{"Important", "You can get in the cannon to deal HEAVY AoE damage."}, {"Important", "WARNING: FRIENDLY FIRE. THE CANNON ALSO HITS ALLIES."},
				{"Important", "Handle the next few packs by pulling them toward the cannon and then CC'ing in place while cannon kills."},
				{"Fluff", "Up-and-coming super villains can use this opportunity to murder your friends."}}, -- Heavy Cannon (Vehicle, Neutral)
	
	-- Roof
	[127497] = {{"Important", "Lockdown is a slow cast that'll root everyone within 6 yds. Avoid."}, {"TANK", "Consider kiting during the Heavily Armed buff. They'll deal dbl dmg."},
				{"Important", "Drag them toward the cannons. Cannons very buff."}}, -- Ashvane Warden
	[130028] = {{"Important", "Righteous Flames is a slow cast that'll disorient everyone within 6 yrds. Avoid."}, {"Interrupts", "Interrupt(!!): Inner Flames (AoE heal, dmg buff)"}}, -- Ashvane Priest
	
	
	-- Bosses
	[127479] = {{"Important", "When she burrows move away from the upheaval target"}, {"Important", "Avoid: Sand mounds (4s stun)"}, 
				{"Important", "Killing drones gives boss a 4s damage buff. Kill in small bunches on higher keys"}, {"HEALER", "Sandstorm (heavy AoE) hits every 30s. Save healing CD's."},
				{"HEALER", "The tank damage can be heavy, especially below 30%"}, {"DRUID", "Soothe: Enrage (Both when adds die, and when she hits 30% HP."},
				{"HUNTER", "Tranq Shot: Enrage (Both when adds die, and when she hits 30% HP."}}, -- The Sand Queen
	[127484] = {{"Important", "Hide around the corner during Flashing Daggers cast or you will die."}, {"Interrupts", "Interrupt: Howling Fear (long AoE fear)"},
				{"Important", "At 50% boss will run away. Chase while killing prisoner adds."}, {"Important", "As soon as you reach boss interrupt his Motivating Cry"},
				{"Important", "During P2 Bobby will join fight and stun ally. Damage his shield off FIRST then interrupt"}, {"HEALER", "Dispel or heal: Crippling Shiv (Poison, medium DoT)"}}, -- Jes Howlis
	[127490] = {{"Important", "You need to pick up and move barrels out of: Cinderflame (cone on random player) and Ignition (big red circles)"}, {"Important", "Everyone must help. You click to pick up, then use extra action bar to drop."},
				{"Advanced", "You only need to keep a corner clean. Tank in a corner and leave the barrels on other side of room."},
				{"Advanced", "There are two barrels near the door when you come in. Move them into the corridor before the fight begins"}}, -- Knight Captain Valyri
	[127503] = {{"Important", "Tank in the north west corner of the room. Everyone spreads around boss with backs to the small walls"}, {"Important", "This will stop you getting pushed back and minimizes movement"},
				{"Important", "You need to dodge the Cross Ignition. It's marked with black paths along the ground."}, {"Important", "If you move more than a few inches then you'll be stunned and likely die."},
				{"HEALER", "Even with good play this is a bursty high damage fight. Try and keep the party topped up."}, {"HEALER", "The group is close together so make sure you keep group heals like Effloresence down."}}, -- Overseer Korgus
	
	
	
	----- Waycrest Manor -----
	-- Entrance Hall
	[135240] = {{"Important", "Moderate damage casts at random allies. Group them up and AoE CC."}}, -- Soul Essence	
	[131677] = {{"Important", "Frontal Cleave (Marking Cleave, tank can dodge after cast start)"}, {"Interrupts", "Interrupt(!): Etch (ST damage channel)"}}, -- Heartsbane Runeweaver
	
	-- Right Side
	[135234] = {{"Important", "Mostly harmless."}}, -- Diseased Mastiff
	[131849] = {{"Important", "Targets random players."}, {"Important", "Will fire a rocket at a random player. Spread out so only one person gets hit."}}, -- Crazed Marksman
	[131850] = {{"Important", "Will throw out traps. One deals heavy damage, one stuns for 8s."}, {"Important", "You really need to make sure you don't walk into them."},
				{"Interrupts", "Interrupt(!): Serving Serpents (AoE disease DoT)"}}, -- Maddened Survivalist
	[134024] = {{"Important", "Harmless UNLESS it has the Parasitic debuff. If it does it must be burned down or interrupted."}, {"Important", "Successful Infest casts will spawn two more maggots"}}, -- Devouring Maggot
	[134041] = {{"Important", "Mostly harmless."}}, -- Infected Peasant
	[135048] = {{"Important", "Mostly harmless. Maybe even cute?"}}, -- Gorestained Piglet
	[137850] = {{"Important", "Frontal Cleave (Retch)"}, {"Important", "Will leap to furthest ally and deal 5yd AoE DoT. Spread a little."}}, -- Pallid Gorger
	[131586] = {{"Interrupts", "Interrupt: Dinner Bell (AoE 8yd silence)"}}, -- Banquet Steward
	[131847] = {{"Important", "Mostly harmless."}}, -- Waycrest Reveler
	
	-- Left Side
	[131670] = {{"Interrupts", "Interrupt or Purge(!): Grasping Thorns (Stun, DoT)"}}, -- Heartsbane Vinetwister
	[131585] = {{"Important", "Frontal Cleave (Shadow Cleave)"}}, -- Enthralled Guard
	[131587] = {{"Interrupts", "Interrupt or Purge: Spirited Defense (medium DR)"}}, -- Bewitched Captain
	--[131685] = {{"Important", ""}}, -- Runic Disciple
	[131818] = {{"Important", "Try and interrupt Runic Mark but if not then the marked player walks away from the group."}, {"Interrupts", "Interrupt or Purge(!!): Soul Fetish (buffs allies on death)"}}, -- Marked Sister
	--[135049] = {{"Important", ""}}, -- Dreadwing Raven
	[135474] = {{"Interrupts", "Interrupt: Bone Splinter, Drain Essence (both DoTs)"}}, -- Thistle Acolyte
	[135052] = {{"Important", "Creates big green swirl on death. Move."}}, -- Blight Toad
	
	-- Courtyard
	[131669] = {{"Important", "Moderate tank damage."}}, -- Jagged Hound
	[131858] = {{"Important", "Heavy tank damage."}, {"Important", "Explodes into a brown swirl on death. Is as nasty as it sounds. Move."}, 
				{"DRUID", "Soothe: Enrage (+25% dmg)"}, {"HUNTER", "Tranq Shot: Enrage (+25% dmg)"}}, -- Thornguard
	[131666] = {{"Important", "Will conjure roots underneath allies. Don't stand in them."}, 
				{"Interrupts", "Interrupt(!!): Effigy Reconstruction (full AoE heal)"}, {"Interrupts", "Interrupt or Purge(!!): Soul Fetish (buffs allies on death)"},
				{"HEALER", "Dispel or heal: Infested Thorn (Disease, medium DoT)"}}, -- Coven Thornshaper
	[135329] = {{"Important", "Very heavy tank damage during uninterruptable Thorned Barrage cast."}, {"Important", "More browl swirls. Move."}}, -- Matron Bryndle
	
	-- Cellar
	[131819] = {{"Interrupts", "Interrupt or Purge(!!): Soul Fetish (buffs allies on death)"}, {"HEALER", "Dispel: Fragment Soul (DoT, buffs the mob later)"}}, -- Coven Diviner
	[135365] = {{"Important", "Spread with Dread Mark. Your healer will give you $5 later."}, {"Interrupts", "Interrupt(!): Ruinous Volley (AoE nuke)"},
				{"TANK", "Have a defensive ready for Decaying Touch. It increases your dmg taken."}}, -- Matron Alna
	[139269] = {{"Important", "Will leap to furthest player and deal 5yd AoE DoT. Have one player stand out."}}, -- Gloom Horror
	[131812] = {{"Important", "Drag mobs out of any candles the soulcharmer drops. Save the romance for later."}, {"Interrupts", "Interrupt: Soul Volley (AoE nuke)"}}, -- Heartsbane Soulcharmer
	
	-- Bosses
	[131863] = {{"Important", "Dodge: Rotten Expulsion, Tenderize (Cone AoEs)"}, {"Important", "If Wasting Servants get to boss he gets damage buff. Ignore them when boss is low."}, 
				{"Important", "Servants vulnerable to ALL CCs if you need more time"}, {"PriorityTargets", "Priority Target: Wasting Servants > Boss. AoE oozelings."},
				{"HEALER", "Low damage so help DPS adds and triage any rookies that stand in puddles."}}, -- Raal the Gluttenous
	[131667] = {{"PriorityTargets", "Priority Target: Soul Thorns (stuns random player until dead)"}, {"HEALER", "Little red spirits will chase you around. Don't stop moving for long"},
				{"HEALER", "Heavy tank damage until boss is dragged over fire, then heavy party damage"}, {"HEALER", "Healing CDs: Burning Brush (moderate AoE)"},
				{"TANK", "Drag the boss into fire to reset his stacks. Do it whenever possible."}}, -- Soulbound Goliath
	[131824] = {{"Important", "Can only dmg one at a time. Don't multi-DoT. Targetable mob will be bigger."}, {"Important", "Aura of Dread: you MUST keep moving. The active aura rotates."},
				{"Important", "Will periodically MC an ally. Switch DPS to them until broken free."},
				{"DAMAGE", "Aura of Thorns: You'll take damage after every attack. Care."}, {"HEALER", "Very hard fight. Aura of Apathy: 50% healing reduction. Conserve mana."},
				{"HEALER", "Spam Heal: Jagged Nettles debuff (heavy DoT, lasts til target is above 90%.)"}, {"HEALER", "Each boss deals heavy AoE at 100 energy. Track it and top the party before."}}, -- Witches: Sister Selena
	[131825] = {{"Important", "Can only dmg one at a time. Don't multi-DoT. Targetable mob will be bigger."}, {"Important", "Aura of Dread: you MUST keep moving. The active aura rotates."},
				{"Important", "Will periodically MC an ally. Switch DPS to them until broken free."},
				{"DAMAGE", "Aura of Thorns: You'll take damage after every attack. Care."}, {"HEALER", "Very hard fight. Aura of Apathy: 50% healing reduction. Conserve mana."},
				{"HEALER", "Spam Heal: Jagged Nettles debuff (heavy DoT, lasts til target is above 90%.)"}, {"HEALER", "Each boss deals heavy AoE at 100 energy. Track it and top the party before."}}, -- Witches: Sister Briar
	[131823] = {{"Important", "Can only dmg one at a time. Don't multi-DoT. Targetable mob will be bigger."}, {"Important", "Aura of Dread: you MUST keep moving. The active aura rotates."},
				{"Important", "Will periodically MC an ally. Switch DPS to them until broken free."},
				{"DAMAGE", "Aura of Thorns: You'll take damage after every attack. Care."}, {"HEALER", "Very hard fight. Aura of Apathy: 50% healing reduction. Conserve mana."},
				{"HEALER", "Spam Heal: Jagged Nettles debuff (heavy DoT, lasts til target is above 90%.)"}, {"HEALER", "Each boss deals heavy AoE at 100 energy. Track it and top the party before."}}, -- Witches: Sister Malady
		[135052] = {{"Important", ""}}, -- Blight Toad
	[131545] = {{"Important", "Virulent Pathogen debuff (green circle): run it out of the group"}, {"Important", "Run out the debuff, stay out of purple swirls and this is very easy fight"},
				{"Important", "Lady will heal Lord a few times using her own health. No counterplay, just keep DPS'ing"}, {"TANK", "Lady Waycrest will fly over at 10% health. You need to taunt her immediately"},
				{"HEALER", "Don't dispel the disease in most cases. Only lasts 5s and they need to run out"}}, -- L&L: Lady Waycrest
	[131527] = {{"Important", "Virulent Pathogen debuff (green circle): run it out of the group"}, {"Important", "Run out the debuff, stay out of purple swirls and this is very easy fight"},
				{"Important", "Lady will heal Lord a few times using her own health. No counterplay, just keep DPS'ing"}, {"TANK", "Lady Waycrest will fly over at 10% health. You need to taunt her immediately"},
				{"HEALER", "Don't dispel the disease in most cases. Only lasts 5s and they need to run out"}}, -- L&L: Lord Waycrest
	[131864] = {{"Important", "Slavers cast Death Lens. Either kill quickly or interrupt cast with knockbacks / grips."}, {"Important", "Yorrick will drop flasks of fire on the floor. Assign one DPS to pick them up"},
				{"Important", "Kill the adds near the boss and then cast Alchemical Fire when boss casts Dread Essence"}, {"Important", "If you don't then he'll resummon all dead adds."},
				{"HEALER", "Add Death Lens to your frame. They'll need big healing if the cast goes through"}}, -- Gorak Tul	
	
	
	
	
	----- Shrine of the Storm -----
	-- Path to Aqu'sirr
	[136347] = {{"Important", "Mostly harmless. They'll run when low so watch for that."}}, --  Tidesage Initiate
	[134139] = {{"Important", "Annoying mob. CC them where possible and kill them alone."}, {"Important", "Frontal Cleave (Heaving blow, stuns, dodgeable by tank)"},
				{"Interrupts", "Interrupt or Purge: Tidal Surge (+haste +dmg)"}}, -- 	Shrine Templar
	[134137] = {{"Important", "Move out of the blue swirl."}, {"Interrupts", "Interrupt as many Water Blasts as you can but it isn't urgent."}}, -- 	Temple Attendant
	[134173] = {{"Important", "Mostly harmless."}}, -- 	Animated Droplet
	[136186] = {{"Interrupts", "Interrupt(!!): Mending Rapids (Massive heal)"}, {"Important", "Anchor of Binding will toss an anchor at a player. Dodgeable."}}, -- 	Tidesage Spiritualist
	[134144] = {{"Important", "Dangerous mob. Will throw players into the air and deal heavy AoE damage."}, {"Important", "You CAN now Line of Sight the Rising Tides. Healers / DPS are encouraged to."}}, -- 	Living Current
	
	-- Path to Council
	[139800] = {{"Important", "Move from the windy zones and dodge any tornadoes."}, {"Interrupts", "Interrupt: Tempest (spawns high damage dodgeable tornadoes)"}}, -- 	Galecaller Apprentice
	[139799] = {{"Important", "Heavy tank damage. AoE 8yd cleave (Whirling Slam, dodgeable)"}, {"TANK", "Kite during the Blessing of Ironsides buff. Mob deals dbl dmg but moves slow."}}, -- 	Ironhull Apprentice
	[134150] = {{"Important", "Ok he'll put a ward down and everyone should stand in it at all times."}, {"Important", "He'll cast Carve Flesh on a random party member."},
				{"Important", "If you're in the ward you'll take -75% dmg and live. If you're 50 yards away you're dead."}, {"TANK", "You want to stand in the ward yourself, while keeping the miniboss out of it."},
				{"HEALER", "Make sure you can see Carve Flesh on your frames. Try and save idiot DPS that isn't in ward."}}, -- 	Runecarver Sorn
	[136249] = {{"Important", "BFA's Mariner. Will channel heavy AoE damage on party."}, {"HEALER", "Make sure you have healing CD's ready. It's predictable but heavy damage."}, 
				{"HEALER", "Dispel: Electrifying Shock (Medium DoT)"}}, -- 	Guardian Elemental
	[136214] = {{"Important", "Jump in the Swiftness Wards she summons for a 25% haste buff"}, {"TANK", "The haste ward also buffs Heldis and any other trash. Drag them out."},
				{"HEALER", "Gale Winds is a moderately harmful AoE channel. You'll need to heal through it."},
				{"Fluff", "With all that haste you'll feel like you're still playing a different expansion."}},
	
	-- Path to Stormsong
	[134417] = {{"Important", "PULL ONE AT A TIME"}, {"Important", "Spread out with Void Seed. It doesn't hurt if you're 6yds apart."}, 
				{"Interrupts", "Interrupt(!!): Unending Darkness (AoE nuke, inc shad dmg taken debuff)"}}, -- 	Deepsea Ritualist
	[139626] = {{"Important", "You can purge their shield to make them easier kills. Arcane Torrent is beautiful here."}}, -- 	Dredged Sailor
	[134338] = {{"Important", "Conjures many blue swirls. I died to them once. Don't be me."}}, -- 	Tidesage Enforcer
	[134418] = {{"Important", "Have many interruptable casts. Priority is Touch of the Drowned > Rip Mind > Void Bolt."}, {"Interrupts", "Interrupt or dispel(!): Touch of the Drowned (medium DoT)"},
				{"Interrupts", "Interrupt: Rip Mind (ST Nuke, -max HP)"}}, -- 	Drowned Depthbringer
	[134514] = {{"Important", "Frontal Cleave ('Mental Assault', stun, tank can dodge)"}, {"Interrupts", "Interrupt or Purge(!): Consuming Void (spell absorb buff)"},
				{"Interrupts", "Interrupt: Detect Thoughts (100% dodge chance, 6s)"}}, -- 	Abyssal Cultist
	[136353] = {{"Important", "Deal heavy AoE damage. Make sure your tank is standing close to them."}}, -- 	Colossal Tentacles
	[134423] = {{"Important", "Deal medium AoE damage. AoE them quickly."}}, -- 	Abyss Dweller
	
	-- The Seas
	[140038] = {{"Important", "Moderate tank damage. Otherwise harmless."}}, -- 	Abyssal Eel
	[136295] = {{"Important", "Heavy tank damage. Slow so can be kited."}}, -- 	Sunken Denizen
	[136297] = {{"Interrupts", "Interrupt(!!) Consume Essence (AoE Nuke + full AoE heal)"}}, -- 	Forgotten Denizen
	
	-- Bosses
	[134056] = {{"Important", "Don't stand in blue swirls. Don't stand in front of boss when he charges. DPS Grasps."}, {"Important", "Boss will split into three smaller elementals. Same abilities. Watch out for the charges."}, 
				{"Important", "YOU CAN FALL OFF THE PLATFORM. KEEP YOURSELF SAFE."}, {"HEALER", "Dispel: Choking Brine (DoT)"}, {"DRUID", "You can shapeshift out of the Grasp of the Depths root"}, 
				{"PALADIN", "You can Freedom the Roots."}}, -- 	Aqu'sirr
		[134828] = {{"Important", "Don't stand in blue swirls. Don't stand in front of boss when he charges. DPS Grasps."}, {"Important", "Boss will split into three smaller elementals. Same abilities. Watch out for the charges."}, 
				{"Important", "YOU CAN FALL OFF THE PLATFORM. KEEP YOURSELF SAFE."}, {"HEALER", "Dispel: Choking Brine (DoT)"}, {"DRUID", "You can shapeshift out of the Grasp of the Depths root"}, 
				{"PALADIN", "You can Freedom the Roots."}}, -- 	Aqualing
	[134063] = {{"Important", "Swiftness and Reinforcing wards are dropped through fight. ALWAYS stand in them"}, {"Important", "Reinforcing clears Slicing Winds stacks, Swiftness is +25% haste"},
				{"Important", "Kill Faye first, or both at the same time (efficient but tough on mana)"}, {"Important", "Interrupt: Slicing Blast (when Faye is in a swiftness ward)"},
				{"TANK", "When Ironhull casts Blessing you need to kite. He deals double damage"}, {"TANK", "Face the cleave away from the party. You can clear the movement debuff in swiftness wards"},
				{"HEALER", "Track Slicing Blast stacks. They should be cleared every reinforcing ward but DPS are slow sometimes"}, {"HEALER", "Warning: The tank is likely to take heavy spiky damage"}}, -- 	TC: Brother Ironhull
	[134058] = {{"Important", "Swiftness and Reinforcing wards are dropped through fight. ALWAYS stand in them"}, {"Important", "Reinforcing clears Slicing Winds stacks, Swiftness is +25% haste"},
				{"Important", "Kill Faye first, or both at the same time (efficient but tough on mana)"}, {"Important", "Interrupt: Slicing Blast (when Faye is in a swiftness ward)"},
				{"TANK", "When Ironhull casts Blessing you need to kite. He deals double damage"}, {"TANK", "Face the cleave away from the party. You can clear the movement debuff in swiftness wards"},
				{"HEALER", "Track Slicing Blast stacks. They should be cleared every reinforcing ward but DPS are slow sometimes"}, {"HEALER", "Warning: The tank is likely to take heavy spiky damage"}}, -- 	TC: Galecaller Faye
	[134060] = {{"Important", "MC'd targets must take damage by running through orbs and being targeted by allies."}, {"Important", "If you're not MC'd, don't get hit by the orbs or I'm taking away your dungeon license."},
				{"HEALER", "Dispel: Mind Rend (DoT, slow). You can also dispel Explosive Void (stun) if someone hits an orb."}}, -- 	Lord Stormsong
	[134069] = {{"Important", "Complex fight. Start by dodging tentacle slams and big black circles."}, {"Important", "Boss will drop everyone to sunken realm. Tank & healer in one, DPS in the other. Must kill add to escape"},
				{"Important", "Healer gets debuff that gives +damage +healing -maximum health. Healer MUST help DPS. DPS can receive buff if healer already has it"}, {"Important", "Debuff can be cleansed if you don't trust yourself to dodge everything"},
				{"Important", "Manifestation adds can't reach boss but will deal AoE damage when killed. Ensure nobody is low"}, {"Important", "Advanced strat on the website soon (too long for tooltips)"}}, -- 	Vol'zith the Whisperer
		[136100] = {{"Important", "Kite it, kill it. Healer MUST DPS it. Cast from your spellbook if you must; you're hitting it."}}, -- 	Sunken Denizen
	
	
	---------------------------------------------------
	
	
	
	---------------------------------------------------
	---------------------Legion------------------------
	---------------------------------------------------	
				
	-- Halls of Valor
	[97087] = {{"Legion", "Not strong. Minor tank damage."}}, -- Valarjar Champion
	[96611] = {{"Legion", "Can skip with Sap / Imprison"}, {"Interrupts", "STUN Interrupt: Rumbling Stomp"}}, -- Angerhoof Bull
	[96608] = {{"Legion", "Don't pull more than 2-3 at a time!"}, {"Legion", "Use grips / stuns to minimize damage"}}, -- Ebonclaw Worg
	[96677] = {{"Legion", "Don't pull. Inefficient."}}, -- Steeljaw Grizzly
	[96640] = {{"Legion", "Penetrating shot fires in direction of tank."}, {"Important", "Penetrating Shot will one shot you!"}}, -- Valarjar Marksman
	[95834] = {{"Interrupts", "Interrupts: Holy Radiance > Rune of Healing"}}, -- Valarjar Mystic
	[101637] = {{"Important", "Skip this pack by hugging the left or right walls"}}, -- Valarjar Aspirant
	[96664] = {{"Interrupts", "Interrupts: Etch"}, {"Interrupts", "Interrupts: Shattered Rune"}}, -- Valarjar Runecarver
	[95832] = {{"Important", "Frontal Cleave!"}, {"HEALER", "Healing / Armor reduction on tank"}}, -- Valarjar Shieldmaiden
	[95842] = {{"Interrupts", "Interrupts: Thunderous Bolt"}, {"HEALER", "Dispel: Thunderstrike"}, {"Legion", "Use AoE stuns / knockbacks to control large packs"}}, -- Valarjar Thundercaller
	[97068] = {{"PriorityTargets", "Priority Target"}, {"TANK", "You need a big CD for each Lightning Breath. Face away from party"}, {"HEALER", "Top the tank up before each Lightning Breath"},
				{"DRUID", "You're a beautiful person"}, {"DEMONHUNTER", "You're doing great"}}, -- Storm Drake
	[96574] = {{"Important", "Gives Interrupts immunity to nearby mobs. Pull alone."}}, -- Stormforged Sentinel
	[99891] = {{"PriorityTargets", "Priority Target"}, {"TANK", "You need a big CD for each Lightning Breath"}, {"HEALER", "Top the tank up before each Lightning Breath"}}, -- Storm Drake
	[97197] = {{"PriorityTargets", "Priority Target (or CC)"}, {"Interrupts", "Interrupt: Cleansing Flame"}}, -- Valarjar Purifier
	[99804] = {{"Fluff", "You shouldn't need to pull this"}}, -- Valarjar Falconer
	[96934] = {{"Important", "Drops Bear Traps. Don't stand on them."}}, -- Valarjar Trapper
	
	-- Mini Bosses
	[97202] = {{"Important", "Dodge: Sanctify balls (AoE damage to your party)"}}, -- Olmyr
	[97219] = {{"Important", "Stand in bubble during Eye of the Storm"}}, -- Solsten
	[97083] = {{"Important", "Recommended kill order: #1/4"}, {"Interrupts", "Interrupt: Unruly Yell"}}, -- King Ranulf
	[95843] = {{"Important", "Recommended kill order: #3=/4"}, {"TANK", "Does heavy tank damage with Sever."}, {"HEALER", "Tank will get smashed with Sever. Keep alive."}}, -- King Haldor
	[97081] = {{"Important", "Recommended kill order: #3=/4"}, {"HEALER", "Will wang random targets with Wicked Dagger."}}, -- King Bjorn
	[97084] = {{"Important", "Recommended kill order: #2/4"}, {"Legion", "Ancient Ancestors vulnerable to almost every CC."}}, -- King Tor
	
	
	-- Bosses
	[95833] = {{"Defensives", "Defensives: Save for Expel Light / Arcing combo."},
				{"HEALER", "Healing CD: Every Eye of the Storm (every 1min)"}, {"HEALER", "This is a very tough fight. Prepare for heavy, spiky damage."}, 
				{"TANK", "Face Shield of Light toward opposite side of the room"}, {"Legion", "There's a Weak Aura for Arcing Bolt on QuestionablyEpic"}}, -- Hyrja
	[94960] = {{"Important", "Start in the middle for Storm Drakes. Move into the first section to be hit by lightning."}, {"Important", "Focus on dodging Ball Lightning. Your damage doesn't matter."},
				{"HEALER", "Horn of Valor deals heavy AoE damage. Top the party before it hits"}, {"TANK", "Big frontal cleave. Face boss away from the party at all times."}}, -- Hymdall
	[99868] = {{"Important", "Party must be 10 yards apart during Ravenous Leap"}, {"Important", "Claw Frenzy is split between everyone close to the boss"}, 
				{"Legion", "You can pop immunities during Scent of Blood to keep boss still."}, {"HEALER", "Keep party healthy to survive claw frenzy"},
				{"Advanced", "Shadowmeld: Ravenous Leap to cancel the entire ability."}}, -- Fenryr II
	[95674] = {{"Important", "Party must be 10 yards apart during Ravenous Leap"}, {"Important", "Claw Frenzy is split between everyone close to the boss"}, 
				{"Legion", "You can pop immunities during Scent of Blood to keep boss still."}, {"HEALER", "Keep party healthy to survive claw frenzy"},
				{"Advanced", "Shadowmeld: Ravenous Leap to cancel the entire ability."}}, -- Fenryr	I		
				
	[95675] = {{"Important", "Felblaze Rush can be dodged! Stand max range; Use mobility cooldowns or defensives"}, 
				{"HEALER", "You have time to DPS during the fight, very little damage"},
				{"TANK", "You are responsible for using Aegis of Aggramar during Ragnarok"}, {"TANK", "Remember to pick up the shield again when it falls to the floor!"}}, -- God King Skovald
	[95676] = {{"PriorityTargets", "Kill Obliterators as Priority targets. You MUST interrupt"}, {"Legion", "You get a big damage buff when you cash in Runic Brand. Save cooldowns"}}, -- Odyn
	----------------------------

	
	-- Lower Karazhan
	[114627] = {{"Interrupts", "Interrupt: Terrifying Wail"}, {"HEALER", "Dispel: Cursed Touch"}}, -- Shrieking Terror (spirit)
	[114626] = {{"Interrupts", "Interrupt: Soul Leech"}, {"HEALER", "Dispel: Shadow Rend"}}, -- Forlorn Spirit (spirit)
	[114541] = {{"Legion", "Not strong. Minor tank damage"}}, -- Spectral Patron
	[114542] = {{"Important", "Dodge coins on the ground instead of reading this"}, {"TANK", "Ultra-high unavoidable tank damage with throw coin"}}, -- Ghostly Philanthropist
	[114584] = {{"Legion", "Not strong. Minor tank damage"}}, -- Phantom Crew (?)
	[114526] = {{"Important", "Standing in the spotlights increases your damage by 50%!"}, 
				{"Important", "Final Curtain is a 5 yard range one shot"},
				{"TANK", "Keep the mobs out of the spotlights"}}, -- Ghostly Understudy
					
	[116549] = {{"Interrupts", "Interrupt(!!): Firelands Portal"},
				{"Important", "Use AoE stuns to prevent casts. They will murder you."}}, -- Backup Singer
	[114544] = {{"Important", "Face away from the mobs during Flashlight!"},
				{"HEALER", "Flashlight does moderate AoE damage even when handled correctly"}}, -- Skeletal Usher 
	[114625] = {{"Legion", "Mass Interrupts to group them together"},
				{"Legion", "Not dangerous"}}, -- Phantom Guest
	[114629] = {{"Important", "Dangerous mob. Pull with caution."},
				{"Interrupts", "Interrupt: Oath of Fealty"},
				{"TANK", "Oath of Fealty can mind control you if cast"}}, -- Spectral Retainer
	[114634] = {{"Interrupts", "Interrupt: Shackles of Servitude"}, {"HEALER", "Dispel (Curse): Shackles of Servitude"}}, -- Undying Servant
	[114636] = {{"Important", "Frontal Cleave with Shield Slam"},
				{"TANK", "You can also dodge Shield Slam yourself"}},	-- Phantom Guardsman
	[114637] = {{"Legion", "Will fire on random party members"}}, -- Spectral Sentry
	[114783] = {{"Legion", "Stun and focus the Maiden as she hits 50% to avoid Heartbreaker"}, {"HEALER", "Dispel Flirt to reduce danger of a Heartbreaker cast. Tank priority"}}, -- Reformed Maiden
	[114796] = {{"Interrupts", "Interrupt: Banshee Wail"}, {"HEALER", "Dispel anyone near 100 Alluring Aura stacks to avoid MC"}}, -- Wholesome Hostess
	[114792] = {{"Important", "Don't stand in the Charming Perfume"}, {"Interrupts", "Interrupt: Shadowbolt Volley"}}, -- Virtuous Lady
	[115020] = {{"Legion", "This is a poor place to get your trash percentage"}}, -- Arcanid
	[115019] = {{"Legion", "This is a poor place to get your trash percentage"}}, -- Coldmist Widow
	[115115] = {{"Legion", "This is a poor place to get your trash percentage"}}, -- Coldmist Stalker
	[114624] = {{"Important", "Avoid the blue swirls on the floor"}, {"Legion", "Spread with Volatile Charge debuffs"}}, -- Arcane Warden
	[114628] = {{"HEALER", "Dispel: Brittle Bones"}}, -- Skeletal Waiter
	[114794] = {{"TANK", "Defensive: Rotting Bite"}}, -- Skeletal Hound
	[114716] = {{"TANK", "Not dangerous, but will knock you down for 2 seconds"}},	 -- Ghostly Baker
	[114715] = {{"Legion", "Moderate frontal cleave. Stay at max range"}}, -- Ghostly Chef
	[114802] = {{"Important", "Heavy frontal cleave with Smash. Can be avoided by tank"}}, -- Spectral Journeyman
	[114801] = {{"PriorityTargets", "Priority Target"}, {"Important", "Spreadout with Burning Brand. It hurts. A lot."}}, -- Spectral Apprentice
	[114804] = {{"Legion", "Stand near the wall, shorter charge = more DPS"},
				{"Legion", "Consider stun-interrupting Tramping Stomp"}},-- Spectral Charger
	[114803] = {{"Interrupts", "Interrupt: Healing Touch"}}, -- Spectral Stable Hand
	[114633] = {{"Interrupts", "Interrupt: Demoralizing Shout"}}, -- Spectral Valet
	[116550] = {{"Legion", "Not strong. Minor tank damage."}}, -- Spectral Patron
	[114632] = {{"Interrupts", "Interrupt: Shadow Rejuvenation (Heal)"}}, -- Spectral Attendant
	[114714] = {{"Important", "Will stun the tank"}}, -- Ghostly Steward
	
	--Bosses
	[113971] = {{"Interrupts", "Interrupt: Holy Wrath, Holy Shock"},
				{"DAMAGE", "Save DPS cooldowns for Holy Bulwark"},
				{"HEALER", "Try and get a stack of Sacred Ground 5s before Mass Repentance"},
				{"HEALER", "This reduces the burst healing required to deal with the mechanic"}}, -- Maiden
	[114262] = {{"Important", "Stack with the tank for Shared Suffering unless they are able to dodge it"},
				{"TANK", "You cannot easily dodge Mortal Strike, a 50% max HP reduction"},
				{"Legion", "Let your healer know if you have the spirit on you."},
				{"Legion", "Manually scanning five people is much slower"},
				{"Legion", "During Spectral Charge, try and stay near the center of the room"}}, -- Attumen
	[114312] = {{"Important", "Add CC is broken when Moroes below 60% but can be hunter trapped after"},
				{"HEALER", "Long grueling fight. Watch your mana"},
				{"HEALER", "Dispel: Coat Check (Incr dmg taken)"}}, -- Moroes main
	[114316] = {{"Legion", "Casts Mana Drain, Arcane Blast"},
				{"Interrupts", "Interrupts(!): Mana Drain"}}, --  Dorothea Millstipe
	[114317] = {{"Legion", "Casts Healing Stream, Smite"},
				{"Interrupts", "Interrupts(!): Healing Stream"}}, -- Catriona
	[114318] = {{"Legion", "Casts Iron Whirlwind"},
				{"Legion", "Stay as far from Rafe as you can"}}, -- Baron Rafe
	[114319] = {{"Legion", "Casts Empowered Arms"},
				{"Interrupts", "Interrupts(!): Empowered Arms"}}, -- Keira
	[114320] = {{"Legion", "Casts Whirling Edge (projectile)"},
				{"Legion", "Harmless if you avoid the blade he throws at you"}}, -- Robin Daris
	[114321] = {{"Legion", "Casts Will Breaker"},
				{"Legion", "Long cast, large floor-based AoE one-shot"},
				{"Advanced", "You can interrupt Will Breaker with knock backs"}}, -- Crispin Ference
			
	-- Upper Karazhan
	[114334] = {{"Legion", "Straightforward. Don't stand in the swirls"}}, -- Damaged Golem
	[115765] = {{"Legion", "Soul always appears in the same place. Gives +100% damage to you"}}, -- Abstract Nullifier
	[114338] = {{"Legion", "You can line of sight Arcane Barrage"},
				{"Interrupts", "Interrupt: Arcane Barrage when shield drops"}}, -- Mana Confluence
	[114364] = {{"Legion", "Not strong"}}, -- Mana-Gorged Wyrm
	[115484] = {{"Legion", "You can taunt to bring to the ground. Rarely required"}}, -- Fel Bat
	[115488] = {{"Important", "You must soak the Fel Orbs by standing in them"},
				{"Important", "They explode if not soaked. Use defensive when soaking"}},-- Infused Pyromancer
	[115757] = {{"Important", "Nasty frontal cleave"}, {"Legion", "Kite him up into the tunnel to avoid flame floor"}}, -- Wrathguard Flamebringer
	[115419] = {{"Important", "Avoid pulling"},
				{"Interrupts", "Interrupt: Consume Magic"}}, -- Ancient Tome
	[115417] = {{"Legion", "Avoid stampede. Keep tank alive."}}, -- Rat
	[115418] = {{"HEALER", "Dispel Leech Life if able as priority"},
				{"HEALER", "Keep Web targets alive"}},-- Spider
	[115831] = {{"Important", "Intercept orbs for a damage buff"},
				{"Important", "Any orbs that hit wyrms explode for AoE damage"}}, -- Mana Devourer
	[115486] = {{"Important", "Frontal cleave that will knock you off!"}}, -- Erudite Slayer
	[115388] = {{"Important", "The King won't put up new shield below 30%"},
				{"Legion", "Focus on low HP targets first, like Knights"},
				{"Legion", "Don't die. This sucks enough as-is"}}, -- King
				
	---Bosses
	[114247] = {{"Important", "Killing sparks is absolute priority"},
				{"Important", "High keys: Move as a group to preserve space"},
				{"HEALER", "Heavy AoE damage from sparks. Keep party topped"},
				{"HEALER", "Help DPS during Evocation"}}, -- Curator
	[114350] = {{"Important", "Keep Frostbite Interrupted. Coordinate Interrupts"},
				{"Legion", "Blink after Inferno Bolt is cast to avoid it entirely"},
				{"WARRIOR", "Piercing Missles can be spell reflected"},
				{"HEALER", "Flame Wreath must be healed through. Be amazing"},
				{"HEALER", "Healing CDs: Bird phase. Something for Flame Wreath"}}, -- Shade of Medivh
	[116494] = {{"Important", "You can use immunities to soak mass balls"},
				{"Legion", "If not, grab 1-2 orbs each only"}}, -- Mana Devourer
	[114790] = {{"Important", "Keep an eye on the eyeball during Disintegrate"},
				{"Important", "Pre-spread before Chaotic Shadows goes out. Don't stack"},
				{"Interrupts", "Interrupt: Burning Blast"}}, -- Viz'aduum
	---------------0--------------------
	
	
	-- Eye of Azshara
	[106785] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Slave
	[101414] = {{"Important", "Has more health than other murlocs. Beware on Bolster"}}, -- Saltscale Skulker
	[91796] = {{"PriorityTargets", "Priority Target"}, {"Important", "Casts: Rising Fury (AoE stun)"}}, -- Skrog Wavecrasher
	[97172] = {{"Legion", "Harmless"}}, -- Saltsea Droplet
	[91782] = {{"Interrupts", "Interrupt: Thundering Stomp"}}, -- Hatecoil Crusher
	[97170] = {{"Important", "Don't pull!"}}, -- Hatecoil Wavebinder
	[97173] = {{"Important", "Don't pull!"}}, -- Restless Tides
	[91783] = {{"Interrupts", "Interrupt: Arc Lightning(!), Storm"}}, -- Hatecoil Stormweaver
	[95861] = {{"Interrupts", "Interrupt: Rejuvenating Waters(!)"}}, -- Hatecoil Oracle
	[95939] = {{"Important", "Casts: Massive Quake (dodgeable circles)"}}, -- Skrog Tidestomper
	[100216] = {{"Interrupts", "Stun Interrupt(!!!): Lightning Prod (Big AoE)"}}, -- Hatecoil Wrangler
	[106787] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Slave
	[106786] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Slave
	[97171] = {{"Interrupts", "Interrupt: Arcane Rebound (ST Nuke). Ignore others"}}, -- Hatecoil Arcanist
	[95920] = {{"Important", "Don't pull!"}}, -- Animated Storm
	[99630] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Scavenger
	[91793] = {{"Legion", "Harmless"}}, -- Seaspray Crab
	[91792] = {{"Important", "Dangerous Tail Cleave"},
				{"TANK", "Hydra autoattacks have chance to deal heavy magic damage"}}, -- Stormwake Hydra
	[99629] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Scavenger
	[91781] = {{"Important", "Frontal Cleave"}}, -- Hatecoil Warrior
	[91794] = {{"Legion", "Harmless"}}, -- Saltscale Lurker
	[91785] = {{"Legion", "Harmless. You can stun the shield off"}}, -- Wandering Shellback
	[95940] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Scavenger
	[95947] = {{"Legion", "Breaking mob shield deals AoE damage. Has cleave."}}, -- Mak'rana Hardshell
	[91790] = {{"Important", "Stun or dodge Spray Sand"},
				{"HEALER", "Dispel: Sandstorm (reduced hit chance)"}}, -- Mak'rana Siltwalker
	[91786] = {{"Legion", "Doesn't melee. Slime hits in a cone"}}, -- Gritslime Snail
	[91787] = {{"Legion", "Pull before bosses. Will disorient nearby targets"}}, -- Cove Seagull
	[100248] = {{"Interrupts", "Interrupt: Lightning Blast (ST Nuke)"}}, -- Ritualist Lesha
	[100249] = {{"Interrupts", "Interrupt: Lightning Blast (ST Nuke)"},
				{"HEALER", "Dispel: Polymorph Fish (CC)"}}, -- Channeler Varisz
	[100250] = {{"Interrupts", "Interrupt: Lightning Blast (ST Nuke)"},
				{"HEALER", "Dispel or heal: Magic Binding (5 targets)"}}, -- Binder Ashioi
	[98173] = {{"Interrupts", "Interrupt(!): Lightning Blast(!)"},
				{"Interrupts", "Interrupt or Dodge: Storm (10 yard AoE)"}}, -- Mystic Ssa'veh
	---Bosses
	[91784] = {{"Important", "Stand behind a minion during Impaling Spear"},
				{"Interrupts", "Interrupts (Shellbreaker): Bellowing Roar"},
				{"HEALER", "Impaling Spear targets need big heals"}}, -- Parjesh				 
	[91789] = {{"Important", "Spread during Focused Lightning"},
			{"Legion", "Careful with your curse, it knocks back on expiry. Don't murder your friends"},
			{"Legion", "The tornadoes destroy the land. Take care"},
			{"Defensives", "Defensive: Focused Lightning"}}, -- Hatecoil
	[91808] = {{"Legion", "Remember your health potions. Fight is very spread out"}, {"Legion", "Damage dealt to spawns also hits Serpentrix"}}, -- Serpentrix
	[91797] = {{"Legion", "Aftershock hits 4s after Quake. Move from cracked ground"},
				{"Legion", "Remove bubbles with Quake and Call of the Seas"}}, -- King Deepbeard
	[96028] = {{"Important", "Stick together! Mark your healer"},
				{"Legion", "You must stack on or sacrifice the Crushing Depths target"},
				{"HEALER", "Dispel: Arcane Bomb (ST Nuke)"},
				{"HEALER", "Healing CDs: Save for Phase 2 (sub 10%)"}}, -- Wrath of Azshara
	------------------0-----------------

	
	
	-- Black Rook Hold
	[101839] = {{"Important", "Ranged: Stand at least 40 yards away and spread"},
				{"Important", "Priority Kill Target"}}, -- Risen Companion
	[98691] = {{"Interrupts", "Stun Interrupt: Knife Dance (AoE)"},
				{"Important", "Knife Dance has short range so run out if you can't stun"}}, -- Risen Scout
	[98706] = {{"Important", "Beware: Bonebreaking Strike stuns in a frontal line"}}, -- Commander Shemdah'sohn
	[98366] = {{"Legion", "You can skip with invis pot"},
				{"HEALER", "Dispel: Soul Blade"}}, -- Ghostly Retainer
	[98368] = {{"PriorityTargets", "Priority Kill Target"}, {"Legion", "You can skip with invis pot"}}, -- Ghostly Protector
	[101549] = {{"PriorityTargets", "Priority Kill Target"}, {"Important", "Move out of blue swirls on ground"}}, -- Arcane Minion
	[102138] = {{"Important", "Where did you find this man??"}}, -- Vanguard Ixxilon (not in game)
	[98275] = {{"Important", "Shoot has a 30 yard range. Sorry melee"}, {"Legion", "Arrow Barrage hits slightly further than the animation"},
				{"Legion", "You can line of sight Shoot if low"}}, -- Risen Archer 
	[98280] = {{"Interrupts", "Interrupt: Arcane Blitz (ST Nuke)"}}, -- Risen Arcanist
	[98243] = {{"Important", "Beware: Bonebreaking Strike stuns in a frontal line"}}, -- Soul-Torn Champion
	[98677] = {{"Important", "Explodes on death"}, {"HEALER", "Dispel(!): Soul Venom (large DoT)"}}, -- Rook Spiderling
	[98538] = {{"Important", "Stay spread out. Moderately high tank & party damage"}, 
				{"Legion", "You can skip with invis pot"}}, -- Lady Velandras Ravencrest
	[98521] = {{"Important", "Move out of the party with Soul Echos"}, 
				{"Interrupts", "Interrupt: Spirit Blast"},
				{"Legion", "You can skip with invis pot"}}, -- Lord Etheldrin Ravencrest
	[98813] = {{"Legion", "Harmless"}}, -- Bloodscent Felhound
	[98681] = {{"Legion", "Harmless"}}, -- Rook Spinner
	[98370] = {{"Interrupts", "Interrupt: Dark Mending (Heal)"}}, -- Ghostly Councilor
	[102788] = {{"Interrupts", "Interrupt: Felfrenzy"}, {"Legion", "Good luck with the staircase my friend"}}, -- Felspite Dominator
	[98810] = {{"Interrupts", "Stun Interrupt: Brutal Assault"}, {"TANK", "Brutal Assault deals heavy tank damage. Stun or run away"}}, -- Wrathguard Bladelord
	[98792] = {{"Legion", "Abilities change after potion drink"}, {"Legion", "Basically just give them some space"}}, -- Wyrmtongue Scavenger
	[101923] = {{"Legion", "Does a variety of abilities after potion drink"}, {"Legion", "Basically just give them some space"}}, -- Wyrmtongue Scavenger
	[98900] = {{"Legion", "Harmless. Bolster warning: Low HP mob"}}, -- Wyrmtongue Trickster
	[102095] = {{"Important", "Dodge the brown swirls on the floor"}}, -- Risen Lancer
	[102094] = {{"TANK", "Coup de Grace deals heavy damage"}}, -- Risen Swordsman
	---Bosses
	[98542] = {{"Important", "P2: CC a spirit to delay Soul Burst until 15%"}, {"Important", "Use ALL of your defensives on Soul Burst"}, {"TANK", "Pull to one side of the room. Run out of Reap Soul"}}, -- Amalgam of Souls
	[98696] = {{"Important", "Ranged: Spread for Brutal Glaive, then line up for Blazing Trail"}, {"Important", "P2: Kill Arcanist first. Interrupts casts"}, 
				{"TANK", "Use your core defensive ability before Vengeful Shear"},
				{"HEALER", "Big heals on Brutal Glaive targets"}}, -- Illysanna Ravencrest
	[98949] = {{"Important", "When targeted, move Fel Vomit to the side of the room"}, {"Important", "Move away from Fel Vomit during Earthshaking Stomp"},
			{"Important", "Brutal Gaze should be intercepeted by tank / tanky DPS, 1-2 stacks max"}, {"TANK", "When boss energy hits 100: expect heavy tank damage"}}, -- Smashspite
	[94923] = {{"Important", "Use BIG defensives for first Shadowbolt Volley"}, {"Important", "Dodge Whirling Blade. It hurts"},
			{"Important", "Dark Obliteration can move in both directions. Be prepared"}, {"HEALER", "Swarm targets will need big healing"}}, -- Kur'talos
	----------------0--------------------
	
	
	-- Arcway
	[98728] = {{"Legion", "Jumps to random players to eat them. You can walk away"}}, -- Acidic Bile
	[98756] = {{"Important", "Arcane Slicer is a line based one shot. Itll face a direction to cast it"}, {"Interrupts", "Interrupt: Arcane Reconstitution (Full Heal)"}}, -- Arcane Anomaly
	[105617] = {{"Interrupts", "Interrupt: Demonic Ascension (purgeable)"}, {"Interrupts", "Interrupt: Portal Argus / Brand of the Legion"}, 
				{"WARLOCK", "Enslave then cast Brand of the Legion on allies"}}, -- Eredar Chaosbringer
	[105682] = {{"TANK", "Heavy hitter. Reduces healing received. Take care"}}, -- Felguard Destroyer
	[98732] = {{"Important", "Won't always attack tanks. Use AoE CC to keep debuff stacks low"}, {"HEALER", "Dispel the disease if possible, otherwise pump big heals"}}, -- Plagued Rat
	[105651] = {{"Important", "Line of Sight: Prophecies of Doom to avoid all damage"}, {"DEATHKNIGHT", "Death Grip can interrupt Seer casts"},
				{"DEMONHUNTER", "Sigil of Chains can interrupt Seer casts"}}, -- Dreadborne Seer
	[98759] = {{"Legion", "Devour can be stunned, or removed with Freedom / Shapeshifting"}}, -- Vicious Manafang
	[105876] = {{"Important", "Explodes on death!!"}}, -- Enchanted Broodling
	[102351] = {{"Legion", "Line of sight: They'll group up for your AoE DPS"}}, -- Mana Wyrm
	[105915] = {{"Interrupts", "Interrupt(!!): Eye of the Vortex (Huge AoE DoT)"}, {"Legion", "Stand in the blue circles for a 50% haste buff"}, 
				{"HEALER", "Dispel: Eye of the Vortex but get DPS to kick"}}, -- Nightborne Reclaimer
	[105921] = {{"Important", "Stand in the circle for a 50% haste buff."}, {"TANK", "Keep all mobs in the pack out of the haste circle"}, {"DAMAGE", "When shielded, avoid attacking from the front"}}, -- Nightborne Spellsword
	[105706] = {{"Legion", "Stand away during Bladestorm channel"}}, -- Priestess of Misery
	[98425] = {{"Important", "Dodge: Ooze explosion (15yd range, 2s cast)"}}, -- Unstable Amalgamation
	[106059] = {{"Interrupts", "Interrupt(!): Arcane Reconstitution (Full Heal)"}, {"Interrupts", "Interrupt: Phase Breach (heavy AoE damage)"}}, -- Warp Shade
	[98733] = {{"Important", "On Death: AoE silence (15 yard range)"}}, -- Withered Fiend
	[105952] = {{"Legion", "Don't stand in the pretty clouds"}}, -- Withered Manawraith
	[98770] = {{"Defensives", "Defensives: Searing Wound (heavy DoT)"},
				{"HEALER", "Big Healing on Searing Wound targets"}}, -- Wrathguard Felblade
	[105629] = {{"Important", "You can line of sight the cast"}}, -- Wyrmtongue Scavenger
	[113699] = {{"Important", "Each cast reduces healing received by 10%."},{"Important", "Interrupt or line of sight on high stacks"}}, -- Forgotten Spirit
	
	---Bosses
	[98206] = {{"Defensives", "Defensive CD: Wicked Slam"}, {"Important", "Wicked Slam can be dodged (with dodge stat)"},
				{"HEALER", "Top everyone before Wicked Slam but otherwise easy boss to heal"}, {"TANK", "Remember to pick up the bats"}}, -- Xakal
	[98207] = {{"Important", "Use mobility to break Tangled Web ASAP. Aim to take < 3 ticks"}, {"Important", "Kill the adds. They'll root you into Blink Strikes"},
				{"WARLOCK", "Use Demonic Portal to immediately break web"}}, -- Nal'tira
	[98205] = {{"Important", "Stand with a friend for Quarantine. Alone = dead"}, {"Fluff", "Very easy. Please don't wipe."}}, -- Corstilax
	[98203] = {{"Interrupts", "Interrupt: Overcharge Mana(!), Arcane Blast (some)"}, {"Important", "Moving during Nether Link pushes allies away. Be careful"}}, -- Ivanyr
	[98208] = {{"Important", "Be aware of your surroundings. Chrono Shards explode - big damage"}, {"Legion", "Reapply DoTs during Banish in Time cast"},
			{"Legion", "Intermission: Best path is always the outside path leading north"}, {"Legion", "Unstable Mana: Melee kite in a circle around boss to keep DPSing"}}, -- Vandros
	----------------0------------------
	
	
	
	-- Darkheart Thicket
	[95771] = {{"Important", "Move from the shiny purple beams"}}, -- Dreadsoul Ruiner
	[95779] = {{"Important", "The roar is a 30yd range. Ranged DPS / Healers stand at max range"}}, -- Festerhide Grizzly
	[99358] = {}, -- Rotheart Dryad
	[101679] = {{"Important", "The poison explodes in an 8yd radius. If it cant be dispelled then spread out"},
				{"HEALER", "Dispel: Nightmare Toxin (DoT + AoE)"}}, -- Dreadsoul Poisoner
	[95766] = {{"Legion", "Easy mob but face away from the party and avoid charge"}}, -- Crazed Razorbeak
	[99359] = {{"PriorityTargets", "Priority Target"}, {"Important", "Auto-heals nearby mushrooms"}}, -- Rotheart Keeper
	[99360] = {}, -- Vilethorn Blossom
	[95769] = {{"Interrupts", "Interrupt: Unnerving Screech (Disorient)"}}, -- Mindshattered Screecher
	[95772] = {{"PriorityTargets", "Priority Target. Keep stunned if possible"}}, -- Frenzied Nightclaw
	[100531] = {{"Important", "Giant blood bomb will fall from the sky. Don't get hit by it"},{"Advanced", "Run away from the Fury as it dies and small blobs won't aggro"}}, -- Bloodtainted Fury (elementals)
	[101991] = {{"Interrupts", "Interrupt: Tormenting Fear (Fear)"}}, -- Nightmare Dweller
	[100526] = {{"Legion", "Stacks heavy disease on the tank. Consider kiting / stunning"}}, -- Tormented Bloodseeker
	[100527] = {}, -- Dreadfire Imp
	[100539] = {{"Legion", "Will ping random targets and teleport around"}}, -- Taintheart Deadeye
	[99365] = {{"Legion", "The stalker... stalks (hits random targets for medium damage)"}}, -- Taintheart Stalker
	[99366] = {}, -- Taintheart Summoner
	[100529] = {{"Important", "They drop a blood pool when they die. Treat like fire"}}, -- Hatespawn Slime
	---Bosses
	[96512] = {{"Important", "Grievous Leap always targets furthest ally from boss"}, {"Important", "You can CC the adds to stop them dripping everywhere"}, 
				{"TANK", "Face the boss away from your party. Primal Rampage charges in your direction"}}, -- Glaidalis
	[103344] = {{"Important", "You can stand in the Strangling Roots to prevent adds spawning"}, {"Important", "Druids and BoF are great for clearing them"},
			{"Important", "Crushing Grip is very heavy tank damage. Use a big cooldown / heals"}}, -- Oakheart
	[99200] = {{"Important", "Stand inside bosses hitbox during Down Draft to minimize blowback"}, {"Important", "Spread before Earthshaking Roar"},
			{"Important", "Whole party can avoid Breath of Corruption, including tank"}, {"HEALER", "Healing CDs: Down Draft (heavy AoE with pushback)"}}, -- Dresaron
	[99192] = {{"Defensives", "Defensives: Apoc Empowerment (boss at 50%"}, {"Defensives", "Defensives: Feed on the Weak (heavy DoT)"}, 
			{"Important", "Stack for Nightmare Bolt, spread for Induced Nightmare"},
			{"HUNTER", "You can Feign Death the Feed on the Weak cast"}, {"Advanced", "High key? Wear Prydaz"}}, -- Shade of Xavius
	-----------------0-------------------------
	
	
	-- Seat of the Triumvirate
	[124171] = {{"Legion", "Suppression Field debuff = don't move"}}, -- Shadowguard Subjugator
	[122322] = {{"Legion", "Use AoE CC to keep your tank alive"},
				{"TANK", "Use anti-magic mitigation. These really hurt."},
				{"TANK", "Don't tank on the black ground"}}, -- Famished Broken
	[122478] = {{"Important", "Explodes when it dies leaving giant DoT. Run."},
				{"HEALER", "Dispel: Corrupting Touch"}}, -- Void Discharge
	[122571] = {{"Important", "Move out of the black swirls on the ground"},
				{"Interrupts", "Interrupt: Stygian Blast"},
				{"TANK", "Don't tank on the black ground"}}, -- Rift Warden
	[122405] = {{"Legion", "Interrupts as often as possible"}}, -- Shadowguard Conjurer
	[122403] = {{"Important", "Frontal Cleave"},
				{"HEALER", "Heavy tank damage"}}, -- Shadowguard Champion
	[124947] = {{"Legion", "Interrupt or stun the constant Dark Flay casts"}}, -- Void Flayer
	[127784] = {{"Important", "Spread + mobility cooldowns to escape Corrupting Void"}, {"HEALER", "Heavy healing warning. Use Cooldowns"}}, -- Shadowguard Voidbender
	[125857] = {{"Fluff", "More like Paper Mache Voidlings"}}, -- Lashing Voidling
		
	-- Bosses
	[122313] = {{"Legion", "Void adds explode if reach boss. Use CC to help."},
				{"DPS", "Void Realm: Kill adds until full energy. Click extra action button."},
				{"TANK", "Void Realm: Kill adds until full energy. Click extra action button."},
				{"TANK", "Never tank him on the black ground"}}, -- Zuraal
	[122316] = {{"Legion", "Please don't stand on the mines. I asked nicely"}},-- Saprish
	[125340] = {{"Interrupts", "Interrupt(!!): Dread Screech (Disorient)"}}, -- Shadewing
	[122319] = {{"Important", "Dodge: Ravaging Darkness"}}, -- Darkfang
	[124309] = {{"Interrupts", "Interrupt(!!): Eternal Twilight (One shot), Howling Dark (Fear)"},
				{"Important", "Stack near the boss before Entropic Force is cast"},
				{"HEALER", "Track Void Lashing on your healer frames"},
				{"HEALER", "Prioritize healing to anyone attacked by multiple tentacles"},
				{"DPS", "Kill Priority is Voidtenders >> Tentacles > Boss"}}, -- Viceroy Nezhar	
	[122314] = {{"Important", "Rift Wardens will cast Fragment of Despair"},
				{"Important", "You must soak the black circles it leaves"},
				{"Important", "Safest to soak with immunities but not required"},
				{"Legion", "Two waves of Rift Wardens. Single and a double"},
				{"HEALER", "High, ticking damage through fight. Be efficient with mana"}}, -- L'ura
	----------------------------------------------------------------------------------------
	
	
	-- Vault of the Wardens
	[99649] = {{"Important", "Skip this guy! Illianna is easier"}, {"Important", "You pulled him? Ok, stack for the meteor"}}, -- Dreadlord Mendacius
	[102583] = {{"Important", "Explodes on death (woah!). Stagger kills if multiple Scorchers"}}, -- Fel Scorcher
	[99956] = {{"Important", "You can knockback or stun Fel Gaze to greatly reduce party damage"}, {"Interrupts", "Interrupt: Unleash Fury (huge AoE damage)"}}, -- Fel-Infused Fury
	[97674] = {}, -- Brood Mother (not in game)
	[102584] = {}, -- Malignant Defiler
	[100364] = {{"Legion", "Wont move naturally, run away from them to get them to port to you"}, {"Legion", "Will hit DPS / Healers if tank isn't in range. They hurt"}}, -- Spirit of Vengeance
	[98963] = {{"Legion", "Do almost nothing. Grab as many as you can"}, {"Legion", "Bursting / Bolstering don't apply"}}, -- Blazing Imp
	[95771] = {}, -- Dreadsoul Ruiner (in DHT)
	[96480] = {{"Legion", "Do almost nothing. Grab as many as you can (except on Bursting!)"}}, -- Viletongue Belcher
	[96657] = {{"Legion", "Casters: Stop casting during Defeaning Shout or be locked out for 4s"}, {"Legion", "Focus DPS on Illianna and let cleave take care of dogs"}}, -- Blade Dancer Illianna
	[97677] = {{"Legion", "Will start running away at low health. Save your stuns / knockbacks"}}, -- Barbed Spiderling
	[96584] = {{"Legion", "No notable mechanics"}}, -- Immoliant Fury
	[97678] = {{"Legion", "Will strangle a player and drag them into webbing. Not that dangerous"}}, -- Aranasi Broodmother
	[96587] = {{"HEALER", "Dispel: Nightmares (long stun)"}}, -- Felsworn Infester
	[98177] = {{"Important", "Will transform and deal very heavy damage sub-50%"}, {"HEALER", "Will wreck both tank and party sub 50%. Use your healing CDs"}}, -- Glayvianna Soulrender
	[98533] = {{"Important", "Don't stand underneath her. The little pool reduces hit chance"}, {"Important", "Dodge the swirls or you'll be judged"}}, -- Foul Mother
	[98926] = {{"Legion", "No notable mechanics"}}, -- Shadow Hunter
	[98954] = {{"Important", "Frontal silence cone. Face away from party"}}, -- Felsworn Myrmidon
	[102566] = {{"Important", "When somebody gets caged STACK on it. The damage is shared"}, {"Important", "... but dodge the green swirls"}}, -- Grimhorn the Enslaver
	
	---Bosses
	[95885] = {{"Important", "Interrupt and kill adds"}, {"Important", "Give the Hatred beam a wide berth. It moves quickly"}, 
				{"TANK", "You need to use your active mitigation when boss casts Darkstrike"}}, -- Tirathon
	[96015] = {{"Important", "NW: Quillen. Can be CC'd, otherwise kill"}, {"Important", "NE: Void. Kill order: Mindflayer > Voidcaster > Juggernaut"},
			{"Important", "SW: Shadowmoon. Spread. Interrupt Seed of Corruption. Kill Technician > Warlock"}, {"Important", "SE: Corruption. Spread, AoE down"},
				{"TANK", "Consider tanking up where he starts. Makes avoiding gazes very easy"}}, -- Tormentorum
	[95887] = {{"Important", "If you stand under boss you can't be hit by balls"}, {"Important", "Move boss after each floor puddle"}, 
				{"Important", "Boss takes extra damage after Focus phase"}}, -- Glazer
	[95886] = {{"Important", "Stop adds exploding and don't stand in fire"}, {"Legion", "Very easy boss"}}, -- Ash'golm
	[95888] = {{"Important", "You must dodge the Moonglaive, even as tank"}, {"Important", "Consider throwing the light to new shadows. Quicker"},
				{"Important", "Stick together during Creeping Doom"}, {"HUNTER", "You can use flare to pop the boss out of hiding during Shadowstep"}}, -- Cordana
	--------------------0----------------------

	-- Template
	-- {"Legion", ""}
	-- {"Important", ""}
	-- {"Interrupts", "Interrupt: "}
	-- {"HEALER", ""}
	-- {"TANK", ""}	
	-- {"DPS", "DPS Note", ""}	
	
	
	-- Maw of Souls
	[97097] = {{"Interrupts", "Interrupt: Bone Chilling Scream (AoE Fear)"}, {"Legion", "The fear also has a 15 yard range"}}, -- Helarjar Champion
	[97043] = {{"Important", "Barbed Spear is in two parts. A dispellable grip and an AoE cleave afterwards"}, {"Important", "You can be hit by the cleave even if not targeted by the grip; melee take care"},
			{"Important", "Don't stand in the blue swirling muck"}}, -- Seacursed Slaver
	[99188] = {{"Important", "Barrels roll toward a player and hurt. Small"}}, -- Waterlogged Soul Guard
	[102375] = {{"Interrupts", "Interrupt: Fire Blast (Heavy ST nuke)"}}, 		-- Runecarver Slave
	[98919] = {{"Important", "Big frontal cleave during ghost form"}}, -- Seacursed Swiftblade
	[97182] = {{"Defensives", "Defensives: Lantern of Darkness (expect 2)"}, {"HEALER", "Healing CD: Lantern of Darkness (prep for 2)"}},		 -- Night Watch Mariner
	[99033] = {{"Interrupts", "Interrupt: Whirlpool of souls (AoE damage / healing)"}}, -- Helarjar Mistcaller
	[97185] = {{"Important", "Frontal Cleave (Bile Breath)"}}, -- The Grimewalker
	[97119] = {{"Important", "Spiky party damage. Use AoE CC"}}, -- Shroud Hound
	[97200] = {{"Important", "Defiant Strike: charges slowly in one direction. Hurts."}, {"Important", "If he reaches a wall during charge he will turn"}}, -- Seacursed Soulkeeper
	[102104] = {{"Important", "Frontal cleave. Melee beware"}},	 -- Enslaved Shieldmaiden
	[97365] = {}, 	-- Seacursed Mistmender
	[99307] = {{"Important", "Give no Quarter: Spread. Move when targeted"}, {"Important", "The Necromancer adds explode when left alive. AoE them"},
			{"Interrupts", "Interrupt: Debilitating Shout (Damage + -MaxHP)"}},			 -- Skjal
	[98973] = {}, -- Skeletal Warrior
	---Bosses
	[96756] = {{"Important", "Skeletons cannot be CC'd"}, {"Important", "Skeletons should be AoE'd down as absolute priority"},
		{"Legion", "Hunter pets and Boomkin Treants can taunt the boss before Dark Slash"}}, -- Ymiron
	[96754] = {{"Important", "Dodge scythe at all times. It does hit slightly behind the boss"}, {"Important", "Use CC on fragments to keep them in one place for AoE"}, {"Legion", "Try and keep the party close for good Servitor spawns"},
				{"HEALER", "Add Fragment to your frames. The debuff really hurts"}, {"TANK", "Move boss away from nether rips as they overwhelm an area"}}, -- Harbaron
	[96759] = {{"PriorityTargets", "Focus Destructor Tentacles first. Two up at once is dangerous"}, {"Important", "The tentacle hitboxes are huge so you can usually AoE them"}, 
			{"Important", "P2: Her breath hits a third of the platform. It can one shot you"}, {"Important", "Intermission: Stand on platform edge. Holes won't spawn under you"},
			{"Legion", "Bloodlust the 1st phase for a CLEAN kill, or 2nd for a FAST kill"}}, -- Helya
	------------------0-------------------
	
	
	-- Neltharion's Lair
	[102404] = {{"Important", "Stoneshatter is an AoE targeted on tank"}, {"Important", "Grubs MUST be CC'd or immediately killed or they'll transform"}}, -- Stoneclaw Grubmaster
	[91332] = {}, -- Stoneclaw Hunter
	[92610] = {{"Important", "Interrupt his cast to stop the drumming. Animation still plays but harmless"}}, -- Understone Drummer
	[92351] = {{"Important", "Interrupt his cast to stop the drumming. Animation still plays but harmless"}}, -- Understone Drummer (missing)
	[91008] = {{"Important", "Attacks allies at random. Won't cast if tank is 40 yards+ away"}}, -- Rockbound Pelter
	[90998] = {{"Interrupts", "Interrupt: Stone Bolt (Heavy ST nuke)"}}, -- Blightshard Shaper
	[102253] = {{"Important", "The Charskin transform cast can be stunned, else run away from the giant"}}, -- Understone Demolisher
	[102232] = {{"Interrupts", "Interrupt: Bound (Long stun on random player)"}, {"Important", "Pelts random players. Consider CC'ing while you kill the scorpion"}}, -- Rockbound Trapper
	[90997] = {{"Important", "Move when you see Avalanche cast. Don't run where another player was standing"}, {"Important", "Consider a weak aura to warn you to move"}}, -- Mightstone Breaker
	[92350] = {}, -- Understone Drudge
	[91000] = {{"Interrupts", "Stun interrupt: Piercing Shards (Huge cone AoE damage)"}, {"Important", "If low on stuns then face mob away from the party to minimize damage"},
				{"Legion", "Piercing Shards will ALWAYS follow the Fracture knock back"}}, -- Vileshard Hulk
	[101438] = {{"Important", "Dodge: Crush (10 yard AoE)"}}, -- Vileshard Chunk
	[91006] = {{"Legion", "Moderate tank damage. Easily kited."}}, -- Rockback Gnasher
	[105636] = {}, -- Understone Drudge
	[105720] = {}, -- Understone Drudge
	[101437] = {{"PriorityTargets", "Priority Target"}}, -- Burning Geode
	[98406] = {}, -- Embershard Scorpion (ones at the beginning)
	[102287] = {{"Important", "Always hits the three furthest allies from the mob"}, {"Important", "Frontal cleave. Face away from the party"},
				{"Defensives", "Defensives: throughout and stay grouped"}, {"Interrupts", "Stun Interrupt: Frenzy (Huge damage buff)"}, 
				{"HEALER", "Healing CDs: Need one for every scorpion"}}, -- Emberhusk Dominator (Scorps at the end)
	[96247] = {}, -- Vileshard Crawler
	[91001] = {}, -- Tarspitter Lurker
	[102430] = {{"Important", "Harmless but be careful on Bursting / Bolstering"}}, -- Tarspitter Slug
	[113998] = {{"Important", "Move when you see Avalanche cast. Don't run where another player was standing"}, {"Important", "Consider a weak aura to warn you to move"}}, -- Mightstone Breaker
	[113537] = {{"Important", "Always hits the three furthest allies from the mob"}, {"Important", "Frontal cleave. Face away from the party"},
				{"Defensives", "Defensives: throughout and stay grouped"}, {"Interrupts", "Stun Interrupt: Frenzy (Huge damage buff)"}, 
				{"HEALER", "Healing CDs: Need one for every scorpion"}}, -- Emberhusk Dominator
	---Bosses
	[91003] = {{"Important", "Shatter deals heavy AoE damage based on HP remaining of Skitters"}, {"Important", "Ensure they're cleared / mostly dead before Shatter to avoid death"},
				{"Important", "Frontal cleave: Razor Shards"}, {"Legion", "Don't move with Crystalline Ground debuff"}}, -- Rokmora
	[91004] = {{"Important", "First rock phase: after 35s. Subsequent: every 70s"}, {"Important", "There's no trick or weak aura to find where he's hiding. Watch closely"},
				{"TANK", "Sunder is nature damage"}, {"WARRIOR", "Sunder can be spell reflected"}, {"DEATHKNIGHT", "Consider AMS if tanking Sunder"}}, -- Ularogg
	[91005] = {{"Important", "Every add or tank eaten by boss buffs her melee damage by 50%"}, {"Important", "Ranged should stand 20-30 yards from the boss to drop the sticky green pools there"},
			{"Important", "During Spiked Tongue the tank can use the puddles to avoid being eaten"}, {"Important", "Naraxas attacks nearby allies when spiked tongue ends. Don't be within 10 yards until tank is"}}, -- Naraxas
	[91007] = {{"Important", "Must be faced away from the party and any Crystal Walls"}, {"Important", "Magma wave is deadly and you must have a wall between you and boss to avoid a roasting"},
			{"Important", "Magma sculptors spawn where players are standing. Run them into walls to stun them"}, {"Legion", "Walls don't block line of sight. Ranged / Healers can hide early"}}, -- Dargrul
	-------------0-------------
		
	
	-- Cathedral of Eternal Night
	[119952] = {{"Interrupts", "Interrupt: Shadow Wail (shield) or drag mobs away from it"}}, -- Felguard Destroyer
	[120550] = {{"Important", "Outrange: Fel Strike (30 yards)"}}, -- Wrathguard Invader
	[118704] = {{"Important", "Dodge: Shadow Wave (huge cone with slow cast)"}}, -- Dul'zak
	[119923] = {{"Interrupts", "Interrupt: Demonic Mending (AoE heal)"}}, -- Helblaze Soulmender
	[118700] = {{"Important", "Pop defensives and keep stunned. Will leap on random allies"}}, -- Felblight Stalker
	[119930] = {{"Legion", "Frontal Cleave"}}, -- Dreadwing
	[120366] = {{"Interrupts", "Interrupt(!): Alluring Aroma (Mind Control)"}}, -- Hellblaze Temptress
	[119978] = {{"Important", "Will Fixate a player and explode on death. Kite"}}, -- Fulminating Lasher
	[118703] = {{"Interrupts", "Interrupt: Blistering Rain (Channeled AoE)"}, {"Interrupts", "Interrupt: Fel Rejuvenation (Heal)"}}, -- Felborne Botanist
	[118716] = {}, -- Bilespray Lasher
	[119977] = {{"Interrupts", "Stun Interrupt: Choking Vines (or run away)"}}, -- Stranglevine Lasher
	[118717] = {{"Interrupts", "Interrupt: Fel Bolt (ST Nuke). AoE stuns / silences recommended"}}, -- Helblaze Imp
	[118719] = {{"Important", "Kill the Arcane Tomes or they'll become a nasty arcane minion"}}, -- Wyrmtongue Scavenger
	[118723] = {{"Important", "Face away from the mob during Blinding Glare"},
				{"HEALER", "Healing CD: Focused Destruction (heavy AoE damage)"}}, -- Gazerax
	[120274] = {}, -- Felstrider Magus
	[118706] = {{"HEALER", "Dispel: Sinister Fangs deals (heavy ticking damage)"}}, -- Necrotic Spiderling
	[118712] = {{"Important", "Nasty frontal cleave"}}, -- Felstrider Enforcer
	[118705] = {{"Important", "Will teleport behind someone before casting Venom Storm"}, {"Important", "Adjusts to face a player before unleashing. Watch carefully"}}, -- Nal'asha
	[120374] = {{"Interrupts", "Interrupt: Shadow Wail (shield) or drag mobs away from it"}}, -- Felguard Destroyer
	[118690] = {{"Important", "Outrange: Fel Strike (30 yards)"}}, -- Wrathguard Invader
	[118724] = {{"Legion", "Conjures bubble that gives +50% haste but deals heavy damage"}, {"Legion", "On high keys you probably want to avoid standing inside"}}, -- Helblaze Felbringer
	[120556] = {{"Legion", "Frontal Cleave"}}, -- Dreadwing
	[120405] = {{"Legion", "Frontal Cleave"}}, -- Dreadwing
	[118714] = {{"Interrupts", "Interrupt(!): Alluring Aroma (Mind Control)"}}, -- Hellblaze Temptress
	[121318] = {{"Important", "Fixates a player and explodes on death"}}, -- Fulminating Lasher
	[121569] = {{"Interrupts", "Stun Interrupt: Lumbering Crash (Heavy AoE)"}}, -- Vilebark Walker
	[121711] = {}, -- Bilespray Lasher
	[120371] = {{"Interrupts", "Interrupt: Fel Bolt (ST Nuke). AoE stuns / silences recommended"}}, -- Helblaze Imp
	[118713] = {{"Important", "The spinning green orb will one shot you. Stand at distance"}}, -- Felstrider Orbcaster
	[121553] = {{"Interrupts", "Interrupt: Dread Scream"}, {"Legion", "Frontal Cleave"}}, -- Dreadhunter
	---Bosses
	[117193] = {{"Important", "Run out of choking vines > target adds > target boss"}, {"Important", "Don't let flowers touch you!"}, {"Legion", "Flowers are vulnerable to CC"}}, -- Agronox
	[117194] = {{"Important", "Don't let the boss hit the south west bookcase if possible"}, {"Legion", "Charge: You can pop a full immunity instead of hiding behind a bookcase"}}, -- Thrashbite
	[119542] = {{"Important", "Coordinate DPS between portals to kill both before they finish cast"}, {"Important", "Mistresses have a knockback. Keep them away from shield"}, 
				{"TANK", "Boss will cleave. Always face away from the shield"}}, -- Domatrax (first ID)
	[118804] = {{"Important", "Coordinate DPS between portals to kill both before they finish cast"}, {"Important", "Mistresses have a knockback. Keep them away from shield"}, 
				{"TANK", "Boss will cleave. Always face away from the shield"}}, -- Domatrax (second ID)
	[120793] = {{"Important", "Move Demonic Upheaval to the side of the room"}, {"Important", "Stay spread to avoid extra Dark Solitude damage"}, 
				{"Important", "P2: Clear adds clockwise as a group"}, {"HEALER", "Damage is heavy and spiky. Save your CD's for P2"}}, -- Mephistroth
	-------------0--------------
	
	
	-- Court of Stars
	[105705] = {{"Interrupts", "Interrupt: Charged Blast"}}, -- Bound Energy
	[105704] = {{"Interrupts", "Interrupt: Drain Magic"}}, -- Arcane Manifestation
	[104247] = {{"Interrupts", "Interrupt: Nightfall Orb"}}, -- Duskwatch Arcanist
	[104246] = {{"Important", "Cone frontal cleave (visible)"}}, -- Duskwatch Guard
	[111563] = {{"Important", "Cone frontal cleave (visible)"}}, -- Duskwatch Guard
	[104270] = {{"Interrupts", "Interrupt: Charging Station (ignore if construct is alone)"}, {"Interrupts", "Interrupt: Suppress (Can also be dispelled)"}}, -- Guardian Construct
	[105703] = {{"Important", "Explodes on death!"}}, -- Mana Wyrm
	[105699] = {{"Important", "Spread out to avoid multiple people getting hit by Mana Fang"}, {"Important", "You can stun or knock the cat back during the leap"}, 
				{"HEALER", "Dispel the large DoT the cat leaves after a jump"}}, -- Mana Saber
	[104251] = {{"Important", "Chucks torch at first target. Let tank pull"}, {"Important", "Use CC and burst damage to stop sentry ringing bell"}}, -- Duskwatch Sentry
	[104277] = {{"Important", "Creates puddles on floor. Dont stand in them"}}, -- Legion Hound
	[104295] = {{"Interrupts", "Interrupt: All casts. Use AoE stuns and kill quickly"}}, -- Blazing Imp
	[105715] = {{"Interrupts", "Stun / Knockback Interrupt: Eye Storm"}, {"HEALER", "This mob hurts. Keep the party topped up"}}, -- Watchful Inquisitor
	[104278] = {{"Important", "Line of sight the Fel Detonation cast if not tank. It hurts"}}, -- Felbound Enforcer
	[104300] = {{"HEALER", "Dispel: Bewitch"}}, -- Shadow Mistress
	
	-- Mini Bosses
	[104275] = {{"Important", "Beware Whirling Blades (AoE attack)"}}, -- Imacut'ya
	[104274] = {{"DEFENSIVES", "Defensive: Disintegration Beam"}, {"HEALER", "Drop big heals on the Beam target"}}, -- Baalgar
	[104273] = {{"Important", "Dodge: Shockwave (frontal cleave)"}, {"HEALER", "Mob does nothing. Practice DPS'ing"}}, -- Jazshariu
	[108151] = {{"Important", "Face away from the party since Carrion Swarm is a frontal cone"}, {"Important", "On Fortified Shadowbolt Volley REALLY hurts. Consider a defensive"}},  -- Gerenth the Vile
	
	---Bosses
	[104215] = {{"Important", "Give Resonant Slash a wide berth"}, {"Important", "Leave one Signal Beacon up before you engage"}, {"HEALER", "Dispel Arcane Lockdown. Contribute DPS"}}, -- Gerdo
	[104217] = {{"Important", "Stack before Infernal Eruption to auto-group imps"}, {"Interrupts", "Interrupt: Withering Soul, Imps"}, {"HEALER", "Big Persistent damage. Use CDs regularly"}}, -- Talixae
	[104218] = {{"Important", "Stack to one side before Blade Surge to keep images together"}, {"Legion", "Wear Avoidance gear if possible"}, {"HEALER", "Gear to maximise healing in 5s period"},
				{"HEALER", "Healing CD: Slicing Maelstrom (every 25s)"}, {"HEALER", "Focus. You've got this."}}, -- Melandrus
	----------------0-----------------
	
	
	[0] = {{"-"}}	
	
}