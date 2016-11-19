-- Actionlist SAI
SET @ENTRY := 2398190;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove work emote"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,28,17743,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Sleep Spell (just in case)"),
(@ENTRY,9,3,0,0,0,100,1,2500,2500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.24,"At woodpile, face woodpile"),
(@ENTRY,9,4,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,5,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,7,0,0,0,100,1,2500,2500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,9,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,11,0,0,0,100,1,2500,2500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.24,"At woodpile, face woodpile"),
(@ENTRY,9,12,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,13,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,15,0,0,0,100,1,2500,2500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,16,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,17,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,19,0,0,0,100,1,2500,2500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.24,"At woodpile, face woodpile"),
(@ENTRY,9,20,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,21,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,23,0,0,0,100,1,2500,2500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,24,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote");

-- Actionlist SAI
SET @ENTRY := 2395250;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove work emote"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,28,17743,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Sleep Spell (just in case)"),
(@ENTRY,9,3,0,0,0,100,1,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.34,"At woodpile, face woodpile"),
(@ENTRY,9,4,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,5,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,7,0,0,0,100,1,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,9,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,11,0,0,0,100,1,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.34,"At woodpile, face woodpile"),
(@ENTRY,9,12,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,13,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,15,0,0,0,100,1,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,16,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,17,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,19,0,0,0,100,1,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.34,"At woodpile, face woodpile"),
(@ENTRY,9,20,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,21,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,23,0,0,0,100,1,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,24,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote");

-- Actionlist SAI
SET @ENTRY := 2398200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove work emote"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,28,17743,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Sleep Spell (just in case)"),
(@ENTRY,9,3,0,0,0,100,1,2400,2400,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.06,"At woodpile, face woodpile"),
(@ENTRY,9,4,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,5,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,7,0,0,0,100,1,2400,2400,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,9,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,11,0,0,0,100,1,2400,2400,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.06,"At woodpile, face woodpile"),
(@ENTRY,9,12,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,13,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,15,0,0,0,100,1,2400,2400,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,16,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,17,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,19,0,0,0,100,1,2400,2400,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.06,"At woodpile, face woodpile"),
(@ENTRY,9,20,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,22,0,0,0,100,1,1000,1000,0,0,53,0,2398201,0,0,0,0,1,0,0,0,0,0,0,0,"Start waypoint to tree"),
(@ENTRY,9,23,0,0,0,100,1,2400,2400,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,24,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote");

-- Actionlist SAI
SET @ENTRY := 2390500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3904.77,-4635.09,9.62735,5.49334,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,1,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3856.59,-4622.45,9.24753,3.87856,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,2,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3917.6,-4648.53,9.32604,5.56795,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,3,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3890.48,-4620.7,9.55527,4.99383,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,4,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3865.94,-4617.2,9.26262,4.16523,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,5,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3834.8,-4645.41,9.25827,3.61152,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,6,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3826.61,-4655.32,9.21484,3.13243,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,7,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3830.76,-4673.74,9.50962,2.70832,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,8,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3843.65,-4687.59,9.6436,2.43735,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,9,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3858.49,-4703.49,9.17411,2.33525,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,10,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3851.97,-4697.24,9.36834,2.33525,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,11,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3924.35,-4656.55,9.15409,5.80749,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,12,0,1,0,100,0,8000,8000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3891.03,-4671.17,-1.52,0.74,"Major Mills - On Script - Summon Creature 'Theramore Marksman'"),
(@ENTRY,9,13,0,0,0,100,0,0,0,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3924.35,-4656.55,9.15409,5.80749,"Take Down Tethyr: Summon Theramore Marksman"),
(@ENTRY,9,14,0,0,0,100,0,0,0,0,0,12,23899,1,900000,0,0,0,8,0,0,0,-3897.37,-4750.63,-1.71901,1.79105,"Take Down Tethyr: Summon Tethyr"),
(@ENTRY,9,15,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Take Down Tethyr: Talk"),
(@ENTRY,9,16,0,0,0,100,0,10000,10000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Take Down Tethyr: Talk");

-- Actionlist SAI
SET @ENTRY := 1540201;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Apprentice Mirveda - Script 2 - Set NPC Flags"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,2,232,0,0,0,0,0,1,0,0,0,0,0,0,0,"Apprentice Mirveda - Script 2 - Set Faction"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,"Apprentice Mirveda - Script 2 - Remove Unit Flags Immune to NPC"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Apprentice Mirveda - Script 2 - Set Phase 1");

-- Actionlist SAI
SET @ENTRY := 41100000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;

-- Actionlist SAI
SET @ENTRY := 41100001;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;

-- Actionlist SAI
SET @ENTRY := 41100103;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,1100,1100,0,0,11,23920,2,0,0,0,0,1,0,0,0,0,0,0,0,"WARRIOR_00 - Cast - Spell Reflection");

-- Actionlist SAI
SET @ENTRY := 41100203;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,1100,1100,0,0,11,23920,2,0,0,0,0,1,0,0,0,0,0,0,0,"WARRIOR_00 - Cast - Spell Reflection");

