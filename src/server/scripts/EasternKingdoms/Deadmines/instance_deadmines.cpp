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
#include "deadmines.h"

#define MAX_ENCOUNTER 6

static const DoorData doordata[] = 
{
    {GO_FACTORY_DOOR,   DATA_GLUBTOK,   DOOR_TYPE_PASSAGE,    BOUNDARY_NONE},
    {GO_MAST_ROOM_DOOR, DATA_HELIX,     DOOR_TYPE_PASSAGE,    BOUNDARY_NONE},
    {GO_FOUNDRY_DOOR,   DATA_FOEREAPER, DOOR_TYPE_PASSAGE,    BOUNDARY_NONE}
};

class instance_deadmines : public InstanceMapScript
{
    public:
        instance_deadmines() : InstanceMapScript("instance_deadmines", 36) {}
        
        InstanceScript* GetInstanceScript(InstanceMap* pMap) const
        {
            return new instance_deadmines_InstanceMapScript(pMap);
        }

        struct instance_deadmines_InstanceMapScript : public InstanceScript
        {
            instance_deadmines_InstanceMapScript(Map* pMap) : InstanceScript(pMap) 
            {
                SetBossNumber(MAX_ENCOUNTER);
                LoadDoorData(doordata);
                
                uiGlubtokGUID = 0;
                uiHelixGUID = 0;
                uiOafGUID = 0;
                uiFoereaperGUID = 0;
                uiAdmiralGUID = 0;
                uiCaptainGUID = 0;

                IronCladDoorGUID = 0;
                DefiasCannonGUID = 0;
                DoorLeverGUID = 0;

                State = CANNON_NOT_USED;
                uiVanessaEvent = 0;
            };

            void OnCreatureCreate(Creature *pCreature)
            {
                switch (pCreature->GetEntry())
                {
                    case NPC_GLUBTOK:
                        uiGlubtokGUID = pCreature->GetGUID();
                        break;
                    case NPC_HELIX:
                        uiHelixGUID = pCreature->GetGUID();
                        break;
                    case NPC_OAF:
                        uiOafGUID = pCreature->GetGUID();
                        break;
                    case NPC_FOEREAPER:
                        uiFoereaperGUID = pCreature->GetGUID();
                        break;
                    case NPC_ADMIRAL:
                        uiAdmiralGUID = pCreature->GetGUID();
                        break;
                    case NPC_CAPTAIN:
                        uiCaptainGUID = pCreature->GetGUID();
                       break;
                }
            }

            void OnGameObjectCreate(GameObject* pGo)
            {
                switch(pGo->GetEntry())
                {
                    case GO_FACTORY_DOOR:
                    case GO_MAST_ROOM_DOOR:   
                    case GO_FOUNDRY_DOOR:   
                        AddDoor(pGo, true);
                        break;
                    case GO_IRONCLAD_DOOR:  IronCladDoorGUID = pGo->GetGUID();  break;
                    case GO_DEFIAS_CANNON:  DefiasCannonGUID = pGo->GetGUID();  break;
                    case GO_DOOR_LEVER:     DoorLeverGUID = pGo->GetGUID();     break;
                }
            }

            void ShootCannon()
            {
                if (GameObject *pDefiasCannon = instance->GetGameObject(DefiasCannonGUID))
                {
                    pDefiasCannon->SetGoState(GO_STATE_ACTIVE);
                    DoPlaySound(pDefiasCannon, SOUND_CANNONFIRE);
                }
            }

            void BlastOutDoor()
            {
                if (GameObject *pIronCladDoor = instance->GetGameObject(IronCladDoorGUID))
                {
                    pIronCladDoor->SetGoState(GO_STATE_ACTIVE_ALTERNATIVE);
                    DoPlaySound(pIronCladDoor, SOUND_DESTROYDOOR);
                }
            }

