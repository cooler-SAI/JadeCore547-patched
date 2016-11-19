/*
 * Copyright (C) 2013-2016 JadeCore <https://www.jadecore.tk/>
 * Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2011-2016 Project SkyFire <http://www.projectskyfire.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef DEF_ZULGURUB_H
#define DEF_ZULGURUB_H

#define ZGScriptName "instance_zulgurub"

uint32 const EncounterCount = 5;

enum DataTypes
{
    DATA_VENOXIS            = 0,
    DATA_MANDOKIR           = 1,
    DATA_KILNARA            = 2,
    DATA_ZANZIL             = 3,
    DATA_JINDO              = 4,

    // Cache of Madness
    DATA_HAZZARAH           = 5,
    DATA_RENATAKI           = 6,
    DATA_WUSHOOLAY          = 7,
    DATA_GRILEK             = 8,
    DATA_BOSSES             = 9,
};

enum CreatureIds
{
    NPC_VENOXIS             = 52155,
    NPC_MANDOKIR            = 52151,
    NPC_KILNARA             = 52059,
    NPC_ZANZIL              = 52053,
    NPC_JINDO               = 52148,

    // Cache of Madness
    NPC_HAZZARAH            = 52271,
    NPC_RENATAKI            = 52269,
    NPC_WUSHOOLAY           = 52286,
    NPC_GRILEK              = 52258,
};

enum GameObjectIds
{
    GO_VENOXIS_EXIT     = 208844,
    GO_MANDOKIR_EXIT1   = 208845,
    GO_MANDOKIR_EXIT2   = 208846,
    GO_MANDOKIR_EXIT3   = 208847,
    GO_MANDOKIR_EXIT4   = 208848,
    GO_MANDOKIR_EXIT5   = 208849,
    GO_ZANZIL_EXIT      = 208850,
    GO_KILNARA_EXIT     = 180497,
};

enum OtherSpells
{
    SPELL_FROSTBURN_FORMULA = 96331,
    SPELL_HYPPOTHERMIA      = 96332,
};

#endif

