# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1
# 22 "game.h"
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





extern int hOff;
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
# 93 "game.h"
void initGame();
void updateGame();
void drawGame();

extern int enemyNum;


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
# 2 "game.c" 2
# 1 "mode0.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 62 "mode0.h"
extern volatile unsigned short *videoBuffer;
# 83 "mode0.h"
typedef struct {
    u16 tileimg[8192];
} charblock;


typedef struct {
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();


typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 170 "mode0.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int isJumping;
    int jumpFrames;
    int active;
    int hit;

} SPRITE;
# 213 "mode0.h"
extern unsigned short oldButtons;
extern unsigned short buttons;






typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 261 "mode0.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);


int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, int colShift, int rowShift) ;
int footCollision(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, int colShift, int rowShift) ;
int platformCollision(int colP, int rowP, int widthP, int heightP, int colB, int rowB, int widthB, int heightB);
# 309 "mode0.h"
typedef void (*ihp_t)(void);
# 372 "mode0.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;
# 3 "game.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);
# 199 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3

# 4 "game.c" 2
# 1 "sound.h" 1

# 1 "sound.h"
void setupInterruptSounds();


void pauseSound();
void pauseSoundA();
void pauseSoundB();
void unpauseSound();
void unpauseSoundA();
void unpauseSoundB();
void stopSound();
void stopSoundA();
void stopSoundB();
void playSoundA();
void playSoundB();


SOUND soundA;
SOUND soundB;
# 5 "game.c" 2
# 1 "test2LadderBM.h" 1
# 20 "test2LadderBM.h"
extern const unsigned short test2LadderBMBitmap[131072];
# 6 "game.c" 2
# 1 "skyfallBM.h" 1
# 21 "skyfallBM.h"
extern const unsigned short skyfallBMBitmap[19200];


extern const unsigned short skyfallBMPal[256];
# 7 "game.c" 2
# 1 "enemyBM.h" 1
# 21 "enemyBM.h"
extern const unsigned short enemyBMBitmap[131072];


extern const unsigned short enemyBMPal[256];
# 8 "game.c" 2
# 1 "highwayBM.h" 1
# 21 "highwayBM.h"
extern const unsigned short highwayBMBitmap[20480];


extern const unsigned short highwayBMPal[256];
# 9 "game.c" 2
# 1 "vibeyBM.h" 1
# 21 "vibeyBM.h"
extern const unsigned short vibeyBMBitmap[131072];


extern const unsigned short vibeyBMPal[256];
# 10 "game.c" 2
# 1 "window.h" 1
# 22 "window.h"
extern const unsigned short windowTiles[2528];


extern const unsigned short windowMap[1024];


extern const unsigned short windowPal[256];
# 11 "game.c" 2
# 1 "windowBM.h" 1
# 21 "windowBM.h"
extern const unsigned short windowBMBitmap[19200];


extern const unsigned short windowBMPal[256];
# 12 "game.c" 2
# 1 "boxBM.h" 1
# 21 "boxBM.h"
extern const unsigned short boxBMBitmap[19200];


extern const unsigned short boxBMPal[256];
# 13 "game.c" 2

# 1 "sewerBM.h" 1
# 21 "sewerBM.h"
extern const unsigned short sewerBMBitmap[131072];


extern const unsigned short sewerBMPal[256];
# 15 "game.c" 2

# 1 "woosh.h" 1


extern const unsigned int woosh_sampleRate;
extern const unsigned int woosh_length;
extern const signed char woosh_data[];
# 17 "game.c" 2
# 1 "newCoin.h" 1


extern const unsigned int newCoin_sampleRate;
extern const unsigned int newCoin_length;
extern const signed char newCoin_data[];
# 18 "game.c" 2
# 1 "startSong.h" 1


extern const unsigned int startSong_sampleRate;
extern const unsigned int startSong_length;
extern const signed char startSong_data[];
# 19 "game.c" 2
# 1 "ding2.h" 1


extern const unsigned int ding2_sampleRate;
extern const unsigned int ding2_length;
extern const signed char ding2_data[];
# 20 "game.c" 2

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
SPRITE enemies0[4];
SPRITE enemies1[9];
SPRITE enemies2[4];
SPRITE enemies3[10];
SPRITE balls0[6];
SPRITE balls1[9];
SPRITE balls2[4];
SPRITE balls3[8];
SPRITE bullets;
SPRITE portal1;
SPRITE portal2;
SPRITE portal3;
SPRITE portal4;
SPRITE mazePrize;
SPRITE platforms[8];
SPRITE mineBlock;
SPRITE lasers[11];
SPRITE leftTop;
SPRITE rightTop;
SPRITE leftBottom;
SPRITE rightBottom;
SPRITE skyEnemies[18];
SPRITE skyBullets[4];
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

SPRITE prize[3];
SPRITE lives[3];
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



        } else if (prizes == 1) {
            portal1.active = 0;
            portal2.active = 1;
            portal3.active = 0;
            winPortal.active = 0;
            vOff = 352;
            hOff = 271;
            initBallsP1();
            initEnemyP1();

        } else if (prizes == 2) {
            portal1.active = 0;
            portal2.active = 0;
            portal3.active = 1;
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
            hOff = 100;
            initBallsP3();
            initEnemyP3();

        }
        initPortals();
        initPlayer();

        initBullets();




        initLivesSB();
        initBallSB();

    } else if (level == 1) {
        vOff = 0;
        hOff = 0;
        mazePrize.active = 0;
        initMazePrize();
        initPlayer();

        initTruck();
        initCarA();
        initCarB();
        initCone();

    } else if (level == 2) {
        vOff = 0;
        hOff = 0;

        initPlayer();
        initSkyBullets();
        initSkyEnemies();
        initSkyPlayerBullet();
        initSkyPrize();


    } else if (level == 3) {
        vOff = 0;
        hOff = 0;
        initPlayer();
        initLasers2();
        initLaserPortal();
        initStar();

    } else if (level == 4) {
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


        animateLives();



        updatePrizeSB();
        updateBallSB();

    } else if (level == 1) {
        updatePlayerMaze();


        updateTruck();
        updateCarA();
        updateCarB();
        updateCone();

    } else if (level == 2) {

        updateSkyfallPlayer();
        updateSkyEnemies();
        updateSkyBullets();
        updateSkyPlayerBullet();
        updateSkyPrize();
    } else if (level == 3) {
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


        drawScoreBarBar();
        drawBallAmountSB();
        drawBallSymbolSB();
        drawLivesSB();
        drawPrizeSB();
    } else if (level == 1) {
        drawMazePrize();
        drawPlayer();
        drawTruck();
        drawCarA();
        drawCarB();
        drawCone();
    } else if (level == 2){

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



        drawScoreBarBar();
        drawLivesSB();
        drawPrizeSB();

    }
}



