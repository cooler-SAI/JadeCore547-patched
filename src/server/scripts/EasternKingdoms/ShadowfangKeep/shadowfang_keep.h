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

#ifndef DEF_SHADOWFANG_KEEP_H
#define DEF_SHADOWFANG_KEEP_H

uint32 const EncounterCount = 5;

enum eData
{
    DATA_ASHBURY        = 0,
    DATA_SILVERLAINE    = 1,
    DATA_SPRINGVALE     = 2,
    DATA_VALDEN         = 3,
    DATA_GODFREY        = 4,
    DATA_EVENT_NPC      = 5,
    DATA_GUARDS         = 6,
    DATA_GUARDS2        = 7,
    DATA_TEAM           = 8,
};

enum NPCs
{
    NPC_BELMONT             = 47293,
    NPC_GUARD_HORDE1        = 47030,
    NPC_GUARD_HORDE2        = 47031,
    NPC_GUARD_ALLY          = 47027,
    NPC_IVAR                = 47006,
    NPC_CROMUSH             = 47294,
    NPC_ASHBURY             = 46962,
    NPC_SILVERLAINE         = 3887,
    NPC_LUPINE_SPECTRE      = 50923,
    NPC_SPRINGVALE          = 4278,
    NPC_VALDEN              = 46963,
    NPC_GODFREY             = 46964,

    // Holyday
    NPC_APOTHECARY_HUMMEL   = 36296,
    NPC_APOTHECARY_FRYE     = 36272,
    NPC_APOTHECARY_BAXTER   = 36565,

    GO_COURTYARD_DOOR       = 18895,
    GO_SORCERER_DOOR        = 18972,  
    GO_ARUGAL_DOOR          = 18971,
};

#endif