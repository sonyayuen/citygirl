/*
    What has been completed so far?
        - main platform game
        - minigame 1
        - minigame 2
        - minigame 3


    What needs to be added?
        - more sounds
        - fix minigame 2 screen bc its ugly

    Interrupts used in minigame 2 to time the cars, pallete modified at runtime to show different colored cars each round    

    Game cheat: jump into the portals to be transported higher in the map or
                 get certain object and enemies will temporary disseapear

   

*/

#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "game.h"
#include "spritesheet.h"

//State screens : all use bg1
#include "cityGirl.h"
#include "newPause.h"
#include "newLose.h"
#include "newWin.h"
#include "newStart.h"
#include "instructions.h"

//MINIGAME 1: Highway Jump
#include "trafficJumpScreen.h"
#include "highwayBkg.h" 
#include "highwayRoad.h"

//MINIGAME 2: 
#include "spaceInvSc.h"

//MINIGAME 3: Window Transport
#include "window.h"
#include "newWindowSc.h"

//BACKGROUNDS
#include "vibey.h" //bg 3 game background
#include "vibeyCracked.h"

#include "topBuilding.h" //bg 2 top building
#include "smallBuildings.h" //bg 1 buildings and stars
#include "smallClouds2.h" //bg 0
#include "skyfall.h"


//SOUNDS

//#include "sound.h"
#include "startSong.h"
#include "woosh.h"
#include "platformMusic.h" 


//CHEAT Level = sewer
#include "sewer.h"
#include "sewerScreen.h"


int playerHoff;
int playerVoff;

int hOffBG0;
int vOffBG0;


// Prototypes.
void initialize();

// State Prototypes.
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void goToMiniGame1Screen();
void goToMiniGame2Screen();
void miniGame1();
void goToMiniGame1();
void miniGame1Screen();
void miniGame2();
void goToMiniGame2();
void miniGame2Screen();
void miniGame3();
void goToMiniGame3Screen();
void goToMiniGame3();
void miniGame3Screen();
void goToInstructions();
void instructions();
void goToTitleScreen();
void titleScreen();
void goToSewerScreen();
void sewerScreen();
void goToSewer();
void sewer();


void scoreFullReset();
int seed;

// States.
enum {
    TITLESCREEN,
    START,
    INSTRUCTIONS,
    GAME,
    PAUSE,
    WIN,
    LOSE,
    MINIGAME1SCREEN,
    MINIGAME1,
    MINIGAME2SCREEN,
    MINIGAME2,
    MINIGAME3SCREEN,
    MINIGAME3,
    SEWER,
    SEWERSCREEN
    
};
int state;

// Button Variables.
unsigned short buttons;
unsigned short oldButtons;

int level;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];


int main() {
    initialize();

    while (1) {
        // Update button variables.
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine.
        switch (state) {
        case TITLESCREEN:
            titleScreen();
            break;
        case START:
            start();
            break;
        case INSTRUCTIONS:
            instructions();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        case MINIGAME1SCREEN:
            miniGame1Screen();
            break;
        case MINIGAME1:
            miniGame1();
            break;
        case MINIGAME2SCREEN:
            miniGame2Screen();
            break;    
        case MINIGAME2:
            miniGame2();
            break;  
        case MINIGAME3SCREEN:
            miniGame3Screen();
            break;
        case MINIGAME3:
            miniGame3();
            break;  
        case SEWERSCREEN:
            sewerScreen();
            break;    
        case SEWER:
            sewer();
            break; 
        default:
            break;                 
        }
    }
}

// Sets up GBA.
void initialize() {
    seed = 0;
    buttons = BUTTONS;
    oldButtons = 0;
    prizes = 0;

    setupSounds();
    setUpInterrupts();

    goToTitleScreen();
}


