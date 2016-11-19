/*
* Copyright (C) 2008-2015 TrinityCore <http://www.trinitycore.org/>
* Copyright (C) 2016-20XX JadeCore <https://www.jadecore.tk/>
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

#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "VMapFactory.h"
#include "heart_of_fear.h"

class instance_heart_of_fear : public InstanceMapScript
{
	public:
		instance_heart_of_fear() : InstanceMapScript("instance_heart_of_fear", 897) { }

		InstanceScript* GetInstanceScript(InstanceMap* map) const
		{
			return new instance_heart_of_fear_map(map);
		}

		struct instance_heart_of_fear_map : public InstanceScript
		{
			instance_heart_of_fear_map(Map* map) : InstanceScript(map)
			{
			    
			}

			InstanceScript* pInstance = this;

			// Imperial Vizier Zor'lok
			uint64 zorlokGuid;

			// Blade Lord Ta'yak
			uint64 tayakGuid;

			// Garalon
			uint64 garalonGuid;

			// Wind Lord Mel'jarak
			uint64 meljarakGuid;

			// Amber-Shaper Un'sok
			uint64 unsokGuid;

			// Grand Empress Shek'zeer
			uint64 shekzeerGuid;

			void Initialize()
			{
				zorlokGuid   = 0;
				tayakGuid    = 0;
				garalonGuid  = 0;
				meljarakGuid = 0;
				unsokGuid    = 0;
				shekzeerGuid = 0;

				SetBossNumber(6);
			}

			void OnCreatureCreate(Creature* creature)
			{
				switch (creature->GetEntry())
				{
					case BOSS_IMPERIAL_VIZIER_ZORLOK:
						zorlokGuid = creature->GetGUID();
						break;
					case BOSS_BLADE_LOR_TAYAK:
						tayakGuid = creature->GetGUID();
						break;
					case BOSS_GARALON:
						garalonGuid = creature->GetGUID();
						break;
					case BOSS_WIND_LORD_MELJARAK:
						meljarakGuid = creature->GetGUID();
						break;
					case BOSS_AMBER_SHAPER_UNSOK:
						unsokGuid = creature->GetGUID();
						break;
					case BOSS_GRAND_EMPRESS_SHEKZEER:
						shekzeerGuid = creature->GetGUID();
						break;
				}
			}

			uint64 GetData64(uint32 type)
			{
				switch (type)
				{
					case DATA_IMPERIAL_VIZIER_ZORLOK:
						return zorlokGuid;
						break;
					case DATA_BLADE_LOR_TAYAK:
						return tayakGuid;
						break;
					case DATA_GARALON:
						return garalonGuid;
						break;
					case DATA_WIND_LORD_MELJARAK:
						return meljarakGuid;
						break;
					case DATA_AMBER_SHAPER_UNSOK:
						return unsokGuid;
						break;
					case DATA_GRAND_EMPRESS_SHEKZEER:
						return shekzeerGuid;
						break;
				}

				return 0;
			}
		};
};