void initPlayer() {
    if (level == 0 && !needToPlace) {



        if (prizes == 0 && ! cheatPort1) {
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



        } else if (prizes == 1) {
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


    } else if (level == 1) {
        player.worldCol = 226;
        player.worldRow = 103;
        player.cdel = 2;
        player.rdel = 2;
        player.aniState = SPRITELEFT;

    } else if (level == 2){
        player.worldCol = 0;
        player.worldRow = 128;
        player.cdel = 2;
        player.rdel = 1;
        player.aniState = SPRITERIGHT;

    } else if (level == 3) {
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


    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6))) && footCollision(test2LadderMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 2 ) {
        if (player.worldRow > 0 ) {
            player.worldRow -= 4;

            if ( (vOff > 0 && player.worldRow - vOff <= 160/2) ) {
                vOff-=4;
            }
        }
    }





    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))) ) {
        if (player.worldCol > 0 && collisionCheck(test2CollMap, 512, player.worldCol,player.worldRow, player.width, player.height-1, -player.cdel,0)) {

            player.worldCol -= player.cdel;


            if ( hOff > 0 && player.worldCol -hOff - player.cdel <= 240 / 2 ) {
                hOff-=player.cdel;
            }

        }
    }


    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4)))) {
        if (player.worldCol + player.width < 512 && collisionCheck(test2CollMap, 512, player.worldCol, player.worldRow, player.width, player.height - 1, player.cdel, 0) ){
            player.worldCol += player.cdel;


            if ( (hOff + 240 + player.cdel < 512) && (player.worldCol - hOff >= 240 / 2)) {
                hOff+=player.cdel;
            }



        }
    }


    isGrounded = collisionCheck(test2CollMap, 512, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;

    if ((!(~(oldButtons) & ((1 << 6))) && (~buttons & ((1 << 6)))) && isGrounded && collisionCheck(test2LadderMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) != 2 ) {

        player.isJumping = 1;
        player.jumpFrames = 0;
    }

    if (player.isJumping) {
        player.worldRow-=2;
        player.jumpFrames++;

        if (player.jumpFrames == maxFrames) {
            player.isJumping = 0;
        }

    } else if (footCollision(test2CollMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel) && collisionCheck(test2LadderMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) != 2 ) {

        player.worldRow ++;

    }



    if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0))))) {
        if (player.aniState == SPRITECLIMB) {

        } else {
            fireBullet();
        }

    }





    if (player.worldRow + player.height == 512 - 4 ) {
        if (prizes == 0) {
            vOff = 352;
            hOff = 0;
            player.worldCol = 0;
            player.worldRow = 488;
            player.cdel = 2;
            player.rdel = 1;

        } else if (prizes == 1) {
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



    if ( vOff + 160 < 512 && player.worldRow-vOff >= 160 / 2 ) {
        vOff++;
    }




   if (portal1.active && collision(player.worldCol, player.worldRow, player.width, player.height, portal1.worldCol, portal1.worldRow, portal1.width, portal1.height)) {
        portalCollision1 = 1;
    }


   if (portal2.active && collision(player.worldCol, player.worldRow, player.width, player.height, portal2.worldCol, portal2.worldRow, portal2.width, portal2.height)) {
        portal2.active = 0;
        portalCollision2 = 1;
    }


   if (portal3.active && collision(player.worldCol, player.worldRow, player.width, player.height, portal3.worldCol, portal3.worldRow, portal3.width, portal3.height)) {
        portalCollision3 = 1;
    }

    if (winPortal.active && collision(player.worldCol, player.worldRow, player.width, player.height, winPortal.worldCol, winPortal.worldRow, winPortal.width, winPortal.height)) {
        winCollision ++;
    }


    animatePlayer();

}


void drawPlayer(){
    if (!player.active ) {
        shadowOAM[0].attr0 |= (2 << 8);
    } else if (level == 1 && player.active) {
        shadowOAM[0].attr0 = (player.worldRow ) | (0 << 14);
        shadowOAM[0].attr1 = (player.worldCol) | (1 << 14);
        shadowOAM[0].attr2 = ((5) << 12) | (((player.curFrame * 2) + 24)*32 + ((player.aniState * 2) + 1));

        (*(volatile unsigned short*)0x4000050) = 0;
        (*(volatile unsigned short*)0x4000052) = 0;

    } else if (level ==4 && player.active) {
        shadowOAM[0].attr0 = (0xFF & (player.worldRow - vOff)) | (0 << 14);
        shadowOAM[0].attr1 = (0x1FF & (player.worldCol - hOff)) | (1 << 14);
        shadowOAM[0].attr2 = ((5) << 12) | (((player.curFrame * 2 )+ 24)*32 + ((player.aniState * 2) + 1));

        (*(volatile unsigned short*)0x4000050) = 1 << 4 | (1 << 6) | 1 << 8;
        (*(volatile unsigned short*)0x4000052) = 1 << 3 | 1 << 11;
    } else {
        shadowOAM[0].attr0 = (0xFF & (player.worldRow - vOff)) | (0 << 14);
        shadowOAM[0].attr1 = (0x1FF & (player.worldCol - hOff)) | (1 << 14);
        shadowOAM[0].attr2 = ((5) << 12) | (((player.curFrame * 2 )+ 24)*32 + ((player.aniState * 2) + 1));

        (*(volatile unsigned short*)0x4000050) = 0;
        (*(volatile unsigned short*)0x4000052) = 0;
    }
}

void animatePlayer() {

    player.prevAniState = player.aniState;
    player.aniState = SPRITEIDLE;

    if(player.aniCounter % 8 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    isGrounded = collisionCheck(test2CollMap, 512, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;

    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6))) && player.prevAniState == SPRITELEFT && player.isJumping) {
        player.aniState = SPRITELJUMP;
    } else if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6))) && player.prevAniState == SPRITERIGHT && player.isJumping) {
        player.aniState = SPRITERJUMP;
    } else if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6))) && !player.isJumping && collisionCheck(test2LadderMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 2 ) {
        player.aniState = SPRITECLIMB;
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))))
        player.aniState = SPRITELEFT;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4))))
        player.aniState = SPRITERIGHT;



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




