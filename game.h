// Constants
#define MAPHEIGHT 512
#define MAPWIDTH 512

#define BULLETCOUNT 4
#define PRIZECOUNT 3
#define PLATFORMCOUNT 8
#define LIFECOUNT 3

#define ENEMYCOUNT0 4
#define ENEMYCOUNT1 9
#define ENEMYCOUNT2 4
#define ENEMYCOUNT3 10

#define BALLCOUNT0 6
#define BALLCOUNT1 9
#define BALLCOUNT2 4
#define BALLCOUNT3 8

#define SKYBULLETCOUNT 4

void setUpInterrupts();

void setupSounds();
void playSoundA();
void playSoundB();
void pauseSound();
void pauseSoundA();
void pauseSoundB();
void unpauseSound();
void unpauseSoundA();
void unpauseSoundB();
void stopSound();
void stopSoundA();
void stopSoundB();





extern int cheatPort1;
extern int cheatPort2;
extern int cheatPort3;

extern int maxFrames;
extern int sewerActivate;
extern int winCollision;
extern int needToPlace;
extern int starsCollected;


//#define MAXJFRAMES 10

//variables
extern int hOff; //for bg0 only
extern int vOff;

extern int hOffBG1;
extern int vOffBG1;

extern int hOffBG0;
extern int vOffBG0;

extern int hOffBG2;
extern int vOffBG2;

extern int hOffBG2;
extern int vOffBG2;

void initMainGame();


void sendBall();

extern int collectedBalls;
extern int bullAmt;
extern int portalCollision1;
extern int portalCollision2;
extern int portalCollision3;
extern int prizes;
extern int level;

extern int groundCollision;

/*
    level 0= game
    level 1 = minigame 1
    level 2 = minigame 2
    level 3 = mingame 3 
*/

//function prototypes
void initGame();
void updateGame();
void drawGame();

extern int enemyNum;

//player 
void initPlayer();
void updatePlayer();
void drawPlayer();

void initPrizeSB();
void updatePrizeSB();
void drawPrizeSB();

void initLivesSB();
void drawLivesSB();

void drawBallSymbolSB();
void initBallSB();
void updateBallSB();
void drawBallAmountSB();

void initPortals();
void drawPortals();
void initWinPortal();
void drawWinPortal();

void initEnemy();
void updateEnemy();
void drawEnemy();

void initBalls();
void updateBalls();
void drawBalls();

void initBullets();
void updateBullets();
void fireBullet();
void drawBullets();

void initScoreBarBar();
void drawScoreBarBar();

void initMazePrize();
void drawMazePrize();
void updatePlayerMaze();


void updatePlayerLaser();
void initLasers();
void updateLasers();
void drawLasers();
void initStar();
void updateStar();
void drawStar();

void updateSkyfallPlayer();
void initSkyEnemies();
void updateSkyEnemies();
void drawSkyEnemies();
void initSkyBullets();
void fireSkyBullets();
void updateSkyBullets() ;
void drawSkyBullets();
void initSkyPlayerBullet();
void fireSkyPlayerBullet();
void updateSkyPlayerBullet();
void drawSkyPlayerBullet();
void initSkyPrize();
void updateSkyPrize();
void drawSkyPrize();

extern int gameLives;

void enableTimerInterrupts(void);
void interruptHandler(void);
void setupInterrupts(void) ;


extern int time_s;
extern int time_s2;

void initTruck();
void updateTruck();
void drawTruck();

void initCarA();
void updateCarA();
void drawCarA();
void sendCarA();
void animatePlayer() ;
void initLasers2();
void updateLasers2();
void drawLasers2();



void animateLives();

void initCheatPortal();
void updateCheatPortal();
void drawCheatPortal();
void updateSewerPlayer();
void initLaserPortal();
void drawLaserPortal();
void initCone() ;
void updateCone();
void drawCone();
void setCone();
void drawCarB();
void updateCarB();
void initCarB();


void initEnemyP0();
void updateEnemyP0();
void drawEnemyP0();
void initEnemyP1();
void updateEnemyP1();
void drawEnemyP1();
void initEnemyP2() ;
void updateEnemyP2();
void drawEnemyP2();
void initEnemyP3() ;
void updateEnemyP3();
void drawEnemyP3();

void initBallsP0() ;
void updateBallsP0();
void drawBallsP0();
void initBallsP1();
void updateBallsP1();
void drawBallsP1();
void initBallsP2() ;
void updateBallsP2();
void drawBallsP2() ;

void initBallsP3();
void updateBallsP3();
void drawBallsP3();
