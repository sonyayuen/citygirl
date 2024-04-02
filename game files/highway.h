
//{{BLOCK(highway)

//======================================================================
//
//	highway, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 12 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 384 + 2048 = 2944
//
//	Time-stamp: 2022-04-21, 12:19:27
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_HIGHWAY_H
#define GRIT_HIGHWAY_H

#define highwayTilesLen 384
extern const unsigned short highwayTiles[192];

#define highwayMapLen 2048
extern const unsigned short highwayMap[1024];

#define highwayPalLen 512
extern const unsigned short highwayPal[256];

#endif // GRIT_HIGHWAY_H

//}}BLOCK(highway)
