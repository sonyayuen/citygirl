
//{{BLOCK(sewerScreen)

//======================================================================
//
//	sewerScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 250 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8000 + 2048 = 10560
//
//	Time-stamp: 2022-04-28, 11:15:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SEWERSCREEN_H
#define GRIT_SEWERSCREEN_H

#define sewerScreenTilesLen 8000
extern const unsigned short sewerScreenTiles[4000];

#define sewerScreenMapLen 2048
extern const unsigned short sewerScreenMap[1024];

#define sewerScreenPalLen 512
extern const unsigned short sewerScreenPal[256];

#endif // GRIT_SEWERSCREEN_H

//}}BLOCK(sewerScreen)