void initPrizeSB() {
    int pCol[] = {196, 210, 224};

    for (int i = 0; i < 3; i++) {
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


}

void drawPrizeSB() {
    for (int i = 0; i < 3; i++) {
        if (prize[i].active) {
            shadowOAM[i + 1].attr0 = (prize[i].worldRow) | (0 << 14);
            shadowOAM[i + 1].attr1 = (prize[i].worldCol) | (1 << 14);
            shadowOAM[i + 1].attr2 = ((13)*32 + (3));

        } else if (!prize[i].active) {
            shadowOAM[i + 1].attr0 = (prize[i].worldRow) | (0 << 14);
            shadowOAM[i + 1].attr1 = (prize[i].worldCol) | (1 << 14);
            shadowOAM[i + 1].attr2 = ((11)*32 + (3));

        }
    }

}

void initLivesSB(){
    int colS[] = {5, 18, 31};
    for (int i = 0; i < 3; i++) {

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
        if (gameLives == 2) {
            lives[2].active = 0;
        } else if (gameLives ==1) {
            lives[1].active = 0;
            lives[2].active = 0;
        } else if (gameLives == 3) {
            lives[i].active = 1;
        }
    }

    for (int i = 0; i < 3; i ++){
        if (lives[i].active) {
            shadowOAM[i + 4].attr0 = (0xFF & 2) | (0 << 13) | (0 << 14);
            shadowOAM[i + 4].attr1 = (0x1FF & lives[i].worldCol ) | (0 << 14);
            shadowOAM[i + 4].attr2 = ((lives[i].curFrame + 8)*32 + (lives[i].aniState +7)) ;

        } else{
            shadowOAM[i + 4].attr0 = (2 << 8);

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

void drawBallSymbolSB() {
    shadowOAM[7].attr0 = (0xFF & 2) | (0 << 13) | (0 << 14);
    shadowOAM[7].attr1 = (0x1FF & 110) | (0 << 14);
    shadowOAM[7].attr2 = ((1)*32 + (13));
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
    shadowOAM[8].attr0 = (0xFF & 2) | (0 << 13) | (0 << 14);
    shadowOAM[8].attr1 = (0x1FF & 119) | (0 << 14);
    shadowOAM[8].attr2 = ((ballAmount1.curFrame)*32 + (12));

    shadowOAM[9].attr0 = (0xFF & 2) | (0 << 13) | (0 << 14);
    shadowOAM[9].attr1 = (0x1FF & 125) | (0 << 14);
    shadowOAM[9].attr2 = ((ballAmount2.curFrame)*32 + (12));
}


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
        shadowOAM[10].attr0 = (0xFF & (portal1.worldRow -vOff) ) | (1 << 14);
        shadowOAM[10].attr1 = (0x1FF & (portal1.worldCol - hOff) ) | (2 << 14);
        shadowOAM[10].attr2 = ((6)*32 + (1));

    } else {
        shadowOAM[10].attr0 = (2 << 8);
    }

    if (portal2.active) {
        shadowOAM[11].attr0 = (0xFF & (portal2.worldRow -vOff) ) | (2 << 14);
        shadowOAM[11].attr1 = (0x1FF & (portal2.worldCol - hOff )) | (2 << 14);
        shadowOAM[11].attr2 = ((4)*32 + (9)) ;

    } else {
        shadowOAM[11].attr0 = (2 << 8);
    }


    if (portal3.active) {
        shadowOAM[12].attr0 = (0xFF & (portal3.worldRow -vOff )) | (2 << 14);
        shadowOAM[12].attr1 = (0x1FF & (portal3.worldCol - hOff) ) | (2 << 14);
        shadowOAM[12].attr2 = ((8)*32 + (9));

    } else {
        shadowOAM[12].attr0 = (2 << 8);
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
        shadowOAM[13].attr0 = (0xFF & (winPortal.worldRow - vOff)) |(2 << 14);
        shadowOAM[13].attr1 = (0x1FF & (winPortal.worldCol - hOff)) |(2 << 14);
        shadowOAM[13].attr2 = ((11)*32 + (11));
    } else {
        shadowOAM[13].attr0 = (2 << 8);
    }
}






void initEnemyP0() {
    int x[] = {64, 200, 280, 359};
    int y[] = {480,424, 448, 472};

    for (int i = 0; i < 4; i++) {
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
    for (int i = 0; i < 4; i++) {
        if (enemies0[i].active && enemies0[i].aniCounter % 3 == 0) {
            if (collisionCheck(enemyColMap, 512, enemies0[i].worldCol, enemies0[i].worldRow, enemies0[i].width, enemies0[i].height - 1, enemies0[i].cdel, 0) == 0 || collisionCheck(enemyColMap, 512, enemies0[i].worldCol, enemies0[i].worldRow, enemies0[i].width, enemies0[i].height - 1, -enemies0[i].cdel, 0) == 0 ) {
                enemies0[i].cdel *= -1;

            }
            enemies0[i].worldCol += enemies0[i].cdel;
        }

        if (enemies0[i].active) {
            if(enemies0[i].aniCounter % 10 == 0) {
                enemies0[i].curFrame = (enemies0[i].curFrame + 1) % enemies0[i].numFrames;
            }
        }


        if (enemies0[i].active && collision(enemies0[i].worldCol, enemies0[i].worldRow, enemies0[i].width, enemies0[i].height, player.worldCol, player.worldRow, player.width, player.height)) {
            enemies0[i].active = 0;
            enemies0[i].hit ++;


            gameLives --;

        }


        if (bullets.active && enemies0[i].active && collision(enemies0[i].worldCol, enemies0[i].worldRow, enemies0[i].width, enemies0[i].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
            stopSoundB();
            enemies0[i].active = 0;
            bullets.active = 0;

        }
        enemies0[i].aniCounter++;
    }

}

void drawEnemyP0() {

    for (int i = 0; i < 4; i++) {
        if (enemies0[i].active) {
            shadowOAM[i + 15].attr0 = (0xFF & (enemies0[i].worldRow -vOff)) | (0 << 14);
            shadowOAM[i + 15].attr1 = (0x1FF & (enemies0[i].worldCol -hOff)) | (0 << 14);
            shadowOAM[i + 15].attr2 = ((enemies0[i].curFrame + 1)*32 + (enemies0[i].aniState + 2)) | ((0) << 12);
        } else {
            shadowOAM[i + 15].attr0 = (2 << 8);

        }
    }
}


void initEnemyP1() {
    int x[] = {448, 336, 280, 248, 200, 128, 56, 112, 200};
    int y[] = {392, 400, 376, 376, 376, 368, 360, 320, 312};

    for (int i = 0; i < 9; i++) {
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
    for (int i = 0; i < 9; i++) {
        if (enemies1[i].active && enemies1[i].aniCounter % 3 == 0) {
            if (collisionCheck(enemyColMap, 512, enemies1[i].worldCol, enemies1[i].worldRow, enemies1[i].width, enemies1[i].height - 1, enemies1[i].cdel, 0) == 0 || collisionCheck(enemyColMap, 512, enemies1[i].worldCol, enemies1[i].worldRow, enemies1[i].width, enemies1[i].height - 1, -enemies1[i].cdel, 0) == 0 ) {
                enemies1[i].cdel *= -1;

            }
            enemies1[i].worldCol += enemies1[i].cdel;
        }

        if (enemies1[i].active) {
            if(enemies1[i].aniCounter % 10 == 0) {
                enemies1[i].curFrame = (enemies1[i].curFrame + 1) % enemies1[i].numFrames;
            }
        }


        if (enemies1[i].active && collision(enemies1[i].worldCol, enemies1[i].worldRow, enemies1[i].width, enemies1[i].height, player.worldCol, player.worldRow, player.width, player.height)) {

            enemies1[i].active = 0;
            gameLives --;
        }

        if (bullets.active && enemies1[i].active && collision(enemies1[i].worldCol, enemies1[i].worldRow, enemies1[i].width, enemies1[i].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
            stopSoundB();
            enemies1[i].active = 0;
            bullets.active = 0;

        }
        enemies1[i].aniCounter++;
    }

}

void drawEnemyP1() {

    for (int i = 0; i < 9; i++) {
        if (enemies1[i].active) {
            shadowOAM[i + 17].attr0 = (0xFF & (enemies1[i].worldRow -vOff)) | (0 << 14);
            shadowOAM[i + 17].attr1 = (0x1FF & (enemies1[i].worldCol -hOff)) | (0 << 14);
            shadowOAM[i + 17].attr2 = ((enemies1[i].curFrame + 1)*32 + (enemies1[i].aniState + 2)) | ((0) << 12);

        } else {
            shadowOAM[i + 17].attr0 = (2 << 8);

        }


    }

}


void initEnemyP2() {
    int x[] = {440, 440, 344, 204};
    int y[] = {304, 248, 240, 240};

    for (int i = 0; i < 4; i++) {
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
    for (int i = 0; i < 4; i++) {
        if (enemies2[i].active && enemies2[i].aniCounter % 3 == 0) {
            if (collisionCheck(enemyColMap, 512, enemies2[i].worldCol, enemies2[i].worldRow, enemies2[i].width, enemies2[i].height - 1, enemies2[i].cdel, 0) == 0 || collisionCheck(enemyColMap, 512, enemies2[i].worldCol, enemies2[i].worldRow, enemies2[i].width, enemies2[i].height - 1, -enemies2[i].cdel, 0) == 0 ) {
                enemies2[i].cdel *= -1;

            }
            enemies2[i].worldCol += enemies2[i].cdel;
        }

        if (enemies2[i].active) {
            if(enemies2[i].aniCounter % 10 == 0) {
                enemies2[i].curFrame = (enemies2[i].curFrame + 1) % enemies2[i].numFrames;
            }
        }


        if (enemies2[i].active && collision(enemies2[i].worldCol, enemies2[i].worldRow, enemies2[i].width, enemies2[i].height, player.worldCol, player.worldRow, player.width, player.height)) {

            enemies2[i].active = 0;
            gameLives --;
        }
        if (bullets.active && enemies2[i].active && collision(enemies2[i].worldCol, enemies2[i].worldRow, enemies2[i].width, enemies2[i].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
            stopSoundB();
            enemies2[i].active = 0;
            bullets.active = 0;

        }

        enemies2[i].aniCounter++;
    }

}

void drawEnemyP2() {

    for (int i = 0; i < 4; i++) {
        if (enemies2[i].active) {
            shadowOAM[i + 26].attr0 = (0xFF & (enemies2[i].worldRow -vOff)) | (0 << 14);
            shadowOAM[i + 26].attr1 = (0x1FF & (enemies2[i].worldCol -hOff)) | (0 << 14);
            shadowOAM[i + 26].attr2 = ((enemies2[i].curFrame + 1)*32 + (enemies2[i].aniState + 2)) | ((0) << 12);

        } else {
            shadowOAM[i + 26].attr0 = (2 << 8);

        }
    }

}


void initEnemyP3() {
    int x[] = {120,25,40,64,148, 233, 284, 337, 373, 456};
    int y[] = {216,152,152,152,144,136,136, 152, 160, 144};

    for (int i = 0; i < 10; i++) {
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
    for (int i = 0; i < 10; i++) {
        if (enemies3[i].active && enemies3[i].aniCounter % 3 == 0) {
            if (collisionCheck(enemyColMap, 512, enemies3[i].worldCol, enemies3[i].worldRow, enemies3[i].width, enemies3[i].height - 1, enemies3[i].cdel, 0) == 0 || collisionCheck(enemyColMap, 512, enemies3[i].worldCol, enemies3[i].worldRow, enemies3[i].width, enemies3[i].height - 1, -enemies3[i].cdel, 0) == 0 ) {
                enemies3[i].cdel *= -1;
            }
            enemies3[i].worldCol += enemies3[i].cdel;
        }

        if (enemies3[i].active) {
            if(enemies3[i].aniCounter % 10 == 0) {
                enemies3[i].curFrame = (enemies3[i].curFrame + 1) % enemies3[i].numFrames;
            }
        }


        if (enemies3[i].active && collision(enemies3[i].worldCol, enemies3[i].worldRow, enemies3[i].width, enemies3[i].height, player.worldCol, player.worldRow, player.width, player.height)) {

            enemies3[i].active = 0;
            gameLives --;
        }
        if (bullets.active && enemies3[i].active && collision(enemies3[i].worldCol, enemies3[i].worldRow, enemies3[i].width, enemies3[i].height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height)) {
            stopSoundB();
            enemies3[i].active = 0;
            bullets.active = 0;

        }
        enemies3[i].aniCounter++;
    }

}


void drawEnemyP3() {

    for (int i = 0; i < 10; i++) {
        if (enemies3[i].active) {
            shadowOAM[i + 79].attr0 = (0xFF & (enemies3[i].worldRow -vOff)) | (0 << 14);
            shadowOAM[i + 79].attr1 = (0x1FF & (enemies3[i].worldCol -hOff)) | (0 << 14);
            shadowOAM[i + 79].attr2 = ((enemies3[i].curFrame + 1)*32 + (enemies3[i].aniState + 2)) | ((0) << 12);

        } else {
            shadowOAM[i + 79].attr0 = (2 << 8);

        }
    }

}





void initBallsP0() {

    int x[] = {80, 234, 248, 254, 320, 338};
    int y[] = {476, 413,425,440,440,456};

        for (int i = 0; i < 6; i++) {
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
    for (int i = 0; i < 6; i++) {
        if (balls0[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, balls0[i].worldCol, balls0[i].worldRow, balls0[i].width, balls0[i].height)) {
            balls0[i].active = 0;
            playSoundB(ding2_data, ding2_length, 0);
            collectedBalls ++;

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
    for (int i = 0; i < 6; i++) {
            if (balls0[i].active) {
                shadowOAM[i + 51].attr0 = (0xFF & (balls0[i].worldRow -vOff)) | (0 << 14);
                shadowOAM[i + 51].attr1 = (0x1FF & (balls0[i].worldCol -hOff)) | (0 << 14);
                shadowOAM[i + 51].attr2 = ((balls0[i].curFrame + 1)*32 + (balls0[i].aniState + 5)) ;

            } else {
                shadowOAM[i + 51].attr0 = (2 << 8);
            }
        }

}


void initBallsP1() {
    int x[] = {464,437,292,246,194,178,58,86,186};
    int y[] = {372,372,350,358,346,360,286,296,300};

    for (int i = 0; i < 9; i++) {
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
    for (int i = 0; i < 9; i++) {

        if (balls1[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, balls1[i].worldCol, balls1[i].worldRow, balls1[i].width, balls1[i].height)) {
            balls1[i].active = 0;
            playSoundB(ding2_data, ding2_length, 0);

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
    for (int i = 0; i < 9; i++) {
        if (balls1[i].active) {
            shadowOAM[i + 57].attr0 = ( 0xFF & (balls1[i].worldRow -vOff) )| (0 << 14);
            shadowOAM[i + 57].attr1 = ( 0x1FF & (balls1[i].worldCol -hOff)) | (0 << 14);
            shadowOAM[i + 57].attr2 = ((balls1[i].curFrame + 1)*32 + (balls1[i].aniState + 5)) ;

        } else {
            shadowOAM[i + 57].attr0 = (2 << 8);
        }
    }

}

void initBallsP2() {
    int x[] = {424,480,440,230};
    int y[] = {284,284,232,240};

    for (int i = 0; i < 4; i++) {
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
    for (int i = 0; i < 4; i++) {


        if (balls2[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, balls2[i].worldCol, balls2[i].worldRow, balls2[i].width, balls2[i].height)) {
            balls2[i].active = 0;
            playSoundB(ding2_data, ding2_length, 0);
            collectedBalls ++;

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
    for (int i = 0; i < 4; i++) {
        if (balls2[i].active) {
            shadowOAM[i + 66].attr0 = ( 0xFF & (balls2[i].worldRow -vOff)) | (0 << 14);
            shadowOAM[i + 66].attr1 = (0x1FF & (balls2[i].worldCol -hOff)) | (0 << 14);
            shadowOAM[i + 66].attr2 =((balls2[i].curFrame + 1)*32 + (balls2[i].aniState + 5));

        } else {
            shadowOAM[i + 66].attr0 = (2 << 8);
        }
    }

}

void initBallsP3() {
    int x[]= {196,168,92,16,40,94,226,248};
    int y[] = {216,208,216,224,152,152,94,94};

    for (int i = 0; i < 8; i++) {
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
    for (int i = 0; i < 8; i++) {
        if (balls3[i].active && collision(player.worldCol, player.worldRow, player.width, player.height, balls3[i].worldCol, balls3[i].worldRow, balls3[i].width, balls3[i].height)) {
            balls3[i].active = 0;
            playSoundB(ding2_data, ding2_length, 0);
            collectedBalls ++;

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
    for (int i = 0; i < 8; i++) {
        if (balls3[i].active) {
            shadowOAM[i + 70].attr0 = (0xFF & (balls3[i].worldRow -vOff)) | (0 << 14);
            shadowOAM[i + 70].attr1 = (0x1FF & (balls3[i].worldCol -hOff)) | (0 << 14);
            shadowOAM[i + 70].attr2 = ((balls3[i].curFrame + 1)*32 + (balls3[i].aniState + 5));

        } else {
            shadowOAM[i + 70].attr0 = (2 << 8);
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

    if (bullets.active){

        if (bullets.worldCol + bullets.cdel < 240 + hOff && bullets.worldCol > 2) {
            bullets.worldCol += bullets.cdel;

        }
        if (bullets.worldCol + bullets.cdel >= 240 + hOff){
            stopSoundB();
            bullets.active = 0;

        }

        if (bullets.worldCol <= hOff ) {
            stopSoundB();
            bullets.active = 0;
        }
# 1428 "game.c"
        if(bullets.aniCounter % 8 == 0) {
            bullets.curFrame = (bullets.curFrame + 1) % bullets.numFrames;
        }

        bullets.aniCounter++;
    }


}



void fireBullet() {

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
        shadowOAM[14].attr0 = (0xFF & (bullets.worldRow - vOff)) | (0 << 14);
        shadowOAM[14].attr1 = (0xFF & (bullets.worldCol - hOff)) | (0 << 14);
        shadowOAM[14].attr2 = ((bullets.curFrame + 1)*32 + (bullets.aniState + 5)) ;
    } else {
        shadowOAM[14].attr0 = (2 << 8);
    }
}




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
        shadowOAM[i + 35].attr0 = ( scoreBar[i].worldRow ) | (0 << 14);
        shadowOAM[i + 35].attr1 = (scoreBar[i].worldCol ) | (1 << 14) ;
        shadowOAM[i + 35].attr2 = ((17)*32 + (0)) | ((9) << 12)| ((0) << 10);

    }
}




void initMazePrize(){
    mazePrize.worldCol = 5;
    mazePrize.worldRow = 100;
    mazePrize.width = 16;
    mazePrize.height = 16;
    mazePrize.active = 0;

}

void drawMazePrize() {
    if (mazePrize.active) {
        shadowOAM[1].attr0 = (mazePrize.worldRow) | (0 << 14);
        shadowOAM[1].attr1 = (mazePrize.worldCol) | (1 << 14);
        shadowOAM[1].attr2 = ((17)*32 + (4));

    } else {
        shadowOAM[1].attr0 = (2 << 8);
    }


}

void updatePlayerMaze() {
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4))) && player.worldCol < 240 - player.width) {
        player.worldCol += player.cdel;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))) && player.worldCol > 1) {
        player.worldCol -= player.cdel;
    }


    isGrounded = collisionCheck(highwayColMap, 240, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;

    if ((!(~(oldButtons) & ((1 << 6))) && (~buttons & ((1 << 6)))) && isGrounded ) {
        player.isJumping = 1;
        player.jumpFrames = 0;
    }

    if (player.isJumping) {
        player.worldRow -=4;
        player.jumpFrames++;

        if (player.jumpFrames == maxFrames || player.worldRow == 0) {
            player.isJumping = 0;
        }

    } else if (collisionCheck(highwayColMap, 240, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel)) {
        player.worldRow += 1;

    }


    if (mazePrize.active && collision(player.worldCol, player.worldRow, player.width, player.height, mazePrize.worldCol, mazePrize.worldRow, mazePrize.width, mazePrize.height)) {
        prizes = 1;

    }



    if (truck.active && collision(player.worldCol, player.worldRow, player.width, player.height, truck.worldCol, truck.worldRow, truck.width, truck.height)) {
        player.isJumping = 0;
        initPlayer();

    }
    if (carA.active && collision(player.worldCol, player.worldRow, player.width, player.height, carA.worldCol, carA.worldRow, carA.width, carA.height)) {
        player.isJumping = 0;
        initPlayer();

    }

    if (carB.active && collision(player.worldCol, player.worldRow, player.width, player.height, carB.worldCol, carB.worldRow, carB.width, carB.height)) {
        player.isJumping = 0;
        initPlayer();

    }


    if (time_s == 5) {
            mazePrize.active = 1;

            *(volatile unsigned short*)0x400010A = (0<<7);

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

    if (truck.worldCol > 240 + 9 && truck.active) {
        truck.worldCol = 0;
    }

    if (truck.active) {
        truck.worldCol += truck.cdel;
    }
# 1615 "game.c"
    if (truck.active) {
        if(truck.aniCounter % 10 == 0) {
            truck.curFrame = (truck.curFrame + 1) % truck.numFrames;
        }


    }
    truck.aniCounter++;




}

void drawTruck() {
    if (truck.active) {
        shadowOAM[3].attr0 = truck.worldRow| (1 << 14);
        shadowOAM[3].attr1 = truck.worldCol| (2 << 14) ;
        shadowOAM[3].attr2 = (((truck.curFrame * 2) + 17)*32 + ((truck.aniState * 4 ) +21)) ;

    } else {
        shadowOAM[3].attr0 |= (2 << 8);
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
     if (carA.worldCol > 240 + 9 && carA.active) {

        int b = rand () % 16;
        int g = rand () % 16;
        int f = rand () % 16;
        int h = rand () % 16;
        int i = rand () % 16;
        int j = rand () % 16;
        int k = rand () % 16;
        int l = rand () % 16;


        ((unsigned short *)0x5000200)[144] = ((unsigned short *)0x5000200)[b + 160];
        ((unsigned short *)0x5000200)[145] = ((unsigned short *)0x5000200)[g + 160];
        ((unsigned short *)0x5000200)[145] = ((unsigned short *)0x5000200)[f + 160];
        ((unsigned short *)0x5000200)[147] = ((unsigned short *)0x5000200)[h + 160];
        ((unsigned short *)0x5000200)[150] = ((unsigned short *)0x5000200)[k + 160];
        ((unsigned short *)0x5000200)[151] = ((unsigned short *)0x5000200)[l + 160];
        ((unsigned short *)0x5000200)[153] = ((unsigned short *)0x5000200)[j + 160];
        ((unsigned short *)0x5000200)[155] = ((unsigned short *)0x5000200)[i + 160];
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
        shadowOAM[4].attr0 = carA.worldRow| (1 << 14);
        shadowOAM[4].attr1 = carA.worldCol| (2 << 14) ;
        shadowOAM[4].attr2 = (((carA.curFrame * 2) + row)*32 + ((carA.aniState * 4 ) + col))| ((9) << 12);

    } else {
        shadowOAM[4].attr0 |= (2 << 8);
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
    if (carB.worldCol > 240 + 9 && carB.active && carA.worldCol == place) {
        int b = rand () % 16;
        int g = rand () % 16;
        int f = rand () % 16;
        int h = rand () % 16;
        int i = rand () % 16;
        int j = rand () % 16;
        int k = rand () % 16;
        int l = rand () % 16;


        ((unsigned short *)0x5000200)[160] = ((unsigned short *)0x5000200)[b + 160];
        ((unsigned short *)0x5000200)[161] = ((unsigned short *)0x5000200)[g + 160];
        ((unsigned short *)0x5000200)[163] = ((unsigned short *)0x5000200)[f + 160];
        ((unsigned short *)0x5000200)[166] = ((unsigned short *)0x5000200)[h + 160];
        ((unsigned short *)0x5000200)[167] = ((unsigned short *)0x5000200)[k + 160];
        ((unsigned short *)0x5000200)[170] = ((unsigned short *)0x5000200)[l + 160];
        ((unsigned short *)0x5000200)[171] = ((unsigned short *)0x5000200)[j + 160];
        ((unsigned short *)0x5000200)[173] = ((unsigned short *)0x5000200)[i + 160];


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
        shadowOAM[5].attr0 = carB.worldRow| (1 << 14);
        shadowOAM[5].attr1 = carB.worldCol| (2 << 14) ;
        shadowOAM[5].attr2 = (((carB.curFrame * 2) + rowB)*32 + ((carB.aniState * 4 ) + colB))| ((10) << 12);

    } else {
        shadowOAM[5].attr0 |= (2 << 8);
    }

}

void initCone() {
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

    if (time_s2 == 1) {
            cone[2].active =1;
    }
    if (time_s2 == 2) {
        cone[1].active =1;
    }
    if (time_s2 == 3) {
        cone[0].active =1;
    }
    if (time_s2 == 4) {
        *(volatile unsigned short*)0x400010E = (0<<7);
    }
}

void drawCone() {
    for (int i = 0; i < 3; i++) {
        if (cone[i].active) {
            shadowOAM[i + 6].attr0 = cone[i].worldRow| (0 << 14);
            shadowOAM[i + 6].attr1 = cone[i].worldCol| (1 << 14) ;
            shadowOAM[i + 6].attr2 = (((cone[i].curFrame * 2) + 17)*32 + ((cone[i].aniState * 2 ) + 18))| ((0) << 12);

        } else {
            shadowOAM[i + 6].attr0 |= (2 << 8);
        }
    }
}

void setCone() {
    for (int i = 0; i < 3; i++) {
        cone[i].active = 1;
    }

}



void updatePlayerLaser() {

    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))) && collisionCheck(windowColMap, 240, player.worldCol, player.worldRow, player.width, player.height-1, -player.cdel,0) ) {
        if (player.worldCol > 0 ) {
            player.worldCol -= player.cdel;

        }
    }

    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4))) && collisionCheck(windowColMap, 240, player.worldCol, player.worldRow, player.width, player.height - 1, player.cdel, 0) ) {
        if (player.worldCol + player.width < 240 ){
            player.worldCol += player.cdel;

        }
    }



    isGrounded = collisionCheck(windowColMap, 240, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 2 ||collisionCheck(windowColMap, 240, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;

    if ((!(~(oldButtons) & ((1 << 6))) && (~buttons & ((1 << 6)))) && isGrounded ) {
        player.isJumping = 1;
        player.jumpFrames = 0;
    }

    if (player.isJumping) {
        player.worldRow-=1;
        player.jumpFrames++;

        if (player.jumpFrames == maxFrames || player.worldRow == 0) {
            player.isJumping = 0;
        }

    } else if (collisionCheck(windowColMap, 240, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel)) {
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
    if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0))))) {
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
        shadowOAM[12].attr0 = leftTop.worldRow | (0 << 14);
        shadowOAM[12].attr1 = (leftTop.worldCol) | (0 << 14);
        shadowOAM[12].attr2 = ((17)*32 + (4));

    } else {

        shadowOAM[12].attr0 = 16 | (0 << 14);
        shadowOAM[12].attr1 = 192 | (0 << 14);
        shadowOAM[12].attr2 = ((17)*32 + (4));
    }

    if (rightTop.active) {
        shadowOAM[13].attr0 = rightTop.worldRow | (0 << 14);
        shadowOAM[13].attr1 = (rightTop.worldCol) | (0 << 14);
        shadowOAM[13].attr2 = ((17)*32 + (5));
    } else {

        shadowOAM[13].attr0 = 16 | (0 << 14);
        shadowOAM[13].attr1 = 200 | (0 << 14);
        shadowOAM[13].attr2 = ((17)*32 + (5));

    }


    if (leftBottom.active) {
        shadowOAM[14].attr0 = leftBottom.worldRow | (0 << 14);
        shadowOAM[14].attr1 = (leftBottom.worldCol) | (0 << 14);
        shadowOAM[14].attr2 = ((18)*32 + (4));

    } else{

        shadowOAM[14].attr0 = 24 | (0 << 14);
        shadowOAM[14].attr1 = 192 | (0 << 14);
        shadowOAM[14].attr2 = ((18)*32 + (4));

    }

    if (rightBottom.active) {
        shadowOAM[15].attr0 = rightBottom.worldRow | (0 << 14);
        shadowOAM[15].attr1 = (rightBottom.worldCol) | (0 << 14);
        shadowOAM[15].attr2 = ((18)*32 + (5));

    }else {

        shadowOAM[15].attr0 = 24 | (0 << 14);
        shadowOAM[15].attr1 = 200| (0 << 14);
        shadowOAM[15].attr2 = ((18)*32 + (5));

    }


}



void updateSkyfallPlayer() {

    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))) ) {
        if (player.worldCol > 0 ) {

            player.worldCol -= player.cdel;
        }
    }


    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4)))) {
        if (player.worldCol + player.width < 240 ){
            player.worldCol += player.cdel;

        }
    }

    if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0)))) ) {
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




            if (skyEnemies[i].worldCol == 0) {
                skyEnemies[i].cdel *= -1;
            }

            if (skyEnemies[i].worldCol + skyEnemies[i].width == 240 - 1) {
                skyEnemies[i].cdel *= -1;
            }

            skyEnemies[i].worldCol += skyEnemies[i].cdel;


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


        }
    }

}


