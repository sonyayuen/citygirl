
//{{BLOCK(miniGame3Screen)

//======================================================================
//
//	miniGame3Screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 75 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2400 + 2048 = 4960
//
//	Time-stamp: 2022-04-13, 11:57:32
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MINIGAME3SCREEN_H
#define GRIT_MINIGAME3SCREEN_H

#define miniGame3ScreenTilesLen 2400
extern const unsigned short miniGame3ScreenTiles[1200];

#define miniGame3ScreenMapLen 2048
extern const unsigned short miniGame3ScreenMap[1024];

#define miniGame3ScreenPalLen 512
extern const unsigned short miniGame3ScreenPal[256];

#endif // GRIT_MINIGAME3SCREEN_H

//}}BLOCK(miniGame3Screen)
