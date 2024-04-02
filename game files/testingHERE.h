
//{{BLOCK(testingHERE)

//======================================================================
//
//	testingHERE, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 157 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 5024 + 8192 = 13728
//
//	Time-stamp: 2022-04-28, 14:44:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TESTINGHERE_H
#define GRIT_TESTINGHERE_H

#define testingHERETilesLen 5024
extern const unsigned short testingHERETiles[2512];

#define testingHEREMapLen 8192
extern const unsigned short testingHEREMap[4096];

#define testingHEREPalLen 512
extern const unsigned short testingHEREPal[256];

#endif // GRIT_TESTINGHERE_H

//}}BLOCK(testingHERE)