void goToTitleScreen() {

    REG_DISPCTL = MODE0 | BG3_ENABLE; 
    REG_BG3CNT = BG_SIZE_SMALL | BG_CHARBLOCK(9) | BG_SCREENBLOCK(27) | BG_4BPP;

    //start Background
    DMANow(3, cityGirlPal, PALETTE, 256);
    DMANow(3, cityGirlTiles, &CHARBLOCK[9], cityGirlTilesLen / 2);
    DMANow(3, cityGirlMap, &SCREENBLOCK[27], cityGirlMapLen/2);

    playSoundA(startSong_data, startSong_length, 1);


    state =TITLESCREEN;
}


void titleScreen() {

    if (BUTTON_PRESSED(BUTTON_START)) {
        
        goToStart();
    }

}



// Sets up the start state.
void goToStart() {
    waitForVBlank();

    REG_DISPCTL = MODE0 | BG3_ENABLE; 
    REG_BG3CNT = BG_SIZE_SMALL | BG_CHARBLOCK(9) | BG_SCREENBLOCK(27) | BG_4BPP;

    //start Background
    DMANow(3, newStartPal, PALETTE, 256);
    DMANow(3, newStartTiles, &CHARBLOCK[9], newStartTilesLen / 2);
    DMANow(3, newStartMap, &SCREENBLOCK[27], newStartMapLen/2);


    state = START;
}

// Runs every frame of the start state.
void start() {
    seed++;
    if (BUTTON_PRESSED(BUTTON_START)) {
        //sets prizes = 0
        gameLives = 3;
        bullAmt = 0;
        collectedBalls = 0;
        portalCollision1 = 0;
        starsCollected = 0;
        level = 0;
        enemyNum = 3; 
        srand(seed);

        REG_BG0VOFF = vOff;
        REG_BG0HOFF = hOff;


        stopSound();
        playSoundA(platformMusic_data, platformMusic_length, 1);
    
        
        prizes = 0;
        initGame();
        goToGame();

    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        goToInstructions();
    }
    waitForVBlank();
}


void goToInstructions() {
    waitForVBlank();
    
    REG_DISPCTL = MODE0 | BG3_ENABLE; 
    REG_BG3CNT = BG_SIZE_SMALL | BG_CHARBLOCK(9) | BG_SCREENBLOCK(27) | BG_4BPP;

    //start Background
    DMANow(3, instructionsPal, PALETTE, 256);
    DMANow(3, instructionsTiles, &CHARBLOCK[9], instructionsTilesLen / 2);
    DMANow(3, instructionsMap, &SCREENBLOCK[27], instructionsMapLen/2);


    state = INSTRUCTIONS;
}

void instructions() {
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToStart();
    }



}


//resets all of the score tracking variables
void scoreFullReset() {
    gameLives = 3;
    bullAmt = 0;
    collectedBalls = 0;
    portalCollision1 = 0;
    level = 0;
    prizes = 0;

}

// Sets up the game state.
void goToGame() {
    //BG0:   clouds  |BG1:   stars and building   |BG2:   top building      |BG3:   game
    waitForVBlank();

    REG_BG0CNT = BG_SIZE_LARGE| BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP; //GAME BACKGROUND
    DMANow(3, vibeyPal, PALETTE, 256);
    DMANow(3, vibeyTiles, &CHARBLOCK[0], vibeyTilesLen / 2);
    DMANow(3, vibeyMap, &SCREENBLOCK[28], vibeyMapLen/2);

    REG_BG1CNT = BG_SIZE_SMALL| BG_CHARBLOCK(9) | BG_SCREENBLOCK(27) | BG_4BPP; //star and building
    DMANow(3, smallBuildingsTiles, &CHARBLOCK[9], smallBuildingsTilesLen / 2);
    DMANow(3, smallBuildingsMap, &SCREENBLOCK[27], smallBuildingsMapLen/2);


    REG_BG2CNT = BG_SIZE_SMALL| BG_CHARBLOCK(18) | BG_SCREENBLOCK(26) | BG_4BPP; //CLOUDS
    DMANow(3, smallClouds2Tiles, &CHARBLOCK[18], smallClouds2TilesLen / 2);
    DMANow(3, smallClouds2Map, &SCREENBLOCK[26], smallClouds2MapLen/2);
    

    REG_DISPCTL = BG0_ENABLE | BG1_ENABLE |BG2_ENABLE|  SPRITE_ENABLE ; 

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);
    state = GAME;

}

