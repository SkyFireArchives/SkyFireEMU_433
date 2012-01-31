/*##############################
## Firelands Updates by Naios ##
##############################*/
-- Contents:(Instance & Shannox)

/* 
	Information about Blizzlike Content:
	
	- The Waypoints are NOT sniffed but they are looking very similar
	
	- The Text Scripts are Blizzlike
	
	- Shannox Weapon is Blizzlike
	
	- Shannox spawn Positions are NOT Blizzlike, but they are on the looking similar Waypoints
*/

-- This Values needs to be set...
SET @SHANNOX_SCRIPT_TEXTS_ENTRY := -1999971;
SET @SHANNOX_GUID := 15428094;
SET @SHANNOX_EUIPMENT_TEMPLATE := 53000;

-- ### Instance Template & Access Requirement ###
DELETE FROM `instance_template` WHERE map = 720;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (720, 0, 'instance_firelands', 1);

DELETE FROM `access_requirement` WHERE `mapId` = 720;
INSERT INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES (720, 0, 85, 0, 0, 0, 0, 0, 0, NULL, 'Firelands (Enterence)');
INSERT INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES (720, 1, 85, 0, 0, 0, 0, 0, 0, NULL, 'Firelands (Enterence)');
INSERT INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES (720, 2, 85, 0, 0, 0, 0, 0, 0, NULL, 'Firelands (Enterence)');
INSERT INTO `access_requirement` (`mapId`, `difficulty`, `level_min`, `level_max`, `item`, `item2`, `quest_done_A`, `quest_done_H`, `completed_achievement`, `quest_failed_text`, `comment`) VALUES (720, 3, 85, 0, 0, 0, 0, 0, 0, NULL, 'Firelands (Enterence)');

-- ### Set Scriptnames ###
UPDATE `creature_template` SET `ScriptName`='boss_shannox' WHERE `entry`=53691 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_rageface' WHERE `entry`=53695 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_riplimb' WHERE `entry`=53694 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_shannox_spear' WHERE `entry`=53752 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_crystal_trap' WHERE `entry`=53713 LIMIT 1;

DELETE FROM `creature_addon` WHERE `guid` = @SHANNOX_GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@SHANNOX_GUID,@SHANNOX_GUID*10,1);

-- # Spawns #

-- Shannox
DELETE FROM `creature` WHERE `id` = 53691;

-- 10N
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@SHANNOX_GUID, 53691, 720, 1, 1, 0, @SHANNOX_EUIPMENT_TEMPLATE, -241.456, 103.116, 47.8124, 1.50341, 300, 0, 0, 24316892, 0, 2, 0, 0, 0),
-- 25N
(@SHANNOX_GUID+1, 53691, 720, 2, 1, 0, @SHANNOX_EUIPMENT_TEMPLATE, -241.456, 103.116, 47.8124, 1.50341, 300, 0, 0, 24316892, 0, 2, 0, 0, 0),
-- 10H
(@SHANNOX_GUID+2, 53691, 720, 4, 1, 0, @SHANNOX_EUIPMENT_TEMPLATE, -241.456, 103.116, 47.8124, 1.50341, 300, 0, 0, 24316892, 0, 2, 0, 0, 0),
-- 25H
(@SHANNOX_GUID+3, 53691, 720, 8, 1, 0, @SHANNOX_EUIPMENT_TEMPLATE, -241.456, 103.116, 47.8124, 1.50341, 300, 0, 0, 24316892, 0, 2, 0, 0, 0);

-- And now we set the creature Addon for those Spawns

DELETE FROM `creature_addon` WHERE `guid`= @SHANNOX_GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@SHANNOX_GUID,@SHANNOX_GUID*10,1);
DELETE FROM `creature_addon` WHERE `guid`= @SHANNOX_GUID+1;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@SHANNOX_GUID+1,@SHANNOX_GUID*10,1);
DELETE FROM `creature_addon` WHERE `guid`= @SHANNOX_GUID+2;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@SHANNOX_GUID+2,@SHANNOX_GUID*10,1);
DELETE FROM `creature_addon` WHERE `guid`= @SHANNOX_GUID+3;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@SHANNOX_GUID+3,@SHANNOX_GUID*10,1);

-- ### Set Waypoints ###