-- Actionlist SAI
SET @ENTRY := 2560200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Greatmother Taiga - Script - Set Phase 2"),
(@ENTRY,9,1,0,0,0,100,0,5000,5000,0,0,11,28892,0,0,0,0,0,1,0,0,0,0,0,0,0,"Greatmother Taiga - Script - Cast Nature Channeling"),
(@ENTRY,9,2,0,0,0,100,0,7000,7000,0,0,28,28892,0,0,0,0,0,1,0,0,0,0,0,0,0,"Greatmother Taiga - Script - Remove Aura Nature Channeling"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,19,26097,0,0,0,0,0,0,"Greatmother Taiga - Script - Say Line 1 on Closest Fizzcrank Gnome Ghost"),
(@ENTRY,9,5,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,19,26097,0,0,0,0,0,0,"Greatmother Taiga - Script - Say Line 2 on Closest Fizzcrank Gnome Ghost"),
(@ENTRY,9,6,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,19,26097,0,0,0,0,0,0,"Greatmother Taiga - Script - Say Line 3 on Closest Fizzcrank Gnome Ghost"),
(@ENTRY,9,7,0,0,0,100,0,9000,9000,0,0,1,3,0,0,0,0,0,19,26097,0,0,0,0,0,0,"Greatmother Taiga - Script - Say Line 4 on Closest Fizzcrank Gnome Ghost"),
(@ENTRY,9,8,0,0,0,100,0,9000,9000,0,0,5,3,0,0,0,0,0,9,26097,0,200,0,0,0,0,"Greatmother Taiga - Script - Play emote OneShotWave on all Fizzcrank Gnome Ghost"),
(@ENTRY,9,9,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Greatmother Taiga - Script - Say Line 2"),
(@ENTRY,9,10,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Greatmother Taiga - Script - Set Phase 1");

-- Actionlist SAI
SET @ENTRY := 2895200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Akali - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,15,12721,0,0,0,0,0,18,50,0,0,0,0,0,0,"Akali - On Script - Quest Credit 'Rampage'"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,101661,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,101662,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,101663,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,101665,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,101666,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,101667,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,101668,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,10,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,101669,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,203572,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,12,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,203573,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,13,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,203574,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,14,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,203575,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,15,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,203576,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,16,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,203577,28988,0,0,0,0,0,"Akali - On Script - Set Data 0 2"),
(@ENTRY,9,17,0,0,0,100,0,4600,4600,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,"Akali - On Script - Remove Flag Immune To NPC's"),
(@ENTRY,9,18,0,0,0,100,0,55000,55000,0,0,12,28996,8,0,0,0,0,8,0,0,0,6882.03,-4571,442.312,2.37365,"Akali - On Script - Summon Creature 'Prophet of Akali'");

-- Actionlist SAI
SET @ENTRY := 4462900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;

-- Actionlist SAI
SET @ENTRY := 2414100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove work emote"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,28,17743,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Sleep Spell (just in case)"),
(@ENTRY,9,3,0,0,0,100,1,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6.18,"At woodpile, face woodpile"),
(@ENTRY,9,4,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,5,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,7,0,0,0,100,1,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,9,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,11,0,0,0,100,1,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6.18,"At woodpile, face woodpile"),
(@ENTRY,9,12,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,13,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,14,0,0,0,100,1,1000,1000,0,0,53,0,2414101,0,0,0,0,1,0,0,0,0,0,0,0,"Start waypoint to tree"),
(@ENTRY,9,15,0,0,0,100,1,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,16,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,17,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,19,0,0,0,100,1,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6.18,"At woodpile, face woodpile"),
(@ENTRY,9,20,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,21,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,23,0,0,0,100,1,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,24,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote");

-- Actionlist SAI
SET @ENTRY := 2415020;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove work emote"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,28,17743,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Sleep Spell (just in case)"),
(@ENTRY,9,3,0,0,0,100,1,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.2,"At woodpile, face woodpile"),
(@ENTRY,9,4,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,5,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,7,0,0,0,100,1,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,9,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,11,0,0,0,100,1,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.2,"At woodpile, face woodpile"),
(@ENTRY,9,12,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,13,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,14,0,0,0,100,1,1000,1000,0,0,53,0,2415021,0,0,0,0,1,0,0,0,0,0,0,0,"Start waypoint to tree"),
(@ENTRY,9,15,0,0,0,100,1,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,16,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,17,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,19,0,0,0,100,1,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.2,"At woodpile, face woodpile"),
(@ENTRY,9,20,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,21,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,23,0,0,0,100,1,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,24,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote");

-- Actionlist SAI
SET @ENTRY := 2425620;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove work emote"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,28,17743,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Sleep Spell (just in case)"),
(@ENTRY,9,3,0,0,0,100,1,4500,4500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.2,"At woodpile, face woodpile"),
(@ENTRY,9,4,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,5,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,7,0,0,0,100,1,4500,4500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,8,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,9,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,11,0,0,0,100,1,4500,4500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.2,"At woodpile, face woodpile"),
(@ENTRY,9,12,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,13,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,14,0,0,0,100,1,1000,1000,0,0,53,0,2425621,0,0,0,0,1,0,0,0,0,0,0,0,"Start waypoint to tree"),
(@ENTRY,9,15,0,0,0,100,1,4500,4500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,16,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote"),
(@ENTRY,9,17,0,0,0,100,1,20000,20000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove Work Aura"),
(@ENTRY,9,19,0,0,0,100,1,4500,4500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.2,"At woodpile, face woodpile"),
(@ENTRY,9,20,0,0,0,100,1,100,100,0,0,11,68442,2,0,0,0,0,1,0,0,0,0,0,0,0,"At woodpile, kneel"),
(@ENTRY,9,21,0,0,0,100,1,5000,5000,0,0,28,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,"Remove kneel aura"),
(@ENTRY,9,23,0,0,0,100,1,4500,4500,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, say 'Work, Work'"),
(@ENTRY,9,24,0,0,0,100,1,0,0,0,0,17,234,0,0,0,0,0,1,0,0,0,0,0,0,0,"At tree, set work emote");

-- Actionlist SAI
SET @ENTRY := 1093700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Redpath - Set invisible - action list"),
(@ENTRY,9,2,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,19,10948,40,0,0,0,0,0,"Defender - talk1 - action list"),
(@ENTRY,9,5,0,0,0,100,0,25000,25000,0,0,12,10944,6,6000,0,0,0,8,0,0,0,1453.09,-3693.16,76.7842,0.486776,"Redpath - spawn Lightfire - action list"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,12,10945,8,600000,0,0,0,8,0,0,0,1464.52,-3678.88,78.0439,0.577881,"Redpath - Spawn Davil - action list"),
(@ENTRY,9,10,0,0,0,100,0,0,0,0,0,12,10946,6,6000,0,0,0,8,0,0,0,1501.28,-3675.83,81.4476,3.30007,"Redpath - Spawn Horgus - action list"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,10946,100,0,0,0,0,0,"Horgus - talk1 - action list");

-- Actionlist SAI
SET @ENTRY := 1094600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,1,1,0,0,0,0,0,19,10944,100,0,0,0,0,0,"Lightfire -  talk 2 - action list"),
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,19,10948,100,0,0,0,0,0,"Defender - talk 2 - action list"),
(@ENTRY,9,2,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,19,10944,100,0,0,0,0,0,"Lightfire -  talk 3 - action list"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,19,10944,100,0,0,0,0,0,"Lightfire -  talk 3 - action list"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,19,10944,100,0,0,0,0,0,"Lightfire - On Script - Set React Passive"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,18,512,0,0,0,0,0,19,10944,100,0,0,0,0,0,"Lightfire - On Script - Set Immune To NPC"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,19,10944,100,0,0,0,0,0,"Lightfire - On Script - evade"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,5,65,0,0,0,0,0,19,10944,100,0,0,0,0,0,"Lightfire - play emote - action list"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,19,10944,100,0,0,0,0,0,"Lightfire - despawn - action list"),
(@ENTRY,9,9,0,0,0,100,0,3000,3000,0,0,47,1,0,0,0,0,0,19,10937,100,0,0,0,0,0,"Redpath - Visible On - action list"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,10937,100,0,0,0,0,0,"Redpath -  talk 1 - action list"),
(@ENTRY,9,12,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,10945,100,0,0,0,0,0,"Redpath -  talk 2 - action list"),
(@ENTRY,9,16,0,0,0,100,0,10000,10000,0,0,86,18650,2,19,10937,50,0,19,10937,50,0,0,0,0,0,"Redpath - Spawn Marduk - action list"),
(@ENTRY,9,17,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,19,10939,100,0,0,0,0,0,"Marduk - talk 1 - action list"),
(@ENTRY,9,18,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,19,10937,100,0,0,0,0,0,"Redpath - On Script - Set React Passive"),
(@ENTRY,9,19,0,0,0,100,0,0,0,0,0,18,512,0,0,0,0,0,19,10937,100,0,0,0,0,0,"Redpath - On Script - Set Immune To NPC"),
(@ENTRY,9,20,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,19,10937,100,0,0,0,0,0,"Redpath - On Script - evade"),
(@ENTRY,9,21,0,0,0,100,0,0,0,0,0,47,0,0,0,0,0,0,19,10937,100,0,0,0,0,0,"Redpath - set visible off - action list"),
(@ENTRY,9,22,0,0,0,100,0,1000,1000,0,0,12,10938,6,60000,0,0,0,8,0,0,0,1494.08,-3676.04,80.8468,6.26998,"Redpath - Spawn CorruptedRed - action list"),
(@ENTRY,9,23,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,10938,40,0,0,0,0,0,"CorruptedRed - talk 1 - action list"),
(@ENTRY,9,24,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,10938,40,0,0,0,0,0,"CorruptedRed - On talk 2 - action list"),
(@ENTRY,9,25,0,0,0,100,0,5000,5000,0,0,41,2,0,0,0,0,0,19,10939,40,0,0,0,0,0,"Marduk - Despawn - action list");
-- Actionlist SAI
SET @ENTRY := 1183201;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
--  SAI
SET @ENTRY := 693880;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 694550;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 702300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 702360;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 731911;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 731912;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 731913;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 733400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 342425;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 342652;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 423514;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 423515;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 423516;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95510;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95511;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95512;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95513;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95551;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95552;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95553;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95554;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95555;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 95556;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99925;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99926;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99927;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99981;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99982;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99983;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99986;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99987;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99990;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99991;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99992;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99993;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99994;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 99996;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
--  SAI
SET @ENTRY := 144952;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Puckish Sprite SAI
SET @ENTRY := 56349;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,5000,5000,11,115363,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Throw Jade"),
(@ENTRY,0,1,0,2,0,100,0,5000,5000,10000,12000,11,115358,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Mischief"),
(@ENTRY,0,2,0,2,0,40,0,0,40,0,0,11,121308,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Disguise"),
(@ENTRY,0,3,0,6,0,15,0,0,0,0,0,11,105912,0,0,0,0,0,0,0,0,0,0,0,0,0,"Cast Drop Jade - When Die");

-- Ffexk the Dunestalker SAI
SET @ENTRY := 50897;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Scarlet Corpse SAI
SET @ENTRY := 49340;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,91942,0,0,0,45,0,3,0,0,0,0,19,49337,10,0,0,0,0,0,"on spellhit 91942 set data 3 to darnell"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,33,49340,0,0,0,0,0,21,10,0,0,0,0,0,0,"Give credit to player"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,46598,0,0,0,0,0,19,49337,0,0,0,0,0,0,"Jump on darnell"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,11,46598,0,0,0,0,0,19,49337,0,0,0,0,0,0,"Jump on darnell"),
(@ENTRY,0,3,0,61,0,100,1,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"delete corpse");

-- Rescued Survivor SAI
SET @ENTRY := 46267;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,83369,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Teleport Visual on Just Summoned"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Talk on Spawn"),
(@ENTRY,0,3,0,40,0,100,0,2,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Talk on Waypoint Reach"),
(@ENTRY,0,4,0,40,0,100,0,3,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Talk on Waypoint Reach");

-- Halfus Wyrmbreaker (3) SAI
SET @ENTRY := 46211;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,30,360000,360000,650000,660000,11,26662,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Berseker"),
(@ENTRY,0,1,0,0,1,100,0,30000,30000,30000,30000,11,83703,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Shadow Nova 10"),
(@ENTRY,0,3,0,0,1,100,0,5500,15500,5500,15500,11,83908,1,0,0,0,0,2,0,0,0,0,0,0,0,"Halfus - Malevolent Strikes 10"),
(@ENTRY,0,5,0,0,2,100,0,30000,30000,30000,30000,11,83710,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Furious Roar 10"),
(@ENTRY,0,6,0,2,0,100,0,0,99,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 1"),
(@ENTRY,0,7,0,2,0,100,0,50,50,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 2"),
(@ENTRY,0,8,0,4,0,100,0,0,0,0,0,11,83693,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Frenzied Assault 10");

-- Halfus Wyrmbreaker (2) SAI
SET @ENTRY := 46210;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,30,360000,360000,650000,660000,11,26662,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Berseker"),
(@ENTRY,0,1,0,0,1,100,0,30000,30000,30000,30000,11,83703,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Shadow Nova 10"),
(@ENTRY,0,3,0,0,1,100,0,5500,15500,5500,15500,11,83908,1,0,0,0,0,2,0,0,0,0,0,0,0,"Halfus - Malevolent Strikes 10"),
(@ENTRY,0,5,0,0,2,100,0,30000,30000,30000,30000,11,83710,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Furious Roar 10"),
(@ENTRY,0,6,0,2,0,100,0,0,99,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 1"),
(@ENTRY,0,7,0,2,0,100,0,50,50,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 2"),
(@ENTRY,0,8,0,4,0,100,0,0,0,0,0,11,83693,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Frenzied Assault 10");

-- Halfus Wyrmbreaker (1) SAI
SET @ENTRY := 46209;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,30,360000,360000,650000,660000,11,26662,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Berseker"),
(@ENTRY,0,1,0,0,1,100,0,30000,30000,30000,30000,11,83703,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Shadow Nova 10"),
(@ENTRY,0,3,0,0,1,100,0,5500,15500,5500,15500,11,83908,1,0,0,0,0,2,0,0,0,0,0,0,0,"Halfus - Malevolent Strikes 10"),
(@ENTRY,0,5,0,0,2,100,0,30000,30000,30000,30000,11,83710,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Furious Roar 10"),
(@ENTRY,0,6,0,2,0,100,0,0,99,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 1"),
(@ENTRY,0,7,0,2,0,100,0,50,50,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 2"),
(@ENTRY,0,8,0,4,0,100,0,0,0,0,0,11,83693,1,0,0,0,0,1,0,0,0,0,0,0,0,"Halfus - Frenzied Assault 10");

-- Herald Beluus SAI
SET @ENTRY := 35501;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Herald Beluus - On Data Set 1 1 - Say Line 0"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Herald Beluus - On Data Set 2 2 - Say Line 2"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Herald Beluus - On Data Set 3 3 - Say Line 1"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,45,3,3,0,0,0,0,19,35361,0,0,0,0,0,0,"Herald Beluus - On Data Set 3 3 - Set Data 3 3 on Tirion Fordring"),
(@ENTRY,0,8,0,68,0,100,0,67,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Herald Beluus - On Event Start 67 - Run Script"),
(@ENTRY,0,9,0,68,0,100,0,68,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Herald Beluus - On Event Start 68 - Run Script 2"),
(@ENTRY,0,10,0,68,0,100,0,69,0,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Herald Beluus - On Event Start 69 - Run Script 3");

-- Highlord Darion Mograine SAI
SET @ENTRY := 32312;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,3,40,0,100,1,14,32312,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Home Position"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,32309,0,200,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Ebon Knight"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,32310,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Thassarian"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,32311,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Koltira"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,32311,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Koltira"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Hostile"),
(@ENTRY,0,8,10,61,0,100,0,0,0,0,0,45,3,3,0,0,0,0,9,32175,0,200,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 3 3 Chosen Zealot"),
(@ENTRY,0,9,0,7,2,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Evade (Phase 2) - Run Script"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Just Summoned - Set Phase 2");

-- Captain Luc Valonforth SAI
SET @ENTRY := 27476;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Valonforth - Link - Run Script");

-- Ravenclaw Servant SAI
SET @ENTRY := 1868;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,85,0,0,65,22000,22000,11,7290,1,0,0,0,0,2,0,0,0,0,0,0,0,"Ravenclaw Servant - Between 0-65% Health - Cast 'Soul Siphon' (No Repeat)"),
(@ENTRY,0,1,0,0,0,85,0,4000,4000,24000,28000,11,980,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ravenclaw Servant - In Combat - Cast 'Curse of Agony' (No Repeat)");

-- Rot Hide Plague Weaver SAI
SET @ENTRY := 1940;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,75,0,5000,5000,20000,40000,11,3256,32,0,0,0,0,5,0,0,0,0,0,0,0,"Rot Hide Plague Weaver - In Combat - Cast 'Plague Cloud'"),
(@ENTRY,0,1,0,0,0,40,1,0,0,2500,2500,11,3237,0,0,0,0,0,5,0,0,0,0,0,0,0,"Rot Hide Plague Weaver - In Combat - Cast 'Curse of Thule'");

-- Thule Ravenclaw SAI
SET @ENTRY := 1947;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,85,0,5000,5000,20000,30000,11,7655,1,0,0,0,0,5,0,0,0,0,0,0,0,"Thule Ravenclaw - In Combat - Cast 'Hex of Ravenclaw'"),
(@ENTRY,0,1,0,0,0,85,0,1000,1000,7000,12000,11,20800,0,0,0,0,0,2,0,0,0,0,0,0,0,"Thule Ravenclaw - In Combat - Cast 'Immolate'"),
(@ENTRY,0,2,0,1,0,100,1,0,0,1000,1000,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thule Ravenclaw - Out of Combat - Cast 'Summon Imp'"),
(@ENTRY,0,3,0,4,0,85,1,0,0,0,0,11,13787,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thule Ravenclaw - On Aggro - Cast 'Demon Armor'");

-- Ravenclaw Regent SAI
SET @ENTRY := 2283;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,85,0,6000,6000,12000,18000,11,7645,1,0,0,0,0,6,0,0,0,0,0,0,0,"Ravenclaw Regent - In Combat - Cast 'Dominate Mind' (No Repeat)");

-- Mijan SAI
SET @ENTRY := 5717;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,14100,14100,63800,66700,11,8148,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mijan - In Combat - Cast 'Thorns Aura'"),
(@ENTRY,0,1,0,0,0,100,0,0,40,19500,28100,11,8362,1,0,0,0,0,9,0,0,0,0,0,0,0,"Mijan - On Friendly Between 0-40% Health - Cast 'Renew'"),
(@ENTRY,0,2,0,0,0,100,0,9500,18000,33400,45600,11,11899,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mijan - In Combat - Cast 'Healing Ward'"),
(@ENTRY,0,3,0,2,0,100,0,0,30,9000,12000,11,12492,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mijan - Between 0-30% Health - Cast 'Healing Wave'");

-- Condemned Acolyte SAI
SET @ENTRY := 7068;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,21000,25000,11,15654,0,0,0,0,0,2,0,0,0,0,0,0,0,"Condemned Acolyte - Within 0-5 Range - Cast 'Shadow Word: Pain' (Phase 4) (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,40,18000,25000,11,25058,1,0,0,0,0,9,0,0,0,0,0,0,0,"Condemned Acolyte - On Friendly Between 0-40% Health - Cast 'Renew' (Phase 4) (No Repeat)");

-- Condemned Cleric SAI
SET @ENTRY := 7070;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,25054,64,0,0,0,0,2,0,0,0,0,0,0,0,"Condemned Cleric - In Combat CMC - Cast 'Holy Smite'"),
(@ENTRY,0,1,0,74,0,100,0,0,40,18000,21000,11,15586,1,0,0,0,0,9,0,0,0,0,0,0,0,"Condemned Cleric - On Friendly Between 0-40% Health - Cast 'Heal'"),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,11,25054,0,0,0,0,0,2,0,0,0,0,0,0,0,"Condemned Cleric - On Aggro - Cast Holy Smite"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Condemned Cleric - On Aggro - Increment Phase"),
(@ENTRY,0,4,0,9,0,100,0,0,40,3400,4800,11,25054,0,0,0,0,0,2,0,0,0,0,0,0,0,"Condemned Cleric - At 0 - 40 Range - Cast Holy Smite"),
(@ENTRY,0,5,6,3,0,100,0,0,7,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Condemned Cleric - At 7% Mana - Allow Combat Movement"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Condemned Cleric - At 7% Mana - Increment Phase"),
(@ENTRY,0,7,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Condemned Cleric - At 35 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Condemned Cleric - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,9,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Condemned Cleric - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,10,0,3,0,100,0,15,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Condemned Cleric - At 100% Mana - Increment Phase"),
(@ENTRY,0,11,0,0,0,100,0,0,40,18000,21000,11,15586,1,0,0,0,0,9,0,0,0,0,0,0,0,"Condemned Cleric - On Friendly Unit At 0 - 40% Health - Cast Heal");

-- Oro Eyegouge SAI
SET @ENTRY := 7606;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,12741,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - On Aggro - Cast 'Curse of Weakness' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,2,4,0,100,1,0,0,0,0,11,12741,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oro Eyegouge - On Aggro - Cast Curse of Weakness"),
(@ENTRY,0,2,0,0,0,80,0,5000,7000,23000,27000,11,11962,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - In Combat - Cast 'Immolate' (Normal Dungeon)"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - On Aggro - Cast Shadow Bolt"),
(@ENTRY,0,3,0,0,0,80,0,8000,10000,15000,18250,11,11990,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - In Combat - Cast 'Rain of Fire' (Normal Dungeon)"),
(@ENTRY,0,4,0,9,1,100,0,0,40,2400,3800,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - At 0 - 40 Range - Cast Shadow Bolt"),
(@ENTRY,0,5,6,3,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oro Eyegouge - At 15% Mana - Allow Combat Movement"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oro Eyegouge - At 15% Mana - Increment Phase"),
(@ENTRY,0,7,0,9,1,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oro Eyegouge - At 35 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,9,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oro Eyegouge - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,10,0,3,2,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Oro Eyegouge - At 30% Mana - Decrement Phase"),
(@ENTRY,0,11,0,0,0,80,0,5000,7000,23000,27000,11,11962,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - In Combat - Cast Immolate"),
(@ENTRY,0,12,0,0,0,80,0,8000,10000,15000,18250,11,11990,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - In Combat - Cast Rain of Fire");

-- Actionlist SAI
SET @ENTRY := 19455500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,33235,0,0,0,0,0,0,"Archivum Console - Script 1 - Set Data 2 2 Brann Bronzebeard");

-- Actionlist SAI
SET @ENTRY := 19455501;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,1,3,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 3 on Archivum System "),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,12,33876,3,67000,0,0,0,8,0,0,0,1438.32,118.523,425.434,0,"Archivum Console - Script 2 - Spawn Freya Image "),
(@ENTRY,9,3,0,0,0,100,0,6000,6000,0,0,1,4,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 4 on Archivum System "),
(@ENTRY,9,4,0,0,0,100,0,9000,9000,0,0,1,5,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 5 on Archivum System "),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,12,33861,3,49000,0,0,0,8,0,0,0,1435.8,118.855,425.881,0,"Archivum Console - Script 2 - Spawn Elder Brightleaf Image"),
(@ENTRY,9,6,0,0,0,100,0,9000,9000,0,0,1,6,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 6 on Archivum System "),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,12,33862,3,40000,0,0,0,8,0,0,0,1435.71,120.41,425.823,0,"Archivum Console - Script 2 - Spawn Elder Stonebark Image"),
(@ENTRY,9,8,0,0,0,100,0,9000,9000,0,0,1,7,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 7 on Archivum System"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,12,33761,3,31000,0,0,0,8,0,0,0,1435.77,117.288,425.838,0,"Archivum Console - Script 2 - Spawn Elder Ironbark Image"),
(@ENTRY,9,10,0,0,0,100,0,9000,9000,0,0,1,8,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 8 on Archivum System"),
(@ENTRY,9,11,0,0,0,100,0,9000,9000,0,0,1,9,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 9 on Archivum System"),
(@ENTRY,9,13,0,0,0,100,0,9000,9000,0,0,1,8,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 8 on Archivum System"),
(@ENTRY,9,14,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,33761,0,0,0,0,0,0,"Archivum Console - Script 2 - Set Data on Elder Brightleaf Image"),
(@ENTRY,9,15,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,33862,0,0,0,0,0,0,"Archivum Console - Script 2 - Set Data on Elder Stonebark Image"),
(@ENTRY,9,16,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,33861,0,0,0,0,0,0,"Archivum Console - Script 2 - Set Data on Elder Ironbranch Image"),
(@ENTRY,9,17,0,0,0,100,0,9000,9000,0,0,1,9,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 2 - Say Text Line 9 on Archivum System");

-- Actionlist SAI
SET @ENTRY := 19455502;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,1,10,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 3 - Say Text Line 10 on Archivum System "),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,12,33879,3,44000,0,0,0,8,0,0,0,1435.85,117.998,425.582,0,"Archivum Console - Script 3 - Spawn Hodir Image"),
(@ENTRY,9,3,0,0,0,100,0,6000,6000,0,0,1,11,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 3 - Say Text Line 11 on Archivum System "),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,12,34032,3,35000,0,0,0,8,0,0,0,1436.11,119.336,425.667,0,"Archivum Console - Script 3 - Spawn Cache Image"),
(@ENTRY,9,5,0,0,0,100,0,9000,9000,0,0,1,12,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 3 - Say Text Line 12 on Archivum System "),
(@ENTRY,9,6,0,0,0,100,0,9000,9000,0,0,1,13,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 3 - Say Text Line 13 on Archivum System "),
(@ENTRY,9,7,0,0,0,100,0,9000,9000,0,0,1,14,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 3 - Say Text Line 14 on Archivum System ");

-- Actionlist SAI
SET @ENTRY := 19455503;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,1,15,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 4 - Say Text Line 15 on Archivum System "),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,12,33878,3,40000,0,0,0,8,0,0,0,1436.22,118.364,425.789,0,"Archivum Console - Script 4 - Spawn Thorim Image"),
(@ENTRY,9,3,0,0,0,100,0,6000,6000,0,0,1,16,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 4 - Say Text Line 16 on Archivum System "),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,12,33877,3,31000,0,0,0,8,0,0,0,1436.14,120.3,425.839,4.95674,"Archivum Console - Script 4 - Spawn Sif Image"),
(@ENTRY,9,5,0,0,0,100,0,9000,9000,0,0,1,17,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 4 - Say Text Line 17 on Archivum System "),
(@ENTRY,9,6,0,0,0,100,0,9000,9000,0,0,1,18,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 4 - Say Text Line 18 on Archivum System ");

-- Actionlist SAI
SET @ENTRY := 19455504;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,1,19,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 5 - Say Text Line 19 on Archivum System "),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,12,33880,3,35000,0,0,0,8,0,0,0,1436.27,118.341,425.814,0,"Archivum Console - Script 5 - Spawn Mimiron Image"),
(@ENTRY,9,3,0,0,0,100,0,6000,6000,0,0,1,20,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 5 - Say Text Line 20 on Archivum System "),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,12,34011,3,31000,0,0,0,8,0,0,0,1436.13,119.267,426.094,0,"Archivum Console - Script 5 - Spawn Button Image"),
(@ENTRY,9,5,0,0,0,100,0,9000,9000,0,0,1,21,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 5 - Say Text Line 21 on Archivum System "),
(@ENTRY,9,6,0,0,0,100,0,9000,9000,0,0,1,22,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 5 - Say Text Line 22 on Archivum System ");

-- Actionlist SAI
SET @ENTRY := 19455505;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,1,36,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 6 - Say Text Line 36 on Archivum System "),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,12,34070,3,35000,0,0,0,8,0,0,0,1435.8,118.855,425.881,0,"Archivum Console - Script 6 - Spawn Uwel Stoneheart"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,1,37,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 6 - Say Text Line 37 on Archivum System "),
(@ENTRY,9,4,0,0,0,100,0,5000,5000,0,0,1,38,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 6 - Say Text Line 38 on Archivum System "),
(@ENTRY,9,5,0,0,0,100,0,12000,12000,0,0,1,39,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 6 - Say Text Line 39 on Archivum System "),
(@ENTRY,9,6,0,0,0,100,0,10000,10000,0,0,1,40,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 6 - Say Text Line 40 on Archivum System "),
(@ENTRY,9,7,0,0,0,100,0,13000,13000,0,0,1,41,0,0,0,0,0,19,33874,0,0,0,0,0,0,"Archivum Console - Script 6 - Say Text Line 41 on Archivum System ");

-- Actionlist SAI
SET @ENTRY := 1784300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vindicator Kuros - Script - Set Phase 2"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,12,17875,1,90000,0,0,0,8,0,0,0,-1968.4,-11914.2,51.7064,1.35619,"Vindicator Kuros - Script - Summon Hunter of the Hand"),
(@ENTRY,9,2,0,0,0,100,0,500,500,0,0,45,1,1,0,0,0,0,19,17875,0,0,0,0,0,0,"Vindicator Kuros - Script - Set Data on Hunter of the Hand"),
(@ENTRY,9,3,0,0,0,100,0,7000,7000,0,0,1,0,0,0,0,0,0,19,17875,0,0,0,0,0,0,"Vindicator Kuros - Script - Say Line 1 on Hunter of the Hand"),
(@ENTRY,9,4,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vindicator Kuros - Script - Say Line 1"),
(@ENTRY,9,5,0,0,0,100,0,10000,10000,0,0,1,1,0,0,0,0,0,19,17875,0,0,0,0,0,0,"Vindicator Kuros - Script - Say Line 2 on Hunter of the Hand"),
(@ENTRY,9,6,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,19,17875,0,0,0,0,0,0,"Vindicator Kuros - Script - Say Line 3 on Hunter of the Hand"),
(@ENTRY,9,8,0,0,0,100,0,500,500,0,0,45,2,2,0,0,0,0,9,17875,20,200,0,0,0,0,"Vindicator Kuros - Script - Set Data Hunter of the Hand"),
(@ENTRY,9,9,0,0,0,100,0,12000,12000,0,0,1,3,0,0,0,0,0,19,17875,0,0,0,0,0,0,"Vindicator Kuros - Script - Say Line 4 on Hunter of the Hand"),
(@ENTRY,9,10,0,0,0,100,0,6000,6000,0,0,1,4,0,0,0,0,0,19,17875,0,0,0,0,0,0,"Vindicator Kuros - Script - Say Line 5 on Hunter of the Hand"),
(@ENTRY,9,11,0,0,0,100,0,4000,4000,0,0,45,3,3,0,0,0,0,9,17875,0,200,0,0,0,0,"Vindicator Kuros - Script - Say Line 5 on Hunter of the Hand"),
(@ENTRY,9,12,0,0,0,100,0,10000,10000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vindicator Kuros - Script - Set Phase 1");

-- Actionlist SAI
SET @ENTRY := 1852800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Xiri - ActionList - Close gossip"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Xiri - ActionList - Remove npcflag"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Xiri - ActionList - Talk"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Xiri - ActionList - Talk"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,11,39828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Xiri - ActionList - Cast"),
(@ENTRY,9,6,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,19,22862,60,0,0,0,0,0,"Caalen - On Gossip use - Talk"),
(@ENTRY,9,7,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,19,22864,60,0,0,0,0,0,"Caalen - On Gossip use - Talk"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,11,39831,0,0,0,0,0,11,0,100,0,0,0,0,0,"Xiri - ActionList - Cast"),
(@ENTRY,9,9,0,0,0,100,0,40000,40000,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Xiri - ActionList - Add npcflag");

-- Actionlist SAI
SET @ENTRY := 2102401;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Set Phase 2"),
(@ENTRY,9,1,0,0,0,100,0,15000,15000,0,0,1,6,0,0,0,0,0,19,21685,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 6 (Oronok Torn-heart)"),
(@ENTRY,9,2,0,0,0,100,0,20000,20000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 11"),
(@ENTRY,9,4,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,19,21685,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 7 (Oronok Torn-heart)"),
(@ENTRY,9,5,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,19,21739,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 1 (Redeemed Spirit of Earth)"),
(@ENTRY,9,6,0,0,0,100,0,9000,9000,0,0,1,0,0,0,0,0,0,19,21740,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 0 (Redeemed Spirit of Fire)"),
(@ENTRY,9,7,0,0,0,100,0,7000,7000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 8"),
(@ENTRY,9,8,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,19,21739,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 0 (Redeemed Spirit of Earth)"),
(@ENTRY,9,9,0,0,0,100,0,8000,8000,0,0,1,1,0,0,0,0,0,19,21685,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 1 (Oronok Torn-heart)"),
(@ENTRY,9,10,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,19,21685,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 2 (Oronok Torn-heart)"),
(@ENTRY,9,11,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,19,21685,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Say Line 3 (Oronok Torn-heart)"),
(@ENTRY,9,12,0,0,0,100,0,1000,1000,0,0,45,6,6,0,0,0,0,19,21685,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Set Data 6 6 Oronok Torn-heart"),
(@ENTRY,9,13,0,0,0,100,0,0,0,0,0,45,3,3,0,0,0,0,19,21686,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Set Data 3 3 Borak, Son of Oronok"),
(@ENTRY,9,14,0,0,0,100,0,0,0,0,0,45,3,3,0,0,0,0,19,21687,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Set Data 3 3 Gromtor, Son of Oronok"),
(@ENTRY,9,15,0,0,0,100,0,7000,7000,0,0,41,0,0,0,0,0,0,19,21685,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Despawn "),
(@ENTRY,9,16,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,19,21686,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Despawn"),
(@ENTRY,9,17,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,19,21687,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Despawn"),
(@ENTRY,9,18,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script 2 - Set Phase 1");

-- Actionlist SAI
SET @ENTRY := 2120400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Set Phase 2"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,3,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,19,21071,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Set Orientation"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,19,21129,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,6,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,19,21130,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,7,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,8,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,19,21131,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,9,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,19,21132,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,10,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,11,0,0,0,100,0,7000,7000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,12,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,19,21129,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,13,0,0,0,100,0,7000,7000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,14,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,19,21130,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,15,0,0,0,100,0,7000,7000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,16,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,19,21131,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,17,0,0,0,100,0,7000,7000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,18,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,19,21132,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,19,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,19,21129,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,20,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,19,21130,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,21,0,0,0,100,0,7000,7000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,22,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,19,21129,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say"),
(@ENTRY,9,23,0,0,0,100,0,5000,5000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,24,0,0,0,100,0,7000,7000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,25,0,0,0,100,0,7000,7000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.93928,"Earthmender Torlok <The Earthen Ring> - Script - Say Line 1"),
(@ENTRY,9,26,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthmender Torlok <The Earthen Ring> - Script - Set Phase 1");

-- Actionlist SAI
SET @ENTRY := 2131000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 1"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,45,3,3,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Set Data 3 3 on Gul'Dan"),
(@ENTRY,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 1 on Gul'Dan"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,21049,0,200,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Set Data 1 1 on Spirit of the Past"),
(@ENTRY,9,5,0,0,0,100,0,6000,6000,0,0,45,4,4,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Set Data 4 4 on Gul'Dan"),
(@ENTRY,9,6,0,0,0,100,0,1000,1000,0,0,45,1,1,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Set Data 1 1 on Gul'Dan"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 2 on Gul'Dan"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,21052,0,200,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Set Data 1 1 on Camera Shaker - Altar of Damnation"),
(@ENTRY,9,9,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 3 on Gul'Dan"),
(@ENTRY,9,10,0,0,0,100,0,4000,4000,0,0,12,21181,2,600000,0,0,0,1,0,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Summon Cyrukh the Firelord <The Dirge of Karabor>"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 4 on Gul'Dan"),
(@ENTRY,9,12,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,19,21181,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 4 on Cyrukh the Firelord <The Dirge of Karabor>"),
(@ENTRY,9,14,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,19,21685,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 1 on Oronok Torn-heart"),
(@ENTRY,9,15,0,0,0,100,0,3000,3000,0,0,1,4,0,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 5 on Gul'Dan"),
(@ENTRY,9,16,0,0,0,100,0,6000,6000,0,0,1,5,0,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 6 on Gul'Dan"),
(@ENTRY,9,17,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,17008,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Set Data 2 2 on Gul'Dan"),
(@ENTRY,9,18,0,0,0,100,0,6000,6000,0,0,1,5,0,0,0,0,0,19,21685,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Say Line 2 on Oronok Torn-heart"),
(@ENTRY,9,19,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,21685,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Set Data 1 1 on Oronok Torn-heart"),
(@ENTRY,9,20,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowmoon Valley Invisible Trigger (Tiny) - Script - Despawn");

-- Actionlist SAI
SET @ENTRY := 2170000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Akama - Script - Set NPC Flags"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,21768,0,0,0,0,0,0,"Akama - Script - Say Line 0 on Vagath"),
(@ENTRY,9,3,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.53073,"Akama - Script - Set Orientation"),
(@ENTRY,9,4,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - Say Line 0"),
(@ENTRY,9,5,0,0,0,100,0,6000,6000,0,0,11,37448,0,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - Cast Chain Lightning"),
(@ENTRY,9,6,0,0,0,100,0,50,50,0,0,85,37493,0,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - InVoker Cast Feign Death"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - Say Line 1"),
(@ENTRY,9,8,0,0,0,100,0,8000,8000,0,0,1,1,0,0,0,0,0,19,21768,0,0,0,0,0,0,"Akama - Script - Say Line 1 on Vagath"),
(@ENTRY,9,9,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - Say Line 2"),
(@ENTRY,9,10,0,0,0,100,0,2000,2000,0,0,11,37449,0,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - Cast Resurrect"),
(@ENTRY,9,11,0,0,0,100,0,3000,3000,0,0,28,37493,0,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - Remove Aura Feign Death"),
(@ENTRY,9,12,0,0,0,100,0,0,0,0,0,19,1,1,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - Set Unit Flags 2 on Player"),
(@ENTRY,9,13,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Akama - Script - Set Npc Flags"),
(@ENTRY,9,14,0,0,0,100,0,17000,17000,0,0,1,1,0,0,0,0,0,19,21699,0,0,0,0,0,0,"Akama - Script - Say Line 1 on Maiev Shadowsong "),
(@ENTRY,9,15,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,"Akama - Script - Say Line 3"),
(@ENTRY,9,16,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,19,21699,0,0,0,0,0,0,"Akama - Script - Say Line 2 on Maiev Shadowsong ");

-- Actionlist SAI
SET @ENTRY := 2378000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Executor Anselm - Script - Set Phase 1"),
(@ENTRY,9,2,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,4,0,0,0,100,0,12000,12000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,5,0,0,0,100,0,12000,12000,0,0,1,0,0,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,6,0,0,0,100,0,12000,12000,0,0,1,1,0,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,7,0,0,0,100,0,12000,12000,0,0,1,2,0,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,8,0,0,0,100,0,8000,8000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,9,0,0,0,100,0,9000,9000,0,0,45,1,1,0,0,0,0,9,23883,0,200,0,0,0,0,"High Executor Anselm - Script - Set Data on Forsaken Crossbow Man"),
(@ENTRY,9,10,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,9,24044,0,200,0,0,0,0,"High Executor Anselm - Script - Set Data on Forsaken Crossbow Man"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,12,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,13,0,0,0,100,0,9000,9000,0,0,45,3,3,0,0,0,0,9,24044,0,200,0,0,0,0,"High Executor Anselm - Script - Set Data on Forsaken Crossbow Man"),
(@ENTRY,9,14,0,0,0,100,0,2000,2000,0,0,45,1,1,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,15,0,0,0,100,0,2000,2000,0,0,45,2,2,0,0,0,0,9,23883,0,200,0,0,0,0,"High Executor Anselm - Script - Set Data on Forsaken Crossbow Man"),
(@ENTRY,9,16,0,0,0,100,0,2000,2000,0,0,45,2,2,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,17,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,18,0,0,0,100,0,8000,8000,0,0,1,5,0,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Say"),
(@ENTRY,9,19,0,0,0,100,0,8000,8000,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Executor Anselm - Script - Set Phase 2"),
(@ENTRY,9,20,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,19,24041,0,0,0,0,0,0,"High Executor Anselm - Script - Despawn Prince Keleseth"),
(@ENTRY,9,21,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,9,24044,0,200,0,0,0,0,"High Executor Anselm - Script - Despawn Prince Keleseth");

-- Aurelon SAI
SET @ENTRY := 16501;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,40,120000,120000,11,29170,0,0,0,0,0,9,0,0,0,0,0,0,0,"Aurelon - On Friendly Between 0-40% Health - Cast 'Lesser Heal'");

-- Zalduun SAI
SET @ENTRY := 16502;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,40,120000,120000,11,29170,0,0,0,0,0,9,0,0,0,0,0,0,0,"Zalduun - On Friendly Between 0-40% Health - Cast 'Lesser Heal'");

-- Hellfire Watcher SAI
SET @ENTRY := 17309;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2400,6100,10500,23400,11,14032,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hellfire Watcher - In Combat - Cast 'Shadow Word: Pain' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,40,12000,20000,11,12039,1,0,0,0,0,9,0,0,0,0,0,0,0,"Hellfire Watcher - On Friendly Between 0-40% Health - Cast 'Heal' (No Repeat)"),
(@ENTRY,0,2,0,0,0,100,4,0,40,12000,20000,11,30643,1,0,0,0,0,9,0,0,0,0,0,0,0,"Hellfire Watcher - On Friendly Between 0-40% Health - Cast 'Heal' (No Repeat)"),
(@ENTRY,0,3,0,2,0,100,0,0,50,20000,25000,11,8362,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hellfire Watcher - Between 0-50% Health - Cast 'Renew' (No Repeat)");

-- Crimson Courier SAI
SET @ENTRY := 12337;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,30000,60000,120000,180000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crimson Courier - Out of Combat - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crimson Courier - On Aggro - Call For Help"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,19726,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crimson Courier - On Aggro - Cast 'Resistance Aura'"),
(@ENTRY,0,3,0,0,0,100,0,5000,7000,6000,8000,11,17143,0,0,0,0,0,2,0,0,0,0,0,0,0,"Crimson Courier - In Combat - Cast 'Holy Strike'"),
(@ENTRY,0,4,0,0,0,100,0,8000,11000,15000,20000,11,13005,0,0,0,0,0,5,0,0,0,0,0,0,0,"Crimson Courier - In Combat - Cast 'Hammer of Justice'"),
(@ENTRY,0,5,0,0,0,100,0,9000,13000,10000,14000,11,17149,0,0,0,0,0,5,0,0,0,0,0,0,0,"Crimson Courier - In Combat - Cast 'Exorcism'"),
(@ENTRY,0,6,0,0,0,100,0,2000,4000,20000,26000,11,19725,1,0,0,0,0,6,0,0,0,0,0,0,0,"Crimson Courier - In Combat - Cast 'Turn Undead'"),
(@ENTRY,0,7,0,0,0,100,0,0,40,14000,18000,11,15493,1,0,0,0,0,9,0,0,0,0,0,0,0,"Crimson Courier - On Friendly Between 0-40% Health - Cast 'Holy Light'");

-- Scarlet Trooper SAI
SET @ENTRY := 12352;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,8258,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Trooper - On Aggro - Cast 'Devotion Aura'"),
(@ENTRY,0,1,0,0,0,100,0,4000,6000,7000,9000,11,17149,0,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Trooper - In Combat - Cast 'Exorcism'"),
(@ENTRY,0,2,0,0,0,100,0,8000,11000,15000,19000,11,13005,0,0,0,0,0,5,0,0,0,0,0,0,0,"Scarlet Trooper - In Combat - Cast 'Hammer of Justice'"),
(@ENTRY,0,3,0,0,0,100,0,0,40,15000,20000,11,17233,1,0,0,0,0,9,0,0,0,0,0,0,0,"Scarlet Trooper - On Friendly Between 0-40% Health - Cast 'Lay on Hands'");


-- Rookery Whelp SAI
SET @ENTRY := 10161;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,500,5000,0,0,11,15750,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rookery Whelp - On spawn - Cast Rookery Whelp Spawn-in Spell"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,19,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rookery Whelp - On spawn - Remove unit flag");

-- Silver Hand Disciple SAI
SET @ENTRY := 10949;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,6000,6000,9000,11,14518,0,0,0,0,0,2,0,0,0,0,0,0,0,"Silver Hand Disciple - In Combat - Cast 'Crusader Strike'"),
(@ENTRY,0,1,0,0,0,100,0,0,40,15000,20000,11,15493,1,0,0,0,0,9,0,0,0,0,0,0,0,"Silver Hand Disciple - On Friendly Between 0-40% Health - Cast 'Holy Light'");

-- Actionlist SAI
SET @ENTRY := 566100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brother Malach - Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,12000,12000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brother Malach - Script - Say Line 1"),
(@ENTRY,9,3,0,0,0,100,0,25000,25000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brother Malach - Script - Say Line 2"),
(@ENTRY,9,4,0,0,0,100,0,12000,12000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brother Malach - Script - Say Line 3"),
(@ENTRY,9,6,0,0,0,100,0,35000,35000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brother Malach - Script - Say Line 4"),
(@ENTRY,9,7,0,0,0,100,0,12000,12000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brother Malach - Script - Say Line 5"),
(@ENTRY,9,9,0,0,0,100,0,50000,50000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brother Malach - Script - Say Line 5");

-- Actionlist SAI
SET @ENTRY := 478100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,"Snufflenose Gopher - Script - Say Line 2"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,70,300,0,0,0,0,0,20,20920,10,0,0,0,0,0,"Snufflenose Gopher - Script - Respawn Blueleaf Tuber"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,29,1,0,0,0,0,0,23,0,0,0,0,0,0,0,"Snufflenose Gopher - Script - Follow Summoner"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Snufflenose Gopher - Script - Set Hostile");

-- Actionlist SAI
SET @ENTRY := 261000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Script - Say Line 0"),
(@ENTRY,9,2,0,0,0,100,0,9000,9000,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.64,-1967.59,15.3479,5.52555,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2161.89,-1968.63,15.6413,5.46271,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.25,-1965.68,15.0634,5.60016,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.36,-1971.42,15.5962,4.96721,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,6,0,0,0,100,0,20000,20000,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.64,-1967.59,15.3479,5.52555,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2161.89,-1968.63,15.6413,5.46271,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.25,-1965.68,15.0634,5.60016,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,9,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Script - Say Line 1"),
(@ENTRY,9,10,0,0,0,100,0,15000,15000,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.64,-1967.59,15.3479,5.52555,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2161.89,-1968.63,15.6413,5.46271,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,13,0,0,0,100,0,30000,30000,0,0,15,667,0,0,0,0,0,17,0,100,0,0,0,0,0,"Shakes O'Breen - On Script - Quest Credit 'Death From Below'"),
(@ENTRY,9,14,0,0,0,100,0,30000,30000,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Script - Add Npc Flag ");

--  SAI
SET @ENTRY := 254235;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Metal Stake SAI
SET @ENTRY := 193025;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,70,0,100,0,2,0,0,0,45,1,1,0,0,0,0,19,30993,0,0,0,0,0,0,"Metal Stake - On State Changed - Set Data 1 1 on");

-- Archivum Console SAI
SET @ENTRY := 194555;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,20,0,100,1,13604,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Archivum Console - On Quest Reward - Run Script (Non repeatable - 10m only)"),
(@ENTRY,1,1,0,20,0,100,5,13817,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Archivum Console - On Quest Reward - Run Script (Non repeatable - 25m only)"),
(@ENTRY,1,4,8,62,0,100,0,10368,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Archivum Console - On Gossip Select - Run Script "),
(@ENTRY,1,5,8,62,0,100,0,10368,1,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Archivum Console - On Gossip Select - Run Script "),
(@ENTRY,1,6,8,62,0,100,0,10368,2,0,0,80,@ENTRY*100+03,2,0,0,0,0,1,0,0,0,0,0,0,0,"Archivum Console - On Gossip Select - Run Script "),
(@ENTRY,1,7,8,62,0,100,0,10368,3,0,0,80,@ENTRY*100+04,2,0,0,0,0,1,0,0,0,0,0,0,0,"Archivum Console - On Gossip Select - Run Script "),
(@ENTRY,1,8,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Archivum Console - On Gossip Select - Close Gossip "),
(@ENTRY,1,9,0,20,0,100,1,13622,0,0,0,80,@ENTRY*100+05,2,0,0,0,0,1,0,0,0,0,0,0,0,"Archivum Console - On Quest Reward - Run Script (Non repeatable)"),
(@ENTRY,1,10,0,64,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivum Console - On Gossip Hello - Reset All Scripts");

-- Light's Vengeance SAI
SET @ENTRY := 201937;
UPDATE `gameobject_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;

-- Actionlist SAI
SET @ENTRY := 618201;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Action 0 - Set Root"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Action 2 - Set Event Phase to 2");

-- Actionlist SAI
SET @ENTRY := 618202;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Action 0 - Set Root"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Action 2 - Set Event Phase to 3");

-- Actionlist SAI
SET @ENTRY := 618203;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Action 0 - Set Root"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Action 2 - Set Event Phase 4");
