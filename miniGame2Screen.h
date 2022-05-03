
//{{BLOCK(miniGame2Screen)

//======================================================================
//
//	miniGame2Screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 48 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1536 + 2048 = 4096
//
//	Time-stamp: 2022-04-12, 14:25:30
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MINIGAME2SCREEN_H
#define GRIT_MINIGAME2SCREEN_H

#define miniGame2ScreenTilesLen 1536
extern const unsigned short miniGame2ScreenTiles[768];

#define miniGame2ScreenMapLen 2048
extern const unsigned short miniGame2ScreenMap[1024];

#define miniGame2ScreenPalLen 512
extern const unsigned short miniGame2ScreenPal[256];

#endif // GRIT_MINIGAME2SCREEN_H

//}}BLOCK(miniGame2Screen)
