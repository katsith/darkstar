﻿/*
===========================================================================

  Copyright (c) 2010-2011 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

  This file is part of DarkStar-server source code.

===========================================================================
*/

#include "../spell.h"
#include "../weapon_skill.h"
#include "../ability.h" 
#include "../battleutils.h"

#include "ai_general.h"


/************************************************************************
*																		*
*  В конструкторе присваиваем переменным значения по умолчанию			*
*																		*
************************************************************************/

CAIGeneral::CAIGeneral()
{
	m_Tick = 0;
	m_ActionType = ACTION_NONE;
	m_ActionTargetID = 0;
	m_LastActionTime = 0;

	m_PZone = NULL;
	m_PSpell = NULL;
	m_PWeaponSkill = NULL;
	m_PItemUsable = NULL;
	m_PBattleTarget = NULL;
	m_PBattleSubTarget = NULL;
	m_PJobAbility = NULL;
}

/************************************************************************
*																		*
*  Узнаем текущее действие (состояние) интеллекта						*
*																		*
************************************************************************/

ACTIONTYPE CAIGeneral::GetCurrentAction()
{
	return m_ActionType;
}

/************************************************************************
*																		*
*  Принудительно переводим интеллект в какое-либо состояние				*
*																		*
************************************************************************/
	
void CAIGeneral::SetCurrentAction(ACTIONTYPE Action, uint16 TargetID)
{
	////DSP_DEBUG_BREAK_IF(m_ActionTargetID != 0);

	if (m_ActionTargetID != 0)
	{
		m_ActionTargetID = 0;
	}
	switch (Action)
	{
		case ACTION_RANGED_START:
		case ACTION_ITEM_START:
		case ACTION_DISENGAGE:
		{
			if (m_ActionType == ACTION_NONE ||
				m_ActionType == ACTION_ATTACK)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		case ACTION_WEAPONSKILL_START:
		{
			if (m_ActionType == ACTION_ATTACK)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		case ACTION_WEAPONSKILL_FINISH:
		{
			if (m_ActionType == ACTION_WEAPONSKILL_START)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		case ACTION_ITEM_INTERRUPT:
		{
			if (m_ActionType == ACTION_ITEM_USING)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		case ACTION_MAGIC_INTERRUPT:
		{
			if (m_ActionType == ACTION_MAGIC_CASTING)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		case ACTION_RANGED_INTERRUPT:
		{
			if (m_ActionType == ACTION_RANGED_FINISH)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		case ACTION_ENGAGE:
		{
			if (m_ActionType == ACTION_NONE)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		case ACTION_SPAWN:
		{
			if (m_ActionType == ACTION_NONE)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		case ACTION_CHANGE_BATTLE_TARGET:
		{
			if (m_ActionType == ACTION_ATTACK)
			{
				m_ActionType = Action;
				m_ActionTargetID = TargetID;
				return;
			}
		}
			break;
		default:
		{
			m_ActionType = Action;
			m_ActionTargetID = TargetID;
			return;
		}
	}
}

/************************************************************************
*																		*
*  Устанавливаем время последнего действия в обход системы AI			*
*  (использовать с осторожностью и при полной уверенности в результате)	*
*																		*
************************************************************************/

void CAIGeneral::SetLastActionTime(uint32 time)
{
	m_LastActionTime = time;
}

/************************************************************************
*																		*
*  Устанавливаем текущую зону сущности (временное решение до появления	*
*  более грамотного и универсального)									*
*																		*
************************************************************************/

void CAIGeneral::SetCurrentZone(CZone* Zone)
{
	m_PZone = Zone;
}

/************************************************************************
*																		*
*																		*
*																		*
************************************************************************/

void CAIGeneral::SetCurrentSpell(uint16 SpellID)
{
	if (m_ActionType != ACTION_MAGIC_START   &&
		m_ActionType != ACTION_MAGIC_CASTING &&
		m_ActionType != ACTION_MAGIC_FINISH  &&
		m_ActionType != ACTION_MAGIC_INTERRUPT)
	{
		//DSP_DEBUG_BREAK_IF(m_PSpell != NULL);

		m_PSpell = battleutils::GetSpell(SpellID);
	}
}

/************************************************************************
*																		*
*	Gets Current Spell													*
*																		*
************************************************************************/

CSpell* CAIGeneral::GetCurrentSpell()
{
	//DSP_DEBUG_BREAK_IF(m_PSpell == NULL);

	return m_PSpell;
}


/************************************************************************
*																		*
*	Set Weapon Skill													*
*																		*
************************************************************************/

void CAIGeneral::SetCurrentWeaponSkill(uint16 WSkillID)
{
	if (m_ActionType != ACTION_WEAPONSKILL_START   &&
		m_ActionType != ACTION_WEAPONSKILL_FINISH)
	{
		////DSP_DEBUG_BREAK_IF(m_PWeaponSkill != NULL);

		m_PWeaponSkill = battleutils::GetWeaponSkill(WSkillID);
		

	}
}

/************************************************************************
*																		*
*	Gets Current Weapon Skill											*
*																		*
************************************************************************/

CWeaponSkill* CAIGeneral::GetCurrentWeaponSkill()
{
	//DSP_DEBUG_BREAK_IF(m_PWeaponSkill == NULL);
	
	return m_PWeaponSkill;
}


/************************************************************************
*																		*
*	Set Job Ability														*
*																		*
************************************************************************/

void CAIGeneral::SetCurrentJobAbility(uint16 JobAbilityID)
{
	if (m_ActionType != ACTION_JOBABILITY_START   &&
		m_ActionType != ACTION_JOBABILITY_FINISH)
	{
		////DSP_DEBUG_BREAK_IF(m_PWeaponSkill != NULL);

		m_PJobAbility = battleutils::GetAbility(JobAbilityID);
		

	}
}


/************************************************************************
*																		*
*	Gets Current Job Ability											*
*																		*
************************************************************************/

CAbility* CAIGeneral::GetCurrentJobAbility()
{
	//DSP_DEBUG_BREAK_IF(m_PJobAbility == NULL);
	
	return m_PJobAbility;
}

/************************************************************************
*																		*
*  Получаем текущую цель физической атаки								*
*																		*
************************************************************************/

CBattleEntity* CAIGeneral::GetBattleTarget()
{
	//DSP_DEBUG_BREAK_IF(m_PBattleTarget == NULL);

	return m_PBattleTarget;
}