// Runs every frame of the game state.
void game() {
    if (portalCollision1) { //USE THIS TO TEST OTHER MINI GAMES
        portalCollision1 = 0; 
        level = 1;
        goToMiniGame1Screen(); 
    } 
    
    if (portalCollision2) {
        portalCollision2 = 0;
        level = 3;
        goToMiniGame3Screen();
    } 


    if (portalCollision3) {
        portalCollision3 = 0;
        level = 2;
        goToMiniGame2Screen();
    }

    if (sewerActivate) {
        sewerActivate = 0;
        level = 4;
        goToSewer();
    }
    

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
        
    } 

    
    if (prizes == 3 && winCollision) {
        winCollision = 0;
        prizes = 0;
        stopSound();
        goToWin();
    }
    if (groundCollision == 1) {
        gameLives --;
        groundCollision = 0;
        //return;
    }

    if (gameLives == 0) {
        stopSound();
        goToLose();
    }


    updateGame();
    drawGame();
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    REG_BG1HOFF =  hOff / 2 ;
    REG_BG2HOFF =  -hOff/ 4 ;
    //REG_BG0VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
   
}

// Sets up the pause state.
void goToPause() {
    waitForVBlank();
    //playSoundB(startSong_data, startSong_length, 1);

    DMANow(3, newPausePal, PALETTE, 256);
    DMANow(3, newPauseTiles, &CHARBLOCK[9], newPauseTilesLen / 2);
    DMANow(3, newPauseMap, &SCREENBLOCK[27], newPauseMapLen/2);

    REG_DISPCTL = MODE0 | BG3_ENABLE;
    
    DMANow(3, shadowOAM, OAM, 128 * 4);
    waitForVBlank();

    state = PAUSE;
}

// Runs every frame of the pause state.
void pause() {
    waitForVBlank();
    
    if (BUTTON_PRESSED(BUTTON_SELECT) ) {
        
        

        if (level == 0){
            //unpauseSoundA();
            //stopSoundB();
           // playSoundA(platformMusic_data, platformMusic_length, 1);
            goToGame();
        }
        else if (level == 1) {
           // stopSoundB();
            goToMiniGame1();
        } else if (level == 2) {
           // stopSoundB();
            goToMiniGame2();
        } else if (level == 3) {
            //stopSoundB();
            goToMiniGame3();
        } else if (level == 4) {
            goToSewer();
        }
    }
}

// Sets up the win state.
void goToWin() {
    //win background
    DMANow(3, newWinPal, PALETTE, 256);
    DMANow(3, newWinTiles, &CHARBLOCK[9], newWinTilesLen / 2);
    DMANow(3, newWinMap, &SCREENBLOCK[27], newWinMapLen/2);

    playSoundA(startSong_data, startSong_length, 1);


    REG_DISPCTL = MODE0 | BG3_ENABLE;
    
    
    DMANow(3, shadowOAM, OAM, 128 * 4);
    waitForVBlank();
    //REG_BG0HOFF = hOff;
    //REG_BG0VOFF = vOff;
    

    state = WIN;
}

// Runs every frame of the win state.
void win() {
    waitForVBlank();
    
    if (BUTTON_PRESSED(BUTTON_SELECT) ) {
        setupSounds();
        setUpInterrupts();
        
        gameLives = 3;
        bullAmt = 0 ;
        prizes = 0;

        goToStart();
    }

}