void drawSkyEnemies() {
    for (int i = 0; i < 18; i ++) {
        if (skyEnemies[i].active) {
            shadowOAM[i + 1].attr0 = skyEnemies[i].worldRow |(0 << 14);
            shadowOAM[i + 1].attr1 = skyEnemies[i].worldCol |(1 << 14);
            shadowOAM[i + 1].attr2 = ((17)*32 + (4));
        } else {
            shadowOAM[i + 1].attr0 = (2 << 8);
        }
    }

}


void initSkyBullets() {
    for (int i = 0; i <4; i++) {
        skyBullets[i].worldCol = skyEnemies[i].worldCol;
        skyBullets[i].worldRow = skyEnemies[i].worldRow;
        skyBullets[i].rdel = 1;
        skyBullets[i].height = 4;
        skyBullets[i].width = 8;
        skyBullets[i].active = 0;
    }
}

void fireSkyBullets() {
    for (int i = 0; i < 4; i++) {
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
    for (int i = 0; i < 4; i++) {
        if (skyBullets[i].active) {

            if (skyBullets[i].worldRow + skyBullets[i].height-1 > 0 && skyBullets[i].worldRow + skyBullets[i].height < 160 - 16) {
       skyBullets[i].worldRow += skyBullets[i].rdel;

            } else {
                skyBullets[i].active = 0;
            }
        }
    }
}

void drawSkyBullets() {
     for (int i = 0; i < 4; i ++) {
        if (skyBullets[i].active) {
            shadowOAM[i + 22].attr0 = skyBullets[i].worldRow |(0 << 14);
            shadowOAM[i + 22].attr1 = skyBullets[i].worldCol |(0 << 14);
            shadowOAM[i + 22].attr2 = ((17)*32 + (4));
        } else {
            shadowOAM[i + 22].attr0 = (2 << 8);
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
                if (skyPlayerBullet[i].worldRow + skyPlayerBullet[i].height-1 > 0 && skyPlayerBullet[i].worldCol + skyPlayerBullet[i].rdel > 0 && skyPlayerBullet[i].worldCol + skyPlayerBullet[i].rdel < 240 - 16) {
                skyPlayerBullet[i].worldRow += skyPlayerBullet[i].rdel;

            } else {
                skyPlayerBullet[i].active = 0;
            }
        }
    }
}

void drawSkyPlayerBullet() {
    for (int i = 0; i < 4; i ++) {
        if (skyPlayerBullet[i].active) {
            shadowOAM[i + 40].attr0 = skyPlayerBullet[i].worldRow |(0 << 14);
            shadowOAM[i + 40].attr1 = skyPlayerBullet[i].worldCol |(0 << 14);
            shadowOAM[i + 40].attr2 = ((16)*32 + (0));
        } else {
            shadowOAM[i + 40].attr0 = (2 << 8);
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
# 2289 "game.c"
    if (skyEnemies[2].hit) {
        skyPrize.active = 1;

    }



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
        shadowOAM[46].attr0 = skyPrize.worldRow |(0 << 14);
        shadowOAM[46].attr1 = skyPrize.worldCol |(1 << 14);
        shadowOAM[46].attr2 = ((20)*32 + (6));


    } else {
        shadowOAM[46].attr0 = (2 << 8);
    }

}



void initLasers2() {




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

    } else if (collision(upLasers[1].worldCol,upLasers[1].worldRow, upLasers[1].width, upLasers[1].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 104;
        player.worldRow = 72;

    } else if (collision(upLasers[2].worldCol,upLasers[2].worldRow, upLasers[2].width, upLasers[2].height, player.worldCol, player.worldRow, player.width, player.height)) {
        player.isJumping = 0;
        player.worldCol = 156;
        player.worldRow = 48;

    }
}


void drawLasers2() {
    int spritesheetCol[] = {22, 24, 26, 22,24, 26, 22, 24, 26};
    int spritesheetRow[] = {24, 24, 24, 25, 25, 25,26,26,26};

    for (int i =0; i < 9; i ++) {
        shadowOAM[i + 1].attr0 = lasers2[i].worldRow | (1 << 14);
        shadowOAM[i + 1].attr1 = lasers2[i].worldCol | (0 << 14);
        shadowOAM[i + 1].attr2 = ((spritesheetRow[i])*32 + (spritesheetCol[i])) | ((2) << 12);
    }

    int ssCol[] = {22, 24, 26};
    int ssRow[] = {27, 27, 27};
    for (int i = 0; i < 3; i++) {
        shadowOAM[i + 26].attr0 = upLasers[i].worldRow | (1 << 14);
        shadowOAM[i + 26].attr1 = upLasers[i].worldCol | (0 << 14);
        shadowOAM[i + 26].attr2 = ((ssRow[i])*32 + (ssCol[i])) | ((2) << 12);
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
        shadowOAM[30].attr0 = laserPortal.worldRow |(2 << 14);
        shadowOAM[30].attr1 = laserPortal.worldCol |(2 << 14);
        shadowOAM[30].attr2 = ((4)*32 + (9));
    } else {
        shadowOAM[30].attr0 = (2 << 8);
    }

}







void initCheatPortal(){
    cheatPortal.worldCol = 280;
    cheatPortal.worldRow = 489;
    cheatPortal.width = 8;
    cheatPortal.height = 8;
    cheatPortal.active = 1;

}

void updateCheatPortal() {

    if (collision(cheatPortal.worldCol, cheatPortal.worldRow, cheatPortal.width, cheatPortal.height, bullets.worldCol, bullets.worldRow, bullets.width, bullets.height )) {
        sewerActivate = 1;

    }
}

void drawCheatPortal() {
    if (cheatPortal.active) {
        shadowOAM[80].attr0 = cheatPortal.worldRow | (0 << 14);
        shadowOAM[80].attr1 = cheatPortal.worldCol | (0 << 14);
        shadowOAM[80].attr2 = ((0)*32 + (0)) ;

    } else {
        shadowOAM[80].attr2 = (2 << 8);
    }


}


void updateSewerPlayer() {


    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))) ) {
        if (player.worldCol > 0 && collisionCheck(sewerColMap, 512, player.worldCol,player.worldRow, player.width, player.height-1, -player.cdel,0)) {

            player.worldCol -= player.cdel;

            if ( hOff > 0 && player.worldCol -hOff - player.cdel <= 240 / 2 ) {
                    hOff-=player.cdel;
            }

        }
    }


    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4)))) {
        if (player.worldCol + player.width < 512 && collisionCheck(sewerColMap, 512, player.worldCol, player.worldRow, player.width, player.height - 1, player.cdel, 0) ){
            player.worldCol += player.cdel;


             if ( (hOff + 240 + player.cdel < 512) && (player.worldCol - hOff >= 240 / 2)) {
                hOff+=player.cdel;
            }

        }
    }


    isGrounded = collisionCheck(sewerColMap, 512, player.worldCol, player.worldRow, player.width, player.height + 1, 0, player.rdel ) == 0 ;

    if ((!(~(oldButtons) & ((1 << 6))) && (~buttons & ((1 << 6)))) && isGrounded ) {
        up = 1;

        player.isJumping = 1;
        player.jumpFrames = 0;
    }

    if (player.isJumping) {


        if (collisionCheck(sewerColMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 2 ) {
            cheatPort1 = 1;
            player.isJumping = 0;
        } else if (collisionCheck(sewerColMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 3 ) {
            cheatPort2 = 1;
            player.isJumping = 0;
        } else if (collisionCheck(sewerColMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, -player.rdel) == 7 ) {
            cheatPort3 = 1;
            player.isJumping = 0;
        }
        player.worldRow-=2;
        player.jumpFrames++;

        if (player.jumpFrames == maxFrames) {
            player.isJumping = 0;
        }

    } else if (footCollision(sewerColMap, 512, player.worldCol, player.worldRow, player.width, player.height, 0, player.rdel) ) {
        player.worldRow ++;

    }


    if (player.worldRow + player.height == 512 - 4 ) {

        vOff = 352;
        hOff = 0;
        player.worldCol = 0;
        player.worldRow = 488;
        player.cdel = 2;
        player.rdel = 1;

    }

    animatePlayer();

}




void setupSounds() {

    *(volatile u16 *)0x04000084 = (1<<7);

 *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     (0<<10) |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);

 *(u16*)0x04000080 = 0;
}

