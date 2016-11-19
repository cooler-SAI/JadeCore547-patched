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

#include "ScriptPCH.h"
#include "shadowfang_keep.h"

DoorData const doorData[] =
{
    {GO_COURTYARD_DOOR, DATA_ASHBURY,   DOOR_TYPE_PASSAGE,  BOUNDARY_NONE},
    {GO_SORCERER_DOOR,  DATA_VALDEN,    DOOR_TYPE_PASSAGE,  BOUNDARY_NONE},
    {GO_ARUGAL_DOOR,    DATA_VALDEN,    DOOR_TYPE_PASSAGE,  BOUNDARY_NONE},      
};

class instance_shadowfang_keep : public InstanceMapScript
{
    public:
        instance_shadowfang_keep() : InstanceMapScript("instance_shadowfang_keep", 33) { }

        InstanceScript* GetInstanceScript(InstanceMap* pMap) const
        {
            return new instance_shadowfang_keep_InstanceMapScript(pMap);
        }

        struct instance_shadowfang_keep_InstanceMapScript : public InstanceScript
        {
            instance_shadowfang_keep_InstanceMapScript(Map* pMap) : InstanceScript(pMap) 
            {
                SetBossNumber(EncounterCount);
                LoadDoorData(doorData);
                uiAshburyGUID = 0;
                uiSilverlaineGUID = 0;
                uiSpringvaleGUID = 0;
                uiValdenGUID = 0;
                uiGodfreyGUID = 0;
                teamInInstance = 0;
            };

            void BeforePlayerEnter(Player* pPlayer)
            {
                if (!teamInInstance)
                    teamInInstance = pPlayer->GetTeam();
            }

            void OnCreatureCreate(Creature* pCreature)
            {
                switch(pCreature->GetEntry())
                {
                    case NPC_BELMONT:
                        if (teamInInstance == ALLIANCE)
                            pCreature->UpdateEntry(NPC_IVAR);
                        break;
                    case NPC_GUARD_HORDE1:
                        if (teamInInstance == ALLIANCE)
                            pCreature->UpdateEntry(NPC_GUARD_ALLY);
                        break;
                    case NPC_GUARD_HORDE2:
                        if (teamInInstance == ALLIANCE)
                            pCreature->UpdateEntry(NPC_GUARD_ALLY);
                        break;
                    case NPC_ASHBURY:
                        uiAshburyGUID = pCreature->GetGUID();
                        break;
                    case NPC_SILVERLAINE:
                        uiSilverlaineGUID = pCreature->GetGUID();
                        break;
                    case NPC_SPRINGVALE:
                        uiSpringvaleGUID = pCreature->GetGUID();
                        break;
                    case NPC_VALDEN:
                        uiValdenGUID = pCreature->GetGUID();
                        break;
                    case NPC_GODFREY:
                        uiGodfreyGUID = pCreature->GetGUID();
                        break;
                }
            }

            void OnGameObjectCreate(GameObject* pGo)
            {
                switch(pGo->GetEntry())
                {
                    case GO_COURTYARD_DOOR:
                    case GO_SORCERER_DOOR:
                    case GO_ARUGAL_DOOR:
                        AddDoor(pGo, true);
                        break;
                }
            }

            bool SetBossState(uint32 type, EncounterState state)
            {
                if (!InstanceScript::SetBossState(type, state))
                    return false;
                return true;
            }

            uint32 GetData(uint32 type)
            {
                if (type == DATA_TEAM)
                    return teamInInstance;

                return 0;
            }

            std::string GetSaveData()
            {
                OUT_SAVE_INST_DATA;

                std::ostringstream saveStream;
                saveStream << "S K " << GetBossSaveData();

                OUT_SAVE_INST_DATA_COMPLETE;
                return saveStream.str();
            }

            uint64 GetData64(uint32 type)
            {
                switch (type)
                {
                    case DATA_ASHBURY: return uiAshburyGUID;
                    case DATA_SILVERLAINE: return uiSilverlaineGUID;
                    case DATA_SPRINGVALE: return uiSpringvaleGUID;
                    case DATA_VALDEN: return uiValdenGUID;
                    case DATA_GODFREY: return uiGodfreyGUID;
                }
                return 0;
            }

            void Load(const char* str)
            {
                if (!str)
                {
                    OUT_LOAD_INST_DATA_FAIL;
                    return;
                }

                OUT_LOAD_INST_DATA(str);

                char dataHead1, dataHead2;

                std::istringstream loadStream(str);
                loadStream >> dataHead1 >> dataHead2;

                if (dataHead1 == 'S' && dataHead2 == 'K')
                {
                    for (uint32 i = 0; i < EncounterCount; ++i)
                    {
                        uint32 tmpState;
                        loadStream >> tmpState;
                        if (tmpState == IN_PROGRESS || tmpState > SPECIAL)
                            tmpState = NOT_STARTED;
                        SetBossState(i, EncounterState(tmpState));
                    }
                }
                else
                    OUT_LOAD_INST_DATA_FAIL;

                OUT_LOAD_INST_DATA_COMPLETE;
            }
        
        private:
            uint64 uiAshburyGUID;
            uint64 uiSilverlaineGUID;
            uint64 uiSpringvaleGUID;
            uint64 uiValdenGUID;
            uint64 uiGodfreyGUID;
            uint32 teamInInstance;
        };

};


void AddSC_instance_shadowfang_keep()
{
    new instance_shadowfang_keep();
}