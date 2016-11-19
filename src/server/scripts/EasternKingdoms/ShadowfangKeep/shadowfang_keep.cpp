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
#include "LFGMgr.h"
#include "Group.h"
#include "shadowfang_keep.h"

class npc_apothecary_hummel : public CreatureScript
{
    public:
        npc_apothecary_hummel() : CreatureScript("npc_apothecary_hummel") { }
        
        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_apothecary_hummelAI (pCreature);
        }

        bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
        {
            pPlayer->PlayerTalkClass->ClearMenus();
            pPlayer->CLOSE_GOSSIP_MENU();

            if (uiAction == 1)
            {
                if (Creature* pFrye = pCreature->FindNearestCreature(NPC_APOTHECARY_FRYE, 100.0f))
                    pFrye->setFaction(14);
                if (Creature* pBaxter = pCreature->FindNearestCreature(NPC_APOTHECARY_BAXTER, 100.0f))
                    pBaxter->setFaction(14);
                pCreature->setFaction(14);
            }
            return false;
        }

        struct npc_apothecary_hummelAI : public ScriptedAI
        {
            npc_apothecary_hummelAI(Creature* pCreature) : ScriptedAI(pCreature)
            {
            }

            void JustDied(Unit* /*killer*/)
            {
            }
        };
};

void AddSC_shadowfang_keep()
{
    new npc_apothecary_hummel();
}
