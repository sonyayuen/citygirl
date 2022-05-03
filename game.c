#include "game.h"
#include "mode0.h"
#include <stdlib.h>
#include "sound.h"
#include "test2LadderBM.h"
#include "skyfallBM.h"
#include "enemyBM.h"
#include "highwayBM.h"
#include "vibeyBM.h"
#include "window.h"
#include "windowBM.h"
#include "boxBM.h"
//#include "sound.h"
#include "sewerBM.h"

#include "woosh.h"
#include "newCoin.h"
#include "startSong.h"
#include "ding2.h"

unsigned char * test2CollMap = (unsigned char *) vibeyBMBitmap;
unsigned char * test2LadderMap = (unsigned char *) test2LadderBMBitmap;
unsigned char * windowColMap = (unsigned char *) boxBMBitmap;
unsigned char * skyfallColMap = (unsigned char *) skyfallBMBitmap;
unsigned char * enemyColMap = (unsigned char *) enemyBMBitmap;
unsigned char * highwayColMap = (unsigned char *) highwayBMBitmap;
unsigned char * sewerColMap = (unsigned char *) sewerBMBitmap;

int starsCollected;
int type;
int col;
int row;
int colB;
int rowB;
int hOff;
int vOff;
int hOffBG1;
int vOffBG1;
int hOffBG2;
int vOffBG2;
int level;
OBJ_ATTR shadowOAM[128];

int winCollision;
int needToPlace;
SPRITE player;
SPRITE enemies0[ENEMYCOUNT0];
SPRITE enemies1[ENEMYCOUNT1];
SPRITE enemies2[ENEMYCOUNT2];
SPRITE enemies3[ENEMYCOUNT3];
SPRITE balls0[BALLCOUNT0];
SPRITE balls1[BALLCOUNT1];
SPRITE balls2[BALLCOUNT2];
SPRITE balls3[BALLCOUNT3];
SPRITE bullets;
SPRITE portal1;
SPRITE portal2;
SPRITE portal3;
SPRITE portal4;
SPRITE mazePrize;
SPRITE platforms[PLATFORMCOUNT];
SPRITE mineBlock;
SPRITE lasers[11];
SPRITE leftTop;
SPRITE rightTop;
SPRITE leftBottom;
SPRITE rightBottom;
SPRITE skyEnemies[18];
SPRITE skyBullets[SKYBULLETCOUNT];
SPRITE skyPlayerBullet[8];
SPRITE skyPrize;
SPRITE truck;
SPRITE scoreBar[15];
SPRITE cars[3];
SPRITE lasers2[9];
SPRITE upLasers[3];
SPRITE cone[3];
SPRITE laserPortal;
SPRITE randKey;
SPRITE carA;
SPRITE carB;
SPRITE cheatPortal;

SOUND soundA;
SOUND soundB;

int up;
//FOR SCOREBAR
SPRITE prize[PRIZECOUNT];
SPRITE lives[LIFECOUNT];
SPRITE ballAmount1;
SPRITE ballAmount2;
SPRITE winPortal;

int collectedBalls;
int gameLives;
int bullAmt;
int prizes;
int portalCollision1;
int portalCollision2;
int portalCollision3;
int skyEnemiesGone;
int groundCollision;
int enemyNum;
int time_s;
int time_s2;
int sewerActivate;




int cheatPort1;
int cheatPort2;
int cheatPort3;


//jump vars
int isGrounded;
int isOnPlatform;
int maxFrames = 10;

int maxFramesL = 3;


enum {SPRITELEFT, SPRITERIGHT, SPRITECLIMB, SPRITELJUMP, SPRITERJUMP, SPRITEIDLE};


void initGame() {
    if (level == 0) {
        initScoreBarBar();
        
        if (prizes == 0) { 
            vOff = 352;
            hOff = 0;
            portal1.active = 1; 
            portal2.active = 0;
            portal3.active = 0;
            winPortal.active = 0;
            initBallsP0();
            initPrizeSB();
            initEnemyP0();
            initCheatPortal();
            //initEnemy();
            

        } else if (prizes == 1) {
            portal1.active = 0; //hides portal 1 bc already completed level
            portal2.active = 1; //activates next minigame/level
            portal3.active = 0;
            winPortal.active = 0;
            vOff = 352;
            hOff = 271;
            initBallsP1();
            initEnemyP1();

        } else if (prizes == 2) {
            portal1.active = 0; 
            portal2.active = 0; //hides portal 2 bc already completed level
            portal3.active = 1; //activates next minigame/level
            winPortal.active = 0;
            vOff = 216;
            hOff = 272;
            initBallsP2();
            initEnemyP2();

        } else if (prizes == 3) {
            portal1.active = 0; 
            portal2.active = 0;
            
            initWinPortal();
            portal3.active = 0;
            vOff = 100;
            hOff = 100; //(176,224)
            initBallsP3();
            initEnemyP3();

        }
        initPortals();
        initPlayer();
        
        initBullets();
        
        
        //FOR SCOREBAR
        //initPrizeSB();
        initLivesSB();
        initBallSB();

    } else if (level == 1) { //MAZE MINI GAME
        vOff = 0;
        hOff = 0;
        mazePrize.active = 0;
        initMazePrize();
        initPlayer();
        //initCars();
        initTruck();
        initCarA();
        initCarB();
        initCone();

    } else if (level == 2) { // SKYFALL MINI GAME
        vOff = 0;
        hOff = 0;
        //initPlatforms();
        initPlayer();
        initSkyBullets();
        initSkyEnemies();
        initSkyPlayerBullet();
        initSkyPrize();
        

    } else if (level == 3) { //LASER MINI GAME
        vOff = 0;
        hOff = 0;
        initPlayer();
        initLasers2();
        initLaserPortal();
        initStar();

    } else if (level == 4) { //SEWER CHEAT
        initScoreBarBar();
        vOff = 352;
        hOff = 0;
        initPlayer();
        


    }
}


void updateGame() {
    if (level == 0) {

        if (prizes == 0) {
            updateBallsP0();
            updateEnemyP0();
            updateCheatPortal();

        } else if (prizes == 1) {
            updateBallsP1();
            updateEnemyP1();

        } else if (prizes ==2) {
            updateBallsP2();
            updateEnemyP2();
        } else if (prizes == 3){
            updateBallsP3();
            updateEnemyP3();
        }

        updateBullets();
        updatePlayer();
        //updateEnemy();

        animateLives();
        
        
        //FOR SCOREBAR
        updatePrizeSB();
        updateBallSB();

    } else if (level == 1) { //MAZE MINI GAME
        updatePlayerMaze();
        
        //updateCars();
        updateTruck();
        updateCarA();
        updateCarB();
        updateCone();

    } else if (level == 2) { // SKYFALL MINI GAME
        //updatePlatforms();
        updateSkyfallPlayer();
        updateSkyEnemies();
        updateSkyBullets();
        updateSkyPlayerBullet();
        updateSkyPrize();
    } else if (level == 3) { // LASER MINI GAME
        updateLasers2();
        updateStar();
        updatePlayerLaser();
        

    } else if (level == 4) {
        updatePrizeSB();
        animateLives();
        updateSewerPlayer();

    }
}

void drawGame() {
    if (level == 0) {
        if (prizes == 0) {
            drawBallsP0();
            drawEnemyP0();
            drawCheatPortal();
        } else if (prizes ==1) {
            drawBallsP1();
            drawEnemyP1();

        } else if (prizes ==2) {
            drawBallsP2();
            drawEnemyP2();
            
        } else if (prizes == 3) {
            drawBallsP3();
            drawEnemyP3();
        }
        
        drawPlayer();
        drawBullets();
        drawPortals();
        drawWinPortal();

        //FOR SCOREBAR
        drawScoreBarBar();
        drawBallAmountSB();
        drawBallSymbolSB();
        drawLivesSB();
        drawPrizeSB();
    } else if (level == 1) { //MAZE MINI GAME
        drawMazePrize();
        drawPlayer();
        drawTruck();
        drawCarA();
        drawCarB();
        drawCone();
    } else if (level == 2){ //PLATFORM MINI GAME
        //drawPlatforms();
        drawPlayer();
        drawSkyBullets();
        drawSkyEnemies();
        drawSkyPlayerBullet();
        drawSkyPrize(); 
    } else if (level == 3) {
        drawPlayer();
        drawLasers2();
        drawLaserPortal();
        drawStar();
    } else if (level == 4) {
        drawPlayer();


        //FOR SCOREBAR
        drawScoreBarBar();
        drawLivesSB();
        drawPrizeSB();

    }
}

//////////////// PLATFORM GAME MAIN GAME ////////////////

void initPlayer() {
    if (level == 0 && !needToPlace) { //MAIN GAME SCREEN
        
        //Different prizes initiliaze player at different places on map kind of like a checkpoint

        if (prizes == 0 && ! cheatPort1) { //starting location
            player.worldCol = 0;
            player.worldRow = 488;
            player.cdel = 2;
            player.rdel = 1;
            
            
            player.aniState = SPRITERIGHT;
        }    
        else if (prizes == 0 && cheatPort1) {
            player.worldCol = 428;
            player.worldRow = 411;
            player.cdel = 2;
            player.rdel = 1;
            hOff =252;
            player.aniState = SPRITERIGHT;
            cheatPort1 = 0;

        

        } else if (prizes == 1) { //init after 1st minigame completed
            player.worldCol = 490;
            player.worldRow = 440;
            player.cdel = 2;
            player.rdel = 1;
            player.aniState = SPRITERIGHT;

        } else if (prizes == 2) {
            player.worldCol = 400;
            player.worldRow = 296;
            player.cdel = 2;
            player.rdel = 1;
            player.aniState = SPRITERIGHT;

        } else if (prizes == 3) {
            player.worldCol = 176;
            player.worldRow = 224;
            player.cdel = 2;
            player.rdel = 1;
            player.aniState = SPRITERIGHT;

        }
        

    } else if (level == 1) { //HIGHWAY MINI GAME
        player.worldCol = 226;
        player.worldRow = 103;
        player.cdel = 2;
        player.rdel = 2;
        player.aniState = SPRITELEFT;

    } else if (level == 2){ //SKYFALL MINI GAME
        player.worldCol = 0;
        player.worldRow = 128;
        player.cdel = 2;
        player.rdel = 1;
        player.aniState = SPRITERIGHT;
        
    } else if (level == 3) { //LASER MINI GAME
        player.worldCol = 0;
        player.worldRow = 128;
        player.cdel = 1;
        player.rdel = 1;
        player.aniState = SPRITERIGHT;

    } else if (level == 4) {
        player.worldCol = 0;
        player.worldRow = 488;
        player.cdel = 2;
        player.rdel = 1;
        player.aniState = SPRITERIGHT;

    }

    player.width = 16;
    player.height = 16;
    player.curFrame = 0;
    player.numFrames = 3;
    player.isJumping = 0;
    player.jumpFrames = 0;
    player.active = 1;
    
}

