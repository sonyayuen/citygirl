
//{{BLOCK(vibey)

//======================================================================
//
//	vibey, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 59 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 1888 + 8192 = 10592
//
//	Time-stamp: 2022-04-28, 10:19:44
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_VIBEY_H
#define GRIT_VIBEY_H

#define vibeyTilesLen 1888
extern const unsigned short vibeyTiles[944];

#define vibeyMapLen 8192
extern const unsigned short vibeyMap[4096];

#define vibeyPalLen 512
extern const unsigned short vibeyPal[256];

#endif // GRIT_VIBEY_H

//}}BLOCK(vibey)