// Sets up the lose state.
void goToLose() {
    //hOff = 0;
    //vOff = 0;
    //REG_BG1HOFF = hOff;
    //REG_BG1VOFF = vOff;
    //lose background
    DMANow(3, newLosePal, PALETTE, 256);
    DMANow(3, newLoseTiles, &CHARBLOCK[9], newLoseTilesLen / 2);
    DMANow(3, newLoseMap, &SCREENBLOCK[27], newLoseMapLen/2);

    REG_DISPCTL = MODE0 | BG3_ENABLE | BG_SIZE_SMALL;

    playSoundA(startSong_data, startSong_length, 1);
    
    
    DMANow(3, shadowOAM, OAM, 128 * 4);
    waitForVBlank();
    //REG_BG0HOFF = hOff;
    

   
    state = LOSE;
}

// Runs every frame of the lose state.
void lose() {
    //waitForVBlank();
    
    if (BUTTON_HELD(BUTTON_SELECT) ) {
        setupSounds();
        setUpInterrupts();
        
        gameLives = 3;
        bullAmt = 0;
        prizes = 0;

        /*
        paulineCollision = 0;
        gorillaCollision = 0;
        gamePoints = 0;
        */
        initialize();
    }
}

// MINIGAME 1
void goToMiniGame1Screen() {
    waitForVBlank();

    //stopSound();

    DMANow(3, trafficJumpScreenPal, PALETTE, 256);
    DMANow(3, trafficJumpScreenTiles, &CHARBLOCK[9], trafficJumpScreenTilesLen / 2);
    DMANow(3, trafficJumpScreenMap, &SCREENBLOCK[27], trafficJumpScreenMapLen/2);

    REG_DISPCTL = MODE0 | BG3_ENABLE ;
    //REG_BG1HOFF = 0;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);


    waitForVBlank();

    state = MINIGAME1SCREEN;

}

void miniGame1Screen() {
    if (BUTTON_HELD(BUTTON_START)) {
        initGame();
        goToMiniGame1();
    }

}

void goToMiniGame1() {
    waitForVBlank();

    //stopSound();

    DMANow(3, highwayRoadPal, PALETTE, 256); //BKG 2
    DMANow(3, highwayRoadTiles, &CHARBLOCK[18], highwayRoadTilesLen / 2);
    DMANow(3, highwayRoadMap, &SCREENBLOCK[26], highwayRoadMapLen/2);

    DMANow(3, highwayBkgTiles, &CHARBLOCK[9], highwayBkgTilesLen / 2);
    DMANow(3, highwayBkgMap, &SCREENBLOCK[27], highwayBkgMapLen/2);

    REG_BG1HOFF = 0;
    REG_BG2HOFF = 0;

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE| BG_SIZE_SMALL| SPRITE_ENABLE;
    

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    waitForVBlank();

    time_s = 0;
    //setUpInterrupts();
    REG_TM2CNT |=  TIMER_ON;
    REG_TM3CNT |=  TIMER_ON;

    state = MINIGAME1;

}

void miniGame1() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    } 
    //if you win the mini game go back to game increase prize counter
    if (prizes == 1) {
        level = 0; //main game screen
        prizes = 1;
        initGame();
        goToGame();

    }
    updateGame();
    drawGame();
    //hOff = 1;
    REG_BG1HOFF =  hOff ;
    REG_BG2HOFF = -hOff;
    hOff ++;
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}


//MINI GAME 2
void goToMiniGame2Screen() {
    waitForVBlank();

    DMANow(3, spaceInvScPal, PALETTE, 256);
    DMANow(3, spaceInvScTiles, &CHARBLOCK[9], spaceInvScTilesLen / 2);
    DMANow(3, spaceInvScMap, &SCREENBLOCK[27], spaceInvScMapLen/2);

    REG_DISPCTL = MODE0 | BG3_ENABLE ;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    waitForVBlank();

    state = MINIGAME2SCREEN;
    
}

void miniGame2Screen() {
    if (BUTTON_HELD(BUTTON_START)) {
        initGame();
        goToMiniGame2();
    }

}

