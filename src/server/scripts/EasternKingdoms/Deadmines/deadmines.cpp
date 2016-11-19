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

enum Adds
{
    // quest
    NPC_EDWIN_CANCLEEF_1    = 42697, 
    NPC_ALLIANCE_ROGUE      = 42700,
    NPC_VANESSA_VANCLEEF_1  = 42371, // little
};

class go_defias_cannon : public GameObjectScript
{
    public:
        go_defias_cannon() : GameObjectScript("go_defias_cannon") { }

        bool OnGossipHello(Player* pPlayer, GameObject* pGo)
        {
            InstanceScript* pInstance = pGo->GetInstanceScript();
            if (!pInstance)
                return false;
            //if (pInstance->GetData(DATA_CANNON_EVENT) != CANNON_NOT_USED)
                //return false ;

            pInstance->SetData(DATA_CANNON_EVENT, CANNON_BLAST_INITIATED);
            return false;
        }
};

void AddSC_deadmines()
{
    new go_defias_cannon();
}