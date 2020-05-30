NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 300
NDefines.NGame.LAG_DAYS_FOR_PAUSE = 100    							-- 
NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 12 							-- WAS 48 | drastically cuts down on save file sizes after WW2 starts and well into barbarossa
NDefines.NGame.MESSAGE_TIMEOUT_DAYS = 14					     	 -- WAS 60 	| less messages lying around at the top of your screen
NDefines.NGame.GAME_SPEED_SECONDS = { 0.5, 0.2, 0.1, 0.035, 0.0 } -- game speeds for each level. Must be 5 entries with last one 0 for unbound
---------------------------------------------------------------
NDefines.NTrade.ANTI_MONOPOLY_TRADE_FACTOR = -1						-- WAS -100 | This is added to the factor value when anti-monopoly threshold is exceeded; cucks Soviets/Japan often if the value is vanilla
---------------------------------------------------------------
NDefines.NTechnology.MAX_SUBTECHS = 4                                 -- Added to stop weird things from happening with the amphibious tank variants 
---------------------------------------------------------------
NDefines.NMilitary.ENCIRCLED_DISBAND_MANPOWER_FACTOR = 0            -- WAS 0.2 | Most rulesets ban deleting encircled troops, but at least this prevents some manpower from returning | Deleting encircled divisions is always banned anyways, so this reduces unfair play | percentage of manpower returned when an encircled unit is disbanded
NDefines.NMilitary.UNIT_LEADER_MODIFIER_COOLDOWN_ON_GROUP_CHANGE = 0 -- WAS 15 | This prevents reassignment memes | This is the number of days it takes to REASSIGN a general. 
NDefines.NMilitary.UNIT_LEADER_ASSIGN_TRAIT_COST = 0.00               -- WAS 15 | prevents getting memed by forgetting to assign traits
NDefines.NMilitary.ANTI_AIR_ATTACK_TO_AMOUNT = 0				-- WAS 0.005 | Lowered to because vanilla CAS shootdown rates are too high and IC inefficient, but I don't want to buff CAS or air in any other way either | Balancing value to convert equipment stat anti_air_attack to the random % value of airplanes being hit.
NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 0 -- 0xp, was 25
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 0 -- 0xp, was 5
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 0 -- 0xp, was 10
NDefines.NMilitary.UNIT_LEADER_INITIAL_TRAIT_SLOT = { 1, 1, 1, 0 }
NDefines.NMilitary.UNIT_LEADER_ASSIGN_TRAIT_COST = 0
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 999             -- WAS 500
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 999
NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 999
NDefines.NMilitary.EXPERIENCE_COMBAT_FACTOR = 0.15      -- WAS 0.25 | Turns out that no Russian volunteers to Spain leads to at least 15 veteran +75% heavy tanks at barb every game that kill nearly every Russia player in less than 3 months. Just wait until Germany players manage to get 30 vet heavies by using minors more
NDefines.NMilitary.DEPLOY_TRAINING_MAX_LEVEL = 2 -- WAS 1 aka TRAINED | Since the above was changed there is no point to not allowing divs to be trained to regular considering that its only 10% stats now. 
NDefines.NMilitary.TRAINING_ATTRITION = 0.02  -- WAS 0.06 | Changed because of the above 
NDefines.NMilitary.CORPS_COMMANDER_DIVISIONS_CAP = 40
NDefines.NMilitary.FIELD_MARSHAL_DIVISIONS_CAP = 40
NDefines.NMilitary.FIELD_MARSHAL_ARMIES_CAP = 3
NDefines.NMilitary.PLAYER_ORDER_PLANNING_DECAY = 0.01
NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 1   -- extra damage dice if our armor outclasses enemy
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 5   -- extra damage dice if our armor outclasses enemy
---------------------------------------------------------------
--CMU AIR REWORK - VANILLA INTERACTIONS; HALVED PLANE COUNT--
---------------------------------------------------------------
NDefines.NMilitary.LAND_AIR_COMBAT_MAX_PLANES_PER_ENEMY_WIDTH = 1.5   -- WAS 3, halved because plane counts halved. CAS has received a 100% increase in ground attack so the overall damage should still be vanilla.
---------------------------------------------------------------
NDefines.NBuildings.AIRBASE_CAPACITY_MULT = 100						 -- WAS 200, decreased because plane IC doubled | Each level of airbase building multiplied by this, gives capacity (max operational value). Value is int. 1 for each airplane.
---------------------------------------------------------------
NDefines.NAir.AIR_WING_MAX_SIZE = 800                               -- this can be halved 3 times into 100 stacks (very convenient)
NDefines.NAir.DETECT_CHANCE_FROM_AIRCRAFTS_EFFECTIVE_COUNT = 1500  -- WAS 3000, halved because plane counts halved | Max amount of aircrafts in region to give full detection bonus.
NDefines.NAir.CLOSE_AIR_SUPPORT_EXPERIENCE_SCALE = 0.001			-- WAS 0.0005 | How much the experinence gained by CAS is scaled
NDefines.NAir.PARADROP_EXPERIENCE_SCALE = 0.06						-- WAS 0.03 | How much the experinence gained by paradropping is scaled
NDefines.NAir.BOMBING_DAMAGE_EXPERIENCE_SCALE = 0.0004        	   -- WAS 0.0002 | How much the experinence gained by bombing is scaled
NDefines.NAir.FIELD_EXPERIENCE_SCALE = 0.002						-- WAS 0.001 | This affects how much XP you get from various missions (AFAIK this will affect XP gained from bombing and CAS missions as well)
NDefines.NAir.COMBAT_MAX_WINGS_AT_ONCE = 5000                         -- WAS 10000 | Max amount of air wings in one combat simulation. The higher value, the quicker countries may loose their wings. It's a gameplay balance value.
NDefines.NAir.COMBAT_MAX_WINGS_AT_GROUND_ATTACK = 5000                -- WAS 10000 | we can really pounce a land strike and escalate
NDefines.NAir.COMBAT_STAT_IMPORTANCE_AGILITY = 1 				-- How important is agility when comparing stats.
NDefines.NAir.BIGGEST_AGILITY_FACTOR_DIFF = 1.5					-- biggest factor difference in agility for doing damage (caps to this)
NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.25
NDefines.NAir.COMBAT_MAX_WINGS_AT_ONCE_PORT_STRIKE = 5000       	 -- WAS 10000 | we can really pounce a naval strike and escalate
NDefines.NAir.MISSION_COMMAND_POWER_COSTS = { 						 -- command power cost per plane to create a mission
		0.0, -- AIR_SUPERIORITY
		0.0, -- CAS		
		0.0, -- INTERCEPTION	
		0.0, -- STRATEGIC_BOMBER
		0.0, -- NAVAL_BOMBER	
		0.3, -- DROP_NUKE		
		0.0, -- PARADROP		
		0.0, -- NAVAL_KAMIKAZE	
        0.0, -- PORT_STRIKE		
		0.0, -- AIR_SUPPLY		
		0.0, -- TRAINING
		0.0, -- NAVAL_MINES_PLANTING
		0.0, -- NAVAL_MINES_SWEEPING
		0.0, -- MISSION_RECON
	}
