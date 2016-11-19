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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "scarlet_halls.h"

// Cosmetic ToDo: Call for Help (he should summon guards) will be done soon

enum Spells
{
    SPELL_BERSERKER_RAGE  = 111221,
    SPELL_BLADES_OF_LIGHT = 111216,
    SPELL_DRAGONS_REACH   = 111217,
    SPELL_HEROIC_LEAP     = 111218
};

enum Events
{
    EVENT_RAGE,
    EVENT_BLADES,
    EVENT_DRAGON,
    EVENT_HAR_JUMP,
    EVENT_MOVE,
    EVENT_STOP_MOVE,
};

enum Texts
{
    SAY_AGGRO             = 0,
    SAY_CALL_GUARDS       = 1,
    SAY_KILLER1           = 2,
    SAY_KILLER2           = 3,
    SAY_DEATH             = 4
};

class boss_armsmaster_harlan : public CreatureScript
{
    public:
        boss_armsmaster_harlan() : CreatureScript("boss_armsmaster_harlan") { }

        struct boss_armsmaster_harlanAI : public BossAI
        {
            boss_armsmaster_harlanAI(Creature* creature) : BossAI(creature, DATA_ARMSMASTER_HARLAN) { }

            void Reset()
            {
                _Reset();
                rage = false;
                me->GetMotionMaster()->Clear();
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();
                Talk(SAY_AGGRO);
                events.ScheduleEvent(EVENT_HAR_JUMP, 30000);
                events.ScheduleEvent(EVENT_DRAGON, 4000);
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();
                Talk(SAY_DEATH);
            }

            void KilledUnit(Unit* victim)
            {
                if (victim->GetTypeId() == TYPEID_PLAYER)
                    Talk(RAND(SAY_KILLER1, SAY_KILLER2));
            }

            void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
            {
                if(!rage && !me->IsNonMeleeSpellCasted(false) && HealthBelowPct(10))
                {
                    rage = true;
                    DoCast(me, SPELL_BERSERKER_RAGE);
                }
            }

            void UpdateAI(uint32 const diff)
            {
                if(!UpdateVictim())
                    return;

                events.Update(diff);

                if(me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                if(uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_HAR_JUMP:
                            me->GetMotionMaster()->MoveJump(1206.589f, 444.073f, 0.987f, 40.0f, 40.0f);
                            DoCastAOE(SPELL_HEROIC_LEAP);
                            events.ScheduleEvent(EVENT_BLADES, 15000);
                            break;
                        case EVENT_BLADES:
                            me->getThreatManager().resetAllAggro();
                            DoCast(me, SPELL_BLADES_OF_LIGHT);
                            events.ScheduleEvent(EVENT_MOVE, 7000);
                            events.CancelEvent(EVENT_DRAGON);
                            break;
                        case EVENT_MOVE:
                            // the move status (random or with special points?) needs more infos @ retail
                            events.ScheduleEvent(EVENT_STOP_MOVE, 12000);
                            break;
                        case EVENT_STOP_MOVE:
                            events.CancelEvent(EVENT_MOVE);
                            events.CancelEvent(EVENT_BLADES);
                            events.ScheduleEvent(EVENT_HAR_JUMP, 50000);
                            events.ScheduleEvent(EVENT_DRAGON, 4000);
                            break;
                        case EVENT_DRAGON:
                            DoCastVictim(SPELL_DRAGONS_REACH);
                            events.ScheduleEvent(EVENT_DRAGON, 4000);
                            break;
                        default:
                            break;
                    }
                }
                DoMeleeAttackIfReady();
            }
        private:
            bool rage;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_armsmaster_harlanAI(creature);
        }
};


void AddSC_boss_armsmaster_harlan()
{
    new boss_armsmaster_harlan();
}
