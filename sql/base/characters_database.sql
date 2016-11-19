/*
Navicat MySQL Data Transfer

Source Server         : JadeCore_5.x.x
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : characters547

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-10-10 22:05:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `account_achievement`;
CREATE TABLE `account_achievement` (
`account`  int(10) UNSIGNED NOT NULL ,
`first_guid`  int(10) UNSIGNED NOT NULL ,
`achievement`  smallint(5) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`account`, `achievement`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `account_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `account_achievement_progress`;
CREATE TABLE `account_achievement_progress` (
`account`  int(10) UNSIGNED NOT NULL ,
`criteria`  smallint(5) UNSIGNED NOT NULL ,
`counter`  int(10) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`account`, `criteria`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `account_data`
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
`accountId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier' ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  blob NOT NULL ,
PRIMARY KEY (`accountId`, `type`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `account_instance_times`
-- ----------------------------
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times` (
`accountId`  int(10) UNSIGNED NOT NULL ,
`instanceId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`releaseTime`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`accountId`, `instanceId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `account_tutorial`
-- ----------------------------
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE `account_tutorial` (
`accountId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier' ,
`tut0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut7`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`accountId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `addons`
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
`name`  varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`crc`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`name`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Addons'

;

-- ----------------------------
-- Table structure for `arena_team`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
`arenaTeamId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`captainGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`rating`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonGames`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonWins`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`weekGames`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`weekWins`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`rank`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`backgroundColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`emblemStyle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`emblemColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`borderStyle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`borderColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`arenaTeamId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `arena_team_member`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
`arenaTeamId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`weekGames`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`weekWins`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonGames`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonWins`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`personalRating`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`arenaTeamId`, `guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `auctionhouse`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`auctioneerguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemowner`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`buyoutprice`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`buyguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`lastbid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`startbid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`deposit`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `autobroadcast`
-- ----------------------------
DROP TABLE IF EXISTS `autobroadcast`;
CREATE TABLE `autobroadcast` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`text`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Table structure for `blackmarket`
-- ----------------------------
DROP TABLE IF EXISTS `blackmarket`;
CREATE TABLE `blackmarket` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Identifier' ,
`templateId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Reference to world.blackmarket_template' ,
`startTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Start time of the bid' ,
`bid`  bigint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Amount of the actual bid' ,
`bidder`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Player guid (highest bid)' ,
`bidderCount`  int(10) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `bugreport`
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier' ,
`type`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Debug System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `channels`
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
`name`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`team`  int(10) UNSIGNED NOT NULL ,
`announce`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`ownership`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`password`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`bannedList`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lastUsed`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`name`, `team`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Channel System'

;

-- ----------------------------
-- Table structure for `character_account_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  blob NOT NULL ,
PRIMARY KEY (`guid`, `type`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
`guid`  int(10) UNSIGNED NOT NULL ,
`achievement`  smallint(5) UNSIGNED NOT NULL ,
PRIMARY KEY (`guid`, `achievement`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_achievement_count`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_count`;
CREATE TABLE `character_achievement_count` (
`guid`  bigint(11) NOT NULL DEFAULT 0 ,
`count`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
`guid`  int(10) UNSIGNED NOT NULL ,
`criteria`  smallint(5) UNSIGNED NOT NULL ,
`counter`  int(10) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `criteria`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_action`
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`button`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`action`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spec`, `button`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_archaeology`
-- ----------------------------
DROP TABLE IF EXISTS `character_archaeology`;
CREATE TABLE `character_archaeology` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`sites0`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`sites1`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`sites2`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`sites3`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`counts`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`projects`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`completed`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_arena_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_data`;
CREATE TABLE `character_arena_data` (
`guid`  int(11) NOT NULL ,
`rating0`  int(10) NULL DEFAULT 0 ,
`bestRatingOfWeek0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bestRatingOfSeason0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`matchMakerRating0`  int(10) NULL DEFAULT 0 ,
`weekGames0`  int(10) NULL DEFAULT 0 ,
`weekWins0`  int(10) NULL DEFAULT 0 ,
`prevWeekWins0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonGames0`  int(10) NULL DEFAULT 0 ,
`seasonWins0`  int(10) NULL DEFAULT 0 ,
`rating1`  int(10) NULL DEFAULT 0 ,
`bestRatingOfWeek1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bestRatingOfSeason1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`matchMakerRating1`  int(10) NULL DEFAULT 0 ,
`weekGames1`  int(10) NULL DEFAULT 0 ,
`weekWins1`  int(10) NULL DEFAULT 0 ,
`prevWeekWins1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonGames1`  int(10) NULL DEFAULT 0 ,
`seasonWins1`  int(10) NULL DEFAULT 0 ,
`rating2`  int(10) NULL DEFAULT 0 ,
`bestRatingOfWeek2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bestRatingOfSeason2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`matchMakerRating2`  int(10) NULL DEFAULT 0 ,
`weekGames2`  int(10) NULL DEFAULT 0 ,
`weekWins2`  int(10) NULL DEFAULT 0 ,
`prevWeekWins2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonGames2`  int(10) NULL DEFAULT 0 ,
`seasonWins2`  int(10) NULL DEFAULT 0 ,
`rating3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bestRatingOfWeek3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bestRatingOfSeason3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`matchMakerRating3`  int(10) NOT NULL DEFAULT 1500 ,
`weekGames3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`weekWins3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`prevWeekWins3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonGames3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonWins3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_arena_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_stats`;
CREATE TABLE `character_arena_stats` (
`guid`  int(10) NOT NULL ,
`slot`  tinyint(3) NOT NULL ,
`matchMakerRating`  smallint(5) NOT NULL ,
PRIMARY KEY (`guid`, `slot`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

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
-- Table structure for `character_banned`
-- ----------------------------
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`bandate`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unbandate`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bannedby`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`banreason`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`guid`, `bandate`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Ban List'

;

-- ----------------------------
-- Table structure for `character_battleground_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`instanceId`  int(10) UNSIGNED NOT NULL COMMENT 'Instance Identifier' ,
`team`  smallint(5) UNSIGNED NOT NULL ,
`joinX`  float NOT NULL DEFAULT 0 ,
`joinY`  float NOT NULL DEFAULT 0 ,
`joinZ`  float NOT NULL DEFAULT 0 ,
`joinO`  float NOT NULL DEFAULT 0 ,
`joinMapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`taxiStart`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`taxiEnd`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mountSpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_battleground_random`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_currency`
-- ----------------------------
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE `character_currency` (
`guid`  int(11) UNSIGNED NOT NULL ,
`currency`  smallint(5) UNSIGNED NOT NULL ,
`total_count`  int(11) UNSIGNED NOT NULL ,
`week_count`  int(11) UNSIGNED NOT NULL ,
`season_total`  int(11) NULL DEFAULT 0 ,
`flags`  int(10) UNSIGNED NULL DEFAULT NULL ,
`weekCap`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`needResetCap`  tinyint(1) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`guid`, `currency`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`genitive`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`dative`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`accusative`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`instrumental`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`prepositional`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_equipmentsets`
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
`guid`  int(10) NOT NULL DEFAULT 0 ,
`setguid`  bigint(20) NOT NULL AUTO_INCREMENT ,
`setindex`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`iconname`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ignore_mask`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item6`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item7`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item8`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item9`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item10`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item11`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item12`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item13`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item14`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item15`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item16`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item17`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item18`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`setguid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `character_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`item_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`item_guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_glyphs`
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
`guid`  int(10) UNSIGNED NOT NULL ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`glyph1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`glyph2`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph3`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph4`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph5`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph6`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spec`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_homebind`
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`zoneId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Zone Identifier' ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_instance`
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`permanent`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `instance`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`bag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Global Unique Identifier' ,
PRIMARY KEY (`item`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`owner`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid`  int(10) UNSIGNED NULL DEFAULT 0 ,
`CreatedBySpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`PetType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`exp`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Reactstate`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Pet' ,
`renamed`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`curhealth`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`curmana`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`savetime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`abdata`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`specialization`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Table structure for `character_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`owner`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`genitive`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`dative`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`accusative`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`instrumental`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`prepositional`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_queststatus`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
`status`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`explored`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`timer`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`playercount`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_queststatus_daily`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_queststatus_monthly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE `character_queststatus_monthly` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_queststatus_rewarded`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_queststatus_seasonal`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
CREATE TABLE `character_queststatus_seasonal` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
`event`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event Identifier' ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_queststatus_weekly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_rates`
-- ----------------------------
DROP TABLE IF EXISTS `character_rates`;
CREATE TABLE `character_rates` (
`guid`  bigint(20) NOT NULL DEFAULT 0 ,
`rate`  tinyint(2) NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `character_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`faction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`standing`  int(11) NOT NULL DEFAULT 0 ,
`flags`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `faction`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_skills`
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
`guid`  int(10) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier' ,
`skill`  smallint(5) UNSIGNED NOT NULL ,
`value`  smallint(5) UNSIGNED NOT NULL ,
`max`  smallint(5) UNSIGNED NOT NULL ,
PRIMARY KEY (`guid`, `skill`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_social`
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`friend`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Global Unique Identifier' ,
`flags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Flags' ,
`note`  varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Friend Note' ,
PRIMARY KEY (`guid`, `friend`, `flags`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_spell`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`disabled`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `character_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`item`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Identifier' ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`maxhealth`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`strength`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`agility`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`stamina`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`intellect`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spirit`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`armor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resHoly`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resFire`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resNature`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resFrost`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resShadow`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resArcane`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`blockPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`dodgePct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`parryPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`critPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`rangedCritPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`spellCritPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`attackPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rangedAttackPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spellPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resilience`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_talent`
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
`guid`  int(10) UNSIGNED NOT NULL ,
`spell`  mediumint(8) UNSIGNED NOT NULL ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`, `spec`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `character_void_storage`
-- ----------------------------
DROP TABLE IF EXISTS `character_void_storage`;
CREATE TABLE `character_void_storage` (
`itemId`  bigint(20) UNSIGNED NOT NULL ,
`playerGuid`  int(10) UNSIGNED NOT NULL ,
`itemEntry`  mediumint(8) UNSIGNED NOT NULL ,
`slot`  tinyint(3) UNSIGNED NOT NULL ,
`creatorGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`randomProperty`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`suffixFactor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`itemId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`account`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier' ,
`name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`gender`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`xp`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`money`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`playerBytes`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerBytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerFlags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`instance_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instance_mode_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`taximask`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`online`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`cinematic`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`totaltime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`leveltime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`logout_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`is_logout_resting`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`rest_bonus`  float NOT NULL DEFAULT 0 ,
`resettalents_cost`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resettalents_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resetspecialization_cost`  int(10) NOT NULL DEFAULT 0 ,
`resetspecialization_time`  int(10) NOT NULL DEFAULT 0 ,
`talentTree`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0 0' ,
`trans_x`  float NOT NULL DEFAULT 0 ,
`trans_y`  float NOT NULL DEFAULT 0 ,
`trans_z`  float NOT NULL DEFAULT 0 ,
`trans_o`  float NOT NULL DEFAULT 0 ,
`transguid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`extra_flags`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`stable_slots`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`at_login`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`zone`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`death_expire_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`taxi_path`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`totalKills`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`todayKills`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`yesterdayKills`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`chosenTitle`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`watchedFaction`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`drunk`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`health`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`latency`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`speccount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`activespec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`specialization1`  int(11) NOT NULL ,
`specialization2`  int(11) NOT NULL ,
`exploredZones`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`equipmentCache`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`knownTitles`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`actionBars`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`currentpetslot`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`petslotused`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
`grantableLevels`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`guildId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`deleteInfos_Account`  int(10) UNSIGNED NULL DEFAULT NULL ,
`deleteInfos_Name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`deleteDate`  int(10) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Table structure for `corpse`
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
`corpseGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`phaseMask`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`displayId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemCache`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`bytes1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`dynFlags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`corpseType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`instanceId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier' ,
PRIMARY KEY (`corpseGuid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Death System'

;

-- ----------------------------
-- Table structure for `creature_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`respawnTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mapId`  smallint(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instanceId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier' ,
PRIMARY KEY (`guid`, `instanceId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Grid Loading System'

;

-- ----------------------------
-- Table structure for `cuf_profile`
-- ----------------------------
DROP TABLE IF EXISTS `cuf_profile`;
CREATE TABLE `cuf_profile` (
`guid`  int(10) UNSIGNED NOT NULL ,
`name`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`data`  tinyblob NULL ,
PRIMARY KEY (`guid`, `name`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

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
-- Table structure for `game_event_condition_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL ,
`condition_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`done`  float NULL DEFAULT 0 ,
PRIMARY KEY (`eventEntry`, `condition_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `game_event_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL ,
`state`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`next_start`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`eventEntry`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `gameobject_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`respawnTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mapId`  smallint(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instanceId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier' ,
PRIMARY KEY (`guid`, `instanceId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Grid Loading System'

;

-- ----------------------------
-- Table structure for `gm_subsurveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys` (
`surveyId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`subsurveyId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rank`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`surveyId`, `subsurveyId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `gm_surveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
`surveyId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mainSurvey`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`overallComment`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`createTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`surveyId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `gm_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
`ticketId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier of ticket creator' ,
`name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Name of ticket creator' ,
`message`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`createTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
`lastModifiedTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`closedBy`  int(10) NOT NULL DEFAULT 0 ,
`assignedTo`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned' ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`completed`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`escalated`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`viewed`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`haveTicket`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`ticketId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `group_instance`
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`permanent`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `instance`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `group_member`
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
`guid`  int(10) UNSIGNED NOT NULL ,
`memberGuid`  int(10) UNSIGNED NOT NULL ,
`memberFlags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`subgroup`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`roles`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`memberGuid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Groups'

;

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
`guid`  int(10) UNSIGNED NOT NULL ,
`leaderGuid`  int(10) UNSIGNED NOT NULL ,
`lootMethod`  tinyint(3) UNSIGNED NOT NULL ,
`looterGuid`  int(10) UNSIGNED NOT NULL ,
`lootThreshold`  tinyint(3) UNSIGNED NOT NULL ,
`icon1`  int(10) UNSIGNED NOT NULL ,
`icon2`  int(10) UNSIGNED NOT NULL ,
`icon3`  int(10) UNSIGNED NOT NULL ,
`icon4`  int(10) UNSIGNED NOT NULL ,
`icon5`  int(10) UNSIGNED NOT NULL ,
`icon6`  int(10) UNSIGNED NOT NULL ,
`icon7`  int(10) UNSIGNED NOT NULL ,
`icon8`  int(10) UNSIGNED NOT NULL ,
`groupType`  tinyint(3) UNSIGNED NOT NULL ,
`difficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`raiddifficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Groups'

;

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`leaderguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EmblemStyle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`EmblemColor`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`BorderStyle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`BorderColor`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`BackgroundColor`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`info`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`motd`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`createdate`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankMoney`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  int(10) UNSIGNED NULL DEFAULT 1 ,
`experience`  bigint(20) UNSIGNED NULL DEFAULT 0 ,
`todayExperience`  bigint(20) UNSIGNED NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `guild_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement`;
CREATE TABLE `guild_achievement` (
`guildId`  int(10) UNSIGNED NOT NULL ,
`achievement`  smallint(5) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guids`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`guildId`, `achievement`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement_progress`;
CREATE TABLE `guild_achievement_progress` (
`guildId`  int(10) UNSIGNED NOT NULL ,
`criteria`  smallint(5) UNSIGNED NOT NULL ,
`counter`  int(10) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`completedGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildId`, `criteria`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_bank_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild Identificator' ,
`LogGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Log record identificator - auxiliary column' ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild bank TabId' ,
`EventType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event type' ,
`PlayerGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ItemOrMoney`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ItemStackCount`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DestTabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Destination Tab Id' ,
`TimeStamp`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event UNIX time' ,
PRIMARY KEY (`guildid`, `LogGuid`, `TabId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_bank_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`SlotId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`item_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `TabId`, `SlotId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_bank_right`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`rid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`gbright`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`SlotPerDay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `TabId`, `rid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_bank_tab`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`TabName`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`TabIcon`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`TabText`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`guildid`, `TabId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
`guildid`  int(10) UNSIGNED NOT NULL COMMENT 'Guild Identificator' ,
`LogGuid`  int(10) UNSIGNED NOT NULL COMMENT 'Log record identificator - auxiliary column' ,
`EventType`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Event type' ,
`PlayerGuid1`  int(10) UNSIGNED NOT NULL COMMENT 'Player 1' ,
`PlayerGuid2`  int(10) UNSIGNED NOT NULL COMMENT 'Player 2' ,
`NewRank`  tinyint(3) UNSIGNED NOT NULL COMMENT 'New rank(in case promotion/demotion)' ,
`TimeStamp`  int(10) UNSIGNED NOT NULL COMMENT 'Event UNIX time' ,
PRIMARY KEY (`guildid`, `LogGuid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild Eventlog'

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
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
`guildid`  int(10) UNSIGNED NOT NULL COMMENT 'Guild Identificator' ,
`guid`  int(10) UNSIGNED NOT NULL ,
`rank`  tinyint(3) UNSIGNED NOT NULL ,
`pnote`  varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`offnote`  varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`BankResetTimeMoney`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemMoney`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankResetTimeTab7`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankRemSlotsTab7`  int(10) UNSIGNED NOT NULL DEFAULT 0 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `guild_news_log`
-- ----------------------------
DROP TABLE IF EXISTS `guild_news_log`;
CREATE TABLE `guild_news_log` (
`guild`  int(10) UNSIGNED NOT NULL ,
`id`  int(10) UNSIGNED NOT NULL ,
`eventType`  int(10) UNSIGNED NOT NULL ,
`playerGuid`  bigint(20) UNSIGNED NOT NULL ,
`data`  int(10) UNSIGNED NOT NULL ,
`flags`  int(10) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guild`, `id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `guild_rank`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rid`  tinyint(3) UNSIGNED NOT NULL ,
`rname`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`rights`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`BankMoneyPerDay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `rid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `instance`
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`resettime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`completedEncounters`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `instance_reset`
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
`mapid`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`resettime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`mapid`, `difficulty`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `item_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemEntry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`owner_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`creatorGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`giftCreatorGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`count`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`duration`  int(10) NOT NULL DEFAULT 0 ,
`charges`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`flags`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`enchantments`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`randomPropertyId`  smallint(5) NOT NULL DEFAULT 0 ,
`reforgeId`  mediumint(8) NULL DEFAULT NULL ,
`transmogrifyId`  mediumint(8) NULL DEFAULT NULL ,
`upgradeId`  mediumint(8) NULL DEFAULT NULL ,
`durability`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`playedTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`text`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item System'

;

-- ----------------------------
-- Table structure for `item_refund_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (
`item_guid`  int(10) UNSIGNED NOT NULL COMMENT 'Item GUID' ,
`player_guid`  int(10) UNSIGNED NOT NULL COMMENT 'Player GUID' ,
`paidMoney`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`paidExtendedCost`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`item_guid`, `player_guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item Refund System'

;

-- ----------------------------
-- Table structure for `item_soulbound_trade_data`
-- ----------------------------
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data` (
`itemGuid`  int(10) UNSIGNED NOT NULL COMMENT 'Item GUID' ,
`allowedPlayers`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade' ,
PRIMARY KEY (`itemGuid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item Refund System'

;

-- ----------------------------
-- Table structure for `lag_reports`
-- ----------------------------
DROP TABLE IF EXISTS `lag_reports`;
CREATE TABLE `lag_reports` (
`reportId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`lagType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
`latency`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`createTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`reportId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `lfg_data`
-- ----------------------------
DROP TABLE IF EXISTS `lfg_data`;
CREATE TABLE `lfg_data` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`dungeon`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`state`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='LFG Data'

;

-- ----------------------------
-- Table structure for `log_arena`
-- ----------------------------
DROP TABLE IF EXISTS `log_arena`;
CREATE TABLE `log_arena` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`timestamp`  int(11) NULL DEFAULT NULL ,
`string`  blob NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `log_faction_change`
-- ----------------------------
DROP TABLE IF EXISTS `log_faction_change`;
CREATE TABLE `log_faction_change` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`guid`  int(16) NOT NULL ,
`account`  int(11) NOT NULL ,
`OldRace`  int(11) NOT NULL ,
`NewRace`  int(11) NOT NULL ,
`date`  datetime NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=3711

;

-- ----------------------------
-- Table structure for `log_gm`
-- ----------------------------
DROP TABLE IF EXISTS `log_gm`;
CREATE TABLE `log_gm` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`date`  datetime NOT NULL ,
`gm_account_id`  bigint(20) NOT NULL ,
`gm_account_name`  blob NOT NULL ,
`gm_character_id`  bigint(20) NOT NULL ,
`gm_character_name`  blob NOT NULL ,
`gm_last_ip`  tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`sc_account_id`  bigint(20) NOT NULL ,
`sc_account_name`  blob NOT NULL ,
`sc_character_id`  bigint(20) NOT NULL ,
`sc_character_name`  blob NOT NULL ,
`command`  blob NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=35

;

-- ----------------------------
-- Table structure for `log_gm_chat`
-- ----------------------------
DROP TABLE IF EXISTS `log_gm_chat`;
CREATE TABLE `log_gm_chat` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`type`  int(11) NOT NULL ,
`date`  datetime NOT NULL ,
`from_account_id`  bigint(20) NOT NULL ,
`from_account_name`  blob NOT NULL ,
`from_character_id`  bigint(20) NOT NULL ,
`from_character_name`  blob NOT NULL ,
`to_account_id`  bigint(20) NOT NULL ,
`to_account_name`  blob NOT NULL ,
`to_character_id`  bigint(20) NOT NULL ,
`to_character_name`  blob NOT NULL ,
`message`  blob NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Table structure for `log_mail`
-- ----------------------------
DROP TABLE IF EXISTS `log_mail`;
CREATE TABLE `log_mail` (
`id`  int(11) NULL DEFAULT NULL ,
`messageType`  tinyint(3) NULL DEFAULT NULL ,
`stationery`  tinyint(3) NULL DEFAULT NULL ,
`mailTemplateId`  mediumint(8) NULL DEFAULT NULL ,
`sender`  int(11) NULL DEFAULT NULL ,
`receiver`  int(11) NULL DEFAULT NULL ,
`subject`  blob NULL ,
`body`  blob NULL ,
`has_items`  tinyint(3) NULL DEFAULT NULL ,
`expire_time`  bigint(40) NULL DEFAULT NULL ,
`deliver_time`  bigint(40) NULL DEFAULT NULL ,
`money`  int(11) NULL DEFAULT NULL ,
`cod`  int(11) NULL DEFAULT NULL ,
`checked`  tinyint(3) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `log_rename`
-- ----------------------------
DROP TABLE IF EXISTS `log_rename`;
CREATE TABLE `log_rename` (
`guid`  int(11) UNSIGNED NOT NULL ,
`date`  datetime NOT NULL ,
`oldName`  tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`newName`  tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `log_store_gold`
-- ----------------------------
DROP TABLE IF EXISTS `log_store_gold`;
CREATE TABLE `log_store_gold` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`transaction`  int(11) NOT NULL DEFAULT 0 ,
`guid`  int(11) NOT NULL DEFAULT 0 ,
`gold`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `log_store_item`
-- ----------------------------
DROP TABLE IF EXISTS `log_store_item`;
CREATE TABLE `log_store_item` (
`id`  int(11) NOT NULL DEFAULT 0 ,
`transaction`  int(11) NULL DEFAULT 0 ,
`guid`  int(11) NULL DEFAULT 0 ,
`itemid`  int(11) NULL DEFAULT 0 ,
`count`  int(5) NULL DEFAULT 1 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Table structure for `log_trade`
-- ----------------------------
DROP TABLE IF EXISTS `log_trade`;
CREATE TABLE `log_trade` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`date`  datetime NOT NULL ,
`sc_accountid`  int(11) NULL DEFAULT NULL ,
`sc_guid`  int(11) NULL DEFAULT NULL ,
`sc_name`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`tar_accountid`  int(11) NULL DEFAULT NULL ,
`tar_guid`  int(11) NULL DEFAULT NULL ,
`tar_name`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`item_name`  tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`item_entry`  int(11) NULL DEFAULT NULL ,
`item_count`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`messageType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stationery`  tinyint(3) NOT NULL DEFAULT 41 ,
`mailTemplateId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`sender`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`receiver`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`subject`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`body`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`has_items`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`expire_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`deliver_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`money`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`cod`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`checked`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Mail System'

;

-- ----------------------------
-- Table structure for `mail_items`
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
`mail_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`item_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`receiver`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
PRIMARY KEY (`item_guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

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
-- Table structure for `pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Table structure for `pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `petition`
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
`ownerguid`  int(10) UNSIGNED NOT NULL ,
`petitionguid`  int(10) UNSIGNED NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`ownerguid`, `type`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Table structure for `petition_sign`
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
`ownerguid`  int(10) UNSIGNED NOT NULL ,
`petitionguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`player_account`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`petitionguid`, `playerguid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

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
-- Table structure for `pool_quest_save`
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save` (
`pool_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`pool_id`, `quest_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `reserved_name`
-- ----------------------------
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name` (
`name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`name`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player Reserved Names'

;

-- ----------------------------
-- Table structure for `store_gold`
-- ----------------------------
DROP TABLE IF EXISTS `store_gold`;
CREATE TABLE `store_gold` (
`guid`  int(11) UNSIGNED NOT NULL ,
`gold`  int(11) UNSIGNED NULL DEFAULT NULL ,
`transaction`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`transaction`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `store_item`
-- ----------------------------
DROP TABLE IF EXISTS `store_item`;
CREATE TABLE `store_item` (
`itemid`  int(11) NOT NULL DEFAULT 0 ,
`guid`  int(11) UNSIGNED NOT NULL ,
`count`  int(11) UNSIGNED NOT NULL ,
`transaction`  int(11) NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`transaction`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `store_level`
-- ----------------------------
DROP TABLE IF EXISTS `store_level`;
CREATE TABLE `store_level` (
`guid`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  int(11) UNSIGNED NOT NULL DEFAULT 80 ,
`transaction`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`transaction`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Table structure for `store_metier`
-- ----------------------------
DROP TABLE IF EXISTS `store_metier`;
CREATE TABLE `store_metier` (
`guid`  int(11) UNSIGNED NOT NULL ,
`skill`  int(11) UNSIGNED NOT NULL ,
`value`  int(11) UNSIGNED NOT NULL ,
`transaction`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`transaction`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

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
AUTO_INCREMENT=3213

;

-- ----------------------------
-- Table structure for `updates`
-- ----------------------------
DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates` (
`name`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'filename with extension of the update.' ,
`hash`  char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'sha1 hash of the sql file.' ,
`state`  enum('RELEASED','ARCHIVED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.' ,
`timestamp`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.' ,
`speed`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'time the query takes to apply in ms.' ,
PRIMARY KEY (`name`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='List of all applied updates in this database.'

;

-- ----------------------------
-- Table structure for `updates_include`
-- ----------------------------
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE `updates_include` (
`path`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'directory to include. $ means relative to the source directory.' ,
`state`  enum('RELEASED','ARCHIVED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.' ,
PRIMARY KEY (`path`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='List of directories where we want to include sql updates.'

;

-- ----------------------------
-- Table structure for `warden_action`
-- ----------------------------
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE `warden_action` (
`wardenId`  smallint(5) UNSIGNED NOT NULL ,
`action`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`wardenId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Table structure for `worldstates`
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates` (
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`value`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Variable Saves'

;

-- ----------------------------
-- Indexes structure for table account_achievement_progress
-- ----------------------------
CREATE INDEX `Account` ON `account_achievement_progress`(`account`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table arena_team
-- ----------------------------
CREATE INDEX `idx_type` ON `arena_team`(`type`) USING BTREE ;
CREATE INDEX `idx_rating` ON `arena_team`(`rating`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table arena_team_member
-- ----------------------------
CREATE INDEX `idx_guid` ON `arena_team_member`(`guid`) USING BTREE ;
CREATE INDEX `idx_arenaTeamId` ON `arena_team_member`(`arenaTeamId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table auctionhouse
-- ----------------------------
CREATE UNIQUE INDEX `item_guid` ON `auctionhouse`(`itemguid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `autobroadcast`
-- ----------------------------
ALTER TABLE `autobroadcast` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for `bugreport`
-- ----------------------------
ALTER TABLE `bugreport` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table character_equipmentsets
-- ----------------------------
CREATE UNIQUE INDEX `idx_set` ON `character_equipmentsets`(`guid`, `setguid`, `setindex`) USING BTREE ;
CREATE INDEX `Idx_setindex` ON `character_equipmentsets`(`setindex`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `character_equipmentsets`
-- ----------------------------
ALTER TABLE `character_equipmentsets` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table character_gifts
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_gifts`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_instance
-- ----------------------------
CREATE INDEX `instance` ON `character_instance`(`instance`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_inventory
-- ----------------------------
CREATE UNIQUE INDEX `guid` ON `character_inventory`(`guid`, `bag`, `slot`) USING BTREE ;
CREATE INDEX `idx_guid` ON `character_inventory`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_pet
-- ----------------------------
CREATE INDEX `owner` ON `character_pet`(`owner`) USING BTREE ;
CREATE INDEX `idx_slot` ON `character_pet`(`slot`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_pet_declinedname
-- ----------------------------
CREATE INDEX `owner_key` ON `character_pet_declinedname`(`owner`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_queststatus_daily
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_queststatus_daily`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_queststatus_monthly
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_queststatus_monthly`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_queststatus_seasonal
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_queststatus_seasonal`(`guid`) USING BTREE ;
CREATE INDEX `event` ON `character_queststatus_seasonal`(`event`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_queststatus_weekly
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_queststatus_weekly`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_social
-- ----------------------------
CREATE INDEX `friend` ON `character_social`(`friend`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_void_storage
-- ----------------------------
CREATE UNIQUE INDEX `idx_player_slot` ON `character_void_storage`(`playerGuid`, `slot`) USING BTREE ;
CREATE INDEX `idx_player` ON `character_void_storage`(`playerGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table characters
-- ----------------------------
CREATE INDEX `idx_account` ON `characters`(`account`) USING BTREE ;
CREATE INDEX `idx_online` ON `characters`(`online`) USING BTREE ;
CREATE INDEX `idx_name` ON `characters`(`name`) USING BTREE ;
CREATE INDEX `instance_id` ON `characters`(`instance_id`) USING BTREE ;
CREATE INDEX `idx_deleted` ON `characters`(`deleteInfos_Account`) USING BTREE ;
CREATE INDEX `logout` ON `characters`(`logout_time`) USING BTREE ;
CREATE INDEX `idx_totalKills` ON `characters`(`totalKills`) USING BTREE ;
CREATE INDEX `idx_totaltime` ON `characters`(`totaltime`) USING BTREE ;
CREATE INDEX `idx_money` ON `characters`(`money`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table corpse
-- ----------------------------
CREATE INDEX `idx_type` ON `corpse`(`corpseType`) USING BTREE ;
CREATE INDEX `idx_instance` ON `corpse`(`instanceId`) USING BTREE ;
CREATE INDEX `idx_player` ON `corpse`(`guid`) USING BTREE ;
CREATE INDEX `idx_time` ON `corpse`(`time`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table creature_respawn
-- ----------------------------
CREATE INDEX `idx_instance` ON `creature_respawn`(`instanceId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table gameobject_respawn
-- ----------------------------
CREATE INDEX `idx_instance` ON `gameobject_respawn`(`instanceId`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `gm_subsurveys`
-- ----------------------------
ALTER TABLE `gm_subsurveys` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `gm_surveys`
-- ----------------------------
ALTER TABLE `gm_surveys` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `gm_tickets`
-- ----------------------------
ALTER TABLE `gm_tickets` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table group_instance
-- ----------------------------
CREATE INDEX `instance` ON `group_instance`(`instance`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table groups
-- ----------------------------
CREATE INDEX `leaderGuid` ON `groups`(`leaderGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_bank_eventlog
-- ----------------------------
CREATE INDEX `guildid_key` ON `guild_bank_eventlog`(`guildid`) USING BTREE ;
CREATE INDEX `Idx_PlayerGuid` ON `guild_bank_eventlog`(`PlayerGuid`) USING BTREE ;
CREATE INDEX `Idx_LogGuid` ON `guild_bank_eventlog`(`LogGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_bank_item
-- ----------------------------
CREATE INDEX `guildid_key` ON `guild_bank_item`(`guildid`) USING BTREE ;
CREATE INDEX `Idx_item_guid` ON `guild_bank_item`(`item_guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_bank_right
-- ----------------------------
CREATE INDEX `guildid_key` ON `guild_bank_right`(`guildid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_bank_tab
-- ----------------------------
CREATE INDEX `guildid_key` ON `guild_bank_tab`(`guildid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_eventlog
-- ----------------------------
CREATE INDEX `Idx_PlayerGuid1` ON `guild_eventlog`(`PlayerGuid1`) USING BTREE ;
CREATE INDEX `Idx_PlayerGuid2` ON `guild_eventlog`(`PlayerGuid2`) USING BTREE ;
CREATE INDEX `Idx_LogGuid` ON `guild_eventlog`(`LogGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_finder_applicant
-- ----------------------------
CREATE UNIQUE INDEX `guildId` ON `guild_finder_applicant`(`guildId`, `playerGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_member
-- ----------------------------
CREATE UNIQUE INDEX `guid_key` ON `guild_member`(`guid`) USING BTREE ;
CREATE INDEX `guildid_key` ON `guild_member`(`guildid`) USING BTREE ;
CREATE INDEX `guildid_rank_key` ON `guild_member`(`guildid`, `rank`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_rank
-- ----------------------------
CREATE INDEX `Idx_rid` ON `guild_rank`(`rid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table instance
-- ----------------------------
CREATE INDEX `map` ON `instance`(`map`) USING BTREE ;
CREATE INDEX `resettime` ON `instance`(`resettime`) USING BTREE ;
CREATE INDEX `difficulty` ON `instance`(`difficulty`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table instance_reset
-- ----------------------------
CREATE INDEX `difficulty` ON `instance_reset`(`difficulty`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table item_instance
-- ----------------------------
CREATE INDEX `idx_owner_guid` ON `item_instance`(`owner_guid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `lag_reports`
-- ----------------------------
ALTER TABLE `lag_reports` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `log_arena`
-- ----------------------------
ALTER TABLE `log_arena` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `log_faction_change`
-- ----------------------------
ALTER TABLE `log_faction_change` AUTO_INCREMENT=3711;

-- ----------------------------
-- Auto increment value for `log_gm`
-- ----------------------------
ALTER TABLE `log_gm` AUTO_INCREMENT=35;

-- ----------------------------
-- Auto increment value for `log_gm_chat`
-- ----------------------------
ALTER TABLE `log_gm_chat` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `log_store_gold`
-- ----------------------------
ALTER TABLE `log_store_gold` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `log_trade`
-- ----------------------------
ALTER TABLE `log_trade` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table mail
-- ----------------------------
CREATE INDEX `idx_receiver` ON `mail`(`receiver`) USING BTREE ;
CREATE INDEX `exptime` ON `mail`(`expire_time`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table mail_items
-- ----------------------------
CREATE INDEX `idx_receiver` ON `mail_items`(`receiver`) USING BTREE ;
CREATE INDEX `idx_mail_id` ON `mail_items`(`mail_id`) USING BTREE ;
CREATE INDEX `findByItem` ON `mail_items`(`item_guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table petition
-- ----------------------------
CREATE UNIQUE INDEX `index_ownerguid_petitionguid` ON `petition`(`ownerguid`, `petitionguid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table petition_sign
-- ----------------------------
CREATE INDEX `Idx_playerguid` ON `petition_sign`(`playerguid`) USING BTREE ;
CREATE INDEX `Idx_ownerguid` ON `petition_sign`(`ownerguid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table store_gold
-- ----------------------------
CREATE UNIQUE INDEX `transaction` ON `store_gold`(`transaction`) USING BTREE ;
CREATE INDEX `guid` ON `store_gold`(`guid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `store_gold`
-- ----------------------------
ALTER TABLE `store_gold` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table store_item
-- ----------------------------
CREATE UNIQUE INDEX `transaction` ON `store_item`(`transaction`) USING BTREE ;
CREATE INDEX `guid` ON `store_item`(`guid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `store_item`
-- ----------------------------
ALTER TABLE `store_item` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table store_level
-- ----------------------------
CREATE UNIQUE INDEX `transaction` ON `store_level`(`transaction`) USING BTREE ;
CREATE INDEX `guid` ON `store_level`(`guid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `store_level`
-- ----------------------------
ALTER TABLE `store_level` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table store_metier
-- ----------------------------
CREATE UNIQUE INDEX `NewIndex1` ON `store_metier`(`skill`, `guid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `store_metier`
-- ----------------------------
ALTER TABLE `store_metier` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `time_diff_log`
-- ----------------------------
ALTER TABLE `time_diff_log` AUTO_INCREMENT=3213;
