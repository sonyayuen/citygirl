
//{{BLOCK(level1)

//======================================================================
//
//	level1, 1024x256@4, 
//	+ palette 256 entries, not compressed
//	+ 118 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 3776 + 8192 = 12480
//
//	Time-stamp: 2022-03-24, 20:31:50
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL1_H
#define GRIT_LEVEL1_H

#define level1TilesLen 3776
extern const unsigned short level1Tiles[1888];

#define level1MapLen 8192
extern const unsigned short level1Map[4096];

#define level1PalLen 512
extern const unsigned short level1Pal[256];

#endif // GRIT_LEVEL1_H

//}}BLOCK(level1)
