/*
* Copyright (C) 2008-2015 TrinityCore <http//www.trinitycore.org/>
* Copyright (C) 2016-20XX JadeCore <https//www.jadecore.tk/>
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
* with this program. If not, see <http//www.gnu.org/licenses/>.
*/

#ifndef HEART_OF_FEAR
#define HEART_OF_FEAR

#include "SpellScript.h"
#include "Map.h"
#include "Creature.h"
#include "CreatureAIImpl.h"

enum eData
{
	DATA_IMPERIAL_VIZIER_ZORLOK = 1,
	DATA_BLADE_LOR_TAYAK        = 2,
	DATA_GARALON                = 3,
	DATA_WIND_LORD_MELJARAK     = 4,
	DATA_AMBER_SHAPER_UNSOK     = 5,
	DATA_GRAND_EMPRESS_SHEKZEER = 6,
	MAX_BOSS_DATA               = 7,
};

enum eCreatures
{
	// Bosses
	BOSS_IMPERIAL_VIZIER_ZORLOK = 62980,
	BOSS_BLADE_LOR_TAYAK        = 62543,
	BOSS_GARALON                = 62164,
	BOSS_WIND_LORD_MELJARAK     = 62397,
	BOSS_AMBER_SHAPER_UNSOK     = 62511,
	BOSS_GRAND_EMPRESS_SHEKZEER = 62837,
};

#endif