NDefines.NAir.NAVAL_COMBAT_EXTERNAL_PLANES_JOIN_RATIO = 0.025       -- WAS 0.05 | Changed due to plane count changes
NDefines.NAir.NAVAL_STRIKE_BASE_STR_TO_PLANES_RATIO  = 0.015       -- WAS 0.03 | Changed due to plane count changes
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.2 --makes redeployement of fighters faster vanilla is 0.02
---------------------------------------------------------------
----END OF DEFINE CHANGES FOR SUPPORTING HALVED PLANE COUNT----
---------------------------------------------------------------
NDefines.NAir.AIR_DEPLOYMENT_DAYS = 0                              -- Down from 3 | Makes AC player much more responsive
NDefines.NAir.ACE_WING_SIZE_MAX_BONUS = 1                        -- WAS 10, lowered to prevent some exploits with aces | biggest bonus we can get from having a small wing with an ace on
NDefines.NAir.ACCIDENT_CHANCE_BASE = 0							-- Base chance % (0 - 100) for accident to happen. Reduced with higher reliability stat.
NDefines.NAir.ACCIDENT_CHANCE_CARRIER_MULT = 0					-- The total accident chance is scaled up when it happens on the carrier ship.
NDefines.NAir.ACCIDENT_CHANCE_BALANCE_MULT = 0					-- Multiplier for balancing how often the air accident really happens. The higher mult, the more often.
NDefines.NAir.ACCIDENT_EFFECT_MULT = 0					-- Multiplier for balancing the effect of accidents
NDefines.NAir.AIR_WING_XP_TRAINING_MISSION_ACCIDENT_FACTOR = 0     -- Changed so people don't feel bad for overtraining and can set up air training and go AFK/ignore the planes without being punished for it 
NDefines.NAir.AIR_WING_XP_LOSS_REDUCTION_OVER_FRIENDLY_TERRITORY_FACTOR = 0 	--Reduction on XP loss over friendly territory
NDefines.NAir.AIR_WING_XP_TRAINING_MISSION_GAIN_DAILY = 0					--Daily gain when running training exercise mission
NDefines.NAir.AIR_WING_XP_AIR_VS_AIR_COMBAT_GAIN = 0 							--Wings in combat gain extra XP	
NDefines.NAir.AIR_WING_XP_GROUND_MISSION_COMPLETED_GAIN = 0					--Bombers bombing, CAS cassing, NBs nbing, kamikazees kamikazeeing, etc.	
NDefines.NAir.AIR_WING_XP_RECON_MISSION_COMPLETED_GAIN = 0					--recon mission
NDefines.NAir.AIR_WING_XP_LOSS_WHEN_KILLED = 0									--if a plane dies, the game assumes that a pilot with this amount of xp died and recalcs average. 
NDefines.NAir.AIR_WING_XP_TRAINING_MAX = 1							--Max average XP achieved with training.
NDefines.NAir.AIR_WING_XP_MAX = 0 											--Per plane XP.
NDefines.NAir.AIR_WING_XP_LEVELS = { 0, 0, 0, 0 } 						--Experience needed to progress to the next level
NDefines.NAir.NAVAL_STRIKE_CARRIER_MULTIPLIER = 8.0
---------------------------------------------------------------
NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 30                       --up from 10, should allow for more flexibility with picking focuses while doing something else, like tank templates
---------------------------------------------------------------
NDefines.NDiplomacy.NUM_DAYS_TO_ENABLE_KICKING_NEW_MEMBERS_OF_FACTION = 1	-- down from 90 | Number of days before being able to kick a new member of faction 
NDefines.NDiplomacy.NUM_DAYS_TO_ENABLE_REINVITE_KICKED_NATIONS = 1		-- down from 90 | Number of days before being able to re invite a kicked 
NDefines.NDiplomacy.GUARANTEE_COST = 1000
NDefines.NDiplomacy.PEACE_SCORE_PER_PASS = 10000.0					-- When you pass once you should get enough points to finish the peace deal
NDefines.NDiplomacy.VOLUNTEERS_PER_TARGET_PROVINCE = 1						
NDefines.NDiplomacy.VOLUNTEERS_PER_COUNTRY_ARMY = 1			     	-- WAS 0.05 | Each army unit owned by the source country contributes this amount of volunteers to the limit.
NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 0				-- WAS 30 | This many divisions are required for the country to be able to send volunteers.
NDefines.NDiplomacy.VOLUNTEERS_RETURN_EQUIPMENT = 1		-- Returning volunteers keep this much equipment
NDefines.NDiplomacy.VOLUNTEERS_TRANSFER_SPEED = 0			-- days to transfer a unit to another nation
NDefines.NDiplomacy.BASE_TRUCE_PERIOD = 1							-- WAS 30 | Base truce period in days.
NDefines.NDiplomacy.TRUCE_PERIOD_AFTER_KICKING_FROM_FACTION = 1		-- WAS 30 | Truce period after kicking someone from faction in days.
NDefines.NDiplomacy.FRONT_IS_DANGEROUS = 0							 -- AI doesn't care if a front is dangerous 
NDefines.NDiplomacy.MIN_TRUST_VALUE = -500 							-- WAS -100 | Min opinion value cap.
NDefines.NDiplomacy.MAX_TRUST_VALUE = 500 							-- WAS 100 | MAX opinion value cap.
NDefines.NDiplomacy.DIPLOMACY_HOURS_BETWEEN_REQUESTS = 12           -- Cuts annoying spam from players like WestWood 
NDefines.NDiplomacy.LICENSE_ACCEPTANCE_OPINION_FACTOR = 0		-- Opinion modifier for acceptance of license production requests.
NDefines.NDiplomacy.LICENSE_ACCEPTANCE_PUPPET_BASE = 0			-- Acceptance modifier for puppets requesting production licenses.
NDefines.NDiplomacy.LICENSE_ACCEPTANCE_TECH_DIFFERENCE = 0		-- Acceptance modifier for each year of technology difference.
NDefines.NDiplomacy.LICENSE_ACCEPTANCE_TECH_DIFFERENCE_BASE = 0 -- Acceptance base for tech difference
NDefines.NDiplomacy.LICENSE_ACCEPTANCE_SAME_FACTION = 0			-- Acceptance modifier for being in the same faction
NDefines.NDiplomacy.MIN_WARGOAL_JUSTIFY_COST = 5000				-- It always takes atleast 10 days to justify a wargoal
NDefines.NDiplomacy.BASE_SEND_ATTACHE_COST = 150
---------------------------------------------------------------
NDefines.NPolitics.LEADER_TRAITS_XP_SHOW = 0.01                    -- WAS 0.05 
---------------------------------------------------------------
NDefines.NBuildings.MAX_SHARED_SLOTS = 99 -- WAS 25 | Increased to accommodate Germany/Japan building slot changes in order to support more of their eco being in their cores.
---------------------------------------------------------------
NDefines.NProduction.MIN_LICENSE_ACTIVE_DAYS = 1                 -- License can be cancelled at any time now, down from 30 | 
NDefines.NProduction.BASE_LICENSE_IC_COST = 0 -- Was 1, reduced to counter early game boosting, particularly cancerous Germany builds that force Bulgarias to build a battleship in the black sea for "shore bombardment" via license and imported steel from Germany
NDefines.NProduction.LICENSE_IC_COST_YEAR_INCREASE = 0				-- IC cost equipment for every year of equipment after 1936
NDefines.NProduction.MIN_POSSIBLE_TRAINING_MANPOWER = 15000000    -- Increased so most nations don't need to queue up multiple lines of infantry or spam 2w infantry and convert 
NDefines.NProduction.SHIP_REFIT_MAX_PROGRESS_TO_CANCEL = 1.00			-- | Changed to prevent using the scuttle mechanic to tank US warsupport | "Maximum refitting progress % that we still allow to cancel wihtout having to scuttle the ship.
NDefines.NProduction.CAPITAL_SHIP_MAX_NAV_FACTORIES_PER_LINE = 300 -- WAS 5 | changed to reduce the number of production lines on navy
NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 0.0            -- XP cost for adding a new equipment module in an empty slot when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 0.0        -- XP cost for replacing one equipment module with an unrelated module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 0.0        -- XP cost for converting one equipment module to a related module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 0.0  		-- XP cost for removing an equipment module and leaving the slot empty when creating an equipment variant.
NDefines.NProduction.LICENSE_EQUIPMENT_SPEED_NOT_FACTION = 0        -- WAS 0.1, removed because there are really only 2 factions in game | MIC speed modifier for licensed equipment for not being in faction
NDefines.NProduction.MAX_MIL_FACTORIES_PER_LINE = 300               -- WAS 150, changed so you can have 1 fewer line of tanks if you want 
NDefines.NProduction.CONVOY_MAX_NAV_FACTORIES_PER_LINE = 300         -- WAS 15, Changed so you can have less lines of naval production
NDefines.NProduction.DEFAULT_MAX_NAV_FACTORIES_PER_LINE = 300		-- WAS 10, Changed so you can have less lines of naval production
NDefines.NProduction.ANNEX_FIELD_EQUIPMENT_RATIO = 1	-- WAS 0.25 | Annex decisions should give all troops, but incase I screwed up here is this  | How much equipment from deployed divisions will be transferred on annexation
---------------------------------------------------------------
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 4200						-- up from 24 | You can have a minimum of this many special forces battalions, regardless of the number of non-special forces battalions you have, this can also be modified by a country modifier
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.00
NDefines.NCountry.DAYS_OF_WAR_BEFORE_SURRENDER = 3	           	  -- down from 7 | why not allow Luxembourg to cap faster
NDefines.NCountry.NUM_DAYS_TO_FULLY_DELETE_STOCKPILED_EQUIPMENT = 999 
NDefines.NCountry.EVENT_PROCESS_OFFSET = 60 -- WAS 20. The higher the number, the less responsive mean_time_to_happen events are, but the better the performance is. Most important mean_time_to_happen events have been converted or deleted already or have decisions to circumvent them.
NDefines.NCountry.GIE_ESCAPING_DIVISIONS_TRANSFER_DAYS = 1 			--  WAS 30 | days to transfer escaping divisions to host nation
NDefines.NCountry.GIE_CONVOY_ON_CREATION = 50                      -- WAS 10 | Changed so capped players dont instantly lose supply/ability to do invasions
NDefines.NCountry.MIN_FOCUSES_FOR_CONTINUOUS = 1                    -- WAS 10 | Why should you need 10 focuses to unlock continuous focuses???
NDefines.NCountry.COUNTRY_SCORE_MULTIPLIER = 0				-- Weight of the country score.
NDefines.NCountry.ARMY_SCORE_MULTIPLIER = 0					-- Based on number of armies.
NDefines.NCountry.NAVY_SCORE_MULTIPLIER = 0					-- Based on number of navies.
NDefines.NCountry.AIR_SCORE_MULTIPLIER = 0				-- Based on number of planes (which is typically a lot).
NDefines.NCountry.INDUSTRY_SCORE_MULTIPLIER = 0				-- Based on number of factories.
NDefines.NCountry.PROVINCE_SCORE_MULTIPLIER = 0				-- Based on number of controlled provinces.
NDefines.NCountry.BASE_FUEL_CAPACITY = 75000                -- WAS 50k, increased to make the fuel system more smooth with minor AC
NDefines.NCountry.SURRENDER_LIMIT_REDUCTION_PER_COLLABORATION = 0 -- WAS 0.3 | each percent of collaboration will lower surrender limit by this percentage 
NDefines.NCountry.GIE_CAPITULATION_WARSCORE_LEGITIMACY_FACTOR = 2    --Multiplies accumulated warscore with this factor for part of starting legitimacy.
NDefines.NCountry.GIE_WARSCORE_GAIN_LEGITIMACY_FACTOR = 2                --Factor on how much legitimacy is gained from warscore earned by GiE units.
---------------------------------------------------------------
NDefines.NResistance.GARRISON_LOG_MAX_MONTHS = 3            -- WAS 12
NDefines.NResistance.COMPLIANCE_DECAY_AT_MAX_COMPLIANCE = -0.08 -- as compliance increases, it gets a decay rate depending on its value. compliance should stabilize at some value until its growth changes
NDefines.NResistance.COMPLIANCE_GROWTH_BASE = 0.08 -- base compliance grow
NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_OCCUPIED_IS_EXILE_MIN = 0   -- WAS 2, REMOVED TO SUPPORT MORE INTERSTING UK DECISIONS | min & max resistance target modifier resistance target modifier for exile countries. interpolated using legitimacy
NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_OCCUPIED_IS_EXILE_MAX = 0	-- WAS 20, REMOVED TO SUPPORT MORE INTERSTING UK DECISIONS |
NDefines.NResistance.RESISTANCE_TARGET_BASE = 40							-- WAS 35, INCREASED AS RESISTANCE FROM GiE WAS REMOVED | base resistance target percentage
---------------------------------------------------------------
NDefines.NNavy.TRAINING_ACCIDENT_CHANCES = 0						-- down from 0.02 | Chances one ship get damage each hour while on training 		
NDefines.NNavy.MISSION_SUPREMACY_RATIOS = { 						-- supremacy multipliers for different mission types   | Strikeforce/Naval Invasion Support now 0 supremacy to avoid free supremacy
		0.0, -- HOLD
		1.0, -- PATROL		
		0.0, -- STRIKE FORCE 
		0.2, -- CONVOY RAIDING
		0.5, -- CONVOY ESCORT
		0.0, -- MINES PLANTING	
		0.0, -- MINES SWEEPING	
		0.0, -- TRAIN
		0.0, -- RESERVE_FLEET
		0.2, -- NAVAL_INVASION_SUPPORT
	}
