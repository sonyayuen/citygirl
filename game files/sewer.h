
//{{BLOCK(sewer)

//======================================================================
//
//	sewer, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 572 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 18304 + 8192 = 27008
//
//	Time-stamp: 2022-04-29, 10:39:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SEWER_H
#define GRIT_SEWER_H

#define sewerTilesLen 18304
extern const unsigned short sewerTiles[9152];

#define sewerMapLen 8192
extern const unsigned short sewerMap[4096];

#define sewerPalLen 512
extern const unsigned short sewerPal[256];

#endif // GRIT_SEWER_H

//}}BLOCK(sewer)
