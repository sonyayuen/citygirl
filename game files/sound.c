

/*
#include "mode0.h"
#include "sound.h"
#include "game.h"




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



void setupInterruptSounds() {

	REG_IME = 0;

    REG_IE |= INT_VBLANK;
	REG_DISPSTAT |= INT_VBLANK_ENABLE;

    REG_INTERRUPT = interruptHandler;

	REG_IME = 1;
}



void interruptHandlerSound() {

	REG_IME = 0;

	if(REG_IF & INT_VBLANK) {
        if (soundA.isPlaying) {
            
            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                    
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0; //channel 1, timer 0 for soundA
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
                    dma[2].cnt = 0; //channel 2, timer 1 for soundB
                    REG_TM1CNT = TIMER_OFF;
                    
                }
            }
		}


		//REG_IF = INT_VBLANK;
	}
    REG_IF = REG_IF;

	REG_IME = 1;
} 

void pauseSound() {

	//   4.1 - Complete the pauseSound function
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    REG_TM0CNT = TIMER_OFF;
    REG_TM1CNT = TIMER_OFF;

}

void unpauseSound() {
    //   4.2 - Complete the unpauseSound function
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
    
}

void stopSound() {

    //   4.3 - Complete the stopSound function
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
    //   4.2 - Complete the unpauseSound function
    soundA.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    
}


void setUpInterrupts() {
    REG_IME = 0;

    time_s = 0;
    time_s2 = 0;

    REG_IE |= INT_VBLANK | INT_TM2 | INT_TM3;
	REG_DISPSTAT |= INT_VBLANK_ENABLE;


    REG_TM2CNT = 0;
    REG_TM2D = 65536 - 16384;
    REG_TM2CNT = TM_FREQ_1024 | TM_IRQ; //timer not on yet


    REG_TM3CNT = 0;
    REG_TM3D = 65536 - 16384;
    REG_TM3CNT = TM_FREQ_1024 | TM_IRQ; //timer not on yet

    REG_INTERRUPT = interruptHandler;

    REG_IME = 1;
}

void interruptHandler(void) { //FIX
    if ( REG_IF & INT_TM2 ) {
        time_s++;
        if (time_s == 5) { //if gets to 60 seconds, make prize appear
            mazePrize.active = 1;
            //time_s = 0;
            REG_TM2CNT = TIMER_OFF;
            
        } 
    }

    if ( REG_IF & INT_TM3 ) {
        time_s2 ++;
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

    if(REG_IF & INT_VBLANK ) {
        if (soundA.isPlaying) {
            
            soundA.vBlankCount = soundA.vBlankCount + 1;
            if (soundA.vBlankCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.loops);
                    
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0; //channel 1, timer 0 for soundA
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
                    dma[2].cnt = 0; //channel 2, timer 1 for soundB
                    REG_TM1CNT = TIMER_OFF;
                    
                }
            }
		}

        REG_IF = INT_VBLANK;

	}
    
    REG_IF = REG_IF;
    REG_IME = 1;
} 

*/

