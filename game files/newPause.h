
//{{BLOCK(newPause)

//======================================================================
//
//	newPause, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 180 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5760 + 2048 = 8320
//
//	Time-stamp: 2022-04-22, 01:23:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_NEWPAUSE_H
#define GRIT_NEWPAUSE_H

#define newPauseTilesLen 5760
extern const unsigned short newPauseTiles[2880];

#define newPauseMapLen 2048
extern const unsigned short newPauseMap[1024];

#define newPausePalLen 512
extern const unsigned short newPausePal[256];

#endif // GRIT_NEWPAUSE_H

//}}BLOCK(newPause)
