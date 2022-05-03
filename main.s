	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToTitleScreen
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTitleScreen, %function
goToTitleScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #2048
	ldr	r1, .L4
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L4+4
	strh	r1, [r2, #14]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1760
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+32
	ldr	r3, .L4+36
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	6948
	.word	DMANow
	.word	cityGirlPal
	.word	100810752
	.word	cityGirlTiles
	.word	100718592
	.word	cityGirlMap
	.word	startSong_length
	.word	startSong_data
	.word	playSoundA
	.word	state
	.size	goToTitleScreen, .-goToTitleScreen
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	ldr	r1, .L8
	ldr	r2, .L8+4
	str	r3, [r1]
	ldrh	ip, [r2, #48]
	ldr	lr, .L8+8
	ldr	r0, .L8+12
	ldr	r1, .L8+16
	ldr	r2, .L8+20
	strh	r3, [lr]	@ movhi
	str	r3, [r1]
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L8+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToTitleScreen
.L9:
	.align	2
.L8:
	.word	seed
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	prizes
	.word	setupSounds
	.word	setUpInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose.part.0, %function
lose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #3
	ldr	r0, .L12+8
	ldr	r1, .L12+12
	ldr	r2, .L12+16
	pop	{r4, lr}
	str	ip, [r0]
	str	r3, [r1]
	str	r3, [r2]
	b	initialize
.L13:
	.align	2
.L12:
	.word	setupSounds
	.word	setUpInterrupts
	.word	gameLives
	.word	bullAmt
	.word	prizes
	.size	lose.part.0, .-lose.part.0
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #2048
	ldr	r1, .L16+4
	strh	r3, [r2]	@ movhi
	ldr	r4, .L16+8
	strh	r1, [r2, #14]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #2704
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+24
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L16+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	6948
	.word	DMANow
	.word	newStartPal
	.word	100810752
	.word	newStartTiles
	.word	100718592
	.word	newStartMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	titleScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	titleScreen, %function
titleScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L24:
	.align	2
.L23:
	.word	oldButtons
	.word	buttons
	.size	titleScreen, .-titleScreen
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L27
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #2048
	ldr	r1, .L27+4
	strh	r3, [r2]	@ movhi
	ldr	r4, .L27+8
	strh	r1, [r2, #14]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L27+12
	mov	lr, pc
	bx	r4
	mov	r3, #5888
	mov	r0, #3
	ldr	r2, .L27+16
	ldr	r1, .L27+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L27+24
	mov	r0, #3
	ldr	r1, .L27+28
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L27+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
	.word	waitForVBlank
	.word	6948
	.word	DMANow
	.word	instructionsPal
	.word	100810752
	.word	instructionsTiles
	.word	100718592
	.word	instructionsMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L34
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #2
	bxne	lr
	b	goToStart
.L35:
	.align	2
.L34:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	scoreFullReset
	.syntax unified
	.arm
	.fpu softvfp
	.type	scoreFullReset, %function
scoreFullReset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #3
	mov	r3, #0
	ldr	r2, .L38
	str	lr, [sp, #-4]!
	ldr	ip, .L38+4
	str	r1, [r2]
	ldr	lr, .L38+8
	ldr	r0, .L38+12
	ldr	r1, .L38+16
	ldr	r2, .L38+20
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
	.word	gameLives
	.word	collectedBalls
	.word	bullAmt
	.word	portalCollision1
	.word	level
	.word	prizes
	.size	scoreFullReset, .-scoreFullReset
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L42
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #56320
	ldr	r4, .L42+4
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+8
	mov	lr, pc
	bx	r4
	mov	r3, #944
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L42+24
	mov	r3, #1808
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L42+28
	ldr	r1, .L42+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+36
	ldr	r1, .L42+40
	mov	lr, pc
	bx	r4
	ldr	r2, .L42+44
	mov	r3, #1248
	strh	r2, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L42+48
	ldr	r1, .L42+52
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+56
	ldr	r1, .L42+60
	mov	lr, pc
	bx	r4
	mov	r2, #5888
	mov	r3, #256
	strh	r2, [r5]	@ movhi
	mov	r0, #3
	ldr	r2, .L42+64
	ldr	r1, .L42+68
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L42+72
	ldr	r1, .L42+76
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L42+80
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L42+84
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L42+88
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	waitForVBlank
	.word	DMANow
	.word	vibeyPal
	.word	vibeyTiles
	.word	100720640
	.word	vibeyMap
	.word	6948
	.word	100810752
	.word	smallBuildingsTiles
	.word	100718592
	.word	smallBuildingsMap
	.word	6728
	.word	100958208
	.word	smallClouds2Tiles
	.word	100716544
	.word	smallClouds2Map
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r2, .L56
	ldr	r5, .L56+4
	ldr	r0, [r2]
	ldrh	r3, [r5]
	add	r0, r0, #1
	tst	r3, #8
	str	r0, [r2]
	beq	.L45
	ldr	r2, .L56+8
	ldrh	r2, [r2]
	ands	r4, r2, #8
	beq	.L54
.L45:
	tst	r3, #2
	beq	.L46
	ldr	r3, .L56+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L55
.L46:
	ldr	r3, .L56+12
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	bl	goToInstructions
	b	.L46
.L54:
	mov	r3, #3
	ldr	ip, .L56+16
	ldr	r1, .L56+20
	ldr	r2, .L56+24
	ldr	lr, .L56+28
	str	r3, [ip]
	str	r3, [r1]
	ldr	ip, .L56+32
	ldr	r1, .L56+36
	str	r4, [r2]
	ldr	r2, .L56+40
	ldr	r3, .L56+44
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L56+48
	ldrh	r1, [r2]
	ldr	r2, .L56+52
	strh	r1, [r3, #18]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L56+56
	strh	r1, [r3, #16]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L56+60
	ldr	r0, .L56+64
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L56+68
	mov	lr, pc
	bx	r3
	ldr	r2, .L56+72
	ldr	r3, .L56+76
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r5]
	b	.L45
.L57:
	.align	2
.L56:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.word	gameLives
	.word	enemyNum
	.word	bullAmt
	.word	collectedBalls
	.word	portalCollision1
	.word	starsCollected
	.word	level
	.word	srand
	.word	vOff
	.word	hOff
	.word	stopSound
	.word	platformMusic_length
	.word	platformMusic_data
	.word	playSoundA
	.word	prizes
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L60
	mov	lr, pc
	bx	r5
	ldr	r4, .L60+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+8
	mov	lr, pc
	bx	r4
	mov	r3, #2880
	mov	r0, #3
	ldr	r2, .L60+12
	ldr	r1, .L60+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L60+20
	ldr	r1, .L60+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #2048
	mov	r3, #512
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	ldr	r1, .L60+28
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #4
	ldr	r3, .L60+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
	.word	waitForVBlank
	.word	DMANow
	.word	newPausePal
	.word	100810752
	.word	newPauseTiles
	.word	100718592
	.word	newPauseMap
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L64
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+4
	mov	lr, pc
	bx	r4
	mov	r3, #3088
	mov	r0, #3
	ldr	r2, .L64+8
	ldr	r1, .L64+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L64+16
	ldr	r1, .L64+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L64+24
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L64+28
	ldr	r3, .L64+32
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #2048
	mov	r3, #512
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	ldr	r1, .L64+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L64+40
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L64+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L65:
	.align	2
.L64:
	.word	DMANow
	.word	newWinPal
	.word	100810752
	.word	newWinTiles
	.word	100718592
	.word	newWinMap
	.word	startSong_length
	.word	startSong_data
	.word	playSoundA
	.word	shadowOAM
	.word	waitForVBlank
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L73
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L66
	ldr	r3, .L73+8
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L72
.L66:
	pop	{r4, lr}
	bx	lr
.L72:
	ldr	r3, .L73+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+16
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r2, .L73+20
	ldr	r3, .L73+24
	ldr	r1, .L73+28
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, lr}
	str	r0, [r1]
	b	goToStart
.L74:
	.align	2
.L73:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	setupSounds
	.word	setUpInterrupts
	.word	bullAmt
	.word	prizes
	.word	gameLives
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L77
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L77+4
	mov	lr, pc
	bx	r4
	mov	r3, #3184
	mov	r0, #3
	ldr	r2, .L77+8
	ldr	r1, .L77+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L77+16
	ldr	r1, .L77+20
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #2048
	ldr	r3, .L77+24
	strh	r1, [r2]	@ movhi
	ldr	r0, .L77+28
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L77+32
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L77+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+40
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L77+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L78:
	.align	2
.L77:
	.word	DMANow
	.word	newLosePal
	.word	100810752
	.word	newLoseTiles
	.word	100718592
	.word	newLoseMap
	.word	startSong_length
	.word	startSong_data
	.word	playSoundA
	.word	shadowOAM
	.word	waitForVBlank
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L81
	ldrh	r3, [r3, #48]
	tst	r3, #4
	bxne	lr
	b	lose.part.0
.L82:
	.align	2
.L81:
	.word	67109120
	.size	lose, .-lose
	.align	2
	.global	goToMiniGame1Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMiniGame1Screen, %function
goToMiniGame1Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L85
	mov	lr, pc
	bx	r5
	ldr	r4, .L85+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L85+8
	mov	lr, pc
	bx	r4
	mov	r3, #3776
	mov	r0, #3
	ldr	r2, .L85+12
	ldr	r1, .L85+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L85+20
	ldr	r1, .L85+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #2048
	ldr	r3, .L85+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L85+32
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #7
	ldr	r3, .L85+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L86:
	.align	2
.L85:
	.word	waitForVBlank
	.word	DMANow
	.word	trafficJumpScreenPal
	.word	100810752
	.word	trafficJumpScreenTiles
	.word	100718592
	.word	trafficJumpScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToMiniGame1Screen, .-goToMiniGame1Screen
	.align	2
	.global	goToMiniGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMiniGame1, %function
goToMiniGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L89
	ldr	r4, .L89+4
	mov	lr, pc
	bx	r6
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L89+8
	mov	lr, pc
	bx	r4
	mov	r3, #176
	mov	r0, #3
	ldr	r2, .L89+12
	ldr	r1, .L89+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+20
	ldr	r1, .L89+24
	mov	lr, pc
	bx	r4
	mov	r3, #3728
	mov	r0, #3
	ldr	r2, .L89+28
	ldr	r1, .L89+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L89+36
	ldr	r1, .L89+40
	mov	lr, pc
	bx	r4
	mov	r5, #0
	mov	r3, #67108864
	mov	r1, #5632
	strh	r5, [r3, #20]	@ movhi
	ldr	r2, .L89+44
	strh	r5, [r3, #24]	@ movhi
	strh	r1, [r3]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L89+48
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	mov	r0, #8
	ldr	r3, .L89+52
	ldr	r2, .L89+56
	str	r5, [r2]
	ldrh	r2, [r3, #10]
	orr	r2, r2, #128
	strh	r2, [r3, #10]	@ movhi
	ldrh	r2, [r3, #14]
	ldr	r1, .L89+60
	orr	r2, r2, #128
	strh	r2, [r3, #14]	@ movhi
	pop	{r4, r5, r6, lr}
	str	r0, [r1]
	bx	lr
.L90:
	.align	2
.L89:
	.word	waitForVBlank
	.word	DMANow
	.word	highwayRoadPal
	.word	100958208
	.word	highwayRoadTiles
	.word	100716544
	.word	highwayRoadMap
	.word	100810752
	.word	highwayBkgTiles
	.word	100718592
	.word	highwayBkgMap
	.word	hideSprites
	.word	shadowOAM
	.word	67109120
	.word	time_s
	.word	state
	.size	goToMiniGame1, .-goToMiniGame1
	.align	2
	.global	miniGame1Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame1Screen, %function
miniGame1Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L96
	ldrh	r3, [r3, #48]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L96+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToMiniGame1
.L97:
	.align	2
.L96:
	.word	67109120
	.word	initGame
	.size	miniGame1Screen, .-miniGame1Screen
	.align	2
	.global	miniGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame1, %function
miniGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L107
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L99
	ldr	r3, .L107+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L105
.L99:
	ldr	r3, .L107+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L106
.L100:
	ldr	r3, .L107+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+16
	mov	lr, pc
	bx	r3
	mov	ip, #67108864
	ldr	r0, .L107+20
	ldr	r2, [r0]
	lsl	r1, r2, #16
	lsr	r1, r1, #16
	rsb	r3, r1, #0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r1, [ip, #20]	@ movhi
	add	r2, r2, #1
	strh	r3, [ip, #24]	@ movhi
	ldr	r1, .L107+24
	str	r2, [r0]
	ldr	r4, .L107+28
	mov	lr, pc
	bx	r1
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L107+32
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L106:
	mov	r1, #0
	ldr	r2, .L107+36
	ldr	r3, .L107+40
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L100
.L105:
	bl	goToPause
	b	.L99
.L108:
	.align	2
.L107:
	.word	oldButtons
	.word	buttons
	.word	prizes
	.word	updateGame
	.word	drawGame
	.word	hOff
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	level
	.word	initGame
	.size	miniGame1, .-miniGame1
	.align	2
	.global	goToMiniGame2Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMiniGame2Screen, %function
goToMiniGame2Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L111
	mov	lr, pc
	bx	r5
	ldr	r4, .L111+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L111+8
	mov	lr, pc
	bx	r4
	mov	r3, #2608
	mov	r0, #3
	ldr	r2, .L111+12
	ldr	r1, .L111+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L111+20
	ldr	r1, .L111+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #2048
	ldr	r3, .L111+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L111+32
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #9
	ldr	r3, .L111+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L112:
	.align	2
.L111:
	.word	waitForVBlank
	.word	DMANow
	.word	spaceInvScPal
	.word	100810752
	.word	spaceInvScTiles
	.word	100718592
	.word	spaceInvScMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToMiniGame2Screen, .-goToMiniGame2Screen
	.align	2
	.global	goToMiniGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMiniGame2, %function
goToMiniGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L115
	mov	lr, pc
	bx	r5
	ldr	r4, .L115+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L115+8
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r0, #3
	ldr	r2, .L115+12
	ldr	r1, .L115+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L115+20
	ldr	r1, .L115+24
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #0
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	ldr	r2, .L115+28
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L115+32
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #10
	ldr	r3, .L115+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L116:
	.align	2
.L115:
	.word	waitForVBlank
	.word	DMANow
	.word	skyfallPal
	.word	100810752
	.word	skyfallTiles
	.word	100718592
	.word	skyfallMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToMiniGame2, .-goToMiniGame2
	.align	2
	.global	miniGame2Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame2Screen, %function
miniGame2Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L122
	ldrh	r3, [r3, #48]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L122+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToMiniGame2
.L123:
	.align	2
.L122:
	.word	67109120
	.word	initGame
	.size	miniGame2Screen, .-miniGame2Screen
	.align	2
	.global	miniGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame2, %function
miniGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L133
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L125
	ldr	r3, .L133+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L131
.L125:
	ldr	r3, .L133+8
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L132
.L126:
	ldr	r3, .L133+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L133+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L133+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L133+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L133+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L132:
	mov	r1, #0
	ldr	r2, .L133+32
	ldr	r3, .L133+36
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L126
.L131:
	bl	goToPause
	b	.L125
.L134:
	.align	2
.L133:
	.word	oldButtons
	.word	buttons
	.word	prizes
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	level
	.word	initGame
	.size	miniGame2, .-miniGame2
	.align	2
	.global	goToMiniGame3Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMiniGame3Screen, %function
goToMiniGame3Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L137
	mov	lr, pc
	bx	r5
	ldr	r4, .L137+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L137+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L137+12
	ldr	r2, .L137+16
	ldr	r1, .L137+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+28
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #2048
	ldr	r3, .L137+32
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L137+36
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #11
	ldr	r3, .L137+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L138:
	.align	2
.L137:
	.word	waitForVBlank
	.word	DMANow
	.word	newWindowScPal
	.word	4496
	.word	100810752
	.word	newWindowScTiles
	.word	100718592
	.word	newWindowScMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToMiniGame3Screen, .-goToMiniGame3Screen
	.align	2
	.global	goToMiniGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMiniGame3, %function
goToMiniGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L141
	mov	lr, pc
	bx	r5
	ldr	r4, .L141+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L141+8
	mov	lr, pc
	bx	r4
	mov	r3, #2528
	mov	r0, #3
	ldr	r2, .L141+12
	ldr	r1, .L141+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L141+20
	ldr	r1, .L141+24
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #0
	mov	r2, #4608
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	ldr	r2, .L141+28
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L141+32
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #12
	ldr	r3, .L141+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L142:
	.align	2
.L141:
	.word	waitForVBlank
	.word	DMANow
	.word	windowPal
	.word	100810752
	.word	windowTiles
	.word	100718592
	.word	windowMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToMiniGame3, .-goToMiniGame3
	.align	2
	.global	miniGame3Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame3Screen, %function
miniGame3Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L148
	ldrh	r3, [r3, #48]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L148+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToMiniGame3
.L149:
	.align	2
.L148:
	.word	67109120
	.word	initGame
	.size	miniGame3Screen, .-miniGame3Screen
	.align	2
	.global	miniGame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame3, %function
miniGame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L159
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L151
	ldr	r3, .L159+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L157
.L151:
	ldr	r3, .L159+8
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L158
.L152:
	ldr	r3, .L159+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L159+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L159+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L159+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L159+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L158:
	mov	r1, #0
	ldr	r2, .L159+32
	ldr	r3, .L159+36
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L152
.L157:
	bl	goToPause
	b	.L151
.L160:
	.align	2
.L159:
	.word	oldButtons
	.word	buttons
	.word	prizes
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	level
	.word	initGame
	.size	miniGame3, .-miniGame3
	.align	2
	.global	goToSewerScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSewerScreen, %function
goToSewerScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L163
	mov	lr, pc
	bx	r5
	ldr	r4, .L163+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L163+8
	mov	lr, pc
	bx	r4
	mov	r3, #4000
	mov	r0, #3
	ldr	r2, .L163+12
	ldr	r1, .L163+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L163+20
	ldr	r1, .L163+24
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #2048
	ldr	r3, .L163+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L163+32
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #14
	ldr	r3, .L163+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L164:
	.align	2
.L163:
	.word	waitForVBlank
	.word	DMANow
	.word	sewerScreenPal
	.word	100810752
	.word	sewerScreenTiles
	.word	100718592
	.word	sewerScreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToSewerScreen, .-goToSewerScreen
	.align	2
	.global	goToSewer
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSewer, %function
goToSewer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L167
	mov	lr, pc
	bx	r5
	ldr	r3, .L167+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L167+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L167+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L167+16
	mov	lr, pc
	bx	r4
	mov	r3, #9152
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L167+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L167+24
	ldr	r1, .L167+28
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r1, #67108864
	mov	r0, #4352
	ldr	r3, .L167+32
	str	r2, [r3]
	strh	r2, [r1, #16]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	strh	r0, [r1]	@ movhi
	mov	r0, #3
	ldr	r1, .L167+36
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r2, #13
	ldr	r3, .L167+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L168:
	.align	2
.L167:
	.word	waitForVBlank
	.word	hideSprites
	.word	initGame
	.word	DMANow
	.word	sewerPal
	.word	sewerTiles
	.word	100720640
	.word	sewerMap
	.word	hOffBG0
	.word	shadowOAM
	.word	state
	.size	goToSewer, .-goToSewer
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L204
	ldr	r2, [r3]
	cmp	r2, #0
	push	{r4, lr}
	bne	.L197
.L170:
	ldr	r3, .L204+4
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L198
.L171:
	ldr	r3, .L204+8
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L199
.L172:
	ldr	r3, .L204+12
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L200
.L173:
	ldr	r3, .L204+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L174
	ldr	r3, .L204+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L201
.L174:
	ldr	r3, .L204+24
	ldr	r2, [r3]
	cmp	r2, #3
	beq	.L202
.L175:
	ldr	r2, .L204+28
	ldr	r3, [r2]
	cmp	r3, #1
	moveq	r0, #0
	ldr	r1, .L204+32
	ldr	r3, [r1]
	subeq	r3, r3, #1
	streq	r3, [r1]
	streq	r0, [r2]
	cmp	r3, #0
	beq	.L203
.L177:
	ldr	r3, .L204+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L204+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L204+44
	ldr	r3, [r3]
	cmp	r3, #0
	mov	r1, #67108864
	add	r2, r3, #3
	movge	r2, r3
	lsl	r0, r3, #16
	lsr	r0, r0, #16
	strh	r0, [r1, #16]	@ movhi
	asr	r2, r2, #2
	ldr	r0, .L204+48
	add	r3, r3, r3, lsr #31
	rsb	r2, r2, #0
	asr	r3, r3, #1
	ldrh	r0, [r0]
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	strh	r0, [r1, #18]	@ movhi
	strh	r3, [r1, #20]	@ movhi
	ldr	r0, .L204+52
	strh	r2, [r1, #24]	@ movhi
	mov	lr, pc
	bx	r0
	ldr	r4, .L204+56
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L204+60
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L202:
	ldr	r2, .L204+64
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.L175
	mov	r1, #0
	ldr	r0, .L204+68
	str	r1, [r2]
	str	r1, [r3]
	mov	lr, pc
	bx	r0
	bl	goToWin
	b	.L175
.L203:
	ldr	r3, .L204+68
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L177
.L200:
	mov	r0, #0
	mov	r1, #4
	ldr	r2, .L204+72
	str	r0, [r3]
	str	r1, [r2]
	bl	goToSewer
	b	.L173
.L199:
	mov	r0, #0
	mov	r1, #2
	ldr	r2, .L204+72
	str	r0, [r3]
	str	r1, [r2]
	bl	goToMiniGame2Screen
	b	.L172
.L198:
	mov	r0, #0
	mov	r1, #3
	ldr	r2, .L204+72
	str	r0, [r3]
	str	r1, [r2]
	bl	goToMiniGame3Screen
	b	.L171
.L197:
	mov	r0, #0
	mov	r1, #1
	ldr	r2, .L204+72
	str	r0, [r3]
	str	r1, [r2]
	bl	goToMiniGame1Screen
	b	.L170
.L201:
	bl	goToPause
	b	.L174
.L205:
	.align	2
.L204:
	.word	portalCollision1
	.word	portalCollision2
	.word	portalCollision3
	.word	sewerActivate
	.word	oldButtons
	.word	buttons
	.word	prizes
	.word	groundCollision
	.word	gameLives
	.word	updateGame
	.word	drawGame
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	winCollision
	.word	stopSound
	.word	level
	.size	game, .-game
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L221
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L206
	ldr	r3, .L221+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L206
	ldr	r3, .L221+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L216
	cmp	r3, #1
	beq	.L217
	cmp	r3, #2
	beq	.L218
	cmp	r3, #3
	beq	.L219
	cmp	r3, #4
	beq	.L220
.L206:
	pop	{r4, lr}
	bx	lr
.L216:
	pop	{r4, lr}
	b	goToGame
.L220:
	pop	{r4, lr}
	b	goToSewer
.L217:
	pop	{r4, lr}
	b	goToMiniGame1
.L218:
	pop	{r4, lr}
	b	goToMiniGame2
.L219:
	pop	{r4, lr}
	b	goToMiniGame3
.L222:
	.align	2
.L221:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	level
	.size	pause, .-pause
	.align	2
	.global	sewerScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	sewerScreen, %function
sewerScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L231
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L231+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r1, #4
	push	{r4, lr}
	ldr	r2, .L231+8
	ldr	r3, .L231+12
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToSewer
.L232:
	.align	2
.L231:
	.word	oldButtons
	.word	buttons
	.word	level
	.word	initGame
	.size	sewerScreen, .-sewerScreen
	.align	2
	.global	sewer
	.syntax unified
	.arm
	.fpu softvfp
	.type	sewer, %function
sewer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L245
	ldrh	r3, [r3]
	tst	r3, #4
	push	{r4, lr}
	beq	.L234
	ldr	r3, .L245+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L243
.L234:
	ldr	r3, .L245+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L244
.L235:
	ldr	r3, .L245+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L245+16
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L245+20
	ldrh	r1, [r2]
	ldr	r2, .L245+24
	strh	r1, [r3, #16]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L245+28
	strh	r1, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L245+32
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L245+36
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L244:
	mov	r3, #0
	ldr	r0, .L245+40
	ldr	r1, .L245+44
	ldr	r2, .L245+48
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	bl	goToGame
	b	.L235
.L243:
	bl	goToPause
	b	.L234
.L246:
	.align	2
.L245:
	.word	oldButtons
	.word	buttons
	.word	cheatPort1
	.word	updateGame
	.word	drawGame
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	sewerActivate
	.word	level
	.word	initGame
	.size	sewer, .-sewer
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r6, .L278
	ldr	r7, .L278+4
	ldr	r3, .L278+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L278+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L278+16
	ldr	r10, .L278+20
	ldr	r9, .L278+24
	ldr	r8, .L278+28
	ldr	r4, .L278+32
.L249:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #14
	ldrls	pc, [pc, r2, asl #2]
	b	.L268
.L251:
	.word	.L265
	.word	.L264
	.word	.L263
	.word	.L262
	.word	.L261
	.word	.L260
	.word	.L259
	.word	.L258
	.word	.L257
	.word	.L256
	.word	.L255
	.word	.L254
	.word	.L253
	.word	.L252
	.word	.L250
.L250:
	ldr	r3, .L278+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L252:
	ldr	r3, .L278+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L253:
	ldr	r3, .L278+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L254:
	ldr	r3, .L278+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L255:
	ldr	r3, .L278+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L256:
	ldr	r3, .L278+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L257:
	ldr	r3, .L278+60
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L258:
	ldr	r3, .L278+64
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L259:
	ldrh	r1, [r4, #48]
	tst	r1, #4
	beq	.L277
.L268:
	mov	r0, r3
	b	.L249
.L260:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L261:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L262:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L263:
	tst	r0, #2
	beq	.L268
	tst	r3, #2
	bne	.L268
.L267:
	ldr	r3, .L278+68
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L265:
	tst	r0, #8
	beq	.L268
	tst	r3, #8
	bne	.L268
	b	.L267
.L264:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L277:
	ldr	r3, .L278+72
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L249
.L279:
	.align	2
.L278:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	sewerScreen
	.word	sewer
	.word	miniGame3
	.word	miniGame3Screen
	.word	miniGame2
	.word	miniGame2Screen
	.word	miniGame1
	.word	miniGame1Screen
	.word	goToStart
	.word	lose.part.0
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	level,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	seed,4,4
	.comm	vOffBG0,4,4
	.comm	hOffBG0,4,4
	.comm	playerVoff,4,4
	.comm	playerHoff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
