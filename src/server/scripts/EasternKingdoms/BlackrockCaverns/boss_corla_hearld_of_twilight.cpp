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
#include "Spell.h"
#include "blackrock_caverns.h"

//todo: реализовать нормальное превращение
enum ScriptTexts
{
	SAY_AGGRO		= 0,
	SAY_KILL		= 1,
	SAY_TRANSFORM	= 2,
	SAY_DEATH		= 3,
};

enum Spells
{
    SPELL_AURA_ACELERATION                       = 75817,
    SPELL_AURA_ACELERATION_H					 = 87376,
    SPELL_DARK_COMMAND                           = 75823,
    SPELL_DARK_COMMAND_H                         = 93462,
    SPELL_DRAIN_ESSENCE                          = 75645,
    SPELL_TWILIGHT_EVOLUTION                     = 75732,
	SPELL_EVOLUTION_0							 = 75697,
    SPELL_EVOLUTION                              = 75610,
	SPELL_KNEELING_IN_SUPPLICATION				 = 75608,
};
 
enum Adds
{
	NPC_CORLA_TWILIGHT_ZEALOT	= 50284,
};

enum Events
{
	EVENT_DARK_COMMAND	= 1,
};

const Position twilightzealotPos[3] = 
{
	{574.16f, 974.27f, 155.35f, 4.74f},
	{563.06f, 982.78f, 155.35f, 4.63f},
	{587.57f, 984.64f, 155.35f, 4.49f}
};

class boss_corla_herald_of_twilight : public CreatureScript
{
 
    public:
        boss_corla_herald_of_twilight() : CreatureScript("boss_corla_herald_of_twilight") { }
     
        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new boss_corla_herald_of_twilightAI (pCreature);
        }
     
        struct boss_corla_herald_of_twilightAI : public ScriptedAI
        {
            boss_corla_herald_of_twilightAI(Creature* c) : ScriptedAI(c), summons(me)
            {
			    me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
			    me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
			    pInstance = (InstanceScript*)c->GetInstanceScript();
            }
     
            InstanceScript* pInstance;
		    EventMap events;
		    SummonList summons;
		    Creature* twilightzealots[3];

            void Reset()
            {
                events.Reset();
			    summons.DespawnAll();
			    if (pInstance)
                {
                    if (IsHeroic())
				        for (uint8 i = 0; i < 3; i++)
					        twilightzealots[i] = me->SummonCreature(NPC_CORLA_TWILIGHT_ZEALOT, twilightzealotPos[i]);
			        else
				        for (uint8 i = 1; i < 3; i++)
					        twilightzealots[i] = me->SummonCreature(NPC_CORLA_TWILIGHT_ZEALOT, twilightzealotPos[i]);

                    pInstance->SetData(DATA_CORLA, NOT_STARTED);
                }
            }

		    void SpellHit(Unit* caster, SpellInfo const* spell)
		    {
			    if (me->GetCurrentSpell(CURRENT_GENERIC_SPELL))
				    if ((me->GetCurrentSpell(CURRENT_GENERIC_SPELL)->m_spellInfo->Id == SPELL_DARK_COMMAND) ||
					    (me->GetCurrentSpell(CURRENT_GENERIC_SPELL)->m_spellInfo->Id == SPELL_DARK_COMMAND_H))
					    for (uint8 i = 0; i < 3; ++i)
						    if (spell->Effects[i].Effect == SPELL_EFFECT_INTERRUPT_CAST)
							    me->InterruptSpell(CURRENT_GENERIC_SPELL);
		    }

            void EnterCombat(Unit* /*who*/) 
            {
			    DoCast(SPELL_AURA_ACELERATION);
			    events.ScheduleEvent(EVENT_DARK_COMMAND, urand(6000, 10000));
			    Talk(SAY_AGGRO);
                DoZoneInCombat();
                if (pInstance)
                    pInstance->SetData(DATA_CORLA, IN_PROGRESS);
            }
     
            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;
     
			    if (me->GetDistance(me->GetHomePosition()) > 60.0f)
                {
                    EnterEvadeMode();
                    return;
                }

			    events.Update(diff);

			    if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;
    			
			    while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
				    case EVENT_DARK_COMMAND:
					    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1))
						    DoCast(target, DUNGEON_MODE(SPELL_DARK_COMMAND, SPELL_DARK_COMMAND_H));
					    events.ScheduleEvent(EVENT_DARK_COMMAND, urand(23000, 25000));
					    break;
				    }
			    }
      
                DoMeleeAttackIfReady();
            }
     
            void JustDied(Unit* /*killer*/)
            {
			    summons.DespawnAll();
			    Talk(SAY_DEATH);
                if (pInstance)
                    pInstance->SetData(DATA_CORLA, DONE);
            }
     
            void KilledUnit(Unit * victim)
            {
			    Talk(SAY_KILL);
            }

		    void SummonedCreatureDespawn(Creature* summon)
		    {
			    summons.Despawn(summon);
		    }

		    void JustSummoned(Creature* summon)
		    {
			    summons.Summon(summon);
			    switch (summon->GetEntry())
			    {
			        case NPC_CORLA_TWILIGHT_ZEALOT:
				        summon->SetReactState(REACT_PASSIVE);
				        summon->CastSpell(summon, SPELL_KNEELING_IN_SUPPLICATION, true);
				        break;
			    }
		    }
        };
};
 
void AddSC_boss_corla_herald_of_twilight()
{
    new boss_corla_herald_of_twilight();
}
