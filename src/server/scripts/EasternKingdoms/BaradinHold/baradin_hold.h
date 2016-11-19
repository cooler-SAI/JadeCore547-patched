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

#ifndef DEF_BARADINHOLD_H
#define DEF_BARADINHOLD_H

#define MAX_ENCOUNTER 3

#define BHScriptName "instance_baradin_hold"

enum Creatures
{
    NPC_ARGALOTH            = 47120,
    NPC_OCCUTHAR            = 52363,
    NPC_ALIZABAL            = 55869,
};

enum Gameobjects
{
    GO_TOLBARAD_DOOR_2  = 207619,
    GO_CELL_DOOR        = 208953,
    GO_TOLBARAD_DOOR_1  = 209849,
};

enum Data
{
    DATA_ARGALOTH   = 0,
    DATA_OCCUTHAR   = 1,
    DATA_ALIZABAL   = 2,   
};

#endif