void goToMiniGame2() {
    waitForVBlank();

    DMANow(3, skyfallPal, PALETTE, 256);
    DMANow(3, skyfallTiles, &CHARBLOCK[9], skyfallTilesLen / 2);
    DMANow(3, skyfallMap, &SCREENBLOCK[27], skyfallMapLen/2);

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG_SIZE_SMALL| SPRITE_ENABLE;
    REG_BG1HOFF = 0;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    waitForVBlank();

    state = MINIGAME2;

}

void miniGame2() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        //pauseSoundA();
        goToPause();
    } 


    if (prizes == 3) {
        level = 0; //main game screen
        prizes = 3;
        initGame();
       // playSoundA(platformMusic_data, platformMusic_length, 1);
        //waitForVBlank();
        goToGame();

    }

    updateGame();
    drawGame();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

}

void goToMiniGame3Screen() {
    waitForVBlank();

    DMANow(3, newWindowScPal, PALETTE, 256);
    DMANow(3,newWindowScTiles, &CHARBLOCK[9], newWindowScTilesLen / 2);
    DMANow(3, newWindowScMap, &SCREENBLOCK[27], newWindowScMapLen/2);

    REG_DISPCTL = MODE0 | BG3_ENABLE ;
    //REG_BG1HOFF = 0;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    waitForVBlank();

    state = MINIGAME3SCREEN;

}

void miniGame3Screen() {
    if (BUTTON_HELD(BUTTON_START)) {
        initGame(); //fix this for minigame
        goToMiniGame3();
    }

}

void goToMiniGame3() {
    waitForVBlank();

    DMANow(3, windowPal, PALETTE, 256);
    DMANow(3, windowTiles, &CHARBLOCK[9], windowTilesLen / 2);
    DMANow(3, windowMap, &SCREENBLOCK[27], windowMapLen/2);

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG_SIZE_SMALL| SPRITE_ENABLE;
    REG_BG1HOFF = 0;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    waitForVBlank();

    state = MINIGAME3;
}

void miniGame3() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        //pauseSoundA();
        goToPause();
    } 
   
    if (prizes == 2) {
        level = 0; //main game screen
        prizes = 2;
        initGame();
        //playSoundA(platformMusic_data, platformMusic_length, 1);
        //waitForVBlank();
        goToGame();

    }

    updateGame(); //fix
    drawGame(); //fix
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

}


void goToSewerScreen() {
    waitForVBlank();

    DMANow(3, sewerScreenPal, PALETTE, 256);
    DMANow(3,sewerScreenTiles, &CHARBLOCK[9], sewerScreenTilesLen / 2);
    DMANow(3, sewerScreenMap, &SCREENBLOCK[27], sewerScreenMapLen/2);

    REG_DISPCTL = MODE0 | BG3_ENABLE ;
    //REG_BG1HOFF = 0;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    waitForVBlank();

    state = SEWERSCREEN;

}

void sewerScreen() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        level = 4;
        initGame();
        goToSewer();
    }

}


void goToSewer() {
    waitForVBlank();
    
    hideSprites();
    initGame();

    //REG_BG0CNT = BG_SIZE_LARGE| BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP; //GAME BACKGROUND

    DMANow(3, sewerPal, PALETTE, 256);
    DMANow(3, sewerTiles, &CHARBLOCK[0], sewerTilesLen / 2);
    DMANow(3, sewerMap, &SCREENBLOCK[28], sewerMapLen/2);

    hOffBG0 = 0;
    REG_BG0HOFF = hOffBG0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE ;


    //hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    waitForVBlank();

    state = SEWER;

}


void sewer() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }


    if (cheatPort1) { //USE THIS TO TEST OTHER MINI GAMES
        //cheatPort1 = 0; 
        sewerActivate = 0;
        level = 0;
        initGame();
        goToGame(); 
    } 
    

    updateGame();
    drawGame();

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

}