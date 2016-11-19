-- Fix Spell Script Name
-- By Bodeguero for JadeCore.

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (124081, 'spell_monk_zen_sphere');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (124081, 'spell_monk_zen_sphere_hot');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (82327, 'spell_pal_daybreak');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (50462, 'spell_dk_anti_magic_shell_raid');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (48707, 'spell_dk_anti_magic_shell_self');
DELETE FROM spell_script_names WHERE spell_id=54428 AND ScriptName='spell_pal_divine_plea';
INSERT INTO spell_script_names VALUES ('54428', 'spell_pal_divine_plea');
DELETE FROM spell_script_names WHERE ScriptName = 'spell_monk_transcendence_transfer';
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES (119996, 'spell_monk_transcendence_transfer');
DELETE FROM spell_script_names WHERE ScriptName = 'spell_monk_transcendence';
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES (102141, 'spell_monk_transcendence');