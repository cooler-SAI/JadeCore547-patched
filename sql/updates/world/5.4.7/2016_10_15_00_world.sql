UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'boss_imperial_zorlok';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'Cinematic_Triggers_Zorlok';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'Cinematic_Triggers_Zorlok_Death';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'Srathik_Shield_Master_SentenceTrigger';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'Srathik_Shield_Master_SentenceTrigger_1';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'Srathik_Shield_Master_SentenceTrigger_2';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'Smoke_Trigger';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'Noise_Canceling_Zone';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `ScriptName` = 'npc_attenuation';

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'exhale';
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_gen_attenuation';