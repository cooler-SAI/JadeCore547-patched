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

#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "AchievementMgr.h"

enum Achievements
{
    ACHIEVEMENT_RETURN_TO_SENDER = 6485,
};

enum Spells
{

};

enum Mobs
{
    // Heroic Adds
    NPC_ECHO_OF_ATTENUATION     = 65173,
    NPC_ECHO_OF_FORCE_AND_VERVE = 65174,
};

enum Events
{

};

enum Objects
{
    GOB_ARENA_WALLS       = 212916,
    GOB_FINAL_PHASE_WALLS = 212943,
};

enum Talk
{
/*  Pre-boss event saying
	DoPlaySoundToSet(me, 29303); 6 seconds
	me->MonsterYell("We are the extension of our Empress's will.", LANG_UNIVERSAL, me->GetGUID());

	DoPlaySoundToSet(me, 29304); 11 seconds
	me->MonsterYell("Ours is but to serve in Her divine name.", LANG_UNIVERSAL, me->GetGUID());

	DoPlaySoundToSet(me, 29305); 16 seconds
	me->MonsterYell("Never to question, nor to contemplate, we simple act.", LANG_UNIVERSAL, me->GetGUID());

	DoPlaySoundToSet(me, 29306); 21 seconds
	me->MonsterYell("We fight, toil and serve so that Her vision is made for us reality.", LANG_UNIVERSAL, me->GetGUID());

	DoPlaySoundToSet(me, 29307); 27 seconds
	me->MonsterYell("Her happiness is our reward, her sorrow our failure.", LANG_UNIVERSAL, me->GetGUID());

	DoPlaySoundToSet(me, 29308); 36 seconds
	me->MonsterYell("We will give our lives for the Empress without hesitation. She's our light and without her our lives will be lost to darkness.", LANG_UNIVERSAL, me->GetGUID());
*/

/*  After death event
	DoPlaySoundToSet(me, 29274); 6 seconds
	me->MonsterYell("My voice's gone.. how will my subject hear me? will they still love their empress? they will return to me as the Kl'axxi I am.", LANG_UNIVERSAL, me->GetGUID());

	DoPlaySoundToSet(me, 29275); 11 seconds
	me->MonsterYell("They sent you!? They wouldn't dare!.. would they?", LANG_UNIVERSAL, me->GetGUID());

	DoPlaySoundToSet(me, 29276); 16 seconds
	me->MonsterYell("You! you will suffer for your insolence by the hand of my greatest champions! Surely they will protect their Empress.", LANG_UNIVERSAL, me->GetGUID());

	DoPlaySoundToSet(me, 29277); 20 seconds
	me->MonsterYell("Hear me subjects, your empress's is threatend by these outsiders - they wants to kill me. To Kill us all! DESTROY THEM!", LANG_UNIVERSAL, me->GetGUID());
*/
};

Position const Ramp_Pos1 = { -2236.312744f, 217.689651f, 2.556486f };
Position const Ramp_Pos2 = { -2317.847900f, 299.153625f, 409.896881f };
Position const Ramp_Pos3 = { -2315.115967f, 218.375854f, 409.897125f };


Position finalPhaseWalls1[3] =
{
    { -2299.195f, 282.5938f, 408.5445f, 2.383867f },
    { -2250.401f, 234.0122f, 408.5445f, 2.333440f },
    { -2299.63f, 233.3889f, 408.5445f, 0.7598741f }
};
Position finalPhaseWalls2[3] =
{
    { -2255.168f, 308.7326f, 406.0f, 0.7853968f },
    { -2240.0f, 294.0f, 406.0f, 0.7853968f },
    { -2225.753f, 280.1424f, 406.381f, 0.7853968f },
};


class boss_imperial_zorlok : public CreatureScript
{
public:
    boss_imperial_zorlok() : CreatureScript("boss_imperial_zorlok") { }

    struct boss_imperial_zorlokAI : public BossAI
    {
        boss_imperial_zorlokAI(Creature* creature) : BossAI(creature, 0)
        {
            me->SetLevel(93);
            me->setFaction(16);
            me->SetSpeed(MOVE_RUN, 3.5f, true);
            me->SetSpeed(MOVE_FLIGHT, 3.5f, true);
        }

        InstanceScript* instance;

        void Reset()
        {
            _Reset();
        }

        void EnterCombat(Unit* who)
        {
            _EnterCombat();

            // Set new home position
            me->SetHomePosition(-2291.480957f, 243.480286f, 422.678986f, 0.753832f);
        }

        void JustReachedHome()
        {
            summons.DespawnAll();
        }

        void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
        {

        }

        void UpdateAI(uint32 const diff)
        {
            events.Update(diff);

            if (!UpdateVictim())
                return;

			if (me->HasUnitState(UNIT_STATE_CASTING))
				return;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            _JustDied();
        }

        void KilledUnit(Unit* /*victim*/)
        {

        }

        void RampChange(bool message)
        {
            MotionMaster* motion = me->GetMotionMaster();

            if (message)
            {
                me->MonsterTextEmote("Imperial Vizier Zor'lok flies to one of his platforms!", me->GetGUID(), true);

                if (motion)
                    motion->MovePoint(1, me->GetPositionX(), me->GetPositionY(), 423.399048f);

                me->SetReactState(REACT_PASSIVE);
                me->AddUnitState(UNIT_STATE_CANNOT_AUTOATTACK);
                message = false;
            }
        }

        void CenterChange()
        {
            if (MotionMaster* motion = me->GetMotionMaster())
            {
                motion->MovePoint(1, -2274.567383f, 259.058289f, 420.271484f);
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_imperial_zorlokAI(creature);
    }
};

void AddSC_imperial_zorlok()
{
    // Boss
    new boss_imperial_zorlok();
}