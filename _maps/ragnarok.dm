/*
All z-levels should be identical in size. Their numbers should not matter.
The order of z-levels should not matter as long as their attributes are properly defined at MAP_TRANSITION_CONFIG.
Old code checked for the number of the z-level (for example whether there are any revheads on Z1),
currently it should check for the define (for example whether there are any revheads on any z-levels defined as STATION_LEVEL).
z1 = station
z2 = centcomm
z3 = telecommunications center
z4 = engineering ship
z5 = mining
z6 = russian derelict
z7 = empty
*/

#if !defined(USING_MAP_DATUM)
	#include "map_files\Ragnarok\ragnarok.dmm"
	#include "map_files\Ragnarok\z2.dmm"
	#include "map_files\cyberiad\z3.dmm"
	#include "map_files\cyberiad\z4.dmm"
	#include "map_files\generic\z5.dmm"
	#include "map_files\Ragnarok\z6.dmm"
	#include "map_files\generic\z7.dmm"

	#define MAP_FILE "ragnarok.dmm"
	#define MAP_NAME "Ragnarok"
	#define MAP_TRANSITION_CONFIG list(\
DECLARE_LEVEL(MAIN_STATION, CROSSLINKED, list(STATION_LEVEL, STATION_CONTACT, REACHABLE, AI_OK)),\
DECLARE_LEVEL(CENTCOMM, SELFLOOPING, list(ADMIN_LEVEL, BLOCK_TELEPORT, IMPEDES_MAGIC)),\
DECLARE_LEVEL(TELECOMMS, CROSSLINKED, list(REACHABLE, BOOSTS_SIGNAL, AI_OK)),\
DECLARE_LEVEL(DERELICT, CROSSLINKED, list(REACHABLE)),\
DECLARE_LEVEL(MINING, CROSSLINKED, list(REACHABLE, STATION_CONTACT, AI_OK, ORE_LEVEL, HAS_WEATHER)),\
DECLARE_LEVEL(EMPTY_AREA, CROSSLINKED, list(REACHABLE)),\
DECLARE_LEVEL(EMPTY_AREA_2, CROSSLINKED, list(REACHABLE)))

	#define USING_MAP_DATUM /datum/map/ragnarok

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring Ragnarok.

#endif