            void DoPlaySound(GameObject* unit, uint32 sound)
            {
                WorldPacket data(SMSG_PLAY_SOUND, 4);
                
                ObjectGuid guid = unit->GetGUID();

                uint8 bitsOrder[8] = { 1, 6, 7, 5, 4, 3, 0, 2 };
                data.WriteBitInOrder(guid, bitsOrder);
                data.FlushBits();

                data.WriteByteSeq(guid[3]);
                data.WriteByteSeq(guid[6]);
                data.WriteByteSeq(guid[5]);
                data.WriteByteSeq(guid[4]);
                data << uint32(sound);
                data.WriteByteSeq(guid[1]);
                data.WriteByteSeq(guid[2]);
                data.WriteByteSeq(guid[0]);
                data.WriteByteSeq(guid[7]);

                unit->SendMessageToSet(&data, false);
            }

            void SetData(uint32 type, uint32 data)
            {
                switch (type)
                {
                    case DATA_CANNON_EVENT:
                        State = data;
                        if (data == CANNON_BLAST_INITIATED)
                        {
                            ShootCannon();
                            BlastOutDoor();
                        }    
                        break;
                    case DATA_VANESSA_EVENT:
                        uiVanessaEvent = data;
                        if (data == DONE)
                            SaveToDB();
                        break;
                }
            }

            uint32 GetData(uint32 type)
            {
                if (type == DATA_VANESSA_EVENT)
                    return uiVanessaEvent;
                return 0;
            }

            uint64 GetData64(uint32 data)
            {
                switch (data)
                {
                    case DATA_GLUBTOK:
                        return uiGlubtokGUID;
                    case DATA_HELIX:
                        return uiHelixGUID;
                    case DATA_OAF:
                        return uiOafGUID;
                    case DATA_FOEREAPER:
                        return uiFoereaperGUID;
                    case DATA_ADMIRAL:
                        return uiAdmiralGUID;
                }
                return 0;
            }

            std::string GetSaveData()
            {
                OUT_SAVE_INST_DATA;

                std::string str_data;
                std::ostringstream saveStream;
                saveStream << "D M " << GetBossSaveData() << State << " " << uiVanessaEvent << " ";
                str_data = saveStream.str();

                OUT_SAVE_INST_DATA_COMPLETE;
                return str_data;
            }

            void Load(const char* in)
            {
                if (!in)
                {
                    OUT_LOAD_INST_DATA_FAIL;
                    return;
                }

                OUT_LOAD_INST_DATA(in);

                char dataHead1, dataHead2;

                std::istringstream loadStream(in);
                loadStream >> dataHead1 >> dataHead2;

                if (dataHead1 == 'D' && dataHead2 == 'M')
                {

                    for (uint8 i = 0; i < MAX_ENCOUNTER; ++i)
                    {
                        uint32 tmpState;
                        loadStream >> tmpState;
                        if (tmpState == IN_PROGRESS || tmpState > SPECIAL)
                            tmpState = NOT_STARTED;
                        SetBossState(i, EncounterState(tmpState));
                    }

                    loadStream >> State;

                    if (State == CANNON_BLAST_INITIATED)
                        if (GameObject *pIronCladDoor = instance->GetGameObject(IronCladDoorGUID))
                            pIronCladDoor->SetGoState(GO_STATE_ACTIVE_ALTERNATIVE);

                    loadStream >> uiVanessaEvent;
                    if (uiVanessaEvent != DONE)
                        uiVanessaEvent = NOT_STARTED;

                }
                else OUT_LOAD_INST_DATA_FAIL;

                OUT_LOAD_INST_DATA_COMPLETE;
            }

        private:
            uint64 uiGlubtokGUID;
            uint64 uiHelixGUID;
            uint64 uiOafGUID;
            uint64 uiFoereaperGUID;
            uint64 uiAdmiralGUID;
            uint64 uiCaptainGUID;

            uint64 FactoryDoorGUID;
            uint64 FoundryDoorGUID;
            uint64 MastRoomDoorGUID;
            uint64 IronCladDoorGUID;
            uint64 DefiasCannonGUID;
            uint64 DoorLeverGUID;
            uint64 DefiasPirate1GUID;
            uint64 DefiasPirate2GUID;
            uint64 DefiasCompanionGUID;

            uint32 State;
            uint32 uiVanessaEvent;

        };
};

void AddSC_instance_deadmines()
{
    new instance_deadmines();
}