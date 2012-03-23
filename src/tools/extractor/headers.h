/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 * Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#ifndef HEADERS_H
#define HEADERS_H

#define __INCLUDE_CRYPTOGRAPHY__
#define __STORMLIB_SELF__
#include <stdio.h>
#include <cassert>
#include <iostream>
#include <string>
#include <fstream>
#include <set>
#include <algorithm>

#include <fcntl.h>

#ifdef _MSC_VER
#include <crtdbg.h>
#endif

#include "StormLib/src/StormLib.h"
#include "StormLib/src/StormCommon.h"
#include "typedefs.h"

static int const patchRev[] = {15354, 15211};
#define PATCH_REV_COUNT 2
#define CLIENT_BUILD 15050 // It extracts 15354 so don't laugh.
                           // The local still says 15050 in the MPQ. Hope blizz fixes there derp.

static const char* const langs[] = {"enGB", "enUS", "deDE", "esES", "frFR", "koKR", "zhCN", "zhTW", "enCN", "enTW", "esMX", "ruRU" };
#define LANG_COUNT 12
static const char* input_path = ".";

typedef struct
{
    char name[64];
    uint32 id;
} map_id;

extern HANDLE localeMPQ[PATCH_REV_COUNT + 1];
extern HANDLE WorldMPQ[2];
extern HANDLE ExpansionsMPQ[3];
extern map_id *map_ids;
extern uint16 *areas;
extern uint16 *LiqType;
extern uint32 maxAreaId;

#endif