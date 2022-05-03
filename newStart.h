
//{{BLOCK(newStart)

//======================================================================
//
//	newStart, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 169 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5408 + 2048 = 7968
//
//	Time-stamp: 2022-04-26, 22:29:32
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_NEWSTART_H
#define GRIT_NEWSTART_H

#define newStartTilesLen 5408
extern const unsigned short newStartTiles[2704];

#define newStartMapLen 2048
extern const unsigned short newStartMap[1024];

#define newStartPalLen 512
extern const unsigned short newStartPal[256];

#endif // GRIT_NEWSTART_H

//}}BLOCK(newStart)