NDefines.NNavy.NAVAL_COMBAT_RESULT_TIMEOUT_YEARS = 0.5							-- WAS 2 | after that many years, we clear the naval combat results, so they don't get stuck forever in the memory.
NDefines.NNavy.CONVOY_LOSS_HISTORY_TIMEOUT_MONTHS = 1						-- WAS 24 | after this many months remove the history of lost convoys to not bloat savegames and memory since there is no way to see them anyway
NDefines.NNavy.SUPREMACY_PER_SHIP_BASE = 1                        -- WAS 100 | reduced to relatively nerf subs in terms of naval supremacy, as most of their supremacy comes from a base value of 100
NDefines.NNavy.NAVAL_TRANSFER_BASE_SPEED = 10                       -- WAS 6 | Increased so moving troops around the world is faster and theaters dont seem so disconnected (particularly aimed at improving Allied gameplay experience)
NDefines.NNavy.ADMIRAL_TASKFORCE_CAP = 20                           -- WAS 10 | Increased so players can use their same submarine or escort admiral without penalties
NDefines.NNavy.NAVAL_MINES_DECAY_AT_PEACE_TIME = 1                    -- WAS 0.25 
NDefines.NNavy.MISSION_SPREADS = {  -- mission spreads in the case a ship join combat, whih defines their starting position
		0.0, -- HOLD 
		0.0, -- PATROL		
		0.0, -- STRIKE FORCE 
		0.0, -- CONVOY RAIDING
		0.0, -- CONVOY ESCORT
		0.0, -- MINES PLANTING	
		0.0, -- MINES SWEEPING	
		0.5, -- TRAIN
		0.0, -- RESERVE_FLEET
		0.0, -- NAVAL_INVASION_SUPPORT
	}
