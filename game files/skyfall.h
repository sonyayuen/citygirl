
//{{BLOCK(skyfall)

//======================================================================
//
//	skyfall, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 96 + 2048 = 2656
//
//	Time-stamp: 2022-04-14, 14:51:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SKYFALL_H
#define GRIT_SKYFALL_H

#define skyfallTilesLen 96
extern const unsigned short skyfallTiles[48];

#define skyfallMapLen 2048
extern const unsigned short skyfallMap[1024];

#define skyfallPalLen 512
extern const unsigned short skyfallPal[256];

#endif // GRIT_SKYFALL_H

//}}BLOCK(skyfall)