-- Shannox  (through Firelands)
DELETE FROM `waypoint_data` WHERE `id`= @SHANNOX_GUID*10;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) VALUES
(@SHANNOX_GUID*10, 1, -241.456, 103.116, 47.8124, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 2, -271.088, 81.0518, 46.1824, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 3, -286.624, 72.0301, 46.1577, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 4, -317.144, 66.7632, 46.1577, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 5, -321.03, 43.0768, 46.1577, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 6, -305.882, 25.3226, 46.1577, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 7, -306.426, -2.57413, 46.1576, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 8, -316.167, -17.6987, 46.1576, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 9, -318.101, -32.8989, 46.1576, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 10, -321.495, -48.4758, 46.1576, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 11, -302.064, -74.2203, 46.1576, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 12, -299.831, -91.8059, 46.1576, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 13, -291.714, -109.743, 45.8785, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 14, -245.637, -172.116, 54.2827, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 15, -207.106, -214.714, 54.4089, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 16, -188.044, -236.142, 55.6893, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 17, -162.902, -236.733, 55.6823, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 18, -121.679, -205.623, 57.118, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 19, -112.426, -158.936, 57.0601, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 20, -77.8603, -116.232, 56.9446, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 21, -56.0388, -35.9044, 57.493, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 22, -35.8763, 57.4226, 56.416, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 23, -14.6843, 90.8993, 56.6997, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 24, 19.3909, 166.628, 46.1518, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 25, -5.42823, 199.746, 47.5595, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 26, -74.926, 172.977, 44.7473, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 27, -123.932, 192.076, 46.1569, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 28, -148.453, 189.73, 46.1569, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 29, -176.173, 174.809, 46.402, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 30, -189.397, 172.102, 46.6773, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 31, -235.357, 136.817, 49.1653, 0, 0, 0, 100, 0),
(@SHANNOX_GUID*10, 32, -241.792, 109.354, 48.2423, 0, 0, 0, 100, 0);


-- ### Set Script_Texts ###

-- Shannox
DELETE FROM `script_texts` WHERE `npc_entry` = 53691;

INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY, 'A-hah! The interlopers! Kill them. EAT THEM!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24517, 1, 0, 0, 'Shannox Aggro Yell'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-1, 'Shannox becomes enraged at seeing once of his companions fall!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Shannox Enrage Warning'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-2, 'Oh, you murderers! Why? Why would you kill such a noble animal?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell on killing a Dog'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-3, 'Ohh... the pain. Lord of Fire, it hurts....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Dead Yell'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-4, 'Dog food!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-5, 'Fetch your supper!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-6, 'Go for the throat!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-7, 'Now you burn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Dead Yell'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-8, 'Now you stay dead!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell ?'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-9, 'Riplimb! No... no! Oh, you terrible little beasts! How could you?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell: when RIplimb bites someone'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-10, 'The Firelord will be most pleased.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell ? Maybe on a players death'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-11, 'Twist in flames, interlopers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell: Spear Explosion'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-12, 'Yes, I smell them too, Riplimb. Outsiders encroach on the Firelords private grounds. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell: when he spawns'),
(53691, @SHANNOX_SCRIPT_TEXTS_ENTRY-13, 'Find their trail. Find them for me, that I may dispense punishment! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Shannox Yell ?');

-- ### Updates Creature_Template ###
-- Shannox Spear
UPDATE `creature_template` SET `scale`='3' WHERE `entry`=53752 LIMIT 1;

-- Model id fixx & equipment Template for Spear of Shannox
UPDATE `creature_template` SET `modelid1`=16925, `modelid2`=0 WHERE `entry`=53752 LIMIT 1;
UPDATE `creature_template` SET `equipment_id` = @SHANNOX_EUIPMENT_TEMPLATE WHERE `entry`=53752 LIMIT 1;

-- Inserts Vehicel for Riplimb & Spear
DELETE FROM `vehicle_template_accessory` WHERE `entry`=53694 LIMIT 1;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (53694, 53752, 1, 1, 'Riplimb Mouth (with Spear)', 8, 0);

-- Add Taunt ImmunMask to Rageface
UPDATE `creature_template` SET `Flags_Extra`='524288' WHERE `entry`= 53695 LIMIT 1;

-- Faction Change of Crystall Trap
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE `entry`=53713 LIMIT 1;

-- Equipment Template (Blizzlike Weapon! :-) )
-- CTDB 2.1 Structre...
REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (@SHANNOX_EUIPMENT_TEMPLATE, 71557, 0, 0);

-- On Errors you can use the old CTDB 2.0 Structure...
-- REPLACE INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES (@SHANNOX_EUIPMENT_TEMPLATE, 71557, 0, 0);