NDefines.NNavy.GUN_HIT_PROFILES = { -- hit profiles for guns, if target ih profile is lower the gun will have lower accuracy
		80.0,	-- big guns
		145.0,	-- torpedos
		50.0,	-- small guns
	}
NDefines.NNavy.INITIAL_ALLOWED_DOCKYARD_RATIO_FOR_REPAIRS = 1.0				-- initially countries will allocate this ratio of dockyards for repairs
NDefines.NNavy.SUPPLY_NEED_FACTOR = 0										-- Changed from vanilla becausee of a weird bug where using too much supply while docked leads to the fleet having no range or fuel
NDefines.NNavy.LEADER_EXPERIENCE_SCALE = 0.0 								-- CMU has pre-made admirals because admiral grinding is pretty exploity, gamey, and not fun          
---------------------------------------------------------------
NDefines.NTechnology.LICENSE_PRODUCTION_TECH_BONUS = 0	-- WAS 0.2 | LICENSES ARE FREE SO TECH BONUS IS TOO MUCH | License production tech bonus
---------------------------------------------------------------                 
---------------------------------------------------------------
------CMU RESISTANCE, COMPLIANCE, AND SPY AGENCY CHANGES-------
---------------------------------------------------------------
NDefines.NCountry.MAX_PROPAGANDA_WAR_SUPPORT_IMPACT = 0		-- Max total penalty from operative performing the propaganda mission in a country
NDefines.NCountry.PROPAGANDA_STABILITY_DAILY_DECAY = 0.002		-- Amount of stability recovered daily from propaganda effort
NDefines.NCountry.INTEL_FROM_ALLIANCE_FACTOR = 0.6
NDefines.NOperatives.OPERATIVE_BASE_BOOST_IDEOLOGY = 0				-- Base amount of daily ideology drift provoked by an operative
NDefines.NOperatives.PROPAGANDA_COUNTRY_STACKING_FACTOR = 0.2
NDefines.NOperatives.PROPAGANDA_OPERATIVE_STACKING_FACTOR = 0.2
NDefines.NOperatives.AGENCY_CREATION_DAYS = 0						-- Number of days needed to create an intelligence agency
NDefines.NOperatives.AGENCY_CREATION_FACTORIES = 0
NDefines.NOperatives.AGENCY_UPGRADE_DAYS = 100						-- Number of days needed to upgrade an intelligence agency
NDefines.NOperatives.BASE_COUNTER_INTELLIGENCE_RATING = 0.5						-- Number of days needed to upgrade an intelligence agency
NDefines.NOperatives.BECOME_SPYMASTER_PP_COST = 0					-- Number of political power used to become Spy Master
NDefines.NOperatives.BECOME_SPYMASTER_MIN_UPGRADES = 0			-- Number of agency upgrades you need before becoming Spy Master						-- Number of days needed to upgrade an intelligence agency
NDefines.NOperatives.BUILD_INTEL_NETWORK_DAILY_XP_GAIN = 3
NDefines.NOperatives.QUIET_INTEL_NETWORK_DAILY_XP_GAIN = 1
NDefines.NOperatives.COUNTER_INTELLIGENCE_DAILY_XP_GAIN = 1.5
NDefines.NOperatives.ROOT_OUT_RESISTANCE_DAILY_XP_GAIN = 1.5
NDefines.NOperatives.AGENCY_OPERATIVE_RECRUITMENT_TIME = 5
NDefines.NOperatives.OPERATION_COMPLETION_XP = 100
NDefines.NOperatives.ON_CAPTURE_COUNTERINTELLIGENCE_OPERATIVE_XP_GAIN = 300
NDefines.NOperatives.INTEL_NETWORK_MIN_VP_TO_TARGET = 1
NDefines.NOperatives.INTEL_NETWORK_MIN_STRENGTH_TO_TARGET = 1
NDefines.NOperatives.OPERATIVE_BASE_CONTROL_TRADE_DRIFT = 1				-- The base daily drift in trade influence caused by an operative
NDefines.NOperatives.CONTROL_TRADE_MAX_INFLUENCE = 200.0					-- The maximum amount of trade influence that can be gained through the control trade mission
--DISABLED FROM HFU NDefines.NIntel.ARMY_INTEL_COMBAT_BONUS_FACTOR_ATTACK = 0.5 -- multiplier for attack value of intel combat bonus
NDefines.NIntel.DYNAMIC_INTEL_SOURCE_EVENT_MAXIMUMS = { 200, 200, 200, 200 } --Intel from events was 40
NDefines.NIntel.DYNAMIC_INTEL_SOURCE_EVENT_ABSOLUTE_MAXIMUMS = { 200, 200, 200, 200 } --Intel from events was 50
---------------------------------------------------------------
----------END OF HFU SPY/AGENCY/INTELLIGENCE CHANGES-----------
---------------------------------------------------------------
NDefines.NAI.GIVE_STATE_CONTROL_MIN_CONTROLLED = 0       -- WAS 1
NDefines.NAI.GIVE_STATE_CONTROL_MIN_CONTROLLED = 0       -- WAS 1
NDefines.NAI.GIVE_STATE_CONTROL_MIN_CONTROL_DIFF = 0     -- WAS 2
NDefines.NAI.GIVE_STATE_CONTROL_BASE_SCORE = 1         -- WAS 50
NDefines.NAI.MINIMUM_EQUIPMENT_TO_ASK_LEND_LEASE = -1999999	-- WAS 100, changed to prevent exploiting AI for ~150k guns at the start of WW2 | AI will accept to lend lease this equipment only if our stockpile is less than that.
NDefines.NAI.DIPLOMACY_REJECTED_WAIT_MONTHS_BASE = 24                --up from 4 | should cut down on AI spam
NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_OPINION_PENALTY = 0
NDefines.NAI.DIPLOMACY_SEND_EXPEDITIONARY_BASE = 0
NDefines.NAI.JOIN_ALLY_BASE_DESIRE = -500					-- exactly what it says
NDefines.NAI.JOIN_ALLY_DEMOCRATIC_DESIRE = -500			-- Desire to call ally added for democratic AI
NDefines.NAI.JOIN_ALLY_NEUTRAL_DESIRE = -500			-- Desire to call ally added for neutral AI
NDefines.NAI.JOIN_ALLY_FASCIST_DESIRE = -500				-- Desire to call ally added for fascist AI
NDefines.NAI.JOIN_ALLY_COMMUNIST_DESIRE = -500			-- Desire to call ally added for communist AI
NDefines.NAI.DIPLOMATIC_ACTION_PROPOSE_SCORE = 500		-- AI must score a diplomatic action at least this highly to propose it themselves
NDefines.NAI.NUM_SILOS_PER_CIVILIAN_FACTORIES = 0					-- ai will try to build a silo per this ratio of civ factories
NDefines.NAI.NUM_SILOS_PER_MILITARY_FACTORIES = 0					-- ai will try to build a silo per this ratio of mil factories
NDefines.NAI.NUM_SILOS_PER_DOCKYARDS = 0							-- ai will try to build a silo per this ratio of dockyards
---------------------------------------------------------------
NDefines_Graphics.NGraphics.COMMANDGROUP_PRESET_COLORS_HSV = {
	0.0/360.0, 1.0, 1.0,	--red
	10.0/360.0, 1.0, 1.0,	--orange
	60.0/360.0, 1.0, 1.0,	--yellow
	120.0/360.0, 0.75, 1.0,	--green
	180.0/360.0, 1.0, 1.0,	--turq
	235.0/360.0, 1.0, 1.0,	--blue
	260.0/360.0, 1.0, 1.0,	--dark purple
	300.0/360.0, 1.0, 1.0,	--light purple
	330.0/360.0, 0, 1.0		--white
}