void playSoundA( const signed char* sound, int length, int loops) {
    dma[1].cnt = 0;

    int ticks = (16777216) / 11025;

    DMANow(1, sound, (u16*)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

    *(volatile unsigned short*)0x4000102 = 0;

    *(volatile unsigned short*)0x4000100 = -ticks;
    *(volatile unsigned short*)0x4000102 = (1<<7);

    soundA.length = length;
    soundA.data = sound;
    soundA.loops = loops;
    soundA.isPlaying = 1;
    soundA.vBlankCount = 0;
    soundA.duration = ( (59.727) *length) / 11025;

}


void playSoundB( const signed char* sound, int length, int loops) {

    dma[2].cnt = 0;

    int ticks = (16777216) / 11025;

    DMANow(2, sound, (u16*)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

    *(volatile unsigned short*)0x4000106 = 0;

    *(volatile unsigned short*)0x4000104 = -ticks;
    *(volatile unsigned short*)0x4000106 = (1<<7);

    soundB.data = sound;
    soundB.length = length;
    soundB.loops = loops;
    soundB.isPlaying = 1;
    soundB.vBlankCount = 0;
    soundB.duration = ((59.727) *length) / 11025;

}



void pauseSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    *(volatile unsigned short*)0x4000102 = (0<<7);
    *(volatile unsigned short*)0x4000106 = (0<<7);

}

void unpauseSound() {
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    *(volatile unsigned short*)0x4000102 = (1<<7);
    *(volatile unsigned short*)0x4000106 = (1<<7);

}

void stopSound() {
    soundA.isPlaying = 0;
    dma[1].cnt = 0;
    *(volatile unsigned short*)0x4000102 = (0<<7);


    soundB.isPlaying = 0;
    dma[2].cnt = 0;
    *(volatile unsigned short*)0x4000106 = (0<<7);

}


void stopSoundB() {
    soundB.isPlaying = 0;
    dma[2].cnt = 0;
    *(volatile unsigned short*)0x4000106 = (0<<7);

}

void stopSoundA() {
    soundA.isPlaying = 0;
    dma[1].cnt = 0;
    *(volatile unsigned short*)0x4000102 = (0<<7);

}

void pauseSoundA() {
    soundA.isPlaying = 0;
    *(volatile unsigned short*)0x4000102 = (0<<7);
}

void unpauseSoundA() {
    soundA.isPlaying = 1;
    *(volatile unsigned short*)0x4000102 = (1<<7);

}


void setUpInterrupts() {
    time_s = 0;
    time_s2 = 0;

    *(unsigned short*)0x4000208 = 0;

    *(unsigned short*)0x4000200 = 1 << 0 | 1<<5 | 1<<6;
    *(unsigned short*)0x4000004 |= 1 << 3;



    *(volatile unsigned short*)0x400010A = 0;
    *(volatile unsigned short*)0x4000108 = 65536 - 16384;
    *(volatile unsigned short*)0x400010A = 3 | (1<<6) ;

    *(volatile unsigned short*)0x400010E = 0;
    *(volatile unsigned short*)0x400010C = 65536 - 16384;
    *(volatile unsigned short*)0x400010E = 3 | (1<<6) ;



    *((ihp_t *)0x03007FFC) = interruptHandler;

    *(unsigned short*)0x4000208 = 1;
}

void interruptHandler(void) {

    if ( *(volatile unsigned short*)0x4000202 & 1<<5 && level == 1) {
        time_s++;
    }

    if ( *(volatile unsigned short*)0x4000202 & 1<<6 && level == 1) {
        time_s2 ++;
    }

    if(*(volatile unsigned short*)0x4000202 & 1 << 0 && (level == 0 || level == 4) ) {
        if (soundA.isPlaying) {

            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    *(volatile unsigned short*)0x4000102 = (0<<7);
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
                    *(volatile unsigned short*)0x4000106 = (0<<7);
                }
            }
  }


  *(volatile unsigned short*)0x4000202 = 1 << 0;
 }





    *(volatile unsigned short*)0x4000202 = *(volatile unsigned short*)0x4000202;
    *(unsigned short*)0x4000208 = 1;
}
