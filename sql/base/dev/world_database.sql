/*
Navicat MySQL Data Transfer

Source Server         : JadeCore_5.x.x
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : world547

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-10-10 22:06:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `access_requirement`
-- ----------------------------
DROP TABLE IF EXISTS `access_requirement`;
CREATE TABLE `access_requirement` (
`mapId`  mediumint(8) UNSIGNED NOT NULL ,
`difficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level_min`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level_max`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_done_A`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_done_H`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`completed_achievement`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`itemlevel_min`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemlevel_max`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_failed_text`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`mapId`, `difficulty`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Access Requirements'

;

-- ----------------------------
-- Table structure for `achievement_criteria_data`
-- ----------------------------
DROP TABLE IF EXISTS `achievement_criteria_data`;
CREATE TABLE `achievement_criteria_data` (
`criteria_id`  mediumint(8) NOT NULL ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`value1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`value2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`criteria_id`, `type`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Achievment system'

;

-- ----------------------------
-- Table structure for `achievement_dbc`
-- ----------------------------
DROP TABLE IF EXISTS `achievement_dbc`;
CREATE TABLE `achievement_dbc` (
`ID`  int(10) UNSIGNED NOT NULL ,
`requiredFaction`  int(11) NOT NULL DEFAULT '-1' ,
`mapID`  int(11) NOT NULL DEFAULT '-1' ,
`points`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`count`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`refAchievement`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`ID`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `achievement_reward`
-- ----------------------------
DROP TABLE IF EXISTS `achievement_reward`;
CREATE TABLE `achievement_reward` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`title_A`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`title_H`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`sender`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`subject`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`text`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `areatrigger_involvedrelation`
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_involvedrelation`;
CREATE TABLE `areatrigger_involvedrelation` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`quest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Trigger System'

;

-- ----------------------------
-- Table structure for `areatrigger_scripts`
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_scripts`;
CREATE TABLE `areatrigger_scripts` (
`entry`  mediumint(8) NOT NULL ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `areatrigger_tavern`
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_tavern`;
CREATE TABLE `areatrigger_tavern` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`name`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Trigger System'

;

-- ----------------------------
-- Table structure for `areatrigger_teleport`
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_teleport`;
CREATE TABLE `areatrigger_teleport` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`name`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`target_map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`target_position_x`  float NOT NULL DEFAULT 0 ,
`target_position_y`  float NOT NULL DEFAULT 0 ,
`target_position_z`  float NOT NULL DEFAULT 0 ,
`target_orientation`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Trigger System'

;

-- ----------------------------
-- Table structure for `battleground_template`
-- ----------------------------
DROP TABLE IF EXISTS `battleground_template`;
CREATE TABLE `battleground_template` (
`id`  mediumint(8) UNSIGNED NOT NULL ,
`MinPlayersPerTeam`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`MaxPlayersPerTeam`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`MinLvl`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`MaxLvl`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`AllianceStartLoc`  mediumint(8) UNSIGNED NOT NULL ,
`AllianceStartO`  float NOT NULL ,
`HordeStartLoc`  mediumint(8) UNSIGNED NOT NULL ,
`HordeStartO`  float NOT NULL ,
`StartMaxDist`  float NOT NULL DEFAULT 0 ,
`Weight`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`holiday`  int(3) NOT NULL DEFAULT 0 ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc1`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc2`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc3`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc4`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc5`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc6`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc7`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc8`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc9`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc10`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Name_loc11`  char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Comment`  char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `battlemaster_entry`
-- ----------------------------
DROP TABLE IF EXISTS `battlemaster_entry`;
CREATE TABLE `battlemaster_entry` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Entry of a creature' ,
`bg_template`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Battleground template id' ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `blackmarket_template`
-- ----------------------------
DROP TABLE IF EXISTS `blackmarket_template`;
CREATE TABLE `blackmarket_template` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Identifier' ,
`itemEntry`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Entry of the item' ,
`itemCount`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of copies selled' ,
`seller`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Entry of the npc vendor' ,
`startBid`  bigint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Price when added' ,
`duration`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The duration of the general bid' ,
`chance`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Chance for this item to be displayed' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=269

;

-- ----------------------------
-- Table structure for `character_aura`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`caster_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier' ,
`item_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`effect_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`recalculate_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stackcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`maxduration`  int(11) NOT NULL DEFAULT 0 ,
`remaintime`  int(11) NOT NULL DEFAULT 0 ,
`remaincharges`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `caster_guid`, `item_guid`, `spell`, `effect_mask`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_aura_effect`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura_effect`;
CREATE TABLE `character_aura_effect` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`effect`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`baseamount`  int(11) NOT NULL DEFAULT 0 ,
`amount`  int(11) NOT NULL ,
PRIMARY KEY (`guid`, `slot`, `effect`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `command`
-- ----------------------------
DROP TABLE IF EXISTS `command`;
CREATE TABLE `command` (
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`security`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`help`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`name`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Chat System'

;

-- ----------------------------
-- Table structure for `conditions`
-- ----------------------------
DROP TABLE IF EXISTS `conditions`;
CREATE TABLE `conditions` (
`SourceTypeOrReferenceId`  mediumint(8) NOT NULL DEFAULT 0 ,
`SourceGroup`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`SourceEntry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`SourceId`  int(11) NOT NULL DEFAULT 0 ,
`ElseGroup`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ConditionTypeOrReference`  mediumint(8) NOT NULL DEFAULT 0 ,
`ConditionTarget`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`ConditionValue1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ConditionValue2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ConditionValue3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`NegativeCondition`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`ErrorTextId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`Comment`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Condition System'

;

-- ----------------------------
-- Table structure for `creature`
-- ----------------------------
DROP TABLE IF EXISTS `creature`;
CREATE TABLE `creature` (
`guid`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier' ,
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Identifier' ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`zoneId`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`areaId`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spawnMask`  int(8) UNSIGNED NOT NULL DEFAULT 0 ,
`phaseMask`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`modelid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`equipment_id`  mediumint(8) NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`spawntimesecs`  int(10) UNSIGNED NOT NULL DEFAULT 120 ,
`spawndist`  float NOT NULL DEFAULT 0 ,
`currentwaypoint`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`curhealth`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`curmana`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MovementType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dynamicflags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`isActive`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`protec_anti_doublet`  int(255) NULL DEFAULT NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System'
AUTO_INCREMENT=999484

;

-- ----------------------------
-- Table structure for `creature_addon`
-- ----------------------------
DROP TABLE IF EXISTS `creature_addon`;
CREATE TABLE `creature_addon` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`path_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mount`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`emote`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`auras`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_addon_copy`
-- ----------------------------
DROP TABLE IF EXISTS `creature_addon_copy`;
CREATE TABLE `creature_addon_copy` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`path_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mount`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`emote`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`auras`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_addon_qsdsqd`
-- ----------------------------
DROP TABLE IF EXISTS `creature_addon_qsdsqd`;
CREATE TABLE `creature_addon_qsdsqd` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`path_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mount`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`emote`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`auras`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_area`
-- ----------------------------
DROP TABLE IF EXISTS `creature_area`;
CREATE TABLE `creature_area` (
`guid`  int(11) UNSIGNED NOT NULL ,
`zone`  int(11) NOT NULL ,
`area`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `creature_classlevelstats`
-- ----------------------------
DROP TABLE IF EXISTS `creature_classlevelstats`;
CREATE TABLE `creature_classlevelstats` (
`level`  tinyint(4) NOT NULL ,
`class`  tinyint(4) NOT NULL ,
`basehp0`  mediumint(8) UNSIGNED NOT NULL DEFAULT 1 ,
`basehp1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 1 ,
`basehp2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 1 ,
`basehp3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 1 ,
`basehp4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 1 ,
`basemana`  mediumint(8) UNSIGNED NOT NULL DEFAULT 1 ,
`basearmor`  mediumint(8) UNSIGNED NOT NULL DEFAULT 1 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_copy`
-- ----------------------------
DROP TABLE IF EXISTS `creature_copy`;
CREATE TABLE `creature_copy` (
`guid`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier' ,
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Identifier' ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`spawnMask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`phaseMask`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`modelid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`equipment_id`  mediumint(8) NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`spawntimesecs`  int(10) UNSIGNED NOT NULL DEFAULT 120 ,
`spawndist`  float NOT NULL DEFAULT 0 ,
`currentwaypoint`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`curhealth`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`curmana`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MovementType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dynamicflags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System'
AUTO_INCREMENT=303341

;

-- ----------------------------
-- Table structure for `creature_equip_template`
-- ----------------------------
DROP TABLE IF EXISTS `creature_equip_template`;
CREATE TABLE `creature_equip_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`itemEntry1`  int(8) UNSIGNED NOT NULL DEFAULT 0 ,
`itemEntry2`  int(8) UNSIGNED NOT NULL DEFAULT 0 ,
`itemEntry3`  int(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System (Equipment)'

;

-- ----------------------------
-- Table structure for `creature_formations`
-- ----------------------------
DROP TABLE IF EXISTS `creature_formations`;
CREATE TABLE `creature_formations` (
`leaderGUID`  int(10) UNSIGNED NOT NULL ,
`memberGUID`  int(10) UNSIGNED NOT NULL ,
`dist`  float UNSIGNED NOT NULL ,
`angle`  float UNSIGNED NOT NULL ,
`groupAI`  int(10) UNSIGNED NOT NULL ,
`point_1`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`point_2`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`memberGUID`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_formations_copy`
-- ----------------------------
DROP TABLE IF EXISTS `creature_formations_copy`;
CREATE TABLE `creature_formations_copy` (
`leaderGUID`  int(10) UNSIGNED NOT NULL ,
`memberGUID`  int(10) UNSIGNED NOT NULL ,
`dist`  float UNSIGNED NOT NULL ,
`angle`  float UNSIGNED NOT NULL ,
`groupAI`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`memberGUID`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_involvedrelation`
-- ----------------------------
DROP TABLE IF EXISTS `creature_involvedrelation`;
CREATE TABLE `creature_involvedrelation` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`quest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`id`, `quest`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System'

;

-- ----------------------------
-- Table structure for `creature_loot_currency`
-- ----------------------------
DROP TABLE IF EXISTS `creature_loot_currency`;
CREATE TABLE `creature_loot_currency` (
`creature_id`  mediumint(8) UNSIGNED NOT NULL ,
`CurrencyId1`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`CurrencyId2`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`CurrencyId3`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`CurrencyCount1`  int(10) NULL DEFAULT 0 ,
`CurrencyCount2`  int(10) NULL DEFAULT 0 ,
`CurrencyCount3`  int(10) NULL DEFAULT 0 ,
PRIMARY KEY (`creature_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `creature_loot_template`;
CREATE TABLE `creature_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `creature_model_info`
-- ----------------------------
DROP TABLE IF EXISTS `creature_model_info`;
CREATE TABLE `creature_model_info` (
`modelid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`bounding_radius`  float NOT NULL DEFAULT 0 ,
`combat_reach`  float NOT NULL DEFAULT 0 ,
`gender`  tinyint(3) UNSIGNED NOT NULL DEFAULT 2 ,
`modelid_other_gender`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`modelid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System (Model related info)'

;

-- ----------------------------
-- Table structure for `creature_new`
-- ----------------------------
DROP TABLE IF EXISTS `creature_new`;
CREATE TABLE `creature_new` (
`guid`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier' ,
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Identifier' ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`zoneId`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`areaId`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spawnMask`  int(8) UNSIGNED NOT NULL DEFAULT 0 ,
`phaseMask`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`modelid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`equipment_id`  mediumint(8) NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`spawntimesecs`  int(10) UNSIGNED NOT NULL DEFAULT 120 ,
`spawndist`  float NOT NULL DEFAULT 0 ,
`currentwaypoint`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`curhealth`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`curmana`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MovementType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dynamicflags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`isActive`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`protec_anti_doublet`  int(255) NULL DEFAULT NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System'
AUTO_INCREMENT=998118

;

-- ----------------------------
-- Table structure for `creature_onkill_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `creature_onkill_reputation`;
CREATE TABLE `creature_onkill_reputation` (
`creature_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Identifier' ,
`RewOnKillRepFaction1`  smallint(6) NOT NULL DEFAULT 0 ,
`RewOnKillRepFaction2`  smallint(6) NOT NULL DEFAULT 0 ,
`MaxStanding1`  tinyint(4) NOT NULL DEFAULT 0 ,
`IsTeamAward1`  tinyint(4) NOT NULL DEFAULT 0 ,
`RewOnKillRepValue1`  mediumint(8) NOT NULL DEFAULT 0 ,
`MaxStanding2`  tinyint(4) NOT NULL DEFAULT 0 ,
`IsTeamAward2`  tinyint(4) NOT NULL DEFAULT 0 ,
`RewOnKillRepValue2`  mediumint(9) NOT NULL DEFAULT 0 ,
`TeamDependent`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`creature_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature OnKill Reputation gain'

;

-- ----------------------------
-- Table structure for `creature_questrelation`
-- ----------------------------
DROP TABLE IF EXISTS `creature_questrelation`;
CREATE TABLE `creature_questrelation` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`quest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`id`, `quest`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System'

;

-- ----------------------------
-- Table structure for `creature_rp`
-- ----------------------------
DROP TABLE IF EXISTS `creature_rp`;
CREATE TABLE `creature_rp` (
`guid`  int(11) NULL DEFAULT NULL ,
`duration`  int(11) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `creature_summon_groups`
-- ----------------------------
DROP TABLE IF EXISTS `creature_summon_groups`;
CREATE TABLE `creature_summon_groups` (
`summonerId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`summonerType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`groupId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`summonType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`summonTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_template`
-- ----------------------------
DROP TABLE IF EXISTS `creature_template`;
CREATE TABLE `creature_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_5`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_6`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_7`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_8`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_9`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_10`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_11`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_12`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_13`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_14`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty_entry_15`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`KillCredit1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`KillCredit2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`subname`  char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`IconName`  char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`gossip_menu_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`minlevel`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`maxlevel`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`exp`  smallint(6) NOT NULL DEFAULT 0 ,
`exp_unk`  smallint(2) NOT NULL DEFAULT 0 ,
`faction_A`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`faction_H`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`speed_walk`  float NOT NULL DEFAULT 1 COMMENT 'Result of 2.5/2.5, most common value' ,
`speed_run`  float NOT NULL DEFAULT 1.14286 COMMENT 'Result of 8.0/7.0, most common value' ,
`speed_fly`  float NOT NULL DEFAULT 1.14286 COMMENT 'Result of 8.0/7.0, most common value' ,
`scale`  float NOT NULL DEFAULT 1 ,
`rank`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mindmg`  float NOT NULL DEFAULT 0 ,
`maxdmg`  float NOT NULL DEFAULT 0 ,
`dmgschool`  tinyint(4) NOT NULL DEFAULT 0 ,
`attackpower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dmg_multiplier`  float NOT NULL DEFAULT 1 ,
`baseattacktime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rangeattacktime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dynamicflags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`family`  mediumint(8) NOT NULL DEFAULT 0 ,
`trainer_type`  tinyint(4) NOT NULL DEFAULT 0 ,
`trainer_spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`trainer_class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`trainer_race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`minrangedmg`  float NOT NULL DEFAULT 0 ,
`maxrangedmg`  float NOT NULL DEFAULT 0 ,
`rangedattackpower`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`type_flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type_flags2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`lootid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`pickpocketloot`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`skinloot`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`resistance1`  smallint(6) NOT NULL DEFAULT 0 ,
`resistance2`  smallint(6) NOT NULL DEFAULT 0 ,
`resistance3`  smallint(6) NOT NULL DEFAULT 0 ,
`resistance4`  smallint(6) NOT NULL DEFAULT 0 ,
`resistance5`  smallint(6) NOT NULL DEFAULT 0 ,
`resistance6`  smallint(6) NOT NULL DEFAULT 0 ,
`spell1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spell2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spell3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spell4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spell5`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spell6`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spell7`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spell8`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`PetSpellDataId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`VehicleId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`mingold`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`maxgold`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`AIName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`MovementType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`InhabitType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 3 ,
`HoverHeight`  float NOT NULL DEFAULT 1 ,
`Health_mod`  float NOT NULL DEFAULT 1 ,
`Mana_mod`  float NOT NULL DEFAULT 1 ,
`Mana_mod_extra`  float NOT NULL DEFAULT 1 ,
`Armor_mod`  float NOT NULL DEFAULT 1 ,
`RacialLeader`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`movementId`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`RegenHealth`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`equipment_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`mechanic_immune_mask`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`flags_extra`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`WDBVerified`  smallint(6) NULL DEFAULT 1 ,
`faction`  int(11) NULL DEFAULT NULL ,
`unitflags2`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System'

;

-- ----------------------------
-- Table structure for `creature_template_addon`
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_addon`;
CREATE TABLE `creature_template_addon` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`path_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mount`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`emote`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`auras`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_text`
-- ----------------------------
DROP TABLE IF EXISTS `creature_text`;
CREATE TABLE `creature_text` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`id`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`text`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`language`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`probability`  float NOT NULL DEFAULT 0 ,
`emote`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`duration`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`sound`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
PRIMARY KEY (`entry`, `groupid`, `id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `creature_transport`
-- ----------------------------
DROP TABLE IF EXISTS `creature_transport`;
CREATE TABLE `creature_transport` (
`guid`  int(11) NOT NULL AUTO_INCREMENT COMMENT 'GUID of NPC on transport - not the same as creature.guid' ,
`transport_entry`  int(11) NOT NULL COMMENT 'Transport entry' ,
`npc_entry`  int(11) NOT NULL COMMENT 'NPC entry' ,
`TransOffsetX`  float NOT NULL DEFAULT 0 ,
`TransOffsetY`  float NOT NULL DEFAULT 0 ,
`TransOffsetZ`  float NOT NULL DEFAULT 0 ,
`TransOffsetO`  float NOT NULL DEFAULT 0 ,
`emote`  int(11) NOT NULL ,
PRIMARY KEY (`transport_entry`, `guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `creature_transport_copy`
-- ----------------------------
DROP TABLE IF EXISTS `creature_transport_copy`;
CREATE TABLE `creature_transport_copy` (
`guid`  int(11) NOT NULL AUTO_INCREMENT COMMENT 'GUID of NPC on transport - not the same as creature.guid' ,
`transport_entry`  int(11) NOT NULL COMMENT 'Transport entry' ,
`npc_entry`  int(11) NOT NULL COMMENT 'NPC entry' ,
`TransOffsetX`  float NOT NULL DEFAULT 0 ,
`TransOffsetY`  float NOT NULL DEFAULT 0 ,
`TransOffsetZ`  float NOT NULL DEFAULT 0 ,
`TransOffsetO`  float NOT NULL DEFAULT 0 ,
`emote`  int(11) NOT NULL ,
PRIMARY KEY (`transport_entry`, `guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `creatureold`
-- ----------------------------
DROP TABLE IF EXISTS `creatureold`;
CREATE TABLE `creatureold` (
`guid`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier' ,
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature Identifier' ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`zoneId`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`areaId`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spawnMask`  int(8) UNSIGNED NOT NULL DEFAULT 0 ,
`phaseMask`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`modelid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`equipment_id`  mediumint(8) NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`spawntimesecs`  int(10) UNSIGNED NOT NULL DEFAULT 120 ,
`spawndist`  float NOT NULL DEFAULT 0 ,
`currentwaypoint`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`curhealth`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`curmana`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MovementType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unit_flags2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dynamicflags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`isActive`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`protec_anti_doublet`  int(255) NULL DEFAULT NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature System'
AUTO_INCREMENT=997600

;

-- ----------------------------
-- Table structure for `custom_texts`
-- ----------------------------
DROP TABLE IF EXISTS `custom_texts`;
CREATE TABLE `custom_texts` (
`entry`  mediumint(8) NOT NULL ,
`content_default`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`sound`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`language`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`emote`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Custom Texts'

;

-- ----------------------------
-- Table structure for `daily_players_reports`
-- ----------------------------
DROP TABLE IF EXISTS `daily_players_reports`;
CREATE TABLE `daily_players_reports` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`creation_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`average`  float NOT NULL DEFAULT 0 ,
`total_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`speed_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`fly_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`jump_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`waterwalk_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`teleportplane_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`climb_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `db_script_string`
-- ----------------------------
DROP TABLE IF EXISTS `db_script_string`;
CREATE TABLE `db_script_string` (
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`content_default`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `disables`
-- ----------------------------
DROP TABLE IF EXISTS `disables`;
CREATE TABLE `disables` (
`sourceType`  int(10) UNSIGNED NOT NULL ,
`entry`  int(10) UNSIGNED NOT NULL ,
`flags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`params_0`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`params_1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`comment`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`sourceType`, `entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `disenchant_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `disenchant_loot_template`;
CREATE TABLE `disenchant_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Recommended id selection: item_level*100 + item_quality' ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(9) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `event_northhold_watch`
-- ----------------------------
DROP TABLE IF EXISTS `event_northhold_watch`;
CREATE TABLE `event_northhold_watch` (
`points`  int(11) NULL DEFAULT NULL ,
`team`  int(11) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `event_scripts`
-- ----------------------------
DROP TABLE IF EXISTS `event_scripts`;
CREATE TABLE `event_scripts` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`delay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`command`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dataint`  int(11) NOT NULL DEFAULT 0 ,
`x`  float NOT NULL DEFAULT 0 ,
`y`  float NOT NULL DEFAULT 0 ,
`z`  float NOT NULL DEFAULT 0 ,
`o`  float NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `exploration_basexp`
-- ----------------------------
DROP TABLE IF EXISTS `exploration_basexp`;
CREATE TABLE `exploration_basexp` (
`level`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`basexp`  mediumint(8) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`level`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Exploration System'

;

-- ----------------------------
-- Table structure for `fishing_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `fishing_loot_template`;
CREATE TABLE `fishing_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `game_event`
-- ----------------------------
DROP TABLE IF EXISTS `game_event`;
CREATE TABLE `game_event` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' ,
`start_time`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before' ,
`end_time`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler' ,
`occurence`  bigint(20) UNSIGNED NOT NULL DEFAULT 5184000 COMMENT 'Delay in minutes between occurences of the event' ,
`length`  bigint(20) UNSIGNED NOT NULL DEFAULT 2592000 COMMENT 'Length in minutes of the event' ,
`holiday`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Client side holiday id' ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Description of the event displayed in console' ,
`world_event`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 if normal event, 1 if world event' ,
PRIMARY KEY (`eventEntry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_arena_seasons`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_arena_seasons`;
CREATE TABLE `game_event_arena_seasons` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' ,
`season`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Arena season number' 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_battleground_holiday`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_battleground_holiday`;
CREATE TABLE `game_event_battleground_holiday` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' ,
`bgflag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`eventEntry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_condition`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition`;
CREATE TABLE `game_event_condition` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' ,
`condition_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`req_num`  float NULL DEFAULT 0 ,
`max_world_state_field`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`done_world_state_field`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`description`  varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`eventEntry`, `condition_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_creature`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_creature`;
CREATE TABLE `game_event_creature` (
`eventEntry`  tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.' ,
`guid`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`guid`, `eventEntry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_creature_quest`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_creature_quest`;
CREATE TABLE `game_event_creature_quest` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event.' ,
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`, `quest`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_gameobject`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_gameobject`;
CREATE TABLE `game_event_gameobject` (
`eventEntry`  tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.' ,
`guid`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`guid`, `eventEntry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_gameobject_quest`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_gameobject_quest`;
CREATE TABLE `game_event_gameobject_quest` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' ,
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`, `quest`, `eventEntry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_model_equip`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_model_equip`;
CREATE TABLE `game_event_model_equip` (
`eventEntry`  tinyint(4) NOT NULL COMMENT 'Entry of the game event.' ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`equipment_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_npc_vendor`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_npc_vendor`;
CREATE TABLE `game_event_npc_vendor` (
`eventEntry`  tinyint(4) NOT NULL COMMENT 'Entry of the game event.' ,
`guid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  smallint(6) NOT NULL DEFAULT 0 ,
`item`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`maxcount`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`incrtime`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ExtendedCost`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`guid`, `item`, `ExtendedCost`, `type`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_npcflag`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_npcflag`;
CREATE TABLE `game_event_npcflag` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' ,
`guid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`npcflag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `eventEntry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_pool`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_pool`;
CREATE TABLE `game_event_pool` (
`eventEntry`  tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.' ,
`pool_entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Id of the pool' ,
PRIMARY KEY (`pool_entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_prerequisite`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_prerequisite`;
CREATE TABLE `game_event_prerequisite` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event' ,
`prerequisite_event`  mediumint(8) UNSIGNED NOT NULL ,
PRIMARY KEY (`eventEntry`, `prerequisite_event`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_quest_condition`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_quest_condition`;
CREATE TABLE `game_event_quest_condition` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Entry of the game event.' ,
`quest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`condition_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`num`  float NULL DEFAULT 0 ,
PRIMARY KEY (`quest`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_seasonal_questrelation`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_seasonal_questrelation`;
CREATE TABLE `game_event_seasonal_questrelation` (
`questId`  int(10) UNSIGNED NOT NULL COMMENT 'Quest Identifier' ,
`eventEntry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Entry of the game event' ,
PRIMARY KEY (`questId`, `eventEntry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `game_graveyard_zone`
-- ----------------------------
DROP TABLE IF EXISTS `game_graveyard_zone`;
CREATE TABLE `game_graveyard_zone` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ghost_zone`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`faction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`, `ghost_zone`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Trigger System'

;

-- ----------------------------
-- Table structure for `game_tele`
-- ----------------------------
DROP TABLE IF EXISTS `game_tele`;
CREATE TABLE `game_tele` (
`id`  mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Tele Command'
AUTO_INCREMENT=54367

;

-- ----------------------------
-- Table structure for `game_weather`
-- ----------------------------
DROP TABLE IF EXISTS `game_weather`;
CREATE TABLE `game_weather` (
`zone`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spring_rain_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`spring_snow_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`spring_storm_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`summer_rain_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`summer_snow_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`summer_storm_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`fall_rain_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`fall_snow_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`fall_storm_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`winter_rain_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`winter_snow_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`winter_storm_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 25 ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`zone`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Weather System'

;

-- ----------------------------
-- Table structure for `gameobject`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject`;
CREATE TABLE `gameobject` (
`guid`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier' ,
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Gameobject Identifier' ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`zoneId`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`areaId`  smallint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spawnMask`  int(8) NULL DEFAULT 0 ,
`phaseMask`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`rotation0`  float NOT NULL DEFAULT 0 ,
`rotation1`  float NOT NULL DEFAULT 0 ,
`rotation2`  float NOT NULL DEFAULT 0 ,
`rotation3`  float NOT NULL DEFAULT 0 ,
`spawntimesecs`  int(11) NOT NULL DEFAULT 0 ,
`animprogress`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`state`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`isActive`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`protect_anti_doublet`  int(255) NULL DEFAULT NULL ,
`scale`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Gameobject System'
AUTO_INCREMENT=6017496

;

-- ----------------------------
-- Table structure for `gameobject_involvedrelation`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_involvedrelation`;
CREATE TABLE `gameobject_involvedrelation` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`id`, `quest`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `gameobject_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_loot_template`;
CREATE TABLE `gameobject_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `gameobject_questrelation`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_questrelation`;
CREATE TABLE `gameobject_questrelation` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`id`, `quest`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `gameobject_rp`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_rp`;
CREATE TABLE `gameobject_rp` (
`guid`  int(11) NULL DEFAULT NULL ,
`duration`  int(11) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `gameobject_scripts`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_scripts`;
CREATE TABLE `gameobject_scripts` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`delay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`command`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dataint`  int(11) NOT NULL DEFAULT 0 ,
`x`  float NOT NULL DEFAULT 0 ,
`y`  float NOT NULL DEFAULT 0 ,
`z`  float NOT NULL DEFAULT 0 ,
`o`  float NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `gameobject_template`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_template`;
CREATE TABLE `gameobject_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`displayId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`IconName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castBarCaption`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`unk1`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`faction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`size`  float NOT NULL DEFAULT 1 ,
`questItem1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`questItem6`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`data0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data1`  int(11) NOT NULL DEFAULT '-1' ,
`data2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data6`  int(11) NOT NULL DEFAULT '-1' ,
`data7`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data8`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data9`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data10`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data11`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data12`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data13`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data14`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data15`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data16`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data17`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data18`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data19`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data20`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data21`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data22`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data23`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data24`  int(10) NOT NULL DEFAULT 0 ,
`data25`  int(10) NOT NULL DEFAULT 0 ,
`data26`  int(10) NOT NULL DEFAULT 0 ,
`data27`  int(10) NOT NULL DEFAULT 0 ,
`data28`  int(10) NOT NULL DEFAULT 0 ,
`data29`  int(10) NOT NULL DEFAULT 0 ,
`data30`  int(10) NOT NULL DEFAULT 0 ,
`data31`  int(10) NOT NULL DEFAULT 0 ,
`unkInt32`  int(10) NOT NULL DEFAULT 0 ,
`AIName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`ScriptName`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`WDBVerified`  smallint(6) NULL DEFAULT 1 ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Gameobject System'

;

-- ----------------------------
-- Table structure for `gossip_menu`
-- ----------------------------
DROP TABLE IF EXISTS `gossip_menu`;
CREATE TABLE `gossip_menu` (
`entry`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`text_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`entry`, `text_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `gossip_menu_option`
-- ----------------------------
DROP TABLE IF EXISTS `gossip_menu_option`;
CREATE TABLE `gossip_menu_option` (
`menu_id`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`id`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`option_icon`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`option_text`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_id`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`npc_option_npcflag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`action_menu_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`action_poi_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`box_coded`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`box_money`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`box_text`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`menu_id`, `id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_challenge_reward`
-- ----------------------------
DROP TABLE IF EXISTS `guild_challenge_reward`;
CREATE TABLE `guild_challenge_reward` (
`Type`  int(10) UNSIGNED NULL DEFAULT NULL ,
`Experience`  int(10) UNSIGNED NULL DEFAULT NULL ,
`Gold`  int(10) UNSIGNED NULL DEFAULT NULL ,
`Gold2`  int(10) UNSIGNED NULL DEFAULT NULL ,
`Count`  int(10) UNSIGNED NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `guild_finder_applicant`
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_applicant`;
CREATE TABLE `guild_finder_applicant` (
`guildId`  int(10) UNSIGNED NULL DEFAULT NULL ,
`playerGuid`  int(10) UNSIGNED NULL DEFAULT NULL ,
`availability`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`classRole`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`interests`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`comment`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`submitTime`  int(10) UNSIGNED NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `guild_finder_guild_settings`
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_guild_settings`;
CREATE TABLE `guild_finder_guild_settings` (
`guildId`  int(10) UNSIGNED NOT NULL ,
`availability`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`classRoles`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`interests`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`listed`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`guildId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `guild_rewards`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rewards`;
CREATE TABLE `guild_rewards` (
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`standing`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`racemask`  int(11) NULL DEFAULT 0 ,
`price`  bigint(20) UNSIGNED NULL DEFAULT 0 ,
`achievement`  int(10) UNSIGNED NULL DEFAULT 0 ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_xp_for_level`
-- ----------------------------
DROP TABLE IF EXISTS `guild_xp_for_level`;
CREATE TABLE `guild_xp_for_level` (
`lvl`  int(11) UNSIGNED NOT NULL ,
`xp_for_next_level`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`lvl`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `hotfix_data`
-- ----------------------------
DROP TABLE IF EXISTS `hotfix_data`;
CREATE TABLE `hotfix_data` (
`entry`  int(10) UNSIGNED NOT NULL ,
`type`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`hotfixDate`  datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`entry`, `type`, `hotfixDate`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `instance_encounters`
-- ----------------------------
DROP TABLE IF EXISTS `instance_encounters`;
CREATE TABLE `instance_encounters` (
`entry`  int(10) UNSIGNED NOT NULL COMMENT 'Unique entry from DungeonEncounter.dbc' ,
`creditType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`creditEntry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`lastEncounterDungeon`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'If not 0, LfgDungeon.dbc entry for the instance it is last encounter in' ,
`comment`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`entry`, `lastEncounterDungeon`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `instance_template`
-- ----------------------------
DROP TABLE IF EXISTS `instance_template`;
CREATE TABLE `instance_template` (
`map`  smallint(5) UNSIGNED NOT NULL ,
`parent`  smallint(5) UNSIGNED NOT NULL ,
`script`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`allowMount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`map`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `ip2nation`
-- ----------------------------
DROP TABLE IF EXISTS `ip2nation`;
CREATE TABLE `ip2nation` (
`ip`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`country`  char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `ip2nationcountries`
-- ----------------------------
DROP TABLE IF EXISTS `ip2nationcountries`;
CREATE TABLE `ip2nationcountries` (
`code`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`iso_code_2`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`iso_code_3`  varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`iso_country`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`country`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`lat`  float NOT NULL DEFAULT 0 ,
`lon`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`code`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='utf8_general_ci'

;

-- ----------------------------
-- Table structure for `item_enchantment_template`
-- ----------------------------
DROP TABLE IF EXISTS `item_enchantment_template`;
CREATE TABLE `item_enchantment_template` (
`entry`  mediumint(8) NULL DEFAULT NULL ,
`ench`  mediumint(8) NULL DEFAULT NULL ,
`chance`  float NULL DEFAULT NULL ,
`type`  mediumint(8) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `item_extended_cost`
-- ----------------------------
DROP TABLE IF EXISTS `item_extended_cost`;
CREATE TABLE `item_extended_cost` (
`ID`  mediumint(11) NULL DEFAULT NULL ,
`RequiredArenaSlot`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItem1`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItem2`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItem3`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItem4`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItem5`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItemCount1`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItemCount2`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItemCount3`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItemCount4`  mediumint(11) NULL DEFAULT NULL ,
`RequiredItemCount5`  mediumint(11) NULL DEFAULT NULL ,
`RequiredPersonalArenaRating`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrency1`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrency2`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrency3`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrency4`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrency5`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrencyCount1`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrencyCount2`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrencyCount3`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrencyCount4`  mediumint(11) NULL DEFAULT NULL ,
`RequiredCurrencyCount5`  mediumint(11) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `item_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_template`;
CREATE TABLE `item_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `item_script_names`
-- ----------------------------
DROP TABLE IF EXISTS `item_script_names`;
CREATE TABLE `item_script_names` (
`Id`  int(10) UNSIGNED NOT NULL ,
`ScriptName`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`Id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `item_template`
-- ----------------------------
DROP TABLE IF EXISTS `item_template`;
CREATE TABLE `item_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`subclass`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`SoundOverrideSubclass`  tinyint(3) NOT NULL DEFAULT '-1' ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`displayid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Quality`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`Flags`  bigint(20) NOT NULL DEFAULT 0 ,
`FlagsExtra`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Unk430_1`  float UNSIGNED NOT NULL DEFAULT 1 ,
`Unk430_2`  float NOT NULL DEFAULT 1 ,
`BuyCount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`BuyPrice`  bigint(20) NOT NULL DEFAULT 0 ,
`SellPrice`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`InventoryType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`AllowableClass`  int(11) NOT NULL DEFAULT '-1' ,
`AllowableRace`  int(11) NOT NULL DEFAULT '-1' ,
`ItemLevel`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredLevel`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSkill`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSkillRank`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`requiredspell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`requiredhonorrank`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCityRank`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredReputationFaction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredReputationRank`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`maxcount`  int(11) NOT NULL DEFAULT 0 ,
`stackable`  int(11) NULL DEFAULT 1 ,
`ContainerSlots`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_type1`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value1`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_1`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_1`  int(11) NOT NULL DEFAULT 0 ,
`stat_type2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value2`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_2`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_2`  int(11) NOT NULL DEFAULT 0 ,
`stat_type3`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value3`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_3`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_3`  int(11) NOT NULL DEFAULT 0 ,
`stat_type4`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value4`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_4`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_4`  int(11) NOT NULL DEFAULT 0 ,
`stat_type5`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_unk1_5`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_5`  int(11) NOT NULL DEFAULT 0 ,
`stat_type6`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value6`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_6`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_6`  int(11) NOT NULL DEFAULT 0 ,
`stat_type7`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value7`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_7`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_7`  int(11) NOT NULL DEFAULT 0 ,
`stat_type8`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value8`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_8`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_8`  int(11) NOT NULL DEFAULT 0 ,
`stat_type9`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value9`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_9`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_9`  int(11) NOT NULL DEFAULT 0 ,
`stat_type10`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stat_value10`  smallint(6) NOT NULL DEFAULT 0 ,
`stat_unk1_10`  int(11) NOT NULL DEFAULT 0 ,
`stat_unk2_10`  int(11) NOT NULL DEFAULT 0 ,
`ScalingStatDistribution`  smallint(6) NOT NULL DEFAULT 0 ,
`DamageType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`delay`  smallint(5) UNSIGNED NOT NULL DEFAULT 1000 ,
`RangedModRange`  float NOT NULL DEFAULT 0 ,
`spellid_1`  mediumint(8) NOT NULL DEFAULT 0 ,
`spelltrigger_1`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcharges_1`  smallint(6) NULL DEFAULT NULL ,
`spellcooldown_1`  int(11) NOT NULL DEFAULT '-1' ,
`spellcategory_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcategorycooldown_1`  int(11) NOT NULL DEFAULT '-1' ,
`spellid_2`  mediumint(8) NOT NULL DEFAULT 0 ,
`spelltrigger_2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcharges_2`  smallint(6) NULL DEFAULT NULL ,
`spellcooldown_2`  int(11) NOT NULL DEFAULT '-1' ,
`spellcategory_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcategorycooldown_2`  int(11) NOT NULL DEFAULT '-1' ,
`spellid_3`  mediumint(8) NOT NULL DEFAULT 0 ,
`spelltrigger_3`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcharges_3`  smallint(6) NULL DEFAULT NULL ,
`spellcooldown_3`  int(11) NOT NULL DEFAULT '-1' ,
`spellcategory_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcategorycooldown_3`  int(11) NOT NULL DEFAULT '-1' ,
`spellid_4`  mediumint(8) NOT NULL DEFAULT 0 ,
`spelltrigger_4`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcharges_4`  smallint(6) NULL DEFAULT NULL ,
`spellcooldown_4`  int(11) NOT NULL DEFAULT '-1' ,
`spellcategory_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcategorycooldown_4`  int(11) NOT NULL DEFAULT '-1' ,
`spellid_5`  mediumint(8) NOT NULL DEFAULT 0 ,
`spelltrigger_5`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcharges_5`  smallint(6) NULL DEFAULT NULL ,
`spellcooldown_5`  int(11) NOT NULL DEFAULT '-1' ,
`spellcategory_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`spellcategorycooldown_5`  int(11) NOT NULL DEFAULT '-1' ,
`bonding`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`PageText`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`LanguageID`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`PageMaterial`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`startquest`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`lockid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Material`  tinyint(4) NOT NULL DEFAULT 0 ,
`sheath`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RandomProperty`  mediumint(8) NOT NULL DEFAULT 0 ,
`RandomSuffix`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`itemset`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`MaxDurability`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`area`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Map`  smallint(6) NOT NULL DEFAULT 0 ,
`BagFamily`  mediumint(8) NOT NULL DEFAULT 0 ,
`TotemCategory`  mediumint(8) NOT NULL DEFAULT 0 ,
`socketColor_1`  tinyint(4) NOT NULL DEFAULT 0 ,
`socketContent_1`  mediumint(8) NOT NULL DEFAULT 0 ,
`socketColor_2`  tinyint(4) NOT NULL DEFAULT 0 ,
`socketContent_2`  mediumint(8) NOT NULL DEFAULT 0 ,
`socketColor_3`  tinyint(4) NOT NULL DEFAULT 0 ,
`socketContent_3`  mediumint(8) NOT NULL DEFAULT 0 ,
`socketBonus`  mediumint(8) NOT NULL DEFAULT 0 ,
`GemProperties`  mediumint(8) NOT NULL DEFAULT 0 ,
`ArmorDamageModifier`  float NOT NULL DEFAULT 0 ,
`duration`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ItemLimitCategory`  smallint(6) NOT NULL DEFAULT 0 ,
`HolidayId`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`StatScalingFactor`  float NOT NULL DEFAULT 0 ,
`CurrencySubstitutionId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`CurrencySubstitutionCount`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`flagsCustom`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`WDBVerified`  smallint(6) NULL DEFAULT 1 ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item System'

;

-- ----------------------------
-- Table structure for `item_template_addon`
-- ----------------------------
DROP TABLE IF EXISTS `item_template_addon`;
CREATE TABLE `item_template_addon` (
`Id`  int(10) UNSIGNED NOT NULL ,
`FlagsCu`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`FoodType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`MinMoneyLoot`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MaxMoneyLoot`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellPPMChance`  float UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`Id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `lfg_dungeon_rewards`
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeon_rewards`;
CREATE TABLE `lfg_dungeon_rewards` (
`dungeonId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Dungeon entry from dbc' ,
`maxLevel`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Max level at which this reward is rewarded' ,
`firstQuestId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest id with rewards for first dungeon this day' ,
`firstMoneyVar`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Money multiplier for completing the dungeon first time in a day with less players than max' ,
`firstXPVar`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Experience multiplier for completing the dungeon first time in a day with less players than max' ,
`otherQuestId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest id with rewards for Nth dungeon this day' ,
`otherMoneyVar`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Money multiplier for completing the dungeon Nth time in a day with less players than max' ,
`otherXPVar`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Experience multiplier for completing the dungeon Nth time in a day with less players than max' ,
PRIMARY KEY (`dungeonId`, `maxLevel`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `lfg_entrances`
-- ----------------------------
DROP TABLE IF EXISTS `lfg_entrances`;
CREATE TABLE `lfg_entrances` (
`dungeonId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Unique id from LFGDungeons.dbc' ,
`name`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`dungeonId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `linked_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `linked_respawn`;
CREATE TABLE `linked_respawn` (
`guid`  int(10) UNSIGNED NOT NULL COMMENT 'dependent creature' ,
`linkedGuid`  int(10) UNSIGNED NOT NULL COMMENT 'master creature' ,
`linkType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `linkType`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature Respawn Link System'

;

-- ----------------------------
-- Table structure for `locales_achievement_reward`
-- ----------------------------
DROP TABLE IF EXISTS `locales_achievement_reward`;
CREATE TABLE `locales_achievement_reward` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`subject_loc1`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc2`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc3`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc4`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc5`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc6`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc7`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc8`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc9`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`subject_loc10`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`text_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_creature`
-- ----------------------------
DROP TABLE IF EXISTS `locales_creature`;
CREATE TABLE `locales_creature` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`name_loc1`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc2`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc3`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc4`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc5`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc6`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc7`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc8`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc9`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`name_loc10`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc1`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc2`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc3`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc4`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc5`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc6`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc7`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc8`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc9`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`subname_loc10`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_creature_text`
-- ----------------------------
DROP TABLE IF EXISTS `locales_creature_text`;
CREATE TABLE `locales_creature_text` (
`entry`  int(10) UNSIGNED NOT NULL ,
`textGroup`  tinyint(3) UNSIGNED NOT NULL ,
`id`  int(10) UNSIGNED NOT NULL ,
`text_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`, `textGroup`, `id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_gameobject`
-- ----------------------------
DROP TABLE IF EXISTS `locales_gameobject`;
CREATE TABLE `locales_gameobject` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`name_loc1`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc2`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc3`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc4`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc5`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc6`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc7`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc8`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc9`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc10`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc1`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc2`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc3`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc4`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc5`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc6`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc7`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc8`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc9`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`castbarcaption_loc10`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_gossip_menu_option`
-- ----------------------------
DROP TABLE IF EXISTS `locales_gossip_menu_option`;
CREATE TABLE `locales_gossip_menu_option` (
`menu_id`  smallint(6) UNSIGNED NOT NULL DEFAULT 0 ,
`id`  smallint(6) UNSIGNED NOT NULL DEFAULT 0 ,
`option_text_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`option_text_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`box_text_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`menu_id`, `id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_item`
-- ----------------------------
DROP TABLE IF EXISTS `locales_item`;
CREATE TABLE `locales_item` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`name_loc1`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc2`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc3`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc4`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc5`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc6`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc7`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc8`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`name_loc9`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`name_loc10`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`description_loc1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc3`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc4`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc5`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc6`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc7`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc8`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc9`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description_loc10`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_npc_text`
-- ----------------------------
DROP TABLE IF EXISTS `locales_npc_text`;
CREATE TABLE `locales_npc_text` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Text0_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text0_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text1_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text2_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text3_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text4_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text5_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text6_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text7_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text8_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_0_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text9_1_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_page_text`
-- ----------------------------
DROP TABLE IF EXISTS `locales_page_text`;
CREATE TABLE `locales_page_text` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Text_loc1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc2`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc3`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc4`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc5`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc6`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc7`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc8`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc9`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Text_loc10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_points_of_interest`
-- ----------------------------
DROP TABLE IF EXISTS `locales_points_of_interest`;
CREATE TABLE `locales_points_of_interest` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`icon_name_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`icon_name_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `locales_quest`
-- ----------------------------
DROP TABLE IF EXISTS `locales_quest`;
CREATE TABLE `locales_quest` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Title_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Title_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText1_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTextWindow_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `mail_level_reward`
-- ----------------------------
DROP TABLE IF EXISTS `mail_level_reward`;
CREATE TABLE `mail_level_reward` (
`level`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`raceMask`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`mailTemplateId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`senderEntry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`level`, `raceMask`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Mail System'

;

-- ----------------------------
-- Table structure for `mail_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `mail_loot_template`;
CREATE TABLE `mail_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `maxsettings_rp`
-- ----------------------------
DROP TABLE IF EXISTS `maxsettings_rp`;
CREATE TABLE `maxsettings_rp` (
`type`  int(11) NULL DEFAULT NULL ,
`maxsetting`  int(11) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `milling_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `milling_loot_template`;
CREATE TABLE `milling_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `npc_spellclick_spells`
-- ----------------------------
DROP TABLE IF EXISTS `npc_spellclick_spells`;
CREATE TABLE `npc_spellclick_spells` (
`npc_entry`  int(10) UNSIGNED NOT NULL COMMENT 'reference to creature_template' ,
`spell_id`  int(10) UNSIGNED NOT NULL COMMENT 'spell which should be casted ' ,
`cast_flags`  tinyint(3) UNSIGNED NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit' ,
`user_type`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click' ,
PRIMARY KEY (`npc_entry`, `spell_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `npc_text`
-- ----------------------------
DROP TABLE IF EXISTS `npc_text`;
CREATE TABLE `npc_text` (
`ID`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`text0_0`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text0_1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lang0`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`prob0`  float NOT NULL DEFAULT 0 ,
`em0_0`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em0_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em0_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em0_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em0_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em0_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`text1_0`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text1_1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lang1`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`prob1`  float NOT NULL DEFAULT 0 ,
`em1_0`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em1_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em1_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em1_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em1_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em1_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`text2_0`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text2_1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lang2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`prob2`  float NOT NULL DEFAULT 0 ,
`em2_0`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em2_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em2_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em2_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em2_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em2_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`text3_0`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text3_1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lang3`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`prob3`  float NOT NULL DEFAULT 0 ,
`em3_0`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em3_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em3_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em3_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em3_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em3_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`text4_0`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text4_1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lang4`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`prob4`  float NOT NULL DEFAULT 0 ,
`em4_0`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em4_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em4_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em4_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em4_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em4_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`text5_0`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text5_1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lang5`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`prob5`  float NOT NULL DEFAULT 0 ,
`em5_0`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em5_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em5_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em5_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em5_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em5_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`text6_0`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text6_1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lang6`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`prob6`  float NOT NULL DEFAULT 0 ,
`em6_0`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em6_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em6_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em6_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em6_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em6_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`text7_0`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`text7_1`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lang7`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`prob7`  float NOT NULL DEFAULT 0 ,
`em7_0`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em7_1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em7_2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em7_3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em7_4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`em7_5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`WDBVerified`  smallint(5) NULL DEFAULT 1 ,
PRIMARY KEY (`ID`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `npc_trainer`
-- ----------------------------
DROP TABLE IF EXISTS `npc_trainer`;
CREATE TABLE `npc_trainer` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`spell`  mediumint(8) NOT NULL DEFAULT 0 ,
`spellcost`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`reqskill`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`reqskillvalue`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`reqlevel`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`entry`, `spell`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `npc_vendor`
-- ----------------------------
DROP TABLE IF EXISTS `npc_vendor`;
CREATE TABLE `npc_vendor` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  smallint(6) NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`maxcount`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`incrtime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ExtendedCost`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`, `ExtendedCost`, `type`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Npc System'

;

-- ----------------------------
-- Table structure for `outdoorpvp_template`
-- ----------------------------
DROP TABLE IF EXISTS `outdoorpvp_template`;
CREATE TABLE `outdoorpvp_template` (
`TypeId`  tinyint(3) UNSIGNED NOT NULL ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`TypeId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='OutdoorPvP Templates'

;

-- ----------------------------
-- Table structure for `page_text`
-- ----------------------------
DROP TABLE IF EXISTS `page_text`;
CREATE TABLE `page_text` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`text`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`next_page`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`WDBVerified`  smallint(6) NULL DEFAULT 1 ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item System'

;

-- ----------------------------
-- Table structure for `personal_rates_table`
-- ----------------------------
DROP TABLE IF EXISTS `personal_rates_table`;
CREATE TABLE `personal_rates_table` (
`guid`  int(11) NULL DEFAULT NULL ,
`rate_xp`  int(11) NULL DEFAULT NULL ,
`rate_honor`  int(11) NULL DEFAULT NULL ,
`rate_gold`  int(11) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`caster_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`effect_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`recalculate_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stackcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`maxduration`  int(11) NOT NULL DEFAULT 0 ,
`remaintime`  int(11) NOT NULL DEFAULT 0 ,
`remaincharges`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`, `effect_mask`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Table structure for `pet_aura_effect`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura_effect`;
CREATE TABLE `pet_aura_effect` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`effect`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`amount`  int(11) NOT NULL DEFAULT 0 ,
`baseamount`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `slot`, `effect`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `pet_levelstats`
-- ----------------------------
DROP TABLE IF EXISTS `pet_levelstats`;
CREATE TABLE `pet_levelstats` (
`creature_entry`  mediumint(8) UNSIGNED NOT NULL ,
`level`  tinyint(3) UNSIGNED NOT NULL ,
`hp`  mediumint(8) UNSIGNED NOT NULL ,
`mana`  mediumint(8) UNSIGNED NOT NULL ,
`armor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`str`  smallint(5) UNSIGNED NOT NULL ,
`agi`  smallint(5) UNSIGNED NOT NULL ,
`sta`  smallint(5) UNSIGNED NOT NULL ,
`inte`  smallint(5) UNSIGNED NOT NULL ,
`spi`  smallint(5) UNSIGNED NOT NULL ,
PRIMARY KEY (`creature_entry`, `level`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Stores pet levels stats.'

;

-- ----------------------------
-- Table structure for `pet_name_generation`
-- ----------------------------
DROP TABLE IF EXISTS `pet_name_generation`;
CREATE TABLE `pet_name_generation` (
`id`  mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT ,
`word`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`half`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=314

;

-- ----------------------------
-- Table structure for `phase_definitions`
-- ----------------------------
DROP TABLE IF EXISTS `phase_definitions`;
CREATE TABLE `phase_definitions` (
`zoneId`  mediumint(7) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT ,
`phasemask`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`phaseId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`terrainswapmap`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`zoneId`, `entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `pickpocketing_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `pickpocketing_loot_template`;
CREATE TABLE `pickpocketing_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `player_factionchange_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_achievement`;
CREATE TABLE `player_factionchange_achievement` (
`alliance_id`  int(10) UNSIGNED NOT NULL ,
`horde_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`alliance_id`, `horde_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `player_factionchange_items`
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_items`;
CREATE TABLE `player_factionchange_items` (
`race_A`  int(10) UNSIGNED NOT NULL ,
`alliance_id`  int(10) UNSIGNED NOT NULL ,
`commentA`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`race_H`  int(10) UNSIGNED NOT NULL ,
`horde_id`  int(10) UNSIGNED NOT NULL ,
`commentH`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`alliance_id`, `horde_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `player_factionchange_reputations`
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_reputations`;
CREATE TABLE `player_factionchange_reputations` (
`alliance_id`  int(10) UNSIGNED NOT NULL ,
`horde_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`alliance_id`, `horde_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `player_factionchange_spells`
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_spells`;
CREATE TABLE `player_factionchange_spells` (
`alliance_id`  int(10) UNSIGNED NOT NULL ,
`horde_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`alliance_id`, `horde_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `player_factionchange_titles`
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_titles`;
CREATE TABLE `player_factionchange_titles` (
`alliance_id`  int(8) NOT NULL ,
`horde_id`  int(8) NOT NULL ,
PRIMARY KEY (`alliance_id`, `horde_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `player_levelstats`
-- ----------------------------
DROP TABLE IF EXISTS `player_levelstats`;
CREATE TABLE `player_levelstats` (
`race`  tinyint(3) UNSIGNED NOT NULL ,
`class`  tinyint(3) UNSIGNED NOT NULL ,
`level`  tinyint(3) UNSIGNED NOT NULL ,
`str`  tinyint(3) UNSIGNED NOT NULL ,
`agi`  tinyint(3) UNSIGNED NOT NULL ,
`sta`  tinyint(3) UNSIGNED NOT NULL ,
`inte`  tinyint(3) UNSIGNED NOT NULL ,
`spi`  tinyint(3) UNSIGNED NOT NULL ,
PRIMARY KEY (`race`, `class`, `level`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Stores levels stats.'

;

-- ----------------------------
-- Table structure for `player_xp_for_level`
-- ----------------------------
DROP TABLE IF EXISTS `player_xp_for_level`;
CREATE TABLE `player_xp_for_level` (
`lvl`  tinyint(3) UNSIGNED NOT NULL ,
`xp_for_next_level`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`lvl`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `playercreateinfo`
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo`;
CREATE TABLE `playercreateinfo` (
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`zone`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`race`, `class`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `playercreateinfo_action`
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_action`;
CREATE TABLE `playercreateinfo_action` (
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`button`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`action`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`race`, `class`, `button`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `playercreateinfo_item`
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_item`;
CREATE TABLE `playercreateinfo_item` (
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`itemid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`amount`  tinyint(4) NOT NULL DEFAULT 1 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `playercreateinfo_spell`
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_spell`;
CREATE TABLE `playercreateinfo_spell` (
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`Spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Note`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`race`, `class`, `Spell`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `playercreateinfo_spell_custom`
-- ----------------------------
DROP TABLE IF EXISTS `playercreateinfo_spell_custom`;
CREATE TABLE `playercreateinfo_spell_custom` (
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`Spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Note`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`race`, `class`, `Spell`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `players_reports_status`
-- ----------------------------
DROP TABLE IF EXISTS `players_reports_status`;
CREATE TABLE `players_reports_status` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`creation_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`average`  float NOT NULL DEFAULT 0 ,
`total_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`speed_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`fly_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`jump_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`waterwalk_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`teleportplane_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`climb_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `points_of_interest`
-- ----------------------------
DROP TABLE IF EXISTS `points_of_interest`;
CREATE TABLE `points_of_interest` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`x`  float NOT NULL DEFAULT 0 ,
`y`  float NOT NULL DEFAULT 0 ,
`icon`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`icon_name`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `pool_creature`
-- ----------------------------
DROP TABLE IF EXISTS `pool_creature`;
CREATE TABLE `pool_creature` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`pool_entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`chance`  float UNSIGNED NOT NULL DEFAULT 0 ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `pool_gameobject`
-- ----------------------------
DROP TABLE IF EXISTS `pool_gameobject`;
CREATE TABLE `pool_gameobject` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`pool_entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`chance`  float UNSIGNED NOT NULL DEFAULT 0 ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `pool_pool`
-- ----------------------------
DROP TABLE IF EXISTS `pool_pool`;
CREATE TABLE `pool_pool` (
`pool_id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`mother_pool`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`chance`  float NOT NULL DEFAULT 0 ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`pool_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `pool_quest`
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest`;
CREATE TABLE `pool_quest` (
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`pool_entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `pool_template`
-- ----------------------------
DROP TABLE IF EXISTS `pool_template`;
CREATE TABLE `pool_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Pool entry' ,
`max_limit`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Max number of objects (0) is no limit' ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `prospecting_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `prospecting_loot_template`;
CREATE TABLE `prospecting_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `quest_end_scripts`
-- ----------------------------
DROP TABLE IF EXISTS `quest_end_scripts`;
CREATE TABLE `quest_end_scripts` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`delay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`command`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dataint`  int(11) NOT NULL DEFAULT 0 ,
`x`  float NOT NULL DEFAULT 0 ,
`y`  float NOT NULL DEFAULT 0 ,
`z`  float NOT NULL DEFAULT 0 ,
`o`  float NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `quest_poi`
-- ----------------------------
DROP TABLE IF EXISTS `quest_poi`;
CREATE TABLE `quest_poi` (
`questId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`objIndex`  int(11) NOT NULL DEFAULT 0 ,
`mapid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`WorldMapAreaId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unk2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unk3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unk4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`FloorId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`questId`, `id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `quest_poi_points`
-- ----------------------------
DROP TABLE IF EXISTS `quest_poi_points`;
CREATE TABLE `quest_poi_points` (
`questId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`idx`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`x`  int(11) NOT NULL DEFAULT 0 ,
`y`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`questId`, `id`, `idx`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `quest_start_scripts`
-- ----------------------------
DROP TABLE IF EXISTS `quest_start_scripts`;
CREATE TABLE `quest_start_scripts` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`delay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`command`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dataint`  int(11) NOT NULL DEFAULT 0 ,
`x`  float NOT NULL DEFAULT 0 ,
`y`  float NOT NULL DEFAULT 0 ,
`z`  float NOT NULL DEFAULT 0 ,
`o`  float NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `quest_template`
-- ----------------------------
DROP TABLE IF EXISTS `quest_template`;
CREATE TABLE `quest_template` (
`Id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Method`  tinyint(3) UNSIGNED NOT NULL DEFAULT 2 ,
`Level`  smallint(3) NOT NULL DEFAULT 1 ,
`MinLevel`  smallint(6) NOT NULL DEFAULT 0 ,
`MaxLevel`  smallint(6) NOT NULL DEFAULT 0 ,
`ZoneOrSort`  smallint(6) NOT NULL DEFAULT 0 ,
`Type`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`SuggestedPlayers`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`LimitTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredTeam`  tinyint(1) NOT NULL DEFAULT '-1' ,
`RequiredClasses`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredRaces`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`PackageID`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardMoney`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSkillId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSkillPoints`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredFactionId1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredFactionId2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredFactionValue1`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredFactionValue2`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredFactionKills`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredFactionKillsCount`  smallint(5) NOT NULL DEFAULT 0 ,
`RequiredPetBattleWith`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredMinRepFaction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredMaxRepFaction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredMinRepValue`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredMaxRepValue`  mediumint(8) NOT NULL DEFAULT 0 ,
`PrevQuestId`  mediumint(8) NOT NULL DEFAULT 0 ,
`NextQuestId`  mediumint(8) NOT NULL DEFAULT 0 ,
`ExclusiveGroup`  mediumint(8) NOT NULL DEFAULT 0 ,
`NextQuestIdChain`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardXPId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardXPId2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardOrRequiredMoney`  int(11) NOT NULL DEFAULT 0 ,
`RewardMoneyMaxLevel`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardSpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardSpellCast`  int(11) NOT NULL DEFAULT 0 ,
`RewardHonor`  int(11) NOT NULL DEFAULT 0 ,
`RewardHonorMultiplier`  float NOT NULL DEFAULT 1 ,
`RewardMailTemplateId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardMailDelay`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`SourceItemId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`SourceItemCount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`SourceSpellId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Flags2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpecialFlags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`MinimapTargetMark`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardTitleId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredPlayerKills`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardTalents`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardArenaPoints`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardSkillId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardSkillPoints`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardReputationMask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`QuestGiverPortrait`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`QuestTurnInPortrait`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemId1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemId2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemId3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemId4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId5`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId6`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount6`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardFactionId1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionId2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionId3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionId4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionId5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionValueId1`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueId2`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueId3`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueId4`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueId5`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride1`  int(11) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride2`  int(11) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride3`  int(11) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride4`  int(11) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride5`  int(11) NOT NULL DEFAULT 0 ,
`PointMapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`PointX`  float NOT NULL DEFAULT 0 ,
`PointY`  float NOT NULL DEFAULT 0 ,
`PointOption`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Title`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequiredNpcOrGo1`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo2`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo3`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo4`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo5`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo6`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo7`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo8`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo9`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo10`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount5`  smallint(5) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount6`  smallint(5) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount7`  smallint(5) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount8`  smallint(5) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount9`  smallint(5) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount10`  smallint(5) NOT NULL DEFAULT 0 ,
`RequiredSourceItemId1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemId2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemId3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemId4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId5`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId6`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId7`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId8`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId9`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId10`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount6`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount7`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount8`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount9`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount10`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast5`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast6`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ObjectiveText1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RewardCurrencyId1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyId2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyId3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyId4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyCount1`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyCount2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyCount3`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyCount4`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyId1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyId2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyId3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyId4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyCount1`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyCount2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyCount3`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyCount4`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`QuestGiverTextWindow`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`SoundAccept`  smallint(5) UNSIGNED NOT NULL DEFAULT 890 ,
`SoundTurnIn`  smallint(5) UNSIGNED NOT NULL DEFAULT 878 ,
`DetailsEmote1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmote2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmote3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmote4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmoteDelay1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmoteDelay2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmoteDelay3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmoteDelay4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EmoteOnIncomplete`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`EmoteOnComplete`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmote1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmote2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmote3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmote4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmoteDelay1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmoteDelay2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmoteDelay3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmoteDelay4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`StartScript`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`CompleteScript`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`WDBVerified`  smallint(6) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`Id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Quest System'

;

-- ----------------------------
-- Table structure for `quest_template_copy`
-- ----------------------------
DROP TABLE IF EXISTS `quest_template_copy`;
CREATE TABLE `quest_template_copy` (
`Id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Method`  tinyint(3) UNSIGNED NOT NULL DEFAULT 2 ,
`Level`  smallint(3) NOT NULL DEFAULT 1 ,
`MinLevel`  smallint(6) NOT NULL DEFAULT 0 ,
`MaxLevel`  smallint(6) NOT NULL DEFAULT 0 ,
`ZoneOrSort`  smallint(6) NOT NULL DEFAULT 0 ,
`Type`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`SuggestedPlayers`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`LimitTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredClasses`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredRaces`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSkillId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSkillPoints`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredFactionId1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredFactionId2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredFactionValue1`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredFactionValue2`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredMinRepFaction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredMaxRepFaction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredMinRepValue`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredMaxRepValue`  mediumint(8) NOT NULL DEFAULT 0 ,
`PrevQuestId`  mediumint(8) NOT NULL DEFAULT 0 ,
`NextQuestId`  mediumint(8) NOT NULL DEFAULT 0 ,
`ExclusiveGroup`  mediumint(8) NOT NULL DEFAULT 0 ,
`NextQuestIdChain`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardXPId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardOrRequiredMoney`  int(11) NOT NULL DEFAULT 0 ,
`RewardMoneyMaxLevel`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardSpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardSpellCast`  int(11) NOT NULL DEFAULT 0 ,
`RewardHonor`  int(11) NOT NULL DEFAULT 0 ,
`RewardHonorMultiplier`  float NOT NULL DEFAULT 1 ,
`RewardMailTemplateId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardMailDelay`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`SourceItemId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`SourceItemCount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`SourceSpellId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpecialFlags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`MinimapTargetMark`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardTitleId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredPlayerKills`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardTalents`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardArenaPoints`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardSkillId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardSkillPoints`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardReputationMask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`QuestGiverPortrait`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`QuestTurnInPortrait`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemId1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemId2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemId3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemId4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardItemCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId5`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemId6`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardChoiceItemCount6`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardFactionId1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionId2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionId3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionId4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionId5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction id from Faction.dbc in this case' ,
`RewardFactionValueId1`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueId2`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueId3`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueId4`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueId5`  mediumint(8) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride1`  int(11) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride2`  int(11) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride3`  int(11) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride4`  int(11) NOT NULL DEFAULT 0 ,
`RewardFactionValueIdOverride5`  int(11) NOT NULL DEFAULT 0 ,
`PointMapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`PointX`  float NOT NULL DEFAULT 0 ,
`PointY`  float NOT NULL DEFAULT 0 ,
`PointOption`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`Title`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Objectives`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`Details`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`EndText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`OfferRewardText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequestItemsText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`CompletedText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RequiredNpcOrGo1`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo2`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo3`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGo4`  mediumint(8) NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredNpcOrGoCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemId1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemId2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemId3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemId4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSourceItemCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId5`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemId6`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredItemCount6`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast1`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast2`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast3`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredSpellCast4`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ObjectiveText1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`ObjectiveText4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`RewardCurrencyId1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyId2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyId3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyId4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyCount1`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyCount2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyCount3`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RewardCurrencyCount4`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyId1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyId2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyId3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyId4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyCount1`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyCount2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyCount3`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`RequiredCurrencyCount4`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`QuestGiverTextWindow`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestGiverTargetName`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTextWindow`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`QuestTurnTargetName`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`SoundAccept`  smallint(5) UNSIGNED NOT NULL DEFAULT 890 ,
`SoundTurnIn`  smallint(5) UNSIGNED NOT NULL DEFAULT 878 ,
`DetailsEmote1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmote2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmote3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmote4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmoteDelay1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmoteDelay2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmoteDelay3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DetailsEmoteDelay4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EmoteOnIncomplete`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`EmoteOnComplete`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmote1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmote2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmote3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmote4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmoteDelay1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmoteDelay2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmoteDelay3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`OfferRewardEmoteDelay4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`StartScript`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`CompleteScript`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`WDBVerified`  smallint(6) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`Id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `reference_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `reference_loot_template`;
CREATE TABLE `reference_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `reputation_reward_rate`
-- ----------------------------
DROP TABLE IF EXISTS `reputation_reward_rate`;
CREATE TABLE `reputation_reward_rate` (
`faction`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_rate`  float NOT NULL DEFAULT 1 ,
`creature_rate`  float NOT NULL DEFAULT 1 ,
`spell_rate`  float NOT NULL DEFAULT 1 ,
PRIMARY KEY (`faction`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `reputation_spillover_template`
-- ----------------------------
DROP TABLE IF EXISTS `reputation_spillover_template`;
CREATE TABLE `reputation_spillover_template` (
`faction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction entry' ,
`faction1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'faction to give spillover for' ,
`rate_1`  float NOT NULL DEFAULT 0 COMMENT 'the given rep points * rate' ,
`rank_1`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'max rank,above this will not give any spillover' ,
`faction2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`rate_2`  float NOT NULL DEFAULT 0 ,
`rank_2`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`faction3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`rate_3`  float NOT NULL DEFAULT 0 ,
`rank_3`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`faction4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`rate_4`  float NOT NULL DEFAULT 0 ,
`rank_4`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`faction5`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`rate_5`  float NOT NULL DEFAULT 0 ,
`rank_5`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`faction`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Reputation spillover reputation gain'

;

-- ----------------------------
-- Table structure for `research_loot`
-- ----------------------------
DROP TABLE IF EXISTS `research_loot`;
CREATE TABLE `research_loot` (
`site_id`  mediumint(8) UNSIGNED NOT NULL ,
`x`  float NOT NULL ,
`y`  float NOT NULL ,
`z`  float NOT NULL ,
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `research_site`
-- ----------------------------
DROP TABLE IF EXISTS `research_site`;
CREATE TABLE `research_site` (
`id`  int(7) NOT NULL DEFAULT 0 ,
`position_x`  int(11) NOT NULL DEFAULT 0 ,
`position_y`  int(11) NOT NULL DEFAULT 0 ,
`zone`  smallint(5) NOT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Export of QuestPOIPoint.dbc'

;

-- ----------------------------
-- Table structure for `script_texts`
-- ----------------------------
DROP TABLE IF EXISTS `script_texts`;
CREATE TABLE `script_texts` (
`npc_entry`  mediumint(8) NOT NULL DEFAULT 0 COMMENT 'creature_template entry' ,
`entry`  mediumint(8) NOT NULL ,
`content_default`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`sound`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`language`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`emote`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`npc_entry`, `entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Script Texts'

;

-- ----------------------------
-- Table structure for `script_waypoint`
-- ----------------------------
DROP TABLE IF EXISTS `script_waypoint`;
CREATE TABLE `script_waypoint` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'creature_template entry' ,
`pointid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`location_x`  float NOT NULL DEFAULT 0 ,
`location_y`  float NOT NULL DEFAULT 0 ,
`location_z`  float NOT NULL DEFAULT 0 ,
`waittime`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'waittime in millisecs' ,
`point_comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`, `pointid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Script Creature waypoints'

;

-- ----------------------------
-- Table structure for `shop_item`
-- ----------------------------
DROP TABLE IF EXISTS `shop_item`;
CREATE TABLE `shop_item` (
`id`  mediumint(8) NOT NULL AUTO_INCREMENT ,
`category_id`  mediumint(8) NULL DEFAULT NULL ,
`item_id`  mediumint(8) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Table structure for `skill_discovery_template`
-- ----------------------------
DROP TABLE IF EXISTS `skill_discovery_template`;
CREATE TABLE `skill_discovery_template` (
`spellId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'SpellId of the discoverable spell' ,
`reqSpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'spell requirement' ,
`reqSkillValue`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'skill points requirement' ,
`chance`  float NOT NULL DEFAULT 0 COMMENT 'chance to discover' ,
PRIMARY KEY (`spellId`, `reqSpell`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Skill Discovery System'

;

-- ----------------------------
-- Table structure for `skill_extra_item_template`
-- ----------------------------
DROP TABLE IF EXISTS `skill_extra_item_template`;
CREATE TABLE `skill_extra_item_template` (
`spellId`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'SpellId of the item creation spell' ,
`requiredSpecialization`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Specialization spell id' ,
`additionalCreateChance`  float NOT NULL DEFAULT 0 COMMENT 'chance to create add' ,
`additionalMaxNum`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'max num of adds' ,
PRIMARY KEY (`spellId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Skill Specialization System'

;

-- ----------------------------
-- Table structure for `skill_fishing_base_level`
-- ----------------------------
DROP TABLE IF EXISTS `skill_fishing_base_level`;
CREATE TABLE `skill_fishing_base_level` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Area identifier' ,
`skill`  smallint(6) NOT NULL DEFAULT 0 COMMENT 'Base skill level requirement' ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Fishing system'

;

-- ----------------------------
-- Table structure for `skinning_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `skinning_loot_template`;
CREATE TABLE `skinning_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `smart_scripts`
-- ----------------------------
DROP TABLE IF EXISTS `smart_scripts`;
CREATE TABLE `smart_scripts` (
`entryorguid`  int(11) NOT NULL ,
`source_type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`id`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`link`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`event_type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`event_phase_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`event_chance`  tinyint(3) UNSIGNED NOT NULL DEFAULT 100 ,
`event_flags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`event_param1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`event_param2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`event_param3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`event_param4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`action_type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`action_param1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`action_param2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`action_param3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`action_param4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`action_param5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`action_param6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`target_type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`target_param1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`target_param2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`target_param3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`target_x`  float NOT NULL DEFAULT 0 ,
`target_y`  float NOT NULL DEFAULT 0 ,
`target_z`  float NOT NULL DEFAULT 0 ,
`target_o`  float NOT NULL DEFAULT 0 ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Event Comment' ,
PRIMARY KEY (`entryorguid`, `source_type`, `id`, `link`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_area`
-- ----------------------------
DROP TABLE IF EXISTS `spell_area`;
CREATE TABLE `spell_area` (
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`area`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_start`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_end`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`aura_spell`  mediumint(8) NOT NULL DEFAULT 0 ,
`racemask`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`gender`  tinyint(3) UNSIGNED NOT NULL DEFAULT 2 ,
`autocast`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_start_status`  int(11) UNSIGNED NOT NULL DEFAULT 64 ,
`quest_end_status`  int(11) UNSIGNED NOT NULL DEFAULT 11 ,
PRIMARY KEY (`spell`, `area`, `quest_start`, `aura_spell`, `racemask`, `gender`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_bonus_data`
-- ----------------------------
DROP TABLE IF EXISTS `spell_bonus_data`;
CREATE TABLE `spell_bonus_data` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`direct_bonus`  float NOT NULL DEFAULT 0 ,
`dot_bonus`  float NOT NULL DEFAULT 0 ,
`ap_bonus`  float NOT NULL DEFAULT 0 ,
`ap_dot_bonus`  float NOT NULL DEFAULT 0 ,
`comments`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_dbc`
-- ----------------------------
DROP TABLE IF EXISTS `spell_dbc`;
CREATE TABLE `spell_dbc` (
`Id`  int(10) UNSIGNED NOT NULL ,
`Dispel`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Mechanic`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Attributes`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`AttributesEx`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`AttributesEx2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`AttributesEx3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`AttributesEx4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`AttributesEx5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`AttributesEx6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`AttributesEx7`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Stances`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`StancesNot`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Targets`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`CastingTimeIndex`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`AuraInterruptFlags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ProcFlags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ProcChance`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ProcCharges`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MaxLevel`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BaseLevel`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellLevel`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DurationIndex`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`RangeIndex`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`StackAmount`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EquippedItemClass`  int(11) NOT NULL DEFAULT '-1' ,
`EquippedItemSubClassMask`  int(11) NOT NULL DEFAULT 0 ,
`EquippedItemInventoryTypeMask`  int(11) NOT NULL DEFAULT 0 ,
`Effect1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Effect2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Effect3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectDieSides1`  int(11) NOT NULL DEFAULT 0 ,
`EffectDieSides2`  int(11) NOT NULL DEFAULT 0 ,
`EffectDieSides3`  int(11) NOT NULL DEFAULT 0 ,
`EffectRealPointsPerLevel1`  float NOT NULL DEFAULT 0 ,
`EffectRealPointsPerLevel2`  float NOT NULL DEFAULT 0 ,
`EffectRealPointsPerLevel3`  float NOT NULL DEFAULT 0 ,
`EffectBasePoints1`  int(11) NOT NULL DEFAULT 0 ,
`EffectBasePoints2`  int(11) NOT NULL DEFAULT 0 ,
`EffectBasePoints3`  int(11) NOT NULL DEFAULT 0 ,
`EffectMechanic1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectMechanic2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectMechanic3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectImplicitTargetA1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectImplicitTargetA2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectImplicitTargetA3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectImplicitTargetB1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectImplicitTargetB2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectImplicitTargetB3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectRadiusIndex1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectRadiusIndex2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectRadiusIndex3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectApplyAuraName1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectApplyAuraName2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectApplyAuraName3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectAmplitude1`  int(11) NOT NULL DEFAULT 0 ,
`EffectAmplitude2`  int(11) NOT NULL DEFAULT 0 ,
`EffectAmplitude3`  int(11) NOT NULL DEFAULT 0 ,
`EffectMultipleValue1`  float NOT NULL DEFAULT 0 ,
`EffectMultipleValue2`  float NOT NULL DEFAULT 0 ,
`EffectMultipleValue3`  float NOT NULL DEFAULT 0 ,
`EffectMiscValue1`  int(11) NOT NULL DEFAULT 0 ,
`EffectMiscValue2`  int(11) NOT NULL DEFAULT 0 ,
`EffectMiscValue3`  int(11) NOT NULL DEFAULT 0 ,
`EffectMiscValueB1`  int(11) NOT NULL DEFAULT 0 ,
`EffectMiscValueB2`  int(11) NOT NULL DEFAULT 0 ,
`EffectMiscValueB3`  int(11) NOT NULL DEFAULT 0 ,
`EffectTriggerSpell1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectTriggerSpell2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectTriggerSpell3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskA1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskA2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskA3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskB1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskB2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskB3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskC1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskC2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EffectSpellClassMaskC3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MaxTargetLevel`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellFamilyName`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellFamilyFlags1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellFamilyFlags2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellFamilyFlags3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`MaxAffectedTargets`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DmgClass`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`PreventionType`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`DmgMultiplier1`  float NOT NULL DEFAULT 0 ,
`DmgMultiplier2`  float NOT NULL DEFAULT 0 ,
`DmgMultiplier3`  float NOT NULL DEFAULT 0 ,
`AreaGroupId`  int(11) NOT NULL DEFAULT 0 ,
`SchoolMask`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`Id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Custom spell.dbc entries'

;

-- ----------------------------
-- Table structure for `spell_enchant_proc_data`
-- ----------------------------
DROP TABLE IF EXISTS `spell_enchant_proc_data`;
CREATE TABLE `spell_enchant_proc_data` (
`entry`  int(10) UNSIGNED NOT NULL ,
`customChance`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`PPMChance`  float UNSIGNED NOT NULL DEFAULT 0 ,
`procEx`  int(10) UNSIGNED NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Spell enchant proc data'

;

-- ----------------------------
-- Table structure for `spell_forbidden`
-- ----------------------------
DROP TABLE IF EXISTS `spell_forbidden`;
CREATE TABLE `spell_forbidden` (
`spell_id`  int(11) UNSIGNED NOT NULL ,
`comment`  blob NULL ,
PRIMARY KEY (`spell_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `spell_group`
-- ----------------------------
DROP TABLE IF EXISTS `spell_group`;
CREATE TABLE `spell_group` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spell_id`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`, `spell_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Spell System'

;

-- ----------------------------
-- Table structure for `spell_group_stack_rules`
-- ----------------------------
DROP TABLE IF EXISTS `spell_group_stack_rules`;
CREATE TABLE `spell_group_stack_rules` (
`group_id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`stack_rule`  tinyint(3) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`group_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_learn_spell`
-- ----------------------------
DROP TABLE IF EXISTS `spell_learn_spell`;
CREATE TABLE `spell_learn_spell` (
`entry`  mediumint(8) NOT NULL ,
`SpellID`  mediumint(8) NOT NULL ,
`Active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `SpellID`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item System'

;

-- ----------------------------
-- Table structure for `spell_linked_spell`
-- ----------------------------
DROP TABLE IF EXISTS `spell_linked_spell`;
CREATE TABLE `spell_linked_spell` (
`spell_trigger`  mediumint(8) NOT NULL ,
`spell_effect`  mediumint(8) NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Spell System'

;

-- ----------------------------
-- Table structure for `spell_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `spell_loot_template`;
CREATE TABLE `spell_loot_template` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  mediumint(8) NOT NULL DEFAULT 0 ,
`ChanceOrQuestChance`  float NOT NULL DEFAULT 100 ,
`lootmode`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`groupid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mincountOrRef`  mediumint(8) NOT NULL DEFAULT 1 ,
`maxcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`entry`, `item`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Loot System'

;

-- ----------------------------
-- Table structure for `spell_pet_auras`
-- ----------------------------
DROP TABLE IF EXISTS `spell_pet_auras`;
CREATE TABLE `spell_pet_auras` (
`spell`  mediumint(8) UNSIGNED NOT NULL COMMENT 'dummy spell id' ,
`effectId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`pet`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'pet id; 0 = all' ,
`aura`  mediumint(8) UNSIGNED NOT NULL COMMENT 'pet aura id' ,
PRIMARY KEY (`spell`, `effectId`, `pet`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_phase`
-- ----------------------------
DROP TABLE IF EXISTS `spell_phase`;
CREATE TABLE `spell_phase` (
`id`  mediumint(7) UNSIGNED NOT NULL DEFAULT 0 ,
`phasemask`  bigint(20) UNSIGNED NOT NULL DEFAULT 1 ,
`terrainswapmap`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_proc`
-- ----------------------------
DROP TABLE IF EXISTS `spell_proc`;
CREATE TABLE `spell_proc` (
`spellId`  mediumint(8) NOT NULL DEFAULT 0 ,
`schoolMask`  tinyint(4) NOT NULL DEFAULT 0 ,
`spellFamilyName`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`spellFamilyMask0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spellFamilyMask1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spellFamilyMask2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`typeMask`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spellTypeMask`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spellPhaseMask`  int(11) NOT NULL DEFAULT 0 ,
`hitMask`  int(11) NOT NULL DEFAULT 0 ,
`attributesMask`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ratePerMinute`  float NOT NULL DEFAULT 0 ,
`chance`  float NOT NULL DEFAULT 0 ,
`cooldown`  float UNSIGNED NOT NULL DEFAULT 0 ,
`charges`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`spellId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_proc_event`
-- ----------------------------
DROP TABLE IF EXISTS `spell_proc_event`;
CREATE TABLE `spell_proc_event` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`SchoolMask`  tinyint(4) NOT NULL DEFAULT 0 ,
`SpellFamilyName`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellFamilyMask0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellFamilyMask1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellFamilyMask2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`SpellFamilyMask3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`procFlags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`procEx`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ppmRate`  float NOT NULL DEFAULT 0 ,
`CustomChance`  float NOT NULL DEFAULT 0 ,
`Cooldown`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_ranks`
-- ----------------------------
DROP TABLE IF EXISTS `spell_ranks`;
CREATE TABLE `spell_ranks` (
`first_spell_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spell_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rank`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`first_spell_id`, `rank`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Spell Rank Data'

;

-- ----------------------------
-- Table structure for `spell_required`
-- ----------------------------
DROP TABLE IF EXISTS `spell_required`;
CREATE TABLE `spell_required` (
`spell_id`  mediumint(8) NOT NULL DEFAULT 0 ,
`req_spell`  mediumint(8) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`spell_id`, `req_spell`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Spell Additinal Data'

;

-- ----------------------------
-- Table structure for `spell_script_names`
-- ----------------------------
DROP TABLE IF EXISTS `spell_script_names`;
CREATE TABLE `spell_script_names` (
`spell_id`  int(11) NOT NULL ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_scripts`
-- ----------------------------
DROP TABLE IF EXISTS `spell_scripts`;
CREATE TABLE `spell_scripts` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`effIndex`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`delay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`command`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`dataint`  int(11) NOT NULL DEFAULT 0 ,
`x`  float NOT NULL DEFAULT 0 ,
`y`  float NOT NULL DEFAULT 0 ,
`z`  float NOT NULL DEFAULT 0 ,
`o`  float NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spell_target_position`
-- ----------------------------
DROP TABLE IF EXISTS `spell_target_position`;
CREATE TABLE `spell_target_position` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`effIndex`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`target_map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`target_position_x`  float NOT NULL DEFAULT 0 ,
`target_position_y`  float NOT NULL DEFAULT 0 ,
`target_position_z`  float NOT NULL DEFAULT 0 ,
`target_orientation`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`, `effIndex`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Spell System'

;

-- ----------------------------
-- Table structure for `spell_threat`
-- ----------------------------
DROP TABLE IF EXISTS `spell_threat`;
CREATE TABLE `spell_threat` (
`entry`  mediumint(8) UNSIGNED NOT NULL ,
`flatMod`  int(11) NULL DEFAULT NULL ,
`pctMod`  float NOT NULL DEFAULT 1 COMMENT 'threat multiplier for damage/healing' ,
`apPctMod`  float NOT NULL DEFAULT 0 COMMENT 'additional threat bonus from attack power' ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `spelldifficulty_dbc`
-- ----------------------------
DROP TABLE IF EXISTS `spelldifficulty_dbc`;
CREATE TABLE `spelldifficulty_dbc` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`spellid0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`spellid1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`spellid2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`spellid3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `time_diff_log`
-- ----------------------------
DROP TABLE IF EXISTS `time_diff_log`;
CREATE TABLE `time_diff_log` (
`id`  int(10) NOT NULL AUTO_INCREMENT ,
`time`  int(10) UNSIGNED NULL DEFAULT 0 ,
`average`  int(10) UNSIGNED NULL DEFAULT 0 ,
`max`  int(10) UNSIGNED NULL DEFAULT 0 ,
`players`  int(10) UNSIGNED NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `transports`
-- ----------------------------
DROP TABLE IF EXISTS `transports`;
CREATE TABLE `transports` (
`guid`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`period`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`ScriptName`  char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Transports'
AUTO_INCREMENT=29

;

-- ----------------------------
-- Table structure for `trinity_string`
-- ----------------------------
DROP TABLE IF EXISTS `trinity_string`;
CREATE TABLE `trinity_string` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`content_default`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content_loc1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc4`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc5`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc6`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc7`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc8`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc9`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`content_loc10`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `vehicle_accessory`
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_accessory`;
CREATE TABLE `vehicle_accessory` (
`guid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`accessory_entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`seat_id`  tinyint(4) NOT NULL DEFAULT 0 ,
`minion`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`summontype`  tinyint(3) UNSIGNED NOT NULL DEFAULT 6 COMMENT 'see enum TempSummonType' ,
`summontimer`  int(10) UNSIGNED NOT NULL DEFAULT 30000 COMMENT 'timer, only relevant for certain summontypes' ,
PRIMARY KEY (`guid`, `seat_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `vehicle_template_accessory`
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_template_accessory`;
CREATE TABLE `vehicle_template_accessory` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`accessory_entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`seat_id`  tinyint(4) NOT NULL DEFAULT 0 ,
`minion`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`description`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`summontype`  tinyint(3) UNSIGNED NOT NULL DEFAULT 6 COMMENT 'see enum TempSummonType' ,
`summontimer`  int(10) UNSIGNED NOT NULL DEFAULT 30000 COMMENT 'timer, only relevant for certain summontypes' ,
PRIMARY KEY (`entry`, `seat_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `version`
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
`core_version`  varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Core revision dumped at startup.' ,
`core_revision`  varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`db_version`  varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Version of world DB.' ,
`cache_id`  int(11) NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Version Notes'

;

-- ----------------------------
-- Table structure for `warden_checks`
-- ----------------------------
DROP TABLE IF EXISTS `warden_checks`;
CREATE TABLE `warden_checks` (
`id`  smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT ,
`type`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`data`  varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`str`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`address`  int(10) UNSIGNED NULL DEFAULT NULL ,
`length`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`result`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`comment`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=787

;

-- ----------------------------
-- Table structure for `warden_data_result`
-- ----------------------------
DROP TABLE IF EXISTS `warden_data_result`;
CREATE TABLE `warden_data_result` (
`id`  int(4) NOT NULL AUTO_INCREMENT ,
`check`  int(3) NULL DEFAULT NULL ,
`data`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`str`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`address`  int(8) NULL DEFAULT NULL ,
`length`  int(2) NULL DEFAULT NULL ,
`result`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=803

;

-- ----------------------------
-- Table structure for `waypoint_data`
-- ----------------------------
DROP TABLE IF EXISTS `waypoint_data`;
CREATE TABLE `waypoint_data` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Creature GUID' ,
`point`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`delay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`move_flag`  tinyint(4) NOT NULL DEFAULT 0 ,
`action`  int(11) NOT NULL DEFAULT 0 ,
`action_chance`  smallint(6) NOT NULL DEFAULT 100 ,
`wpguid`  int(11) NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `waypoint_scripts`
-- ----------------------------
DROP TABLE IF EXISTS `waypoint_scripts`;
CREATE TABLE `waypoint_scripts` (
`id`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`delay`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`command`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`datalong2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`dataint`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`x`  float NOT NULL DEFAULT 0 ,
`y`  float NOT NULL DEFAULT 0 ,
`z`  float NOT NULL DEFAULT 0 ,
`o`  float NOT NULL DEFAULT 0 ,
`guid`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `waypoints`
-- ----------------------------
DROP TABLE IF EXISTS `waypoints`;
CREATE TABLE `waypoints` (
`entry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`pointid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`point_comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`, `pointid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Creature waypoints'

;

-- ----------------------------
-- Table structure for `zone_skip_update`
-- ----------------------------
DROP TABLE IF EXISTS `zone_skip_update`;
CREATE TABLE `zone_skip_update` (
`zone`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`zone`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
COMMENT='latin1_swedish_ci'
AUTO_INCREMENT=1

;
-- ----------------------------
-- Indexes structure for table areatrigger_teleport
-- ----------------------------
CREATE FULLTEXT INDEX `name` ON `areatrigger_teleport`(`name`) ;

-- ----------------------------
-- Auto increment value for `blackmarket_template`
-- ----------------------------
ALTER TABLE `blackmarket_template` AUTO_INCREMENT=269;

-- ----------------------------
-- Indexes structure for table creature
-- ----------------------------
CREATE INDEX `idx_map` ON `creature`(`map`) USING BTREE ;
CREATE INDEX `idx_id` ON `creature`(`id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `creature`
-- ----------------------------
ALTER TABLE `creature` AUTO_INCREMENT=999484;

-- ----------------------------
-- Indexes structure for table creature_copy
-- ----------------------------
CREATE INDEX `idx_map` ON `creature_copy`(`map`) USING BTREE ;
CREATE INDEX `idx_id` ON `creature_copy`(`id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `creature_copy`
-- ----------------------------
ALTER TABLE `creature_copy` AUTO_INCREMENT=303341;

-- ----------------------------
-- Indexes structure for table creature_new
-- ----------------------------
CREATE INDEX `idx_map` ON `creature_new`(`map`) USING BTREE ;
CREATE INDEX `idx_id` ON `creature_new`(`id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `creature_new`
-- ----------------------------
ALTER TABLE `creature_new` AUTO_INCREMENT=998118;

-- ----------------------------
-- Indexes structure for table creature_template
-- ----------------------------
CREATE INDEX `idx_name` ON `creature_template`(`name`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table creature_transport
-- ----------------------------
CREATE UNIQUE INDEX `entry` ON `creature_transport`(`transport_entry`, `guid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `creature_transport`
-- ----------------------------
ALTER TABLE `creature_transport` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table creature_transport_copy
-- ----------------------------
CREATE UNIQUE INDEX `entry` ON `creature_transport_copy`(`transport_entry`, `guid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `creature_transport_copy`
-- ----------------------------
ALTER TABLE `creature_transport_copy` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table creatureold
-- ----------------------------
CREATE INDEX `idx_map` ON `creatureold`(`map`) USING BTREE ;
CREATE INDEX `idx_id` ON `creatureold`(`id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `creatureold`
-- ----------------------------
ALTER TABLE `creatureold` AUTO_INCREMENT=997600;

-- ----------------------------
-- Indexes structure for table game_event_arena_seasons
-- ----------------------------
CREATE UNIQUE INDEX `season` ON `game_event_arena_seasons`(`season`, `eventEntry`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table game_event_npc_vendor
-- ----------------------------
CREATE INDEX `slot` ON `game_event_npc_vendor`(`slot`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table game_event_seasonal_questrelation
-- ----------------------------
CREATE INDEX `idx_quest` ON `game_event_seasonal_questrelation`(`questId`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `game_tele`
-- ----------------------------
ALTER TABLE `game_tele` AUTO_INCREMENT=54367;

-- ----------------------------
-- Auto increment value for `gameobject`
-- ----------------------------
ALTER TABLE `gameobject` AUTO_INCREMENT=6017496;

-- ----------------------------
-- Indexes structure for table gameobject_template
-- ----------------------------
CREATE INDEX `idx_name` ON `gameobject_template`(`name`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_finder_applicant
-- ----------------------------
CREATE UNIQUE INDEX `guildId` ON `guild_finder_applicant`(`guildId`, `playerGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table ip2nation
-- ----------------------------
CREATE INDEX `ip` ON `ip2nation`(`ip`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table ip2nationcountries
-- ----------------------------
CREATE INDEX `code` ON `ip2nationcountries`(`code`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table item_template
-- ----------------------------
CREATE INDEX `idx_name` ON `item_template`(`name`) USING BTREE ;
CREATE INDEX `items_index` ON `item_template`(`class`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table npc_vendor
-- ----------------------------
CREATE INDEX `slot` ON `npc_vendor`(`slot`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `pet_name_generation`
-- ----------------------------
ALTER TABLE `pet_name_generation` AUTO_INCREMENT=314;

-- ----------------------------
-- Auto increment value for `phase_definitions`
-- ----------------------------
ALTER TABLE `phase_definitions` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table playercreateinfo_action
-- ----------------------------
CREATE INDEX `playercreateinfo_race_class_index` ON `playercreateinfo_action`(`race`, `class`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table playercreateinfo_item
-- ----------------------------
CREATE INDEX `playercreateinfo_race_class_index` ON `playercreateinfo_item`(`race`, `class`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table pool_creature
-- ----------------------------
CREATE INDEX `idx_guid` ON `pool_creature`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table pool_gameobject
-- ----------------------------
CREATE INDEX `idx_guid` ON `pool_gameobject`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table pool_quest
-- ----------------------------
CREATE INDEX `idx_guid` ON `pool_quest`(`entry`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table quest_poi_points
-- ----------------------------
CREATE INDEX `questId_id` ON `quest_poi_points`(`questId`, `id`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `shop_item`
-- ----------------------------
ALTER TABLE `shop_item` AUTO_INCREMENT=3;

-- ----------------------------
-- Indexes structure for table spell_linked_spell
-- ----------------------------
CREATE UNIQUE INDEX `trigger_effect_type` ON `spell_linked_spell`(`spell_trigger`, `spell_effect`, `type`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table spell_ranks
-- ----------------------------
CREATE UNIQUE INDEX `spell_id` ON `spell_ranks`(`spell_id`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table spell_script_names
-- ----------------------------
CREATE UNIQUE INDEX `spell_id` ON `spell_script_names`(`spell_id`, `ScriptName`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `time_diff_log`
-- ----------------------------
ALTER TABLE `time_diff_log` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table transports
-- ----------------------------
CREATE UNIQUE INDEX `idx_entry` ON `transports`(`entry`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `transports`
-- ----------------------------
ALTER TABLE `transports` AUTO_INCREMENT=29;

-- ----------------------------
-- Auto increment value for `warden_checks`
-- ----------------------------
ALTER TABLE `warden_checks` AUTO_INCREMENT=787;

-- ----------------------------
-- Auto increment value for `warden_data_result`
-- ----------------------------
ALTER TABLE `warden_data_result` AUTO_INCREMENT=803;

-- ----------------------------
-- Auto increment value for `zone_skip_update`
-- ----------------------------
ALTER TABLE `zone_skip_update` AUTO_INCREMENT=1;
