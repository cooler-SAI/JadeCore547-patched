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
#include "baradin_hold.h"

enum Spells
{
    SPELL_FEL_FIRESTORM       = 88972,
    SPELL_CONSUMING_DARKNESS  = 88954,
    SPELL_METEOR_SLASH        = 88942,
    SPELL_BERSERK             = 47008,
};

enum ePhases
{
    PHASE_1,
    PHASE_2,
};

class boss_argaloth : public CreatureScript
{
    public:
        boss_argaloth() : CreatureScript("boss_argaloth") { }

        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new boss_argalothAI(pCreature);
        }

        struct boss_argalothAI : public BossAI
        {
            boss_argalothAI(Creature* pCreature) : BossAI(pCreature, DATA_ARGALOTH) 
            {
                me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_STUN, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_FEAR, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_ROOT, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_FREEZE, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_POLYMORPH, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_HORROR, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_SAPPED, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_CHARM, true);
				me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_DISORIENTED, true);
				me->ApplySpellImmune(0, IMMUNITY_STATE, SPELL_AURA_MOD_CONFUSE, true);
            }

            uint8 Phase, PhaseCount;

            uint32 SlashTimer;
            uint32 ConsumingDarknessTimer;
            uint32 BerserkTimer;
            uint32 ResetPhaseTimer;

            void Reset()
            {
                _Reset();

                PhaseCount = 0;
                SlashTimer = 10000;
                ConsumingDarknessTimer = 15000;
                BerserkTimer = 360000;
                Phase = PHASE_1;
            }

            void EnterCombat(Unit* attacker)
            {
                instance->SetBossState(DATA_ARGALOTH, IN_PROGRESS);
            }

            void JustDied(Unit* killer)
            {
                _JustDied();
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                if(SlashTimer <= diff && Phase == PHASE_1)
                {
                    DoCastVictim(SPELL_METEOR_SLASH);
                    SlashTimer = 15000;
                } else SlashTimer -= diff;

                if(ConsumingDarknessTimer <= diff && Phase == PHASE_1)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(target, SPELL_CONSUMING_DARKNESS, true);
                    ConsumingDarknessTimer = 15000;
                } else ConsumingDarknessTimer -= diff;

                if(BerserkTimer <= diff && Phase == PHASE_1)
                {
                    DoCast(me, SPELL_BERSERK);
                    BerserkTimer = 360000;
                } else BerserkTimer -= diff;

                if (HealthBelowPct(67) && Phase == PHASE_1 && PhaseCount == 0)
                {
                    PhaseCount++;
                    Phase = PHASE_2;
                    me->SetReactState(REACT_PASSIVE);
                    me->AttackStop();
                    DoCastAOE(SPELL_FEL_FIRESTORM);
                    ResetPhaseTimer = 16500;
                }

                if (HealthBelowPct(34) && Phase == PHASE_1 && PhaseCount == 1)
                {
                    PhaseCount++;
                    Phase = PHASE_2;
                    me->SetReactState(REACT_PASSIVE);
                    me->AttackStop();
                    DoCastAOE(SPELL_FEL_FIRESTORM);
                    ResetPhaseTimer = 16500;
                }

                if(ResetPhaseTimer <= diff)
                {
                    Phase = PHASE_1;
                    me->SetReactState(REACT_AGGRESSIVE);
                    SlashTimer = 10000;
                    ConsumingDarknessTimer = 15000;
                    ResetPhaseTimer = 360000;
                } else ResetPhaseTimer -= diff;

                DoMeleeAttackIfReady();
            }
        };
};

void AddSC_boss_argaloth()
{
    new boss_argaloth();
}
