-- Fix Malkorok Creature Text
-- By Bodeguero for JadeCore.

DELETE FROM `creature_text` WHERE `entry`=71454;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY,0,0,'Nazgrim has failed us. Korkron, destroy these intruders!',14,0,100,0,0,0,'MALKOROK_INTRO'),
(@ENTRY,1,0,'I will never fail the Warchief!',14,0,100,0,0,0, 'MALKOROK_AGGRO'),
(@ENTRY,2,0,'Weaklings!',14,0,100,0,0,0,'MALKOROK_ARCING_SMASH_1'),
(@ENTRY,2,1,'You dare challenge the Warchief?',14,0,100,0,0,0,'MALKOROK_ARCING_SMASH_2'),
(@ENTRY,2,2,'Garrosh gives me strength!',14,0,100,0,0,0,'MALKOROK_ARCING_SMASH_3'),
(@ENTRY,3,0,'Witness the might of the True Horde!',14,0,100,0,0,0,'MALKOROK_BREATH_OF_YSHAARJ_1'),
(@ENTRY,3,1,'The power of the Warchief will overwhelm you!',14,0,100,0,0,0,'MALKOROK_BREATH_OF_YSHAARJ_2'),
(@ENTRY,4,0,'The True Horde cannot be STOPPED!',14,0,100,0,0,0,'MALKOROK_BLOOD_RAGE_1'),
(@ENTRY,4,1,'Stand and FACE ME!',14,0,100,0,0,0,'MALKOROK_BLOOD_RAGE_2'),
(@ENTRY,5,0,'The overwhelming power!',14,0,100,0,0,0,'MALKOROK_BERSERK'),
(@ENTRY,6,0,'The Warchief demands it!',14,0,100,0,0,0,'MALKOROK_WIPE'),
(@ENTRY,7,0,'To die... for the warchief... is... an... honor...',14,0,100,0,0,0,'MALKOROK_DEATH');