void updatePlayer() {

    //button up used to go up ladders
    if(BUTTON_HELD(BUTTON_UP) && footCollision(test2LadderMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 2 ) {
        if (player.worldRow > 0 ) {
            player.worldRow -= 4;

            if ( (vOff > 0 && player.worldRow - vOff <= SCREENHEIGHT/2) ) {
                vOff-=4;
            } 
        }
    }

    


    //moves player left
    if(BUTTON_HELD(BUTTON_LEFT) ) {
        if (player.worldCol > 0 && collisionCheck(test2CollMap, MAPWIDTH, player.worldCol,player.worldRow, player.width, player.height-1, -player.cdel,0)) {

            player.worldCol -= player.cdel;

            
            if ( hOff > 0 && player.worldCol -hOff - player.cdel <= SCREENWIDTH / 2 ) {
                hOff-=player.cdel;
            } 
            //screenScrolling();
        }
    }

    //moves player right
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.worldCol + player.width < MAPWIDTH && collisionCheck(test2CollMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height - 1, player.cdel, 0) ){ 
            player.worldCol += player.cdel; 
            
            
            if ( (hOff + SCREENWIDTH + player.cdel < MAPWIDTH) && (player.worldCol - hOff >= SCREENWIDTH / 2)) {
                hOff+=player.cdel;
            } 
            //screenScrolling();


        }
    }

    //if one under is ground
    isGrounded = collisionCheck(test2CollMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;
    //JUMP FEATURE
    if (BUTTON_PRESSED(BUTTON_UP) && isGrounded && collisionCheck(test2LadderMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) != 2  ) {

        player.isJumping = 1;
        player.jumpFrames = 0;
    }  

    if (player.isJumping) {
        player.worldRow-=2;
        player.jumpFrames++;

        if (player.jumpFrames == maxFrames) {
            player.isJumping = 0; //stop jumping here bc reached max jump height displacement
        }

    } else if (footCollision(test2CollMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel) && collisionCheck(test2LadderMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) != 2  ) {
   //if you can move down, move down
        player.worldRow ++;
          
    }


    //Button B- FIRE BULLETS
    if (BUTTON_PRESSED(BUTTON_A)) {
        if (player.aniState == SPRITECLIMB) {

        } else {
            fireBullet();
        }
        
    }


    

    //if player falls down to ground, lose life
    if (player.worldRow + player.height == MAPHEIGHT - 4   ) {
        if (prizes == 0) { //starting location
            vOff = 352;
            hOff = 0;
            player.worldCol = 0;
            player.worldRow = 488;
            player.cdel = 2;
            player.rdel = 1;

        } else if (prizes == 1) { //init after 1st minigame completed
            vOff = 352;
            hOff = 272;
            player.worldCol = 490;
            player.worldRow = 440;
            player.cdel = 2;
            player.rdel = 1;

        } else if (prizes == 2) {
            vOff = 216;
            hOff = 272;
            player.worldCol = 400;
            player.worldRow = 296;
            player.cdel = 2;
            player.rdel = 1;

        } else if (prizes == 3) {
            vOff = 100;
            hOff = 100;
            player.worldCol = 176;
            player.worldRow = 224;
            player.cdel = 2;
            player.rdel = 1;

        }
        groundCollision = 1;
   
    } 

    
    //screen scrolling screen move when fall dwon screen
    if ( vOff + SCREENHEIGHT < MAPHEIGHT && player.worldRow-vOff >= SCREENHEIGHT / 2 ) {
        vOff++;
    } 


    //COLLISIONS
    //Player-Portal 1 Collision
   if (portal1.active && collision(player.worldCol, player.worldRow, player.width, player.height, portal1.worldCol, portal1.worldRow, portal1.width, portal1.height)) {
        portalCollision1 = 1;
    } 

    //Player-Portal 2 Collision
   if (portal2.active && collision(player.worldCol, player.worldRow, player.width, player.height, portal2.worldCol, portal2.worldRow, portal2.width, portal2.height)) {
        portal2.active = 0;
        portalCollision2 = 1;
    }  

    //Player-Portal 3 Collision
   if (portal3.active && collision(player.worldCol, player.worldRow, player.width, player.height, portal3.worldCol, portal3.worldRow, portal3.width, portal3.height)) {
        portalCollision3 = 1;
    }  

    if (winPortal.active && collision(player.worldCol, player.worldRow, player.width, player.height, winPortal.worldCol, winPortal.worldRow, winPortal.width, winPortal.height))  {
        winCollision ++;
    }


    animatePlayer();

}


void drawPlayer(){
    if (!player.active ) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else if (level == 1 && player.active) {
        shadowOAM[0].attr0 = (player.worldRow ) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (player.worldCol) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID((player.aniState * 2) + 1 , (player.curFrame * 2) + 24 );

        REG_BLDCNT = 0;
        REG_BLDALPHA = 0;

    }  else if (level ==4 && player.active) {
        shadowOAM[0].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID((player.aniState * 2) + 1 , (player.curFrame * 2 )+ 24);

        REG_BLDCNT = 1 << 4 | BLD_STD | 1 << 8;
        REG_BLDALPHA = 1 << 3 | 1 << 11;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID((player.aniState * 2) + 1 , (player.curFrame * 2 )+ 24);

        REG_BLDCNT = 0;
        REG_BLDALPHA = 0;
    }
}

void animatePlayer() { //FIX THIS

    player.prevAniState = player.aniState;
    player.aniState = SPRITEIDLE;

    if(player.aniCounter % 8 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    
    isGrounded = collisionCheck(test2CollMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;
    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_UP) && player.prevAniState == SPRITELEFT && player.isJumping) {
        player.aniState = SPRITELJUMP;
    } else if(BUTTON_HELD(BUTTON_UP) && player.prevAniState == SPRITERIGHT && player.isJumping) {
        player.aniState = SPRITERJUMP; 
    } else if (BUTTON_HELD(BUTTON_UP) && !player.isJumping && collisionCheck(test2LadderMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 2  ) {
        player.aniState = SPRITECLIMB;
    }       
    if(BUTTON_HELD(BUTTON_LEFT))
        player.aniState = SPRITELEFT;
    if(BUTTON_HELD(BUTTON_RIGHT))
        player.aniState = SPRITERIGHT;
 

    // If the player aniState is idle, frame is player standing
    if (player.aniState == SPRITEIDLE) {
        if (player.prevAniState == SPRITELJUMP && isGrounded) {
            player.prevAniState = SPRITELEFT;
        } else if (player.prevAniState ==SPRITERJUMP && isGrounded) {
            player.prevAniState = SPRITERIGHT;
        } 


        player.curFrame = 0;
        player.aniCounter = 0;
        player.aniState = player.prevAniState;
    } else {
        player.aniCounter++;
    }

}

///////////////////// SCORE BAR ////////////////////

//SB = scorebar
void initPrizeSB() {
    int pCol[] = {196, 210, 224};

    for (int i = 0; i < PRIZECOUNT; i++) {
        prize[i].worldCol = pCol[i];
        prize[i].worldRow = 2;
        prize[i].active = 1;
        prize[i].width = 10;
        prize[i].height = 10;
        
    }
}

void updatePrizeSB() {
    
    if (prizes == 1) {
        prize[0].active = 1;
        prize[1].active = 0;
        prize[2].active = 0;
    } 
    
     if (prizes == 2) {
        prize[0].active = 1;
        prize[1].active = 1;
        prize[2].active = 0;


    } 
     if (prizes == 3) {
        prize[0].active = 1;
        prize[1].active = 1;
        prize[2].active = 1;

    } 
    if (prizes == 0){
        prize[0].active = 0;
        prize[1].active = 0;
        prize[2].active = 0;

    } 

    //prize[2].active = 0; //FIX THIS
}

void drawPrizeSB() {
    for (int i = 0; i < PRIZECOUNT; i++) {
        if (prize[i].active) { //if prize recieved
            shadowOAM[i + 1].attr0 = (prize[i].worldRow) | ATTR0_SQUARE;
            shadowOAM[i + 1].attr1 = (prize[i].worldCol) | ATTR1_SMALL;
            shadowOAM[i + 1].attr2 = ATTR2_TILEID(3, 13);

        } else if (!prize[i].active) { //if inactive show blank prize
            shadowOAM[i + 1].attr0 = (prize[i].worldRow) | ATTR0_SQUARE;
            shadowOAM[i + 1].attr1 = (prize[i].worldCol) | ATTR1_SMALL;
            shadowOAM[i + 1].attr2 = ATTR2_TILEID(3, 11);

        }
    }

}

void initLivesSB(){
    int colS[] = {5, 18, 31};
    for (int i = 0; i < LIFECOUNT; i++) {

        lives[i].worldCol = colS[i];
        lives[i].worldRow = 460;
        lives[i].aniState = 0;
        lives[i].curFrame = 0;
        lives[i].active = 1;
        lives[i].numFrames = 5;

    }    
}

void drawLivesSB(){
    for (int i = 0; i < 3; i ++){
        if (gameLives == 2) { //1 broken heart
            lives[2].active = 0;
        } else if (gameLives ==1) { //2 broken hearts
            lives[1].active = 0;
            lives[2].active = 0;
        } else if (gameLives == 3) {
            lives[i].active = 1;
        }
    }

    for (int i = 0; i < 3; i ++){
        if (lives[i].active) {
            shadowOAM[i + 4].attr0 = (ROWMASK & 2) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i + 4].attr1 = (COLMASK & lives[i].worldCol ) | ATTR1_TINY;
            shadowOAM[i + 4].attr2 =  ATTR2_TILEID(lives[i].aniState +7, lives[i].curFrame + 8)  ;

        } else{
            shadowOAM[i + 4].attr0 = ATTR0_HIDE;

        }
    }      
    
}

void animateLives() {
    for (int i = 0; i < 3; i ++){
        if (lives[i].active) {
            if(lives[i].aniCounter % 18 == 0) {
                lives[i].curFrame = (lives[i].curFrame + 1) % lives[i].numFrames;
            }
            lives[i].aniCounter++;
        }
    }
}
//draws the ball symbol and a :
void  drawBallSymbolSB() {
    shadowOAM[7].attr0 = (ROWMASK & 2) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[7].attr1 = (COLMASK & 110) | ATTR1_TINY;
    shadowOAM[7].attr2 =  ATTR2_TILEID(13, 1);
}

