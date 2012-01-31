/*
 * Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
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

/* Script complete: 10% */

#ifndef DEF_FIRELANDS_H
#define DEF_FIRELANDS_H

#include "ObjectMgr.h"
#define FirelandsScriptName "instance_firelands"

enum Data
{
	DATA_INTRO_EVENT,           //ragnaros intro
	DATA_BETHTILAC_EVENT,
	DATA_RHYOLITH_EVENT,
	DATA_ALYSRAZAR_EVENT,
	DATA_SHANNOX_EVENT,
	DATA_BALOROC_EVENT,
	DATA_MAJORDOMUS_EVENT,
	DATA_RAGNAROS_EVENT,

	DATA_CURRENT_ENCOUNTER_PHASE     = 7,
};

enum Data64
{
	DATA_INTRO,                 //ragnaros intro
	DATA_BETHTILAC,
	DATA_RHYOLITH,
	DATA_ALYSRAZAR,
	DATA_SHANNOX,
	DATA_BALOROC,
	DATA_MAJORDOMUS,
	DATA_RAGNAROS,
};

enum creatures
{
	//bosses
	BOSS_BETHTILAC          = 52498,
	BOSS_RHYOLITH           = 52558,
	BOSS_ALYSRAZAR          = 52530,
	BOSS_SHANNOX            = 53691,
	BOSS_BALOROC            = 53494,
	BOSS_MAJORDOMUS         = 52571,    //54015 <-- maybe this entry
	BOSS_RAGNAROS_CATA      = 52409,

	//other npc's
	NPC_SULFURAS            = 53420,    //ragnaros boss weapon
	NPC_LIVING_METEOR       = 53500,
	NPC_MOLTEN_ELEMENTAR    = 53189,

	// Shannox
	NPC_RIPLIMB             = 53694,    // Shannox Dogs
	NPC_RAGEFACE            = 53695,
	NPC_SHANNOX_SPEAR       = 53752,    // Shannox Spear
	NPC_CRYSTAL_TRAP        = 53713,
	NPC_CRYSTAL_PRISON      = 53819,

	// Bethilac
	NPC_CINDERWEB_SPINNER   = 53642,
	NPC_CINDERWEB_DRONE     = 53635,
	NPC_CINDERWEB_SPIDERLING = 53631,
	NPC_ENGORGED_BROODLING  = 53745,
	NPC_SPIDERWEB_FILAMENT  = 53082,    // This is the Elevator
};

enum gameobjectIDs
{
	GOB_DOOR_BETHILAC = 208877,
};

enum Phase
{
	//Shannox
	PHASE_NON = 0, 

	PHASE_SHANNOX_HAS_SPEER = 1,
	PHASE_SPEAR_ON_THE_GROUND = 2,
	PHASE_RIPLIMB_GOS_TO_SPEER = 3,
	PHASE_RIPLIMB_BRINGS_SPEER = 4,

	// Bethilac
	PHASE_BETHILAC_UPPER = 5,
	PHASE_BETHILAC_LOWER = 6,

	//Ragnaros
	PHASE_1 = 7,
	PHASE_2 = 8,

};

enum PathIDs
{
	PATH_SHANNOX = 154280940,
};

enum DataVar
{
	DATA_PHASE,
};

enum MovePoints
{
	POINT_RAGNAROS_DOWN,         //end of each phase
	POINT_RAGNAROS_UP,           //start of each next phase
	POINT_RAGNAROS_STANDUP,      //only on heroic mode
	POINT_SULFURAS_SMASH,        //target for smashes
};

enum Actions
{
	//Ragnaros
	ACTION_RAGNAROS_DOWN,        //end of each phase
	ACTION_RAGNAROS_UP,          //start of each next phase
	ACTION_RAGNAROS_STANDUP,     //only on heroic mode
	ACTION_SULFURAS_SMASH,       //target for smashes

	//Shannox
	ACTION_SAY_RIPLIMB,		     //Shannox yell when Riplimb bites someone
};

#endif