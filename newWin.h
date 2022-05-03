
//{{BLOCK(newWin)

//======================================================================
//
//	newWin, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 193 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6176 + 2048 = 8736
//
//	Time-stamp: 2022-04-23, 15:32:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_NEWWIN_H
#define GRIT_NEWWIN_H

#define newWinTilesLen 6176
extern const unsigned short newWinTiles[3088];

#define newWinMapLen 2048
extern const unsigned short newWinMap[1024];

#define newWinPalLen 512
extern const unsigned short newWinPal[256];

#endif // GRIT_NEWWIN_H

//}}BLOCK(newWin)
