
//{{BLOCK(window)

//======================================================================
//
//	window, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 158 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5056 + 2048 = 7616
//
//	Time-stamp: 2022-04-29, 12:23:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINDOW_H
#define GRIT_WINDOW_H

#define windowTilesLen 5056
extern const unsigned short windowTiles[2528];

#define windowMapLen 2048
extern const unsigned short windowMap[1024];

#define windowPalLen 512
extern const unsigned short windowPal[256];

#endif // GRIT_WINDOW_H

//}}BLOCK(window)
