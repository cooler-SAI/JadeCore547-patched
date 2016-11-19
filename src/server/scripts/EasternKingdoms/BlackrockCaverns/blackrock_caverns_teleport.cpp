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

#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "blackrock_caverns.h"
#include "Spell.h"

#define GOSSIP_SENDER_PORT 645

class bc_teleport : public GameObjectScript
{
    public:
        bc_teleport() : GameObjectScript("bc_teleport") { }

        bool OnGossipHello(Player* player, GameObject* go)
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport Inicio", GOSSIP_SENDER_PORT, 1);
            if (InstanceScript* instance = go->GetInstanceScript())
            {
                if (instance->GetData(DATA_ROMOGG) == DONE)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport Boss 1", GOSSIP_SENDER_PORT, 2);
                if (instance->GetData(DATA_CORLA) == DONE)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport Boss 2", GOSSIP_SENDER_PORT, 3);
                if (instance->GetData(DATA_KARSH) == DONE)
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Teleport Boss 3 y 4", GOSSIP_SENDER_PORT, 4);

             }

            player->SEND_GOSSIP_MENU(go->GetGOInfo()->GetGossipMenuId(), go->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, GameObject* /*go*/, uint32 sender, uint32 action)
        {
            player->PlayerTalkClass->ClearMenus();
            player->CLOSE_GOSSIP_MENU();

            if (player->isInCombat())
            {
                return true;
            }

            if (sender == GOSSIP_SENDER_PORT)
            { 
                if (action==1)
                   player->TeleportTo(645,233.02f,1128.43f,205.56f,3.40f);
                if (action==2)
                   player->TeleportTo(645,308.03f,951.24f,191.16f,6.21f);
                if (action==3)
                   player->TeleportTo(645,530.54f,863.57f,134.98f,3.15f);
                if (action==4)
                   player->TeleportTo(645,210.67f,713.62f,105.20f,4.50f);

            }
            return true;
        }
};

void AddSC_bc_teleport()
{
    new bc_teleport();
}