NDefines_Graphics.NAirGfx.MAX_MISSILE_BOMBING_SCENARIOS = 0
NDefines_Graphics.NAirGfx.MAX_BOMBING_SCENARIOS = 0
NDefines_Graphics.NAirGfx.MAX_PATROL_SCENARIOS = 0
NDefines_Graphics.NAirGfx.MAX_DOGFIGHTS_SCENARIOS = 0
NDefines_Graphics.NAirGfx.MAX_TRANSPORT_SCENARIOS = 0
NDefines_Graphics.NGraphics.CAMERA_ZOOM_SPEED_DISTANCE_MULT = 20
NDefines_Graphics.NGraphics.MAPICON_GROUP_STRATEGIC_SIZE = 1000
NDefines_Graphics.NGraphics.MAP_ICONS_STATE_HUGE = 100
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_FIELD_COUNTRY_REFRESH = 30
NDefines_Graphics.NGraphics.DECISION_MAP_ICON_DISTANCE_CUTOFF = 100
NDefines_Graphics.NGraphics.NAVAL_COMBAT_DISTANCE_CUTOFF = 1200
NDefines_Graphics.NGraphics.PROVINCE_ANIM_TEXT_DISTANCE_CUTOFF = 200
NDefines_Graphics.NMapMode.MAP_MODE_TERRAIN_TRANSPARENCY = 0.8
NDefines_Graphics.NGraphics.AIRBASE_ICON_DISTANCE_CUTOFF = 600
NDefines_Graphics.NGraphics.NAVALBASE_ICON_DISTANCE_CUTOFF = 600
NDefines_Graphics.NGraphics.RADAR_ICON_DISTANCE_CUTOFF = 150
NDefines_Graphics.NAirGfx.AIRPLANES_ANIMATION_GLOBAL_SPEED_PER_GAMESPEED = {0.3, 0.3, 0.3, 0.3, 0.3, 0.3}
NDefines_Graphics.NGraphics.DRAW_MAP_OBJECTS_CUTOFF = 1.0
NDefines_Graphics.NGraphics.VICTORY_POINTS_DISTANCE_CUTOFF = {200, 350, 500}
NDefines_Graphics.NGraphics.MAX_MESHES_LOADED_PER_FRAME = 5
NDefines_Graphics.NGraphics.DRAW_DETAILED_CUTOFF = 100
NDefines_Graphics.NMapMode.RADAR_ROTATION_SPEED = 0.0
NDefines_Graphics.NMapMode.AIR_RANGE_INDICATOR_ROTATION_SPEED = 0.0000
NDefines_Graphics.NAirGfx.AIRPLANES_SMOOTH_INTERPOLATION_MOVE = 0.02
NDefines_Graphics.NAirGfx.AIRPLANES_SMOOTH_INTERPOLATION_TURN = 0.02
NDefines_Graphics.NInterface.GRIDBOX_ELEMENTS_INTERPOLATION_SPEED = 0.2
NDefines_Graphics.NGraphics.TREE_FADE_NEAR = 150.0
NDefines_Graphics.NGraphics.TREE_FADE_FAR = 250.0
NDefines_Graphics.NGraphics.RESOURCE_MAP_ICON_TEXT_CUTOFF = 400
NDefines_Graphics.NGraphics.UNITS_DISTANCE_CUTOFF = 100
NDefines_Graphics.NGraphics.SHIPS_DISTANCE_CUTOFF = 200
NDefines_Graphics.NGraphics.UNIT_ARROW_DISTANCE_CUTOFF = 500
NDefines_Graphics.NGraphics.UNITS_ICONS_DISTANCE_CUTOFF = 700
NDefines_Graphics.NGraphics.NAVAL_COMBAT_DISTANCE_CUTOFF = 1000
NDefines_Graphics.NGraphics.ADJACENCY_RULE_DISTANCE_CUTOFF = 1300
NDefines_Graphics.NGraphics.LAND_COMBAT_DISTANCE_CUTOFF = 800
NDefines_Graphics.NGraphics.SUPPLY_ICON_DISTANCE_CUTOFF = 1500
NDefines_Graphics.NGraphics.PROV_CONSTRUCTION_ICON_DISTANCE_CUTOFF = 300
NDefines_Graphics.NGraphics.STATE_CONSTRUCTION_ICON_DISTANCE_CUTOFF = 600
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_REFRESH_FREQ = 0.2
NDefines_Graphics.NGraphics.MAPICON_GROUP_PASSES = 5
NDefines_Graphics.NGraphics.DRAW_REFRACTIONS_CUTOFF = 0
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_FIELD_COUNTRY_REFRESH = 40
NDefines_Graphics.NGraphics.WEATHER_DISTANCE_CUTOFF = 50
NDefines_Graphics.NGraphics.MAP_ICONS_STRATEGIC_AREA_HUGE = 250
NDefines_Graphics.NGraphics.MAP_ICONS_COARSE_COUNTRY_GROUPING_DISTANCE = 300
NDefines_Graphics.NGraphics.MAP_ICONS_COARSE_COUNTRY_GROUPING_DISTANCE_STRATEGIC = 0
NDefines_Graphics.NGraphics.BLOOM_WIDTH = 0
NDefines_Graphics.NGraphics.BLOOM_SCALE = 0
NDefines_Graphics.NGraphics.BRIGHT_THRESHOLD = 0
NDefines_Graphics.NGraphics.EMISSIVE_BLOOM_STRENGTH = 0
NDefines_Graphics.NGraphics.DAY_NIGHT_FEATHER = 0.024
NDefines_Graphics.NGraphics.DRAW_SHADOWS_CUTOFF = 0
NDefines_Graphics.NGraphics.DRAW_SHADOWS_FADE_LENGTH = 0
NDefines_Graphics.NGraphics.DRAW_FOW_CUTOFF = 0
NDefines_Graphics.NGraphics.DRAW_FOW_FADE_LENGTH = 0
NDefines_Graphics.NGraphics.BORDER_WIDTH = 1