void initBallSB() { 
    ballAmount1.width = 8;
    ballAmount1.height = 8;
    ballAmount1.numFrames = 10;
    ballAmount1.curFrame = 0;

    ballAmount2.numFrames = 10;
    ballAmount2.curFrame = 0;

}

void updateBallSB() {
    ballAmount1.curFrame = collectedBalls / 10;
    ballAmount2.curFrame = collectedBalls % 10;
    
}

void drawBallAmountSB() {
    shadowOAM[8].attr0 = (ROWMASK & 2) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[8].attr1 = (COLMASK & 119) | ATTR1_TINY;
    shadowOAM[8].attr2 =  ATTR2_TILEID(12, ballAmount1.curFrame);

    shadowOAM[9].attr0 = (ROWMASK & 2) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[9].attr1 = (COLMASK & 125) | ATTR1_TINY;
    shadowOAM[9].attr2 =  ATTR2_TILEID(12, ballAmount2.curFrame);
}

////////////////////  PORTALS ////////////////
void initPortals() {
    portal1.worldCol = 418;
    portal1.worldRow = 465;
    portal1.width = 32;
    portal1.height = 13;

    portal2.worldCol = 320;
    portal2.worldRow = 280;
    portal2.width = 16;
    portal2.height = 24;

    portal3.worldCol = 232;
    portal3.worldRow = 232;
    portal3.width = 16;
    portal3.height = 24; 
}


void drawPortals() {
    if (portal1.active){
        shadowOAM[10].attr0 = (ROWMASK & (portal1.worldRow -vOff) ) | ATTR0_WIDE;
        shadowOAM[10].attr1 = (COLMASK & (portal1.worldCol - hOff) ) | ATTR1_MEDIUM;
        shadowOAM[10].attr2 = ATTR2_TILEID(1, 6);

    } else {
        shadowOAM[10].attr0 = ATTR0_HIDE;
    }

    if (portal2.active) {
        shadowOAM[11].attr0 = (ROWMASK & (portal2.worldRow -vOff) ) | ATTR0_TALL;
        shadowOAM[11].attr1 = (COLMASK & (portal2.worldCol - hOff )) | ATTR1_MEDIUM;
        shadowOAM[11].attr2 = ATTR2_TILEID(9, 4) ;

    } else {
        shadowOAM[11].attr0 = ATTR0_HIDE;
    }


    if (portal3.active) {
        shadowOAM[12].attr0 = (ROWMASK & (portal3.worldRow -vOff )) | ATTR0_TALL;
        shadowOAM[12].attr1 = (COLMASK & (portal3.worldCol - hOff) ) | ATTR1_MEDIUM;
        shadowOAM[12].attr2 = ATTR2_TILEID(9, 8);

    } else {
        shadowOAM[12].attr0 = ATTR0_HIDE;
    }
}

void initWinPortal() {
    winPortal.worldCol = 496;
    winPortal.worldRow = 128;
    winPortal.active = 1;
    winPortal.width = 16;
    winPortal.height=16;
}

void drawWinPortal() {
    if (winPortal.active) {
        shadowOAM[13].attr0 = (ROWMASK & (winPortal.worldRow - vOff)) |ATTR0_TALL;
        shadowOAM[13].attr1 = (COLMASK & (winPortal.worldCol - hOff)) |ATTR1_MEDIUM;
        shadowOAM[13].attr2 = ATTR2_TILEID(11,11);
    } else {
        shadowOAM[13].attr0 = ATTR0_HIDE;
    }
}



////////////////// ENEMY SPRITES //////////////


void initEnemyP0() {
    int x[] = {64, 200, 280, 359};
    int y[] = {480,424, 448, 472};

    for (int i = 0; i < ENEMYCOUNT0; i++) {
        enemies0[i].worldCol = x[i];
        enemies0[i].worldRow = y[i];
        enemies0[i].rdel = 1;
        enemies0[i].cdel = 1;
        enemies0[i].width = 8;
        enemies0[i].height = 8;
        enemies0[i].active = 1;
        enemies0[i].curFrame = 0;
        enemies0[i].numFrames = 3;
        enemies0[i].aniCounter = 0;
    }

}