NDefines_Graphics.NMapIcons.STATES_PRIORITY_VICTORY_POINTS = 4
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_COUNTRY_LOW = 10.0 -- thickness in pixels -- 5
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_COUNTRY_CENTER_THICKNESS = 1.0 -- The center gradient is linear 1/255 per pixel for this many pixels
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_COUNTRY_HIGH = 30.0
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_STATE = 10.0 --11
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_SUPPLY_AREA_A = 2.0 --2
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_SUPPLY_AREA_B = 15.0 --20
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_STRATEGIC_REGIONS = 50.0 --20
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_OUTLINE_CUTOFF_STRATEGIC_REGIONS = 0.973
NDefines_Graphics.NGraphics.COUNTRY_COLOR_HUE_MODIFIER = 0.0 -- 0.0
NDefines_Graphics.NGraphics.COUNTRY_COLOR_SATURATION_MODIFIER = 0.7 -- 0.6
NDefines_Graphics.NGraphics.COUNTRY_COLOR_BRIGHTNESS_MODIFIER = 0.8 -- 0.8
NDefines_Graphics.NGraphics.CAMERA_ZOOM_SPEED = 50
NDefines_Graphics.NGraphics.CAMERA_ZOOM_KEY_SCALE = 0.02
NDefines_Graphics.NGraphics.CAMERA_ZOOM_SPEED_DISTANCE_MULT = 15.0

NDefines_Graphics.NGraphics.STRATEGIC_AIR_COLOR_BAD = {0.65, 0, 0, 1}
NDefines_Graphics.NGraphics.STRATEGIC_AIR_COLOR_GOOD = {0, 0.65, 0, 1}
NDefines_Graphics.NGraphics.STRATEGIC_AIR_COLOR_AVERAGE = {0.65, 0.65, 0, 1}
NDefines_Graphics.NGraphics.STRATEGIC_AIR_COLOR_NEUTRAL = {130.0/255, 130.0/255, 130.0/255, 1}
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_STRATEGIC_REGIONS = 250.0
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_SUPPLY_AREA_A = 250 --250.0
NDefines_Graphics.NGraphics.GRADIENT_BORDERS_THICKNESS_SUPPLY_AREA_B = 250 --250.0
NDefines_Graphics.NGraphics.RESISTANCE_COLOR_GOOD = {0.0, 0.65, 0, 1}
NDefines_Graphics.NGraphics.RESISTANCE_COLOR_AVERAGE = {0.65, 0.65, 0, 1}
NDefines_Graphics.NGraphics.RESISTANCE_COLOR_BAD = {0.65, 0, 0, 1}
NDefines_Graphics.NGraphics.STRATEGIC_NAVY_COLOR_MISSION = {0.65, 0.65, 0.0, 1}
NDefines_Graphics.NGraphics.STRATEGIC_NAVY_COLOR_NEUTRAL = {130.0/255, 130.0/255, 130.0/255, 1}
NDefines_Graphics.NGraphics.ROOT_FRONT_OFFSET = 2