void updateEnemyP0() {
    for (int i = 0; i < ENEMYCOUNT0; i++) { //2
        if (enemies0[i].active && enemies0[i].aniCounter % 3 == 0) {
            if (collisionCheck(enemyColMap, MAPWIDTH, enemies0[i].worldCol, enemies0[i].worldRow, enemies0[i].width, enemies0[i].height - 1, enemies0[i].cdel, 0) == 0 ||  collisionCheck(enemyColMap, MAPWIDTH, enemies0[i].worldCol, enemies0[i].worldRow, enemies0[i].width, enemies0[i].height - 1, -enemies0[i].cdel, 0) == 0 ) {
                enemies0[i].cdel *= -1;
                
            } 
            enemies0[i].worldCol += enemies0[i].cdel;  
        }

        if (enemies0[i].active) { //animate enemy
            if(enemies0[i].aniCounter % 10 == 0) {
                enemies0[i].curFrame = (enemies0[i].curFrame + 1) % enemies0[i].numFrames;
            }
        }

        //enemy player collision, player looses a life, enemy disseapears (ADD IN DYING ANIMATION)
        if (enemies0[i].active && collision(enemies0[i].worldCol, enemies0[i].worldRow, enemies0[i].width, enemies0[i].height, player.worldCol, player.worldRow, player.width, player.height)) {
            enemies0[i].active = 0;
            enemies0[i].hit ++;
            //hOff = 0;
            //initPlayer();
            gameLives --;
            
        }

        //enemy bullet collision
        if (bullets.active  && enemies0[i].active && collision(enemies0[i].worldCol, enemies0[i].worldRow, enemies0[i].width, enemies0[i].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
            stopSoundB();
            enemies0[i].active = 0;
            bullets.active = 0;
            
        }
        enemies0[i].aniCounter++;
    }    

}

void drawEnemyP0() {

    for (int i = 0; i < ENEMYCOUNT0; i++) {
        if (enemies0[i].active) {
            shadowOAM[i + 15].attr0 =  (ROWMASK & (enemies0[i].worldRow -vOff)) |  ATTR0_SQUARE;
            shadowOAM[i + 15].attr1 =  (COLMASK & (enemies0[i].worldCol -hOff)) | ATTR1_TINY;
            shadowOAM[i + 15].attr2 = ATTR2_TILEID(enemies0[i].aniState + 2, enemies0[i].curFrame + 1) | ATTR2_PALROW(0); 
        }  else  {
            shadowOAM[i + 15].attr0 = ATTR0_HIDE;

        }
    }  
}


void initEnemyP1() { 
    int x[] = {448, 336, 280, 248, 200, 128, 56, 112, 200};
    int y[] = {392, 400, 376, 376, 376, 368, 360, 320, 312};

    for (int i = 0; i < ENEMYCOUNT1; i++) { //should be 9
        enemies1[i].worldCol = x[i];
        enemies1[i].worldRow = y[i];
        enemies1[i].rdel = 1;
        enemies1[i].cdel = 1;
        enemies1[i].width = 8;
        enemies1[i].height = 8;
        enemies1[i].active = 1;
        enemies1[i].curFrame = 0;
        enemies1[i].numFrames = 3;

    }

}

void updateEnemyP1() {
    for (int i = 0; i < ENEMYCOUNT1; i++) { //2
        if (enemies1[i].active && enemies1[i].aniCounter % 3 == 0) {
            if (collisionCheck(enemyColMap, MAPWIDTH, enemies1[i].worldCol, enemies1[i].worldRow, enemies1[i].width, enemies1[i].height - 1, enemies1[i].cdel, 0) == 0 ||  collisionCheck(enemyColMap, MAPWIDTH, enemies1[i].worldCol, enemies1[i].worldRow, enemies1[i].width, enemies1[i].height - 1, -enemies1[i].cdel, 0) == 0 ) {
                enemies1[i].cdel *= -1;
                
            } 
            enemies1[i].worldCol += enemies1[i].cdel;  
        }

        if (enemies1[i].active) { //animate enemy
            if(enemies1[i].aniCounter % 10 == 0) {
                enemies1[i].curFrame = (enemies1[i].curFrame + 1) % enemies1[i].numFrames;
            }
        }

        //enemy player collision, player looses a life, enemy disseapears (ADD IN DYING ANIMATION)
        if (enemies1[i].active && collision(enemies1[i].worldCol, enemies1[i].worldRow, enemies1[i].width, enemies1[i].height, player.worldCol, player.worldRow, player.width, player.height)) {
            
            enemies1[i].active = 0;
            gameLives --;
        }

        if (bullets.active  && enemies1[i].active && collision(enemies1[i].worldCol, enemies1[i].worldRow, enemies1[i].width, enemies1[i].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
            stopSoundB();
            enemies1[i].active = 0;
            bullets.active = 0;
            
        }
        enemies1[i].aniCounter++;
    }    

}

void drawEnemyP1() {

    for (int i = 0; i < ENEMYCOUNT1; i++) {
        if (enemies1[i].active) {
            shadowOAM[i + 17].attr0 =  (ROWMASK & (enemies1[i].worldRow -vOff)) |  ATTR0_SQUARE;
            shadowOAM[i + 17].attr1 =  (COLMASK & (enemies1[i].worldCol -hOff)) | ATTR1_TINY;
            shadowOAM[i + 17].attr2 = ATTR2_TILEID(enemies1[i].aniState + 2, enemies1[i].curFrame + 1) | ATTR2_PALROW(0);  

        } else  {
            shadowOAM[i + 17].attr0 = ATTR0_HIDE;

        }

        
    }  

}


void initEnemyP2() { 
    int x[] = {440, 440, 344, 204};
    int y[] = {304, 248, 240, 240};

    for (int i = 0; i < ENEMYCOUNT2; i++) { //should be 4
        enemies2[i].worldCol = x[i];
        enemies2[i].worldRow = y[i];
        enemies2[i].rdel = 1;
        enemies2[i].cdel = 1;
        enemies2[i].width = 8;
        enemies2[i].height = 8;
        enemies2[i].active = 1;
        enemies2[i].curFrame = 0;
        enemies2[i].numFrames = 3;

    }

}

void updateEnemyP2() {
    for (int i = 0; i < ENEMYCOUNT2; i++) { //2
        if (enemies2[i].active && enemies2[i].aniCounter % 3 == 0) {
            if (collisionCheck(enemyColMap, MAPWIDTH, enemies2[i].worldCol, enemies2[i].worldRow, enemies2[i].width, enemies2[i].height - 1, enemies2[i].cdel, 0) == 0 ||  collisionCheck(enemyColMap, MAPWIDTH, enemies2[i].worldCol, enemies2[i].worldRow, enemies2[i].width, enemies2[i].height - 1, -enemies2[i].cdel, 0) == 0 ) {
                enemies2[i].cdel *= -1;
                
            } 
            enemies2[i].worldCol += enemies2[i].cdel;  
        }

        if (enemies2[i].active) { //animate enemy
            if(enemies2[i].aniCounter % 10 == 0) {
                enemies2[i].curFrame = (enemies2[i].curFrame + 1) % enemies2[i].numFrames;
            }
        }

        //enemy player collision, player looses a life, enemy disseapears (ADD IN DYING ANIMATION)
        if (enemies2[i].active && collision(enemies2[i].worldCol, enemies2[i].worldRow, enemies2[i].width, enemies2[i].height, player.worldCol, player.worldRow, player.width, player.height)) {
            
            enemies2[i].active = 0;
            gameLives --;
        }
        if (bullets.active  && enemies2[i].active && collision(enemies2[i].worldCol, enemies2[i].worldRow, enemies2[i].width, enemies2[i].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
            stopSoundB();
            enemies2[i].active = 0;
            bullets.active = 0;
            
        }

        enemies2[i].aniCounter++;
    }    

}

void drawEnemyP2() {

    for (int i = 0; i < ENEMYCOUNT2; i++) {
        if (enemies2[i].active) {
            shadowOAM[i + 26].attr0 =  (ROWMASK & (enemies2[i].worldRow -vOff)) |  ATTR0_SQUARE;
            shadowOAM[i + 26].attr1 =  (COLMASK & (enemies2[i].worldCol -hOff)) | ATTR1_TINY;
            shadowOAM[i + 26].attr2 = ATTR2_TILEID(enemies2[i].aniState + 2, enemies2[i].curFrame + 1) | ATTR2_PALROW(0);  

        } else  {
            shadowOAM[i + 26].attr0 = ATTR0_HIDE;

        } 
    }  

}


void initEnemyP3() { 
    int x[] = {120,25,40,64,148, 233, 284, 337, 373, 456};
    int y[] = {216,152,152,152,144,136,136, 152, 160, 144};

    for (int i = 0; i < ENEMYCOUNT3; i++) { //should be 4
        enemies3[i].worldCol = x[i];
        enemies3[i].worldRow = y[i];
        enemies3[i].rdel = 1;
        enemies3[i].cdel = 1;
        enemies3[i].width = 8;
        enemies3[i].height = 8;
        enemies3[i].active = 1;
        enemies3[i].curFrame = 0;
        enemies3[i].numFrames = 3;

    }

}

void updateEnemyP3() {
    for (int i = 0; i < ENEMYCOUNT3; i++) { //2
        if (enemies3[i].active && enemies3[i].aniCounter % 3 == 0) {
            if (collisionCheck(enemyColMap, MAPWIDTH, enemies3[i].worldCol, enemies3[i].worldRow, enemies3[i].width, enemies3[i].height - 1, enemies3[i].cdel, 0) == 0 ||  collisionCheck(enemyColMap, MAPWIDTH, enemies3[i].worldCol, enemies3[i].worldRow, enemies3[i].width, enemies3[i].height - 1, -enemies3[i].cdel, 0) == 0 ) {
                enemies3[i].cdel *= -1;  
            } 
            enemies3[i].worldCol += enemies3[i].cdel;  
        }

        if (enemies3[i].active) { //animate enemy
            if(enemies3[i].aniCounter % 10 == 0) {
                enemies3[i].curFrame = (enemies3[i].curFrame + 1) % enemies3[i].numFrames;
            }
        }

        //enemy player collision, player looses a life, enemy disseapears (ADD IN DYING ANIMATION)
        if (enemies3[i].active && collision(enemies3[i].worldCol, enemies3[i].worldRow, enemies3[i].width, enemies3[i].height, player.worldCol, player.worldRow, player.width, player.height)) {
            
            enemies3[i].active = 0;
            gameLives --;
        }
        if (bullets.active  && enemies3[i].active && collision(enemies3[i].worldCol, enemies3[i].worldRow, enemies3[i].width, enemies3[i].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
            stopSoundB();
            enemies3[i].active = 0;
            bullets.active = 0;
            
        }
        enemies3[i].aniCounter++;
    }    

}


void drawEnemyP3() {

    for (int i = 0; i < ENEMYCOUNT3; i++) {
        if (enemies3[i].active) {
            shadowOAM[i + 79].attr0 =  (ROWMASK & (enemies3[i].worldRow -vOff)) |  ATTR0_SQUARE;
            shadowOAM[i + 79].attr1 =  (COLMASK & (enemies3[i].worldCol -hOff)) | ATTR1_TINY;
            shadowOAM[i + 79].attr2 = ATTR2_TILEID(enemies3[i].aniState + 2, enemies3[i].curFrame + 1) | ATTR2_PALROW(0);  

        } else  {
            shadowOAM[i + 79].attr0 = ATTR0_HIDE;

        } 
    }  

}



/////////////////////

void initBallsP0() { 

    int x[] = {80, 234, 248, 254, 320, 338};
    int y[] = {476, 413,425,440,440,456};

        for (int i = 0; i < BALLCOUNT0; i++) {
            balls0[i].worldCol = x[i];
            balls0[i].worldRow = y[i];
            balls0[i].curFrame = 0;
            balls0[i].active = 1;
            balls0[i].curFrame = 0;
            balls0[i].numFrames = 3;
            balls0[i].aniCounter = 0;

        }

}

void updateBallsP0() {
    for (int i = 0; i < BALLCOUNT0; i++) {
        if (balls0[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, balls0[i].worldCol, balls0[i].worldRow, balls0[i].width, balls0[i].height)) {
            balls0[i].active = 0;
            playSoundB(ding2_data, ding2_length, 0);
            collectedBalls ++;
        // break;
        }

        if (balls0[i].active) {
            if(balls0[i].aniCounter % 14 == 0) {
                balls0[i].curFrame = (balls0[i].curFrame + 1) % balls0[i].numFrames;
            }

            balls0[i].aniCounter++;

        }

    } 

}

void drawBallsP0() {
    for (int i = 0; i < BALLCOUNT0; i++) {
            if (balls0[i].active) {
                shadowOAM[i + 51].attr0 =  (ROWMASK &  (balls0[i].worldRow -vOff)) |  ATTR0_SQUARE;
                shadowOAM[i + 51].attr1 =  (COLMASK & (balls0[i].worldCol -hOff)) | ATTR1_TINY;
                shadowOAM[i + 51].attr2 = ATTR2_TILEID(balls0[i].aniState + 5, balls0[i].curFrame + 1) ;   

            } else {
                shadowOAM[i + 51].attr0 = ATTR0_HIDE;
            }
        } 

}


void initBallsP1() {
    int x[] = {464,437,292,246,194,178,58,86,186};
    int y[] = {372,372,350,358,346,360,286,296,300};

    for (int i = 0; i < BALLCOUNT1; i++) {
        balls1[i].worldCol = x[i];
        balls1[i].worldRow = y[i];
        balls1[i].curFrame = 0;
        balls1[i].active = 1;
        balls1[i].curFrame = 0;
        balls1[i].numFrames = 3;
        balls1[i].aniCounter = 0;

    }

}
void updateBallsP1() {
    for (int i = 0; i < BALLCOUNT1; i++) {

        if (balls1[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, balls1[i].worldCol, balls1[i].worldRow, balls1[i].width, balls1[i].height)) {
            balls1[i].active = 0;
            playSoundB(ding2_data, ding2_length, 0);
           // stopSoundB();
            collectedBalls ++;
        }

        if (balls1[i].active) {
            if(balls1[i].aniCounter % 14 == 0) {
                balls1[i].curFrame = (balls1[i].curFrame + 1) % balls1[i].numFrames;
            }

            balls1[i].aniCounter++;

        }
    } 

}
void drawBallsP1() {
    for (int i = 0; i < BALLCOUNT1; i++) {
        if (balls1[i].active) {
            shadowOAM[i + 57].attr0 =  ( ROWMASK & (balls1[i].worldRow -vOff) )|  ATTR0_SQUARE;
            shadowOAM[i + 57].attr1 =  ( COLMASK & (balls1[i].worldCol -hOff)) | ATTR1_TINY;
            shadowOAM[i + 57].attr2 = ATTR2_TILEID(balls1[i].aniState + 5, balls1[i].curFrame + 1) ;   

        } else {
            shadowOAM[i + 57].attr0 = ATTR0_HIDE;
        }
    } 

}

void initBallsP2()  {
    int x[] = {424,480,440,230};
    int y[] = {284,284,232,240};

    for (int i = 0; i < BALLCOUNT2; i++) {
        balls2[i].worldCol = x[i];
        balls2[i].worldRow = y[i];
        balls2[i].curFrame = 0;
        balls2[i].active = 1;
        balls2[i].curFrame = 0;
        balls2[i].numFrames = 3;
        balls2[i].aniCounter = 0;

    }

}
void updateBallsP2(){
    for (int i = 0; i < BALLCOUNT2; i++) {


        if (balls2[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, balls2[i].worldCol, balls2[i].worldRow, balls2[i].width, balls2[i].height)) {
            balls2[i].active = 0;
            playSoundB(ding2_data, ding2_length, 0);
            collectedBalls ++;
        // break;
        }

        if (balls2[i].active) {
            if(balls2[i].aniCounter % 14 == 0) {
                balls2[i].curFrame = (balls2[i].curFrame + 1) % balls2[i].numFrames;
            }

            balls2[i].aniCounter++;

        }
    } 

}
void drawBallsP2() {
    for (int i = 0; i < BALLCOUNT2; i++) {
        if (balls2[i].active) {
            shadowOAM[i + 66].attr0 =  ( ROWMASK & (balls2[i].worldRow -vOff)) |  ATTR0_SQUARE;
            shadowOAM[i + 66].attr1 =  (COLMASK & (balls2[i].worldCol -hOff)) | ATTR1_TINY;
            shadowOAM[i + 66].attr2 =ATTR2_TILEID(balls2[i].aniState + 5, balls2[i].curFrame + 1);   

        } else {
            shadowOAM[i + 66].attr0 = ATTR0_HIDE;
        }
    } 

}

void initBallsP3() {
    int x[]= {196,168,92,16,40,94,226,248};
    int y[] = {216,208,216,224,152,152,94,94};

    for (int i = 0; i < BALLCOUNT3; i++) {
        balls3[i].worldCol = x[i];
        balls3[i].worldRow = y[i];
        balls3[i].curFrame = 0;
        balls3[i].active = 1;
        balls3[i].curFrame = 0;
        balls3[i].numFrames = 3;
        balls3[i].aniCounter = 0;

    }

}
void updateBallsP3(){
    for (int i = 0; i < BALLCOUNT3; i++) {
        if (balls3[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, balls3[i].worldCol, balls3[i].worldRow, balls3[i].width, balls3[i].height)) {
            balls3[i].active = 0;
            playSoundB(ding2_data, ding2_length, 0);
            collectedBalls ++;
        // break;
        }

        if (balls3[i].active) {
            if(balls3[i].aniCounter % 14 == 0) {
                balls3[i].curFrame = (balls3[i].curFrame + 1) % balls3[i].numFrames;
            }

            balls3[i].aniCounter++;

        }
    } 

}
void drawBallsP3(){
    for (int i = 0; i < BALLCOUNT3; i++) {
        if (balls3[i].active) {
            shadowOAM[i + 70].attr0 =  (ROWMASK &  (balls3[i].worldRow -vOff)) |  ATTR0_SQUARE;
            shadowOAM[i + 70].attr1 =  (COLMASK & (balls3[i].worldCol -hOff)) | ATTR1_TINY;
            shadowOAM[i + 70].attr2 = ATTR2_TILEID(balls3[i].aniState + 5, balls3[i].curFrame + 1);   

        } else {
            shadowOAM[i + 70].attr0 = ATTR0_HIDE;
        }
    } 

}


void initBullets() {
    bullAmt = collectedBalls;
    
    bullets.active = 0;
    bullets.worldRow = 0;
    bullets.worldCol = 0;   
    bullets.rdel = 3;
    bullets.width = 5;
    bullets.height = 5;
    bullets.numFrames = 3;
    bullets.curFrame = 0;
    bullets.aniState = 0;

    
}

void updateBullets() {
    //if bullet active move it right until it hits something
    if (bullets.active){
        
        if (bullets.worldCol + bullets.cdel < SCREENWIDTH + hOff && bullets.worldCol > 2) { 
            bullets.worldCol += bullets.cdel;

        }         
        if (bullets.worldCol + bullets.cdel >= SCREENWIDTH + hOff){
            stopSoundB();
            bullets.active = 0;
        
        } 
        
        if (bullets.worldCol <=  hOff  ) {
            stopSoundB();
            bullets.active = 0;
        }
        /*
        for (int j = 0; j < ENEMYCOUNT; j++) {
            if (enemies[j].active  && collision(enemies[j].worldCol, enemies[j].worldRow, enemies[j].width, enemies[j].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
                enemies[j].active = 0;
                bullets.active = 0;
                enemyNum ++;
            }
        } */
        //animates the bullets
        if(bullets.aniCounter % 8 == 0) {
            bullets.curFrame = (bullets.curFrame + 1) % bullets.numFrames;
        }

        bullets.aniCounter++;
    }
    

}



void fireBullet() {
    //if bullet not active, make active and set at correct location and subt from balls
    if (!bullets.active && collectedBalls > 0){
        if (player.aniState == SPRITELEFT) {
            bullets.cdel = -3;

        } else if (player.aniState ==SPRITERIGHT) {
            bullets.cdel = 3;
        }
        bullets.worldRow = player.worldRow + 6;
        bullets.worldCol = player.worldCol + 8;

        bullets.active = 1;
        playSoundB(woosh_data, woosh_length, 0);
        collectedBalls --;
        bullAmt --;
    }
} 

void drawBullets() {
    
    if (bullets.active){
        shadowOAM[14].attr0 = (ROWMASK & (bullets.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[14].attr1 = (ROWMASK & (bullets.worldCol - hOff)) | ATTR1_TINY;
        shadowOAM[14].attr2 = ATTR2_TILEID(bullets.aniState + 5, bullets.curFrame + 1) ;
    } else {
        shadowOAM[14].attr0 = ATTR0_HIDE;
    }
}


// SCOREBAR ACTUAL BAR

void initScoreBarBar() {
    int colArr[] = {0, 16, 32, 48, 64, 80, 96, 112, 128, 144, 160, 176, 192, 208, 224};

    for (int i = 0; i < 15; i++) {
        scoreBar[i].worldCol = colArr[i];
        scoreBar[i].worldRow = 0;
        scoreBar[i].width = 16;
        scoreBar[i].height = 13;
    }

}

void drawScoreBarBar() {
    for (int i = 0; i < 15; i++) {
        shadowOAM[i + 35].attr0 = ( scoreBar[i].worldRow ) | ATTR0_SQUARE;
        shadowOAM[i + 35].attr1 = (scoreBar[i].worldCol ) | ATTR1_SMALL ;
        shadowOAM[i + 35].attr2 = ATTR2_TILEID(0, 17) | ATTR2_PALROW(9)| ATTR2_PRIORITY(0);

    }    
}



//////////////// HIGHWAY JUMP MINI GAME #1 ///////////////////
void initMazePrize(){
    mazePrize.worldCol = 5;
    mazePrize.worldRow = 100;
    mazePrize.width = 16;
    mazePrize.height = 16;
    mazePrize.active = 0;

}

void drawMazePrize() {
    if (mazePrize.active) {
        shadowOAM[1].attr0 = (mazePrize.worldRow) | ATTR0_SQUARE;
        shadowOAM[1].attr1 = (mazePrize.worldCol) | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_TILEID(4, 17);

    } else {
        shadowOAM[1].attr0 = ATTR0_HIDE;
    }

    
}

void updatePlayerMaze() {
    if (BUTTON_HELD(BUTTON_RIGHT) && player.worldCol < SCREENWIDTH - player.width) {
        player.worldCol += player.cdel;
    }

    if (BUTTON_HELD(BUTTON_LEFT) && player.worldCol > 1) {
        player.worldCol -= player.cdel;  
    }

    //JUMP FEATURE
    isGrounded = collisionCheck(highwayColMap, SCREENWIDTH, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;
    //JUMP FEATURE
    if (BUTTON_PRESSED(BUTTON_UP) && isGrounded ) {
        player.isJumping = 1;
        player.jumpFrames = 0;
    }  

    if (player.isJumping) {
        player.worldRow -=4;
        player.jumpFrames++;

        if (player.jumpFrames == maxFrames || player.worldRow == 0) {
            player.isJumping = 0; //stop jumping here bc reached max jump height displacement
        }

    } else if (collisionCheck(highwayColMap, SCREENWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel))   { //if you can move down, move down
        player.worldRow += 1;
          
    }

    //Player-Prize collision for maze mini game
    if (mazePrize.active && collision(player.worldCol, player.worldRow, player.width, player.height, mazePrize.worldCol, mazePrize.worldRow, mazePrize.width, mazePrize.height)) {
        prizes = 1;
        //go back to other game
    }


    //if collision with a vehicle, init player again  
    if (truck.active && collision(player.worldCol, player.worldRow, player.width, player.height, truck.worldCol, truck.worldRow, truck.width, truck.height)) {
        player.isJumping = 0;
        initPlayer();
        //go back to other game
    } 
    if (carA.active && collision(player.worldCol, player.worldRow, player.width, player.height, carA.worldCol, carA.worldRow, carA.width, carA.height)) {
        player.isJumping = 0;
        initPlayer();
        //go back to other game
    }

    if (carB.active && collision(player.worldCol, player.worldRow, player.width, player.height, carB.worldCol, carB.worldRow, carB.width, carB.height)) {
        player.isJumping = 0;
        initPlayer();
        //go back to other game
    }


    if (time_s == 5) { //if gets to 60 seconds, make prize appear
            mazePrize.active = 1;
            //time_s = 0;
            REG_TM2CNT = TIMER_OFF;
            
    } 

    animatePlayer();
}

void initTruck() {
    truck.worldRow = 104;
    truck.worldCol = 0;
    truck.width = 24;
    truck.height = 16;
    truck.cdel = 1;
    truck.aniCounter = 0;
    truck.curFrame = 0;
    truck.numFrames = 3;

}

void updateTruck() {

    if (truck.worldCol > SCREENWIDTH + 9 && truck.active) {
        truck.worldCol = 0;
    }
    
    if (truck.active) {
        truck.worldCol += truck.cdel;
    }


    /*
    if ( !truck.active) {
        //if car not activate, set location activate til goess off screen
        truck.active = 1;
    } */   


    if (truck.active) {
        if(truck.aniCounter % 10 == 0) {
            truck.curFrame = (truck.curFrame + 1) % truck.numFrames;
        }


    }
    truck.aniCounter++;




}

void drawTruck() {
    if (truck.active) {
        shadowOAM[3].attr0 = truck.worldRow|  ATTR0_WIDE;
        shadowOAM[3].attr1 = truck.worldCol| ATTR1_MEDIUM ;
        shadowOAM[3].attr2 = ATTR2_TILEID((truck.aniState * 4 ) +21, (truck.curFrame * 2) + 17) ;

    }   else {
        shadowOAM[3].attr0 |= ATTR0_HIDE;
    } 
}


void initCarA() {
    carA.worldRow = 104;
    carA.worldCol = 0;
    carA.width = 24;
    carA.height =16;
    carA.cdel = 1;
    carA.numFrames = 3;
    carA.aniCounter = 0;
    carA.curFrame = 0;

    col = 25;
    row = 11;

}

void updateCarA() {
     if (carA.worldCol > SCREENWIDTH + 9 && carA.active) {
        
        int b = rand () % 16;
        int g = rand () % 16;
        int f = rand () % 16;
        int h = rand () % 16;
        int i = rand () % 16;
        int j = rand () % 16;
        int k = rand () % 16;
        int l = rand () % 16;

        
        SPRITEPALETTE[144] = SPRITEPALETTE[b + 160];
        SPRITEPALETTE[145] = SPRITEPALETTE[g + 160];
        SPRITEPALETTE[145] = SPRITEPALETTE[f + 160];
        SPRITEPALETTE[147] = SPRITEPALETTE[h + 160];
        SPRITEPALETTE[150] = SPRITEPALETTE[k + 160];
        SPRITEPALETTE[151] = SPRITEPALETTE[l + 160];
        SPRITEPALETTE[153] = SPRITEPALETTE[j + 160];
        SPRITEPALETTE[155] = SPRITEPALETTE[i + 160];
        int type = rand () % 5;

        if (type == 0) {
            col = 17;
            row = 11;
        } else if (type == 1) {
            col = 21;
            row = 11;

        } else if (type == 2) {
            col = 25;
            row = 11;

        } else if (type == 3) {
            col = 21;
            row = 17;

        } else if (type == 4) {
            col = 25;
            row = 17;

        }        
        carA.worldCol = 0; 
        
    }

    if (!carA.active) {
        carA.active = 1;
    }
    
    if (carA.active) {
        carA.worldCol += carA.cdel;
    }

    if (carA.active) {
        if(carA.aniCounter % 10 == 0) {
            carA.curFrame = (carA.curFrame + 1) % carA.numFrames;
        }


    }
    carA.aniCounter++;


}

void drawCarA() {
    if (carA.active) {
        shadowOAM[4].attr0 = carA.worldRow|  ATTR0_WIDE;
        shadowOAM[4].attr1 = carA.worldCol| ATTR1_MEDIUM ;
        shadowOAM[4].attr2 = ATTR2_TILEID((carA.aniState * 4 ) + col, (carA.curFrame * 2) + row)| ATTR2_PALROW(9);

    }   else {
        shadowOAM[4].attr0 |= ATTR0_HIDE;
    } 

}

void initCarB() {
    carB.worldRow = 104;
    carB.worldCol = 0;
    carB.width = 24;
    carB.height = 16;
    carB.cdel = 1;
    carB.numFrames = 3;
    carB.aniCounter = 0;
    carB.curFrame = 0;
    colB = 25;
    rowB = 11;
}

void updateCarB() {
    int place = (rand () % 200) + 30;
    if (carB.worldCol > SCREENWIDTH + 9 && carB.active && carA.worldCol == place) {
        int b = rand () % 16;
        int g = rand () % 16;
        int f = rand () % 16;
        int h = rand () % 16;
        int i = rand () % 16;
        int j = rand () % 16;
        int k = rand () % 16;
        int l = rand () % 16;

        
        SPRITEPALETTE[160] = SPRITEPALETTE[b + 160];
        SPRITEPALETTE[161] = SPRITEPALETTE[g + 160];
        SPRITEPALETTE[163] = SPRITEPALETTE[f + 160];
        SPRITEPALETTE[166] = SPRITEPALETTE[h + 160];
        SPRITEPALETTE[167] = SPRITEPALETTE[k + 160];
        SPRITEPALETTE[170] = SPRITEPALETTE[l + 160];
        SPRITEPALETTE[171] = SPRITEPALETTE[j + 160];
        SPRITEPALETTE[173] = SPRITEPALETTE[i + 160];
        
        
        int type = rand () % 5;

        if (type == 0) {
            colB = 25;
            rowB = 17;
            
        } else if (type == 1) {
            colB = 17;
            rowB = 11;

        } else if (type == 2) {
            colB = 25;
            rowB = 11;

        } else if (type == 3) {
            colB = 21;
            rowB = 17;

        } else if (type == 4) {
            colB = 21;
            rowB = 11;
            

        }

        carB.worldCol = 0;
    }

    if (!carB.active) {
        carB.active = 1;
    }

    
    
    if (carB.active) {
        carB.worldCol += carB.cdel +1;
    }

    if (carB.active) {
        if(carB.aniCounter % 10 == 0) {
            carB.curFrame = (carB.curFrame + 1) % carB.numFrames;
        }


    }
    carB.aniCounter++;


}

void drawCarB() {


    if (carB.active) {
        shadowOAM[5].attr0 = carB.worldRow|  ATTR0_WIDE;
        shadowOAM[5].attr1 = carB.worldCol| ATTR1_MEDIUM ;
        shadowOAM[5].attr2 = ATTR2_TILEID((carB.aniState * 4 ) + colB, (carB.curFrame * 2) + rowB)| ATTR2_PALROW(10);

    }   else {
        shadowOAM[5].attr0 |= ATTR0_HIDE;
    } 

}

void initCone() { //3 cones
    int r[] = {40, 100, 150};
    
    for (int i = 0; i < 3; i++) {
        cone[i].worldCol = r[i];
        cone[i].worldRow = 104;
        cone[i].active = 0;
        cone[i].width = 8;
        cone[i].height= 8;

    }  
}

void updateCone() {
    for (int i = 0; i < 3; i++) {
        if (cone[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, cone[i].worldCol, cone[i].worldRow, cone[i].width, cone[i].height)) {
            player.isJumping = 0;
            initPlayer();
        }
         
    }    

    if (time_s2  == 1) {// every 4 seconds update car
            cone[2].active =1;
    } 
    if (time_s2  == 2) {// every 4 seconds update car
        cone[1].active =1;
    } 
    if (time_s2  == 3) {// every 4 seconds update car
        cone[0].active =1;
    } 
    if (time_s2 == 4) {
        REG_TM3CNT = TIMER_OFF;
    }   
}

void drawCone() {
    for (int i = 0; i < 3; i++) {
        if (cone[i].active) {
            shadowOAM[i + 6].attr0 = cone[i].worldRow|  ATTR0_SQUARE;
            shadowOAM[i + 6].attr1 = cone[i].worldCol| ATTR1_SMALL ;
            shadowOAM[i + 6].attr2 = ATTR2_TILEID((cone[i].aniState * 2 ) + 18, (cone[i].curFrame * 2) + 17)| ATTR2_PALROW(0);

        }   else {
            shadowOAM[i + 6].attr0 |= ATTR0_HIDE;
        } 
    }    
}

void setCone() {
    for (int i = 0; i < 3; i++) {
        cone[i].active = 1;
    }       
    
}

////////////////// LASER MINI GAME /////////////////

void updatePlayerLaser() {
    //moves player left
    if(BUTTON_HELD(BUTTON_LEFT) && collisionCheck(windowColMap, SCREENWIDTH, player.worldCol, player.worldRow, player.width, player.height-1, -player.cdel,0) ) {
        if (player.worldCol > 0 ) {
            player.worldCol -= player.cdel;
        
        }
    }
    //moves player right
    if(BUTTON_HELD(BUTTON_RIGHT) && collisionCheck(windowColMap, SCREENWIDTH, player.worldCol, player.worldRow, player.width, player.height - 1, player.cdel, 0) ) {
        if (player.worldCol + player.width < SCREENWIDTH ){ 
            player.worldCol += player.cdel; 
            
        }
    }

    //JUMP FEATURE
    //if one under is ground
    isGrounded = collisionCheck(windowColMap, SCREENWIDTH, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 2 ||collisionCheck(windowColMap, SCREENWIDTH, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;
    //JUMP FEATURE
    if (BUTTON_PRESSED(BUTTON_UP) && isGrounded ) {
        player.isJumping = 1;
        player.jumpFrames = 0;
    }  

    if (player.isJumping) {
        player.worldRow-=1;
        player.jumpFrames++;

        if (player.jumpFrames == maxFrames || player.worldRow == 0) {
            player.isJumping = 0; //stop jumping here bc reached max jump height displacement
        }

    } else if (collisionCheck(windowColMap, SCREENWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel))   { //if you can move down, move down
        player.worldRow +=2;
          
    }


    if (starsCollected == 4 && collision(player.worldCol, player.worldRow, player.width, player.height, laserPortal.worldCol, laserPortal.worldRow, laserPortal.width, laserPortal.height)) {
        prizes = 2;
    }

    animatePlayer();

}


void initStar() {
    leftTop.worldCol = 19;
    leftTop.worldRow = 22;
    leftTop.width = 8;
    leftTop.height = 8;
    leftTop.active = 1;


    rightTop.worldCol = 161;
    rightTop.worldRow = 53;
    rightTop.width = 8;
    rightTop.height = 8;
    rightTop.active = 1;

    leftBottom.worldCol = 44;
    leftBottom.worldRow = 68;
    leftBottom.width = 8;
    leftBottom.height = 8;
    leftBottom.active = 1;

    rightBottom.worldCol = 182;
    rightBottom.worldRow = 78;
    rightBottom.active = 1;
    rightBottom.width=8;
    rightBottom.height = 8;

    starsCollected = 0;
}


void updateStar() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        if (leftTop.active && collision(player.worldCol, player.worldRow, player.width, player.height, leftTop.worldCol, leftTop.worldRow, leftTop.width, leftTop.height)) {
            leftTop.active = 0;
            starsCollected ++;
        }

        if (leftBottom.active && collision(player.worldCol, player.worldRow, player.width, player.height, leftBottom.worldCol, leftBottom.worldRow, leftBottom.width, leftBottom.height)) {
            leftBottom.active = 0;
            starsCollected ++;
        }
        if (rightTop.active && collision(player.worldCol, player.worldRow, player.width, player.height, rightTop.worldCol, rightTop.worldRow, rightTop.width, rightTop.height)) {
            rightTop.active = 0;
            starsCollected ++;
        }
        if (rightBottom.active && collision(player.worldCol, player.worldRow, player.width, player.height, rightBottom.worldCol, rightBottom.worldRow, rightBottom.width, rightBottom.height)) {
            rightBottom.active = 0;
            starsCollected ++;
        }

    }
   
}


void drawStar() {
    if (leftTop.active) {
        shadowOAM[12].attr0 = leftTop.worldRow | ATTR0_SQUARE;
        shadowOAM[12].attr1 = (leftTop.worldCol) | ATTR1_TINY;
        shadowOAM[12].attr2 = ATTR2_TILEID(4, 17);

    } else {
        //shadowOAM[12].attr0 = ATTR0_HIDE;
        shadowOAM[12].attr0 = 16 | ATTR0_SQUARE;
        shadowOAM[12].attr1 = 192 | ATTR1_TINY;
        shadowOAM[12].attr2 = ATTR2_TILEID(4, 17);
    } 

    if (rightTop.active) {
        shadowOAM[13].attr0 = rightTop.worldRow | ATTR0_SQUARE;
        shadowOAM[13].attr1 = (rightTop.worldCol) | ATTR1_TINY;
        shadowOAM[13].attr2 = ATTR2_TILEID(5, 17);
    } else {
        //shadowOAM[13].attr0 = ATTR0_HIDE;
        shadowOAM[13].attr0 = 16 | ATTR0_SQUARE;
        shadowOAM[13].attr1 = 200 | ATTR1_TINY;
        shadowOAM[13].attr2 = ATTR2_TILEID(5, 17);

    }


    if (leftBottom.active) {
        shadowOAM[14].attr0 = leftBottom.worldRow | ATTR0_SQUARE;
        shadowOAM[14].attr1 = (leftBottom.worldCol) | ATTR1_TINY;
        shadowOAM[14].attr2 = ATTR2_TILEID(4, 18);
        
    } else{
        //shadowOAM[14].attr0 = ATTR0_HIDE;
        shadowOAM[14].attr0 = 24 | ATTR0_SQUARE;
        shadowOAM[14].attr1 = 192 | ATTR1_TINY;
        shadowOAM[14].attr2 = ATTR2_TILEID(4, 18);

    } 

    if (rightBottom.active) {
        shadowOAM[15].attr0 = rightBottom.worldRow | ATTR0_SQUARE;
        shadowOAM[15].attr1 = (rightBottom.worldCol) | ATTR1_TINY;
        shadowOAM[15].attr2 = ATTR2_TILEID(5, 18);

    }else {
        //shadowOAM[15].attr0 = ATTR0_HIDE;
        shadowOAM[15].attr0 = 24 | ATTR0_SQUARE;
        shadowOAM[15].attr1 = 200| ATTR1_TINY;
        shadowOAM[15].attr2 = ATTR2_TILEID(5, 18);

    }
    

}

/////////////////// SKYFALL MINI GAME ///////////////////

void updateSkyfallPlayer() {
    //moves player left
    if(BUTTON_HELD(BUTTON_LEFT) ) {
        if (player.worldCol > 0 ) {

            player.worldCol -= player.cdel;
        }
    }

    //moves player right
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.worldCol + player.width < SCREENWIDTH ){ 
            player.worldCol += player.cdel; 

        }
    }

    if (BUTTON_PRESSED(BUTTON_A) ) {
		fireSkyPlayerBullet();
		
	}
    if (skyPrize.active && collision(player.worldCol, player.worldRow, player.width, player.height, skyPrize.worldCol, skyPrize.worldRow, skyPrize.width, skyPrize.height)) {
        skyPrize.active = 0;
        prizes = 3;
        
    }
    animatePlayer();
}


void initSkyEnemies() {
    int tCol[] = {45, 75, 105, 135, 165, 195, 45, 75, 105, 135, 165, 195, 45, 75, 105, 135, 165, 195};
    int tRow[] = {30,30,30,30,30,30,50,50,50,50,50,50,70,70,70,70,70,70};


    for (int i = 0; i < 18; i ++) {
        skyEnemies[i].worldCol = tCol[i];
        skyEnemies[i].worldRow = tRow[i] - 20;
        skyEnemies[i].width = 16;
        skyEnemies[i].height = 16;
        skyEnemies[i].active = 1;
        skyEnemies[i].cdel = 1;
        skyEnemies[i].hit = 0;

    }

}


void updateSkyEnemies() {
    for (int i = 0; i < 18; i ++) {
        if (skyEnemies[i].active) {

            //if hits left wall switcj
            //if hits right wall switch

            if (skyEnemies[i].worldCol == 0) {
                skyEnemies[i].cdel *= -1;
            }

            if (skyEnemies[i].worldCol + skyEnemies[i].width == SCREENWIDTH - 1) {
                skyEnemies[i].cdel *= -1;
            }
            
            skyEnemies[i].worldCol += skyEnemies[i].cdel;

            // player bullets collision w clouds
            for (int j = 0; j< 8; j++) {
                if (skyPlayerBullet[j].active && collision(skyEnemies[i].worldCol, skyEnemies[i].worldRow, skyEnemies[i].width, skyEnemies[i].height, skyPlayerBullet[j].worldCol, skyPlayerBullet[j].worldRow, skyPlayerBullet[j].width, skyPlayerBullet[j].height)) {
                    skyPlayerBullet[j].active = 0;
                    
                    skyEnemies[i].hit = 1;

                   

                    skyEnemiesGone++;
                }
            }	


            if (skyEnemies[i].hit) {
                if (skyEnemies[i].worldRow < 124) {
                    skyEnemies[i].worldRow +=2;
                } else {
                    skyEnemies[i].worldRow = 124;
                    skyEnemies[i].cdel = 0;
                }


                if (collision(player.worldCol, player.worldRow, player.width, player.height,skyEnemies[i].worldCol, skyEnemies[i].worldRow, skyEnemies[i].width, skyEnemies[i].height )) {
                    skyEnemies[i].active = 0;
                }
                    
            }

            //fireSkyBullets();
        }
    }    

}


void drawSkyEnemies() {
    for (int i = 0; i < 18; i ++) {
        if (skyEnemies[i].active) {
            shadowOAM[i + 1].attr0 = skyEnemies[i].worldRow |ATTR0_SQUARE;
            shadowOAM[i + 1].attr1 = skyEnemies[i].worldCol |ATTR1_SMALL;
            shadowOAM[i + 1].attr2 = ATTR2_TILEID(4,17);
        } else {
            shadowOAM[i + 1].attr0 = ATTR0_HIDE;
        }
    }    

}


void initSkyBullets() {
    for (int i  = 0; i <SKYBULLETCOUNT; i++) {
        skyBullets[i].worldCol = skyEnemies[i].worldCol;
        skyBullets[i].worldRow = skyEnemies[i].worldRow;
        skyBullets[i].rdel = 1;
        skyBullets[i].height = 4;
        skyBullets[i].width = 8;
        skyBullets[i].active = 0;
    }
}

void fireSkyBullets() {
    for (int i = 0; i < SKYBULLETCOUNT; i++) {
		int r = rand() % 18;
		if (!skyBullets[r].active) {
			skyBullets[r].worldRow = skyEnemies[i].worldRow;
			skyBullets[r].worldCol = skyEnemies[i].worldCol + 8;
						
			skyBullets[r].active = 1;
			break;
		}
	}
}

void updateSkyBullets() {
    for (int i = 0; i < SKYBULLETCOUNT; i++) {
        if (skyBullets[i].active) {

            if (skyBullets[i].worldRow + skyBullets[i].height-1 > 0 && skyBullets[i].worldRow + skyBullets[i].height < SCREENHEIGHT - 16) {
			    skyBullets[i].worldRow += skyBullets[i].rdel;
						
            } else {
                skyBullets[i].active = 0;
            }
        }
    }    
}

void drawSkyBullets() {
     for (int i = 0; i < SKYBULLETCOUNT; i ++) {
        if (skyBullets[i].active) {
            shadowOAM[i + 22].attr0 = skyBullets[i].worldRow |ATTR0_SQUARE;
            shadowOAM[i + 22].attr1 = skyBullets[i].worldCol |ATTR1_TINY;
            shadowOAM[i + 22].attr2 = ATTR2_TILEID(4,17);
        } else {
            shadowOAM[i + 22].attr0 = ATTR0_HIDE;
        }
    }    

}


void initSkyPlayerBullet() {
    for (int i = 0; i < 8; i++) {
        skyPlayerBullet[i].worldCol = 0;
        skyPlayerBullet[i].worldRow = player.height;
        skyPlayerBullet[i].width = 4;
        skyPlayerBullet[i].height = 4;
        skyPlayerBullet[i].rdel = -2;
        skyPlayerBullet[i].active = 0;
    }

}

void fireSkyPlayerBullet() {
    for (int i = 0; i < 8; i++) {
		if (!skyPlayerBullet[i].active) {
			skyPlayerBullet[i].worldRow = player.worldRow;
			skyPlayerBullet[i].worldCol = player.worldCol + player.width/2;
						
			skyPlayerBullet[i].active = 1;
			break;
		}
	}
}

void updateSkyPlayerBullet() {
    for (int i = 0; i < 8; i++) {
        if (skyPlayerBullet[i].active) {
                if (skyPlayerBullet[i].worldRow + skyPlayerBullet[i].height-1 > 0 && skyPlayerBullet[i].worldCol + skyPlayerBullet[i].rdel > 0 && skyPlayerBullet[i].worldCol + skyPlayerBullet[i].rdel < SCREENWIDTH - 16) {
                skyPlayerBullet[i].worldRow += skyPlayerBullet[i].rdel;
                            
            } else {
                skyPlayerBullet[i].active = 0;
            }
        }
    }     
}

void drawSkyPlayerBullet() {
    for (int i = 0; i < SKYBULLETCOUNT; i ++) {
        if (skyPlayerBullet[i].active) {
            shadowOAM[i + 40].attr0 = skyPlayerBullet[i].worldRow |ATTR0_SQUARE;
            shadowOAM[i + 40].attr1 = skyPlayerBullet[i].worldCol |ATTR1_TINY;
            shadowOAM[i + 40].attr2 = ATTR2_TILEID(0,16);
        } else {
            shadowOAM[i + 40].attr0 = ATTR0_HIDE;
        }
    }   
}


void initSkyPrize() {
    
    skyPrize.worldCol = 100;
    skyPrize.worldRow = 0;
    skyPrize.width = 16;
    skyPrize.height = 16;
    skyPrize.active = 0;
}

void updateSkyPrize() {
    /*
    if (skyEnemiesGone == 18) {
        skyPrize.active  = 1;
    } */

    
    
    //if the random key was hit, make it fall down and appear.
    if (skyEnemies[2].hit) {
        skyPrize.active = 1;
        
    } 

    //124

    if (skyPrize.active) {
        if (skyPrize.worldRow < 124) {
            skyPrize.worldRow +=2;
        }
         else {
            skyPrize.worldRow = 124;
         }
    }
}

void drawSkyPrize() {
    if (skyPrize.active) {
        shadowOAM[46].attr0 = skyPrize.worldRow |ATTR0_SQUARE;
        shadowOAM[46].attr1 = skyPrize.worldCol |ATTR1_SMALL;
        shadowOAM[46].attr2 = ATTR2_TILEID(6,20);

        
    } else {
        shadowOAM[46].attr0 = ATTR0_HIDE;
    }

}



void initLasers2() {
    //(16,8), (40,8), (40,56), (16,80) first building
    // (88,32), (104,64) second building
    //third building  (156,40, (176,64) , (156,88)

    int laserCol[] = {16, 40, 40, 16, 88, 104, 156, 176, 156};
    int laserRow[] = {8,8, 56, 80, 32, 64, 40, 64, 88};

   for (int i =0; i < 9; i ++) {
       lasers2[i].worldCol = laserCol[i];
       lasers2[i].worldRow = laserRow[i];
       lasers2[i].active = 1;
       lasers2[i].width = 16;
       lasers2[i].height = 8;
   }

   int upCol[] = {28, 96, 164};

   for (int i = 0; i < 3; i ++) {
       upLasers[i].worldCol = upCol[i];
       upLasers[i].worldRow = 119;
       upLasers[i].active = 1;
       upLasers[i].height = 5;
       upLasers[i].width = 16;
   }

} 


void updateLasers2() {
    if (collision(lasers2[0].worldCol, lasers2[0].worldRow, lasers2[0].width, lasers2[0].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 32;
        player.worldRow = 128;
        
    } else if (collision(lasers2[1].worldCol, lasers2[1].worldRow, lasers2[1].width, lasers2[1].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 156;
        player.worldRow = 96;
    } else if (collision(lasers2[2].worldCol, lasers2[2].worldRow, lasers2[2].width, lasers2[2].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 166;
        player.worldRow = 128;
        
    } else if (collision(lasers2[3].worldCol, lasers2[3].worldRow, lasers2[3].width, lasers2[3].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 40;
        player.worldRow = 16;
        
    } else if (collision(lasers2[4].worldCol, lasers2[4].worldRow, lasers2[4].width, lasers2[4].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 176;
        player.worldRow = 72;
        
    } else if (collision(lasers2[5].worldCol, lasers2[5].worldRow, lasers2[5].width, lasers2[5].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 88;
        player.worldRow = 40;
        
    } else if (collision(lasers2[6].worldCol, lasers2[6].worldRow, lasers2[6].width, lasers2[6].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 16;
        player.worldRow = 16;
        
    } else if (collision(lasers2[7].worldCol, lasers2[7].worldRow, lasers2[7].width, lasers2[7].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 16;
        player.worldRow = 88;
        
    } else if (collision(lasers2[8].worldCol, lasers2[8].worldRow, lasers2[8].width, lasers2[8].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 40;
        player.worldRow = 64;
        
    }  else if (collision(upLasers[1].worldCol,upLasers[1].worldRow, upLasers[1].width, upLasers[1].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0; 
        player.worldCol = 104;
        player.worldRow = 72;
        
    } else if (collision(upLasers[2].worldCol,upLasers[2].worldRow, upLasers[2].width, upLasers[2].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0; //FIX
        player.worldCol = 156;
        player.worldRow = 48;
        
    }
}


void drawLasers2() {
    int spritesheetCol[] = {22, 24, 26, 22,24, 26, 22, 24, 26};
    int spritesheetRow[] = {24, 24, 24, 25, 25, 25,26,26,26};

    for (int i =0; i < 9; i ++) {
        shadowOAM[i + 1].attr0 = lasers2[i].worldRow | ATTR0_WIDE;
        shadowOAM[i + 1].attr1 = lasers2[i].worldCol | ATTR1_TINY;
        shadowOAM[i + 1].attr2 = ATTR2_TILEID(spritesheetCol[i], spritesheetRow[i]) | ATTR2_PALROW(2);
    }    

    int ssCol[] = {22, 24, 26};
    int ssRow[] = {27, 27, 27};
    for (int i = 0; i < 3; i++) {
        shadowOAM[i + 26].attr0 = upLasers[i].worldRow | ATTR0_WIDE;
        shadowOAM[i + 26].attr1 = upLasers[i].worldCol | ATTR1_TINY;
        shadowOAM[i + 26].attr2 = ATTR2_TILEID(ssCol[i], ssRow[i]) | ATTR2_PALROW(2);
    }
}


void initLaserPortal() {
    laserPortal.worldCol = 224;
    laserPortal.worldRow = 120;
    laserPortal.width = 16;
    laserPortal.height = 14;
    laserPortal.active = 1;


}


void drawLaserPortal() {
     if (laserPortal.active) {
        shadowOAM[30].attr0 = laserPortal.worldRow |ATTR0_TALL;
        shadowOAM[30].attr1 = laserPortal.worldCol |ATTR1_MEDIUM;
        shadowOAM[30].attr2 = ATTR2_TILEID(9,4);
    } else {
        shadowOAM[30].attr0 = ATTR0_HIDE;
    }

}





////////////////STUFF FOR THE SEWER //////////////////

void initCheatPortal(){
    cheatPortal.worldCol = 280;
    cheatPortal.worldRow = 489;
    cheatPortal.width = 8;
    cheatPortal.height = 8;
    cheatPortal.active = 1;

}

void updateCheatPortal() {
    // if collision w bullet then go to portal
    if (collision(cheatPortal.worldCol, cheatPortal.worldRow, cheatPortal.width, cheatPortal.height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height )) {
        sewerActivate = 1;
        
    }
}

void drawCheatPortal() {
    if (cheatPortal.active) {
        shadowOAM[80].attr0 = cheatPortal.worldRow | ATTR0_SQUARE;
        shadowOAM[80].attr1 = cheatPortal.worldCol | ATTR1_TINY;
        shadowOAM[80].attr2 = ATTR2_TILEID(0,0) ;

    } else {
        shadowOAM[80].attr2 = ATTR0_HIDE;
    }
    

}


void updateSewerPlayer() {
   
    //moves player left
    if(BUTTON_HELD(BUTTON_LEFT) ) {
        if (player.worldCol > 0 && collisionCheck(sewerColMap, MAPWIDTH, player.worldCol,player.worldRow, player.width, player.height-1, -player.cdel,0)) {

            player.worldCol -= player.cdel;

            if ( hOff > 0 && player.worldCol -hOff - player.cdel <= SCREENWIDTH / 2 ) {
                    hOff-=player.cdel;
            }     
            //screenScrolling();
        }
    }

    //moves player right
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.worldCol + player.width < MAPWIDTH && collisionCheck(sewerColMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height - 1, player.cdel, 0) ){ 
            player.worldCol += player.cdel; 


             if ( (hOff + SCREENWIDTH + player.cdel < MAPWIDTH) && (player.worldCol - hOff >= SCREENWIDTH / 2)) {
                hOff+=player.cdel;
            } 
            
        }
    }

    //if one under is ground
    isGrounded = collisionCheck(sewerColMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;
    //JUMP FEATURE
    if (BUTTON_PRESSED(BUTTON_UP) && isGrounded ) {
        up  = 1;

        player.isJumping = 1;
        player.jumpFrames = 0;
    }  

    if (player.isJumping) {


        if (collisionCheck(sewerColMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 2 ) {
            cheatPort1 = 1;
            player.isJumping = 0;
        } else if (collisionCheck(sewerColMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 3 ) {
            cheatPort2 = 1;
            player.isJumping = 0;
        } else if (collisionCheck(sewerColMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 7 ) {
            cheatPort3 = 1;
            player.isJumping = 0;
        } 
        player.worldRow-=2;
        player.jumpFrames++;

        if (player.jumpFrames == maxFrames) {
            player.isJumping = 0; //stop jumping here bc reached max jump height displacement
        }

    } else if (footCollision(sewerColMap, MAPWIDTH, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel) )   { //if you can move down, move down
        player.worldRow ++;
          
    }


    if (player.worldRow + player.height == MAPHEIGHT - 4   ) {
        //starting location
        vOff = 352;
        hOff = 0;
        player.worldCol = 0;
        player.worldRow = 488;
        player.cdel = 2;
        player.rdel = 1;

    }    
    
    animatePlayer();

}


//////////////////// SOUND /////////////////////

void setupSounds() {

    REG_SOUNDCNT_X = SND_ENABLED;

	REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_TO_BOTH |
                     DSA_TIMER0 |
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 |
                     DSB_OUTPUT_TO_BOTH |
                     DSB_TIMER1 |
                     DSB_FIFO_RESET;

	REG_SOUNDCNT_L = 0;
}

void playSoundA( const signed char* sound, int length, int loops) {
    dma[1].cnt = 0;

    int ticks = PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ;

    DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    REG_TM0CNT = 0;

    REG_TM0D = -ticks;
    REG_TM0CNT = TIMER_ON;

    soundA.length = length;
    soundA.data = sound;
    soundA.loops = loops;
    soundA.isPlaying = 1;
    soundA.vBlankCount = 0;
    soundA.duration = ( VBLANK_FREQ *length) / SOUND_FREQ;
    
}


void playSoundB( const signed char* sound, int length, int loops) {

    dma[2].cnt = 0;

    int ticks = PROCESSOR_CYCLES_PER_SECOND / SOUND_FREQ;

    DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

    REG_TM1CNT = 0;

    REG_TM1D = -ticks;
    REG_TM1CNT = TIMER_ON;

    soundB.data = sound;
    soundB.length = length;
    soundB.loops = loops;
    soundB.isPlaying = 1;
    soundB.vBlankCount = 0;
    soundB.duration = (VBLANK_FREQ *length) / SOUND_FREQ;
    
}



void pauseSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    REG_TM0CNT = TIMER_OFF;
    REG_TM1CNT = TIMER_OFF;

}

void unpauseSound() {
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
    
}

void stopSound() {
    soundA.isPlaying = 0;
    dma[1].cnt = 0;
    REG_TM0CNT = TIMER_OFF;


    soundB.isPlaying = 0;
    dma[2].cnt = 0;
    REG_TM1CNT = TIMER_OFF; //timer off, channel off no sounf playing
    
}


void stopSoundB() {
    soundB.isPlaying = 0;
    dma[2].cnt = 0;
    REG_TM1CNT = TIMER_OFF; //timer off, channel off no sounf playing
    
}

void stopSoundA() {
    soundA.isPlaying = 0;
    dma[1].cnt = 0;
    REG_TM0CNT = TIMER_OFF; //timer off, channel off no sounf playing
    
} 

void pauseSoundA() {
    soundA.isPlaying = 0;
    REG_TM0CNT = TIMER_OFF;
}

void unpauseSoundA() {
    soundA.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    
}


void setUpInterrupts() {
    time_s = 0;
    time_s2 = 0;

    REG_IME = 0;
    
    REG_IE = INT_VBLANK  | INT_TM2 | INT_TM3;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;

   

    REG_TM2CNT = 0;
    REG_TM2D = 65536 - 16384;
    REG_TM2CNT = TM_FREQ_1024 | TM_IRQ ; //timer not on yet

    REG_TM3CNT = 0;
    REG_TM3D = 65536 - 16384;
    REG_TM3CNT = TM_FREQ_1024 | TM_IRQ ; //timer not on yet
    


    REG_INTERRUPT = interruptHandler;

    REG_IME = 1;
}

void interruptHandler(void) { //FIX 

    if ( REG_IF & INT_TM2 && level == 1) {
        time_s++; 
    }

    if ( REG_IF & INT_TM3 && level == 1) {
        time_s2 ++; 
    }

    if(REG_IF & INT_VBLANK && (level == 0 || level == 4) ) {
        if (soundA.isPlaying) {

            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM0CNT = TIMER_OFF;
                }
            }
        }

        if (soundB.isPlaying) {

            soundB.vBlankCount = soundB.vBlankCount + 1;
            if (soundB.vBlankCount > soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM1CNT = TIMER_OFF;
                }
            }
		}


		REG_IF = INT_VBLANK;
	}

    


    
    REG_IF = REG_IF;
    REG_IME = 1;
} 