NDefines_Graphics.NGraphics.MAP_ICONS_GROUP_CAM_DISTANCE = 100				--group moving and still units
NDefines_Graphics.NGraphics.MAP_ICONS_STATE_GROUP_CAM_DISTANCE = 325.0		--group into states
NDefines_Graphics.NGraphics.MAP_ICONS_STRATEGIC_GROUP_CAM_DISTANCE = 400		--group units into air regions
NDefines_Graphics.NGraphics.MAP_ICONS_STRATEGIC_AREA_HUGE = 220					--size limit for air region grouping
NDefines_Graphics.NGraphics.MAP_ICONS_STATE_HUGE = 100							--size limit for state grouping
NDefines_Graphics.NGraphics.MAPICON_GROUP_STRATEGIC_SIZE = 1000
NDefines_Graphics.NGraphics.MAP_ICONS_GROUP_SPLIT_SELECTED_LIMIT = 10
NDefines_Graphics.NGraphics.MAP_ICONS_COARSE_COUNTRY_GROUPING_DISTANCE = 200
NDefines_Graphics.NGraphics.MAP_ICONS_COARSE_COUNTRY_GROUPING_DISTANCE_STRATEGIC = 0

NDefines.NMilitary.NUKE_MIN_DAMAGE_PERCENT = 0.2;
NDefines.NMilitary.NUKE_MAX_DAMAGE_PERCENT = 0.5;
NDefines.NMilitary.NUKE_DELAY_HOURS = 12;
NDefines.NCountry.NUCLEAR_BOMB_DROP_WAR_SUPPORT_EFFECT_MAX_INFRA = 0.35;
NDefines.NCountry.NUCLEAR_BOMB_DROP_WAR_SUPPORT_EFFECT_MAX_VP = 1;
