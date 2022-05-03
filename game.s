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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L9
	ldr	r1, [r2, #36]
	ldr	r3, [r2, #28]
	add	r1, r1, #12
	add	r3, r3, r1, lsl #5
	ldr	r1, .L9+4
	lsl	r3, r3, #1
	ldr	r0, [r1]
	add	r3, r3, #1
	orr	r3, r3, #20480
	lsl	r3, r3, #16
	cmp	r0, #1
	ldrh	r1, [r2]
	str	lr, [sp, #-4]!
	ldr	r2, [r2, #4]
	lsr	r3, r3, #16
	beq	.L7
	ldr	ip, .L9+8
	ldr	lr, [ip]
	ldr	ip, .L9+12
	sub	r2, r2, lr
	ldr	ip, [ip]
	lsl	r2, r2, #23
	sub	r1, r1, ip
	lsr	r2, r2, #23
	cmp	r0, #4
	mov	ip, #67108864
	orr	r2, r2, #16384
	and	r1, r1, #255
	beq	.L8
	mov	lr, #0
	ldr	r0, .L9+16
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	lr, [ip, #80]	@ movhi
	strh	lr, [ip, #82]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L8:
	mov	lr, #336
	ldr	r0, .L9+16
	strh	r1, [r0]	@ movhi
	ldr	r1, .L9+20
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	lr, [ip, #80]	@ movhi
	strh	r1, [ip, #82]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L7:
	mov	lr, #0
	mov	ip, #67108864
	ldr	r0, .L9+16
	orr	r2, r2, #16384
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	lr, [ip, #80]	@ movhi
	strh	lr, [ip, #82]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	player
	.word	level
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	2056
	.size	drawPlayer.part.0, .-drawPlayer.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWinPortal.part.0, %function
drawWinPortal.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L12
	ldr	r0, .L12+4
	ldr	r1, .L12+8
	ldr	r3, [r2, #4]
	ldr	r0, [r0]
	ldr	r1, [r1]
	ldr	r2, [r2]
	sub	r3, r3, r0
	sub	r2, r2, r1
	ldr	r0, .L12+12
	lsl	r3, r3, #23
	ldr	r1, .L12+16
	ldr	ip, .L12+20
	lsr	r3, r3, #23
	and	r2, r2, #255
	orr	r3, r3, r0
	orr	r2, r2, r0
	strh	r3, [r1, #106]	@ movhi
	strh	r2, [r1, #104]	@ movhi
	strh	ip, [r1, #108]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
	.word	winPortal
	.word	hOff
	.word	vOff
	.word	-32768
	.word	shadowOAM
	.word	363
	.size	drawWinPortal.part.0, .-drawWinPortal.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullets.part.0, %function
drawBullets.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L16
	ldr	r2, .L16+4
	ldr	r3, .L16+8
	push	{r4, lr}
	ldr	r1, [r0]
	ldr	r4, [r2]
	ldr	lr, [r3]
	ldr	r2, [r0, #4]
	ldr	ip, [r0, #36]
	ldr	r3, [r0, #28]
	sub	r1, r1, r4
	ldr	r0, .L16+12
	sub	r2, r2, lr
	add	r3, r3, ip, lsl #5
	and	r1, r1, #255
	and	r2, r2, #255
	add	r3, r3, #37
	strh	r1, [r0, #112]	@ movhi
	strh	r2, [r0, #114]	@ movhi
	strh	r3, [r0, #116]	@ movhi
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	bullets
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.size	drawBullets.part.0, .-drawBullets.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMazePrize.part.0, %function
drawMazePrize.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #548
	ldr	r3, .L19
	ldm	r3, {r0, r2}
	ldr	r3, .L19+4
	orr	r2, r2, #16384
	strh	r2, [r3, #10]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	bx	lr
.L20:
	.align	2
.L19:
	.word	mazePrize
	.word	shadowOAM
	.size	drawMazePrize.part.0, .-drawMazePrize.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTruck.part.0, %function
drawTruck.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L22
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r3, [r1, #36]
	ldr	r0, [r1, #28]
	lsl	r3, r3, #4
	add	r3, r3, #136
	add	r3, r3, r0
	ldr	r0, [r1]
	lsl	r3, r3, #2
	ldr	r1, .L22+4
	add	r3, r3, #21
	orr	r0, r0, #16384
	strh	r3, [r1, #28]	@ movhi
	strh	r0, [r1, #24]	@ movhi
	strh	r2, [r1, #26]	@ movhi
	bx	lr
.L23:
	.align	2
.L22:
	.word	truck
	.word	shadowOAM
	.size	drawTruck.part.0, .-drawTruck.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCarA.part.0, %function
drawCarA.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L26
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L26+4
	str	lr, [sp, #-4]!
	ldr	r2, [r1, #36]
	ldr	lr, .L26+8
	ldr	r0, [r0]
	ldr	ip, [r1, #28]
	add	r0, r0, r2, lsl #1
	ldr	r2, [lr]
	add	ip, ip, r0, lsl #3
	ldr	r0, [r1]
	add	r2, r2, ip, lsl #2
	ldr	r1, .L26+12
	orr	r2, r2, #36864
	orr	r0, r0, #16384
	strh	r2, [r1, #36]	@ movhi
	strh	r0, [r1, #32]	@ movhi
	strh	r3, [r1, #34]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L27:
	.align	2
.L26:
	.word	carA
	.word	row
	.word	col
	.word	shadowOAM
	.size	drawCarA.part.0, .-drawCarA.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCarB.part.0, %function
drawCarB.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L30
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L30+4
	str	lr, [sp, #-4]!
	ldr	r2, [r1, #36]
	ldr	lr, .L30+8
	ldr	r0, [r0]
	ldr	ip, [r1, #28]
	add	r0, r0, r2, lsl #1
	ldr	r2, [lr]
	add	ip, ip, r0, lsl #3
	ldr	r0, [r1]
	add	r2, r2, ip, lsl #2
	ldr	r1, .L30+12
	orr	r2, r2, #40960
	orr	r0, r0, #16384
	strh	r2, [r1, #44]	@ movhi
	strh	r0, [r1, #40]	@ movhi
	strh	r3, [r1, #42]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	carB
	.word	rowB
	.word	colB
	.word	shadowOAM
	.size	drawCarB.part.0, .-drawCarB.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSkyPrize.part.0, %function
updateSkyPrize.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L35
	ldr	r3, [r2]
	cmp	r3, #123
	movgt	r3, #124
	addle	r3, r3, #2
	str	r3, [r2]
	bx	lr
.L36:
	.align	2
.L35:
	.word	skyPrize
	.size	updateSkyPrize.part.0, .-updateSkyPrize.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSkyPrize.part.0, %function
drawSkyPrize.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L38
	ldr	r3, .L38+4
	ldr	r2, [r1, #4]
	ldr	ip, [r1]
	ldr	r0, .L38+8
	add	r1, r3, #368
	orr	r2, r2, #16384
	add	r3, r3, #372
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r3]	@ movhi
	bx	lr
.L39:
	.align	2
.L38:
	.word	skyPrize
	.word	shadowOAM
	.word	646
	.size	drawSkyPrize.part.0, .-drawSkyPrize.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLaserPortal.part.0, %function
drawLaserPortal.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #137
	ldr	r3, .L41
	ldr	r0, .L41+4
	ldm	r3, {r1, r2}
	ldr	r3, .L41+8
	orr	r1, r1, r0
	orr	r2, r2, r0
	strh	r1, [r3, #240]	@ movhi
	strh	r2, [r3, #242]	@ movhi
	strh	ip, [r3, #244]	@ movhi
	bx	lr
.L42:
	.align	2
.L41:
	.word	laserPortal
	.word	-32768
	.word	shadowOAM
	.size	drawLaserPortal.part.0, .-drawLaserPortal.part.0
	.global	__aeabi_idivmod
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets.part.0, %function
updateBullets.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L52
	push	{r4, r5, r6, lr}
	ldr	r4, .L52+4
	ldr	r1, [r3]
	ldr	ip, [r4, #12]
	ldr	r3, [r4, #4]
	add	r0, r1, #239
	add	r2, r3, ip
	cmp	r0, r2
	cmpge	r3, #2
	movgt	r3, r2
	strgt	r2, [r4, #4]
	addgt	r2, ip, r2
	cmp	r0, r2
	bge	.L45
	mov	r2, #0
	ldr	r0, .L52+8
	ldr	r0, [r0]
	ldr	ip, .L52+12
	str	r2, [r0, #32]
	ldr	r0, .L52+16
	str	r2, [r4, #56]
	str	r2, [ip, #12]
	strh	r2, [r0, #6]	@ movhi
.L45:
	cmp	r1, r3
	blt	.L46
	mov	r3, #0
	ldr	r2, .L52+8
	ldr	r1, .L52+12
	ldr	r0, [r2]
	ldr	r2, .L52+16
	str	r3, [r0, #32]
	str	r3, [r1, #12]
	str	r3, [r4, #56]
	strh	r3, [r2, #6]	@ movhi
.L46:
	ldr	r5, [r4, #24]
	tst	r5, #7
	bne	.L47
	ldr	r0, [r4, #36]
	ldr	r3, .L52+20
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L47:
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	hOff
	.word	bullets
	.word	dma
	.word	soundB
	.word	67109120
	.word	__aeabi_idivmod
	.size	updateBullets.part.0, .-updateBullets.part.0
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L78
	ldr	r2, [r3]
	cmp	r2, #0
	push	{r4, lr}
	bne	.L55
	ldr	r3, .L78+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L74
	ldr	r3, .L78+8
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L57
	ldr	r3, .L78+12
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L64
	mov	r1, #1
	mov	r4, #428
	mov	ip, #2
	mov	r0, #252
	str	r2, [r3]
	ldr	lr, .L78+16
	ldr	r3, .L78+20
	ldr	r2, .L78+24
	str	r4, [r3, #4]
	str	lr, [r3]
	str	ip, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [r3, #28]
	str	r0, [r2]
	b	.L56
.L55:
	cmp	r2, #1
	bne	.L61
	mov	ip, #226
	mov	r0, #103
	mov	r2, #2
	mov	r1, #0
	ldr	r3, .L78+20
	stm	r3, {r0, ip}
	str	r1, [r3, #28]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
.L56:
	mov	r2, #0
	mov	r1, #16
	mov	ip, #3
	mov	r0, #1
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	ip, [r3, #40]
	str	r0, [r3, #56]
	pop	{r4, lr}
	bx	lr
.L57:
	cmp	r2, #1
	beq	.L76
	cmp	r2, #2
	moveq	ip, #400
	moveq	r0, #296
	beq	.L75
	cmp	r2, #3
	beq	.L71
.L74:
	ldr	r3, .L78+20
	b	.L56
.L61:
	cmp	r2, #2
	beq	.L77
	cmp	r2, #3
	bne	.L63
	mov	r2, #1
	mov	r0, #0
	mov	r1, #128
	ldr	r3, .L78+20
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	b	.L56
.L77:
	mov	ip, #0
	mov	r0, #128
.L75:
	mov	r1, #1
	ldr	r3, .L78+20
	str	ip, [r3, #4]
	str	r2, [r3, #12]
	str	r0, [r3]
	str	r1, [r3, #8]
	str	r1, [r3, #28]
	b	.L56
.L63:
	cmp	r2, #4
	bne	.L74
.L64:
	mov	ip, #0
	mov	r0, #488
.L73:
	mov	r2, #1
	mov	r1, #2
	ldr	r3, .L78+20
	stm	r3, {r0, ip}
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	b	.L56
.L76:
	mov	ip, #440
	mov	r1, #2
	ldr	r3, .L78+20
	ldr	r0, .L78+28
	str	ip, [r3]
	str	r2, [r3, #8]
	str	r2, [r3, #28]
	str	r0, [r3, #4]
	str	r1, [r3, #12]
	b	.L56
.L71:
	mov	ip, #176
	mov	r0, #224
	b	.L73
.L79:
	.align	2
.L78:
	.word	level
	.word	needToPlace
	.word	prizes
	.word	cheatPort1
	.word	411
	.word	player
	.word	hOff
	.word	490
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L84
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L81
	ldr	r2, .L84+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L81:
	b	drawPlayer.part.0
.L85:
	.align	2
.L84:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #5
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L127
	add	r1, r4, #24
	ldm	r1, {r1, r2}
	tst	r1, #7
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #20
	bne	.L87
	ldr	r0, [r4, #36]
	ldr	r3, .L127+4
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L87:
	mov	r0, #0
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #16]
	ldr	r6, .L127+8
	add	r3, r3, #1
	str	r3, [sp, #4]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	r2, [sp]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	r1, #512
	ldr	r0, [r6]
	ldr	r7, .L127+12
	mov	lr, pc
	bx	r7
	rsbs	r0, r0, #1
	movcc	r0, #0
	ldr	r3, .L127+16
	ldrh	r2, [r3, #48]
	ldr	r5, .L127+20
	tst	r2, #64
	str	r0, [r5]
	bne	.L88
	ldr	r2, [r4, #32]
	cmp	r2, #0
	bne	.L88
	ldr	r2, [r4, #48]
	cmp	r2, #0
	movne	r3, #3
	strne	r3, [r4, #28]
	beq	.L121
.L90:
	ldr	r2, .L127+16
	ldrh	r3, [r2, #48]
	ands	r3, r3, #32
	bne	.L95
.L123:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	str	r3, [r4, #28]
	bne	.L97
.L98:
	mov	r3, #1
	str	r3, [r4, #28]
.L97:
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L88:
	ldr	r3, .L127+16
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L91
	ldr	r2, [r4, #32]
	cmp	r2, #1
	beq	.L122
.L91:
	ldr	r3, .L127+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L90
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L102
	ldr	r2, .L127+16
	ldrh	r3, [r2, #48]
	ands	r3, r3, #32
	beq	.L123
.L95:
	ldrh	r3, [r2, #48]
	tst	r3, #16
	beq	.L98
	ldr	r3, [r4, #28]
	cmp	r3, #5
	bne	.L97
	ldr	r3, [r4, #32]
	cmp	r3, #3
	beq	.L124
	cmp	r3, #4
	beq	.L125
.L100:
	mov	r2, #0
	str	r3, [r4, #28]
	str	r2, [r4, #36]
	str	r2, [r4, #24]
.L126:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L122:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	movne	r3, #4
	strne	r3, [r4, #28]
	bne	.L90
.L119:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L90
.L102:
	mov	ip, #0
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	rsb	r3, r3, #0
	stmib	sp, {r1, ip}
	str	r3, [sp, #12]
	str	r2, [sp]
	mov	r1, #512
	ldr	r0, [r6, #4]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #2
	streq	r0, [r4, #28]
	b	.L90
.L121:
	ldrh	r2, [r3, #48]
	b	.L119
.L125:
	ldr	r2, [r5]
	cmp	r2, #0
	movne	r2, #1
	movne	r3, r2
	strne	r2, [r4, #32]
	b	.L100
.L124:
	ldr	r2, [r5]
	cmp	r2, #0
	movne	r3, #0
	mov	r2, #0
	strne	r3, [r4, #32]
	str	r3, [r4, #28]
	str	r2, [r4, #36]
	str	r2, [r4, #24]
	b	.L126
.L128:
	.align	2
.L127:
	.word	player
	.word	__aeabi_idivmod
	.word	.LANCHOR0
	.word	collisionCheck
	.word	67109120
	.word	isGrounded
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	initPrizeSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPrizeSB, %function
initPrizeSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #2
	mov	r4, #1
	mov	lr, #10
	ldr	r2, .L133
	sub	sp, sp, #16
	ldm	r2, {r0, r1, r2}
	add	r3, sp, #4
	mov	ip, r3
	stm	r3, {r0, r1, r2}
	ldr	r3, .L133+4
	add	r6, sp, #16
.L130:
	ldr	r2, [ip], #4
	cmp	ip, r6
	str	r5, [r3]
	str	r4, [r3, #56]
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3, #4]
	add	r3, r3, #64
	bne	.L130
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L134:
	.align	2
.L133:
	.word	.LANCHOR1
	.word	prize
	.size	initPrizeSB, .-initPrizeSB
	.align	2
	.global	updatePrizeSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePrizeSB, %function
updatePrizeSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L147
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L144
	cmp	r3, #2
	bne	.L145
	mov	r2, #1
	mov	r1, #0
	ldr	r3, .L147+4
	str	r2, [r3, #56]
	str	r2, [r3, #120]
	str	r1, [r3, #184]
	bx	lr
.L145:
	cmp	r3, #3
	bne	.L146
	mov	r2, #1
	ldr	r3, .L147+4
	str	r2, [r3, #56]
	str	r2, [r3, #120]
	str	r2, [r3, #184]
	bx	lr
.L146:
	cmp	r3, #0
	ldreq	r2, .L147+4
	streq	r3, [r2, #56]
	streq	r3, [r2, #120]
	streq	r3, [r2, #184]
	bx	lr
.L144:
	mov	r1, #0
	ldr	r2, .L147+4
	str	r1, [r2, #120]
	str	r3, [r2, #56]
	str	r1, [r2, #184]
	bx	lr
.L148:
	.align	2
.L147:
	.word	prizes
	.word	prize
	.size	updatePrizeSB, .-updatePrizeSB
	.align	2
	.global	drawPrizeSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPrizeSB, %function
drawPrizeSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L155
	push	{r4, lr}
	ldr	r2, .L155+4
	ldr	r4, .L155+8
	ldr	lr, .L155+12
	add	ip, r3, #24
.L152:
	ldr	r0, [r2, #56]
	ldrh	r1, [r2, #4]
	cmp	r0, #0
	ldrh	r0, [r2]
	orr	r1, r1, #16384
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strhne	lr, [r3, #12]	@ movhi
	strheq	r4, [r3, #12]	@ movhi
	add	r3, r3, #8
	cmp	ip, r3
	add	r2, r2, #64
	bne	.L152
	pop	{r4, lr}
	bx	lr
.L156:
	.align	2
.L155:
	.word	shadowOAM
	.word	prize
	.word	355
	.word	419
	.size	drawPrizeSB, .-drawPrizeSB
	.align	2
	.global	initLivesSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLivesSB, %function
initLivesSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #460
	mov	lr, #0
	mov	r5, #1
	mov	r4, #5
	ldr	r2, .L161
	sub	sp, sp, #20
	ldm	r2, {r0, r1, r2}
	add	r3, sp, #4
	mov	ip, r3
	stm	r3, {r0, r1, r2}
	ldr	r3, .L161+4
	add	r7, sp, #16
.L158:
	ldr	r2, [ip], #4
	cmp	ip, r7
	str	r6, [r3]
	str	lr, [r3, #28]
	str	lr, [r3, #36]
	str	r5, [r3, #56]
	str	r4, [r3, #40]
	str	r2, [r3, #4]
	add	r3, r3, #64
	bne	.L158
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L162:
	.align	2
.L161:
	.word	.LANCHOR1+12
	.word	lives
	.size	initLivesSB, .-initLivesSB
	.align	2
	.global	drawLivesSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLivesSB, %function
drawLivesSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, lr}
	mov	r0, r3
	mov	lr, #1
	ldr	r2, .L176
	ldr	r1, .L176+4
	ldr	r2, [r2]
	add	ip, r1, #56
.L167:
	cmp	r2, #2
	beq	.L174
	cmp	r2, #1
	beq	.L175
	cmp	r2, #3
	streq	lr, [ip, r3, lsl #6]
.L165:
	add	r3, r3, #1
	cmp	r3, #3
	bne	.L167
	mov	r5, #512
	mov	r4, #2
	ldr	r3, .L176+8
	ldr	r2, .L176+4
	ldr	lr, .L176+12
	add	ip, r3, #24
.L170:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	strheq	r5, [r3, #32]	@ movhi
	beq	.L169
	ldr	r0, [r2, #36]
	ldr	r1, [r2, #28]
	add	r1, r1, r0, lsl #5
	ldr	r0, [r2, #4]
	add	r1, r1, #260
	add	r1, r1, #3
	and	r0, r0, lr
	strh	r4, [r3, #32]	@ movhi
	strh	r1, [r3, #36]	@ movhi
	strh	r0, [r3, #34]	@ movhi
.L169:
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #64
	bne	.L170
	pop	{r4, r5, lr}
	bx	lr
.L175:
	str	r0, [r1, #120]
.L174:
	str	r0, [r1, #184]
	b	.L165
.L177:
	.align	2
.L176:
	.word	gameLives
	.word	lives
	.word	shadowOAM
	.word	511
	.size	drawLivesSB, .-drawLivesSB
	.align	2
	.global	animateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateLives, %function
animateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L187
	ldr	r7, .L187+4
	ldr	r8, .L187+8
	add	r6, r4, #192
.L181:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L179
	ldr	r5, [r4, #24]
	rsb	r3, r5, r5, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r5, r3, lsl #3
	rsb	r3, r3, r3, lsl #15
	add	r3, r5, r3, lsl #3
	add	r3, r3, r7
	cmp	r7, r3, ror #1
	bcc	.L180
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r8
	str	r1, [r4, #36]
.L180:
	add	r5, r5, #1
	str	r5, [r4, #24]
.L179:
	add	r4, r4, #64
	cmp	r4, r6
	bne	.L181
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L188:
	.align	2
.L187:
	.word	lives
	.word	238609294
	.word	__aeabi_idivmod
	.size	animateLives, .-animateLives
	.align	2
	.global	drawBallSymbolSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallSymbolSB, %function
drawBallSymbolSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #2
	mov	r1, #110
	mov	r2, #45
	ldr	r3, .L190
	strh	r0, [r3, #56]	@ movhi
	strh	r1, [r3, #58]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	bx	lr
.L191:
	.align	2
.L190:
	.word	shadowOAM
	.size	drawBallSymbolSB, .-drawBallSymbolSB
	.align	2
	.global	initBallSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBallSB, %function
initBallSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #8
	mov	r0, #10
	mov	r1, #0
	ldr	r3, .L193
	ldr	r2, .L193+4
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #40]
	str	r1, [r3, #36]
	str	r0, [r2, #40]
	str	r1, [r2, #36]
	bx	lr
.L194:
	.align	2
.L193:
	.word	ballAmount1
	.word	ballAmount2
	.size	initBallSB, .-initBallSB
	.align	2
	.global	updateBallSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBallSB, %function
updateBallSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L196
	ldr	r2, .L196+4
	ldr	r3, [r3]
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	ldr	r0, .L196+8
	ldr	r1, .L196+12
	add	ip, r2, r2, lsl #2
	sub	r3, r3, ip, lsl #1
	str	r2, [r0, #36]
	str	r3, [r1, #36]
	bx	lr
.L197:
	.align	2
.L196:
	.word	collectedBalls
	.word	1717986919
	.word	ballAmount1
	.word	ballAmount2
	.size	updateBallSB, .-updateBallSB
	.align	2
	.global	drawBallAmountSB
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallAmountSB, %function
drawBallAmountSB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r0, #2
	mov	lr, #119
	mov	ip, #125
	ldr	r2, .L200
	ldr	r3, .L200+4
	ldr	r1, [r2, #36]
	ldr	r2, [r3, #36]
	lsl	r1, r1, #5
	ldr	r3, .L200+8
	lsl	r2, r2, #5
	add	r1, r1, #12
	add	r2, r2, #12
	strh	lr, [r3, #66]	@ movhi
	strh	r1, [r3, #68]	@ movhi
	strh	ip, [r3, #74]	@ movhi
	strh	r2, [r3, #76]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L201:
	.align	2
.L200:
	.word	ballAmount1
	.word	ballAmount2
	.word	shadowOAM
	.size	drawBallAmountSB, .-drawBallAmountSB
	.align	2
	.global	initPortals
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPortals, %function
initPortals:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #32
	push	{r4, r5, lr}
	mov	r5, #13
	mov	r4, #320
	mov	lr, #280
	mov	ip, #16
	mov	r0, #24
	mov	r1, #232
	ldr	r3, .L204
	str	r2, [r3, #16]
	ldr	r2, .L204+4
	str	r2, [r3, #4]
	add	r2, r2, #47
	str	r5, [r3, #20]
	str	r2, [r3]
	ldr	r2, .L204+8
	ldr	r3, .L204+12
	str	r4, [r2, #4]
	str	lr, [r2]
	str	ip, [r2, #16]
	str	r0, [r2, #20]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #4]
	str	r1, [r3]
	pop	{r4, r5, lr}
	bx	lr
.L205:
	.align	2
.L204:
	.word	portal1
	.word	418
	.word	portal2
	.word	portal3
	.size	initPortals, .-initPortals
	.align	2
	.global	drawPortals
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPortals, %function
drawPortals:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L214
	ldr	r2, [r3, #56]
	cmp	r2, #0
	str	lr, [sp, #-4]!
	beq	.L207
	ldr	r1, .L214+4
	ldr	r2, [r3, #4]
	ldr	r1, [r1]
	sub	r2, r2, r1
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mov	r0, #193
	mvn	r2, r2, lsr #17
	ldr	ip, .L214+8
	ldr	r1, [r3]
	ldr	r3, [ip]
	sub	r1, r1, r3
	and	r1, r1, #255
	ldr	r3, .L214+12
	orr	r1, r1, #16384
	strh	r2, [r3, #82]	@ movhi
	strh	r1, [r3, #80]	@ movhi
	strh	r0, [r3, #84]	@ movhi
.L208:
	ldr	r1, .L214+16
	ldr	r2, [r1, #56]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r3, #88]	@ movhi
	beq	.L210
	mov	ip, #137
	ldr	r2, .L214+4
	ldr	r0, .L214+8
	ldr	lr, [r2]
	ldm	r1, {r1, r2}
	ldr	r0, [r0]
	sub	r2, r2, lr
	sub	r1, r1, r0
	lsl	r2, r2, #23
	ldr	r0, .L214+20
	lsr	r2, r2, #23
	and	r1, r1, #255
	orr	r2, r2, r0
	orr	r1, r1, r0
	strh	r2, [r3, #90]	@ movhi
	strh	r1, [r3, #88]	@ movhi
	strh	ip, [r3, #92]	@ movhi
.L210:
	ldr	r1, .L214+24
	ldr	r2, [r1, #56]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r3, #96]	@ movhi
	beq	.L206
	ldr	r2, .L214+4
	ldr	r0, .L214+8
	ldr	ip, [r2]
	ldm	r1, {r1, r2}
	ldr	r0, [r0]
	sub	r2, r2, ip
	sub	r1, r1, r0
	lsl	r2, r2, #23
	ldr	r0, .L214+20
	ldr	ip, .L214+28
	lsr	r2, r2, #23
	and	r1, r1, #255
	orr	r2, r2, r0
	orr	r1, r1, r0
	strh	r2, [r3, #98]	@ movhi
	strh	r1, [r3, #96]	@ movhi
	strh	ip, [r3, #100]	@ movhi
.L206:
	ldr	lr, [sp], #4
	bx	lr
.L207:
	mov	r2, #512
	ldr	r3, .L214+12
	strh	r2, [r3, #80]	@ movhi
	b	.L208
.L215:
	.align	2
.L214:
	.word	portal1
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	portal2
	.word	-32768
	.word	portal3
	.word	265
	.size	drawPortals, .-drawPortals
	.align	2
	.global	initWinPortal
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWinPortal, %function
initWinPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #496
	mov	r0, #128
	mov	r1, #1
	ldr	r3, .L217
	stm	r3, {r0, ip}
	str	r1, [r3, #56]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L218:
	.align	2
.L217:
	.word	winPortal
	.size	initWinPortal, .-initWinPortal
	.align	2
	.global	drawWinPortal
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWinPortal, %function
drawWinPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L221
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawWinPortal.part.0
.L220:
	mov	r2, #512
	ldr	r3, .L221+4
	strh	r2, [r3, #104]	@ movhi
	bx	lr
.L222:
	.align	2
.L221:
	.word	winPortal
	.word	shadowOAM
	.size	drawWinPortal, .-drawWinPortal
	.align	2
	.global	initEnemyP0
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemyP0, %function
initEnemyP0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #32
	mov	r10, sp
	add	r5, sp, #16
	mov	lr, r10
	mov	r8, r5
	mov	ip, #1
	mov	r7, #8
	mov	r6, #0
	mov	r9, #3
	ldr	r4, .L227
	ldm	r4, {r0, r1, r2, r3}
	add	r4, r4, #16
	stm	r10, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	stm	r5, {r0, r1, r2, r3}
	ldr	r3, .L227+4
.L224:
	ldr	r1, [lr], #4
	ldr	r2, [r8], #4
	cmp	lr, r5
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r7, [r3, #16]
	str	r7, [r3, #20]
	str	ip, [r3, #56]
	str	r6, [r3, #36]
	str	r9, [r3, #40]
	str	r6, [r3, #24]
	str	r1, [r3, #4]
	str	r2, [r3]
	add	r3, r3, #64
	bne	.L224
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L228:
	.align	2
.L227:
	.word	.LANCHOR1+24
	.word	enemies0
	.size	initEnemyP0, .-initEnemyP0
	.align	2
	.global	updateEnemyP0
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemyP0, %function
updateEnemyP0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L262
	ldr	r9, .L262+4
	ldr	fp, .L262+8
	ldr	r6, .L262+12
	ldr	r10, .L262+16
	ldr	r7, .L262+20
	sub	sp, sp, #20
	add	r8, r4, #256
.L240:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	ldr	r3, [r4, #24]
	beq	.L237
	smull	r2, r5, r9, r3
	sub	r5, r5, r3, asr #31
	add	r5, r5, r5, lsl #1
	subs	r5, r3, r5
	asr	r2, r3, #31
	beq	.L254
	ldr	r5, [r4, #4]
.L231:
	smull	r0, r1, fp, r3
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	bne	.L235
	ldr	r0, [r4, #36]
	ldr	r3, .L262+24
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L235:
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	ldm	r6, {r2, r3}
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	mov	r0, r5
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	mov	lr, pc
	bx	r10
	subs	r5, r0, #0
	beq	.L260
	mov	r0, #0
	ldr	r1, .L262+28
	ldr	r3, [r4, #60]
	ldr	r2, [r1]
	add	r3, r3, #1
	sub	r2, r2, #1
	str	r3, [r4, #60]
	str	r2, [r1]
	str	r0, [r4, #56]
	ldr	r3, [r4, #24]
.L237:
	add	r3, r3, #1
	str	r3, [r4, #24]
	add	r4, r4, #64
	cmp	r4, r8
	bne	.L240
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L260:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L259
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L259
	ldm	r7, {r2, r3}
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L259
	ldr	r3, .L262+32
	ldr	r3, [r3]
	ldr	r2, .L262+36
	str	r5, [r3, #32]
	ldr	r3, .L262+40
	str	r5, [r7, #56]
	str	r5, [r3, #12]
	ldr	r3, [r4, #24]
	strh	r5, [r2, #6]	@ movhi
	str	r5, [r4, #56]
	b	.L237
.L259:
	ldr	r3, [r4, #24]
	b	.L237
.L254:
	add	r1, r4, #12
	ldm	r1, {r1, r2, r3}
	sub	r3, r3, #1
	str	r3, [sp, #4]
	str	r5, [sp, #12]
	ldr	r3, .L262+44
	ldr	ip, .L262+48
	ldr	r0, [r3, #8]
	str	r1, [sp, #8]
	str	r2, [sp]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L261
.L232:
	ldr	r3, [r4, #12]
	rsb	r3, r3, #0
	str	r3, [r4, #12]
.L233:
	ldr	r5, [r4, #4]
	ldr	r2, [r4, #56]
	add	r5, r5, r3
	ldr	r3, [r4, #24]
	cmp	r2, #0
	str	r5, [r4, #4]
	asrne	r2, r3, #31
	bne	.L231
	b	.L237
.L261:
	add	r1, r4, #16
	ldm	r1, {r1, r3}
	ldr	r2, [r4, #12]
	str	r5, [sp, #12]
	ldr	r0, .L262+44
	rsb	r2, r2, #0
	sub	r3, r3, #1
	ldr	r0, [r0, #8]
	ldr	ip, .L262+48
	stm	sp, {r1, r3}
	str	r2, [sp, #8]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L232
	ldr	r3, [r4, #12]
	b	.L233
.L263:
	.align	2
.L262:
	.word	enemies0
	.word	1431655766
	.word	1717986919
	.word	player
	.word	collision
	.word	bullets
	.word	__aeabi_idivmod
	.word	gameLives
	.word	dma
	.word	67109120
	.word	soundB
	.word	.LANCHOR0
	.word	collisionCheck
	.size	updateEnemyP0, .-updateEnemyP0
	.align	2
	.global	drawEnemyP0
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemyP0, %function
drawEnemyP0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L270
	ldr	r1, .L270+4
	ldr	r3, .L270+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L270+12
	ldr	r4, .L270+16
	add	lr, r3, #32
.L267:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	strheq	r7, [r3, #120]	@ movhi
	beq	.L266
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r8, [r2, #36]
	ldr	r1, [r2, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r8, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #34
	strh	ip, [r3, #120]	@ movhi
	strh	r0, [r3, #122]	@ movhi
	strh	r1, [r3, #124]	@ movhi
.L266:
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #64
	bne	.L267
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L271:
	.align	2
.L270:
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	enemies0
	.word	511
	.size	drawEnemyP0, .-drawEnemyP0
	.align	2
	.global	initEnemyP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemyP1, %function
initEnemyP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #76
	mov	r10, sp
	add	r4, sp, #32
	mov	r8, r4
	mov	lr, #1
	mov	r5, #8
	mov	r7, #0
	mov	r6, #3
	ldr	ip, .L276
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r10!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	fp, [ip], #4
	stmia	r10!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	add	r9, sp, #36
	stmia	r9!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	str	fp, [r10]
	stmia	r9!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [r9]
	ldr	r3, .L276+4
	sub	r2, sp, #4
.L273:
	ldr	r0, [r2, #4]!
	ldr	r1, [r4, #4]!
	cmp	r2, r8
	str	lr, [r3, #8]
	str	lr, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	lr, [r3, #56]
	str	r7, [r3, #36]
	str	r6, [r3, #40]
	str	r0, [r3, #4]
	str	r1, [r3]
	add	r3, r3, #64
	bne	.L273
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L277:
	.align	2
.L276:
	.word	.LANCHOR1+56
	.word	enemies1
	.size	initEnemyP1, .-initEnemyP1
	.align	2
	.global	updateEnemyP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemyP1, %function
updateEnemyP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L311
	ldr	r9, .L311+4
	ldr	fp, .L311+8
	ldr	r6, .L311+12
	ldr	r10, .L311+16
	ldr	r7, .L311+20
	sub	sp, sp, #20
	add	r8, r4, #576
	b	.L289
.L290:
	mov	r1, #0
	ldr	r2, .L311+24
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #56]
	ldr	r3, [r4, #24]
.L286:
	add	r3, r3, #1
	str	r3, [r4, #24]
	add	r4, r4, #64
	cmp	r4, r8
	beq	.L309
.L289:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	ldr	r3, [r4, #24]
	beq	.L286
	smull	r2, r5, r9, r3
	sub	r5, r5, r3, asr #31
	add	r5, r5, r5, lsl #1
	subs	r5, r3, r5
	asr	r2, r3, #31
	beq	.L303
	ldr	r5, [r4, #4]
.L280:
	smull	r0, r1, fp, r3
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	bne	.L284
	ldr	r0, [r4, #36]
	ldr	r3, .L311+28
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L284:
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	ldm	r6, {r2, r3}
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	mov	r0, r5
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	mov	lr, pc
	bx	r10
	subs	r5, r0, #0
	bne	.L290
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L308
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L308
	ldm	r7, {r2, r3}
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L308
	ldr	r3, .L311+32
	ldr	r3, [r3]
	ldr	r2, .L311+36
	str	r5, [r3, #32]
	ldr	r3, .L311+40
	str	r5, [r7, #56]
	str	r5, [r3, #12]
	ldr	r3, [r4, #24]
	strh	r5, [r2, #6]	@ movhi
	str	r5, [r4, #56]
	b	.L286
.L308:
	ldr	r3, [r4, #24]
	b	.L286
.L303:
	add	r1, r4, #12
	ldm	r1, {r1, r2, r3}
	sub	r3, r3, #1
	str	r3, [sp, #4]
	str	r5, [sp, #12]
	ldr	r3, .L311+44
	ldr	ip, .L311+48
	ldr	r0, [r3, #8]
	str	r1, [sp, #8]
	str	r2, [sp]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L310
.L281:
	ldr	r3, [r4, #12]
	rsb	r3, r3, #0
	str	r3, [r4, #12]
.L282:
	ldr	r5, [r4, #4]
	ldr	r2, [r4, #56]
	add	r5, r5, r3
	ldr	r3, [r4, #24]
	cmp	r2, #0
	str	r5, [r4, #4]
	asrne	r2, r3, #31
	bne	.L280
	b	.L286
.L309:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L310:
	add	r1, r4, #16
	ldm	r1, {r1, r3}
	ldr	r2, [r4, #12]
	str	r5, [sp, #12]
	ldr	r0, .L311+44
	rsb	r2, r2, #0
	sub	r3, r3, #1
	ldr	r0, [r0, #8]
	ldr	ip, .L311+48
	stm	sp, {r1, r3}
	str	r2, [sp, #8]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L281
	ldr	r3, [r4, #12]
	b	.L282
.L312:
	.align	2
.L311:
	.word	enemies1
	.word	1431655766
	.word	1717986919
	.word	player
	.word	collision
	.word	bullets
	.word	gameLives
	.word	__aeabi_idivmod
	.word	dma
	.word	67109120
	.word	soundB
	.word	.LANCHOR0
	.word	collisionCheck
	.size	updateEnemyP1, .-updateEnemyP1
	.align	2
	.global	drawEnemyP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemyP1, %function
drawEnemyP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L319
	ldr	r1, .L319+4
	ldr	r3, .L319+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L319+12
	ldr	r4, .L319+16
	add	lr, r3, #72
.L316:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	strheq	r7, [r3, #136]	@ movhi
	beq	.L315
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r8, [r2, #36]
	ldr	r1, [r2, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r8, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #34
	strh	ip, [r3, #136]	@ movhi
	strh	r0, [r3, #138]	@ movhi
	strh	r1, [r3, #140]	@ movhi
.L315:
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #64
	bne	.L316
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L320:
	.align	2
.L319:
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	enemies1
	.word	511
	.size	drawEnemyP1, .-drawEnemyP1
	.align	2
	.global	initEnemyP2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemyP2, %function
initEnemyP2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #32
	mov	r10, sp
	add	r5, sp, #16
	mov	lr, r10
	mov	r7, r5
	mov	ip, #1
	mov	r6, #8
	mov	r9, #0
	mov	r8, #3
	ldr	r4, .L325
	ldm	r4, {r0, r1, r2, r3}
	add	r4, r4, #16
	stm	r10, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	stm	r5, {r0, r1, r2, r3}
	ldr	r3, .L325+4
.L322:
	ldr	r1, [lr], #4
	ldr	r2, [r7], #4
	cmp	lr, r5
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	str	ip, [r3, #56]
	str	r9, [r3, #36]
	str	r8, [r3, #40]
	str	r1, [r3, #4]
	str	r2, [r3]
	add	r3, r3, #64
	bne	.L322
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L326:
	.align	2
.L325:
	.word	.LANCHOR1+128
	.word	enemies2
	.size	initEnemyP2, .-initEnemyP2
	.align	2
	.global	updateEnemyP2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemyP2, %function
updateEnemyP2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L360
	ldr	r9, .L360+4
	ldr	fp, .L360+8
	ldr	r6, .L360+12
	ldr	r10, .L360+16
	ldr	r7, .L360+20
	sub	sp, sp, #20
	add	r8, r4, #256
.L338:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	ldr	r3, [r4, #24]
	beq	.L335
	smull	r2, r5, r9, r3
	sub	r5, r5, r3, asr #31
	add	r5, r5, r5, lsl #1
	subs	r5, r3, r5
	asr	r2, r3, #31
	beq	.L352
	ldr	r5, [r4, #4]
.L329:
	smull	r0, r1, fp, r3
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	bne	.L333
	ldr	r0, [r4, #36]
	ldr	r3, .L360+24
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L333:
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	ldm	r6, {r2, r3}
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	mov	r0, r5
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	mov	lr, pc
	bx	r10
	subs	r5, r0, #0
	beq	.L358
	mov	r1, #0
	ldr	r2, .L360+28
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #56]
	ldr	r3, [r4, #24]
.L335:
	add	r3, r3, #1
	str	r3, [r4, #24]
	add	r4, r4, #64
	cmp	r4, r8
	bne	.L338
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L358:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L357
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L357
	ldm	r7, {r2, r3}
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L357
	ldr	r3, .L360+32
	ldr	r3, [r3]
	ldr	r2, .L360+36
	str	r5, [r3, #32]
	ldr	r3, .L360+40
	str	r5, [r7, #56]
	str	r5, [r3, #12]
	ldr	r3, [r4, #24]
	strh	r5, [r2, #6]	@ movhi
	str	r5, [r4, #56]
	b	.L335
.L357:
	ldr	r3, [r4, #24]
	b	.L335
.L352:
	add	r1, r4, #12
	ldm	r1, {r1, r2, r3}
	sub	r3, r3, #1
	str	r3, [sp, #4]
	str	r5, [sp, #12]
	ldr	r3, .L360+44
	ldr	ip, .L360+48
	ldr	r0, [r3, #8]
	str	r1, [sp, #8]
	str	r2, [sp]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L359
.L330:
	ldr	r3, [r4, #12]
	rsb	r3, r3, #0
	str	r3, [r4, #12]
.L331:
	ldr	r5, [r4, #4]
	ldr	r2, [r4, #56]
	add	r5, r5, r3
	ldr	r3, [r4, #24]
	cmp	r2, #0
	str	r5, [r4, #4]
	asrne	r2, r3, #31
	bne	.L329
	b	.L335
.L359:
	add	r1, r4, #16
	ldm	r1, {r1, r3}
	ldr	r2, [r4, #12]
	str	r5, [sp, #12]
	ldr	r0, .L360+44
	rsb	r2, r2, #0
	sub	r3, r3, #1
	ldr	r0, [r0, #8]
	ldr	ip, .L360+48
	stm	sp, {r1, r3}
	str	r2, [sp, #8]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L330
	ldr	r3, [r4, #12]
	b	.L331
.L361:
	.align	2
.L360:
	.word	enemies2
	.word	1431655766
	.word	1717986919
	.word	player
	.word	collision
	.word	bullets
	.word	__aeabi_idivmod
	.word	gameLives
	.word	dma
	.word	67109120
	.word	soundB
	.word	.LANCHOR0
	.word	collisionCheck
	.size	updateEnemyP2, .-updateEnemyP2
	.align	2
	.global	drawEnemyP2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemyP2, %function
drawEnemyP2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L368
	ldr	r1, .L368+4
	ldr	r3, .L368+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L368+12
	ldr	r4, .L368+16
	add	lr, r3, #32
.L365:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	strheq	r7, [r3, #208]	@ movhi
	beq	.L364
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r8, [r2, #36]
	ldr	r1, [r2, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r8, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #34
	strh	ip, [r3, #208]	@ movhi
	strh	r0, [r3, #210]	@ movhi
	strh	r1, [r3, #212]	@ movhi
.L364:
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #64
	bne	.L365
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L369:
	.align	2
.L368:
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	enemies2
	.word	511
	.size	drawEnemyP2, .-drawEnemyP2
	.align	2
	.global	initEnemyP3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemyP3, %function
initEnemyP3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #84
	mov	r9, sp
	mov	r5, #8
	add	r4, sp, #36
	mov	r8, r4
	mov	ip, #1
	mov	r7, #0
	mov	r6, #3
	ldr	lr, .L374
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r9!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r9!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	add	lr, lr, r5
	stm	r9, {r0, r1}
	ldmia	lr!, {r0, r1, r2, r3}
	add	r9, sp, #40
	stmia	r9!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r9!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	r9, {r0, r1}
	ldr	r3, .L374+4
	sub	r2, sp, #4
.L371:
	ldr	r0, [r2, #4]!
	ldr	r1, [r4, #4]!
	cmp	r2, r8
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	ip, [r3, #56]
	str	r7, [r3, #36]
	str	r6, [r3, #40]
	str	r0, [r3, #4]
	str	r1, [r3]
	add	r3, r3, #64
	bne	.L371
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L375:
	.align	2
.L374:
	.word	.LANCHOR1+160
	.word	enemies3
	.size	initEnemyP3, .-initEnemyP3
	.align	2
	.global	updateEnemyP3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemyP3, %function
updateEnemyP3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L409
	ldr	r9, .L409+4
	ldr	fp, .L409+8
	ldr	r6, .L409+12
	ldr	r10, .L409+16
	ldr	r7, .L409+20
	sub	sp, sp, #20
	add	r8, r4, #640
	b	.L387
.L388:
	mov	r1, #0
	ldr	r2, .L409+24
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #56]
	ldr	r3, [r4, #24]
.L384:
	add	r3, r3, #1
	str	r3, [r4, #24]
	add	r4, r4, #64
	cmp	r4, r8
	beq	.L407
.L387:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	ldr	r3, [r4, #24]
	beq	.L384
	smull	r2, r5, r9, r3
	sub	r5, r5, r3, asr #31
	add	r5, r5, r5, lsl #1
	subs	r5, r3, r5
	asr	r2, r3, #31
	beq	.L401
	ldr	r5, [r4, #4]
.L378:
	smull	r0, r1, fp, r3
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	bne	.L382
	ldr	r0, [r4, #36]
	ldr	r3, .L409+28
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L382:
	add	r1, r6, #16
	ldm	r1, {r1, ip}
	ldm	r6, {r2, r3}
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	mov	r0, r5
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	mov	lr, pc
	bx	r10
	subs	r5, r0, #0
	bne	.L388
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L406
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L406
	ldm	r7, {r2, r3}
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L406
	ldr	r3, .L409+32
	ldr	r3, [r3]
	ldr	r2, .L409+36
	str	r5, [r3, #32]
	ldr	r3, .L409+40
	str	r5, [r7, #56]
	str	r5, [r3, #12]
	ldr	r3, [r4, #24]
	strh	r5, [r2, #6]	@ movhi
	str	r5, [r4, #56]
	b	.L384
.L406:
	ldr	r3, [r4, #24]
	b	.L384
.L401:
	add	r1, r4, #12
	ldm	r1, {r1, r2, r3}
	sub	r3, r3, #1
	str	r3, [sp, #4]
	str	r5, [sp, #12]
	ldr	r3, .L409+44
	ldr	ip, .L409+48
	ldr	r0, [r3, #8]
	str	r1, [sp, #8]
	str	r2, [sp]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L408
.L379:
	ldr	r3, [r4, #12]
	rsb	r3, r3, #0
	str	r3, [r4, #12]
.L380:
	ldr	r5, [r4, #4]
	ldr	r2, [r4, #56]
	add	r5, r5, r3
	ldr	r3, [r4, #24]
	cmp	r2, #0
	str	r5, [r4, #4]
	asrne	r2, r3, #31
	bne	.L378
	b	.L384
.L407:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L408:
	add	r1, r4, #16
	ldm	r1, {r1, r3}
	ldr	r2, [r4, #12]
	str	r5, [sp, #12]
	ldr	r0, .L409+44
	rsb	r2, r2, #0
	sub	r3, r3, #1
	ldr	r0, [r0, #8]
	ldr	ip, .L409+48
	stm	sp, {r1, r3}
	str	r2, [sp, #8]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L379
	ldr	r3, [r4, #12]
	b	.L380
.L410:
	.align	2
.L409:
	.word	enemies3
	.word	1431655766
	.word	1717986919
	.word	player
	.word	collision
	.word	bullets
	.word	gameLives
	.word	__aeabi_idivmod
	.word	dma
	.word	67109120
	.word	soundB
	.word	.LANCHOR0
	.word	collisionCheck
	.size	updateEnemyP3, .-updateEnemyP3
	.align	2
	.global	drawEnemyP3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemyP3, %function
drawEnemyP3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L417
	ldr	r1, .L417+4
	ldr	r3, .L417+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L417+12
	ldr	r4, .L417+16
	add	lr, r3, #80
.L414:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	strheq	r7, [r3]	@ movhi
	beq	.L413
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r8, [r2, #36]
	ldr	r1, [r2, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r8, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #34
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L413:
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #64
	bne	.L414
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L418:
	.align	2
.L417:
	.word	hOff
	.word	vOff
	.word	shadowOAM+632
	.word	enemies3
	.word	511
	.size	drawEnemyP3, .-drawEnemyP3
	.align	2
	.global	initBallsP0
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBallsP0, %function
initBallsP0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #48
	mov	r8, sp
	add	lr, sp, #20
	mov	r7, lr
	mov	r4, #0
	mov	r6, #1
	mov	r5, #3
	ldr	ip, .L423
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r8!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	add	ip, ip, #8
	stm	r8, {r0, r1}
	ldmia	ip!, {r0, r1, r2, r3}
	add	r8, sp, #24
	stmia	r8!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	r8, {r0, r1}
	ldr	r3, .L423+4
	sub	r2, sp, #4
.L420:
	ldr	r0, [r2, #4]!
	ldr	r1, [lr, #4]!
	cmp	r2, r7
	str	r4, [r3, #36]
	str	r6, [r3, #56]
	str	r5, [r3, #40]
	str	r4, [r3, #24]
	str	r0, [r3, #4]
	str	r1, [r3]
	add	r3, r3, #64
	bne	.L420
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L424:
	.align	2
.L423:
	.word	.LANCHOR1+240
	.word	balls0
	.size	initBallsP0, .-initBallsP0
	.align	2
	.global	drawBallsP0
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallsP0, %function
drawBallsP0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L431
	ldr	r1, .L431+4
	ldr	r3, .L431+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L431+12
	ldr	r4, .L431+16
	add	lr, r3, #384
.L428:
	ldr	r1, [r3, #56]
	cmp	r1, #0
	strheq	r7, [r2]	@ movhi
	beq	.L427
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	ldr	r8, [r3, #36]
	ldr	r1, [r3, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r8, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #37
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
.L427:
	add	r3, r3, #64
	cmp	r3, lr
	add	r2, r2, #8
	bne	.L428
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L432:
	.align	2
.L431:
	.word	hOff
	.word	vOff
	.word	balls0
	.word	shadowOAM+408
	.word	511
	.size	drawBallsP0, .-drawBallsP0
	.align	2
	.global	initBallsP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBallsP1, %function
initBallsP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #72
	mov	r9, sp
	add	lr, sp, #32
	mov	r7, lr
	mov	r4, #0
	mov	r6, #1
	mov	r5, #3
	ldr	ip, .L437
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r9!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	r10, [ip], #4
	stmia	r9!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	add	r8, sp, #36
	stmia	r8!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	str	r10, [r9]
	stmia	r8!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [r8]
	ldr	r3, .L437+4
	sub	r2, sp, #4
.L434:
	ldr	r0, [r2, #4]!
	ldr	r1, [lr, #4]!
	cmp	r2, r7
	str	r4, [r3, #36]
	str	r6, [r3, #56]
	str	r5, [r3, #40]
	str	r4, [r3, #24]
	str	r0, [r3, #4]
	str	r1, [r3]
	add	r3, r3, #64
	bne	.L434
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L438:
	.align	2
.L437:
	.word	.LANCHOR1+288
	.word	balls1
	.size	initBallsP1, .-initBallsP1
	.align	2
	.global	drawBallsP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallsP1, %function
drawBallsP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L445
	ldr	r1, .L445+4
	ldr	r3, .L445+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L445+12
	ldr	r4, .L445+16
	add	lr, r3, #72
.L442:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	strheq	r7, [r3]	@ movhi
	beq	.L441
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r8, [r2, #36]
	ldr	r1, [r2, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r8, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #37
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L441:
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #64
	bne	.L442
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L446:
	.align	2
.L445:
	.word	hOff
	.word	vOff
	.word	shadowOAM+456
	.word	balls1
	.word	511
	.size	drawBallsP1, .-drawBallsP1
	.align	2
	.global	initBallsP2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBallsP2, %function
initBallsP2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #36
	mov	r9, sp
	add	r4, sp, #16
	mov	ip, r9
	mov	r6, r4
	mov	r5, #0
	mov	r8, #1
	mov	r7, #3
	ldr	lr, .L451
	ldm	lr, {r0, r1, r2, r3}
	add	lr, lr, #16
	stm	r9, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	ldr	r3, .L451+4
.L448:
	ldr	r1, [ip], #4
	ldr	r2, [r6], #4
	cmp	ip, r4
	str	r5, [r3, #36]
	str	r8, [r3, #56]
	str	r7, [r3, #40]
	str	r5, [r3, #24]
	str	r1, [r3, #4]
	str	r2, [r3]
	add	r3, r3, #64
	bne	.L448
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L452:
	.align	2
.L451:
	.word	.LANCHOR1+360
	.word	balls2
	.size	initBallsP2, .-initBallsP2
	.align	2
	.global	drawBallsP2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallsP2, %function
drawBallsP2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L459
	ldr	r1, .L459+4
	ldr	r3, .L459+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L459+12
	ldr	r4, .L459+16
	add	lr, r3, #32
.L456:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	strheq	r7, [r3]	@ movhi
	beq	.L455
	ldr	ip, [r2]
	ldr	r0, [r2, #4]
	ldr	r8, [r2, #36]
	ldr	r1, [r2, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r8, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #37
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L455:
	add	r3, r3, #8
	cmp	r3, lr
	add	r2, r2, #64
	bne	.L456
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L460:
	.align	2
.L459:
	.word	hOff
	.word	vOff
	.word	shadowOAM+528
	.word	balls2
	.word	511
	.size	drawBallsP2, .-drawBallsP2
	.align	2
	.global	initBallsP3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBallsP3, %function
initBallsP3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #64
	mov	r8, sp
	ldr	ip, .L465
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r8!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	add	lr, sp, #32
	stm	r8, {r0, r1, r2, r3}
	mov	r8, lr
	add	ip, ip, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r8!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	mov	r7, lr
	stm	r8, {r0, r1, r2, r3}
	mov	r4, #0
	mov	r6, #1
	mov	r5, #3
	mov	r2, sp
	ldr	r3, .L465+4
.L462:
	ldr	r0, [r2], #4
	ldr	r1, [lr], #4
	cmp	r2, r7
	str	r4, [r3, #36]
	str	r6, [r3, #56]
	str	r5, [r3, #40]
	str	r4, [r3, #24]
	str	r0, [r3, #4]
	str	r1, [r3]
	add	r3, r3, #64
	bne	.L462
	add	sp, sp, #64
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L466:
	.align	2
.L465:
	.word	.LANCHOR1+392
	.word	balls3
	.size	initBallsP3, .-initBallsP3
	.align	2
	.global	drawBallsP3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallsP3, %function
drawBallsP3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L473
	ldr	r1, .L473+4
	ldr	r3, .L473+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L473+12
	ldr	r4, .L473+16
	add	lr, r3, r7
.L470:
	ldr	r1, [r3, #56]
	cmp	r1, #0
	strheq	r7, [r2]	@ movhi
	beq	.L469
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	ldr	r8, [r3, #36]
	ldr	r1, [r3, #28]
	sub	ip, ip, r6
	sub	r0, r0, r5
	add	r1, r1, r8, lsl #5
	and	ip, ip, #255
	and	r0, r0, r4
	add	r1, r1, #37
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
.L469:
	add	r3, r3, #64
	cmp	r3, lr
	add	r2, r2, #8
	bne	.L470
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L474:
	.align	2
.L473:
	.word	hOff
	.word	vOff
	.word	balls3
	.word	shadowOAM+560
	.word	511
	.size	drawBallsP3, .-drawBallsP3
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	r0, #3
	mov	r1, #5
	ldr	r3, .L477
	str	lr, [sp, #-4]!
	ldr	ip, .L477+4
	ldr	lr, [r3]
	ldr	r3, .L477+8
	str	lr, [ip]
	str	r2, [r3, #56]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r0, [r3, #8]
	str	r0, [r3, #40]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L478:
	.align	2
.L477:
	.word	collectedBalls
	.word	bullAmt
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L481
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bxeq	lr
	b	updateBullets.part.0
.L482:
	.align	2
.L481:
	.word	bullets
	.size	updateBullets, .-updateBullets
	.align	2
	.global	drawBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullets, %function
drawBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L485
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawBullets.part.0
.L484:
	mov	r2, #512
	ldr	r3, .L485+4
	strh	r2, [r3, #112]	@ movhi
	bx	lr
.L486:
	.align	2
.L485:
	.word	bullets
	.word	shadowOAM
	.size	drawBullets, .-drawBullets
	.align	2
	.global	initScoreBarBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScoreBarBar, %function
initScoreBarBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #0
	mov	r5, #16
	mov	r4, #13
	ldr	lr, .L491
	sub	sp, sp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, sp, #4
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	ldr	r3, .L491+4
	stm	ip, {r0, r1, r2}
	add	r7, sp, #64
	add	r2, sp, #4
.L488:
	ldr	r1, [r2], #4
	cmp	r2, r7
	str	r6, [r3]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	r1, [r3, #4]
	add	r3, r3, #64
	bne	.L488
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L492:
	.align	2
.L491:
	.word	.LANCHOR1+456
	.word	scoreBar
	.size	initScoreBarBar, .-initScoreBarBar
	.align	2
	.global	drawScoreBarBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScoreBarBar, %function
drawScoreBarBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L497
	str	lr, [sp, #-4]!
	ldr	r2, .L497+4
	ldr	lr, .L497+8
	add	ip, r3, #120
.L494:
	ldm	r2, {r0, r1}
	orr	r1, r1, #16384
	strh	lr, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #64
	bne	.L494
	ldr	lr, [sp], #4
	bx	lr
.L498:
	.align	2
.L497:
	.word	shadowOAM+280
	.word	scoreBar
	.word	-28128
	.size	drawScoreBarBar, .-drawScoreBarBar
	.align	2
	.global	initMazePrize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMazePrize, %function
initMazePrize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #5
	mov	r0, #100
	mov	r1, #0
	ldr	r3, .L500
	stm	r3, {r0, ip}
	str	r1, [r3, #56]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L501:
	.align	2
.L500:
	.word	mazePrize
	.size	initMazePrize, .-initMazePrize
	.align	2
	.global	drawMazePrize
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMazePrize, %function
drawMazePrize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L504
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawMazePrize.part.0
.L503:
	mov	r2, #512
	ldr	r3, .L504+4
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L505:
	.align	2
.L504:
	.word	mazePrize
	.word	shadowOAM
	.size	drawMazePrize, .-drawMazePrize
	.align	2
	.global	updatePlayerMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerMaze, %function
updatePlayerMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L553
	ldrh	r3, [r3, #48]
	ldr	r4, .L553+4
	tst	r3, #16
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	sub	sp, sp, #16
	bne	.L507
	rsb	r3, r1, #240
	cmp	r3, r2
	ldrgt	r3, [r4, #12]
	addgt	r2, r2, r3
	strgt	r2, [r4, #4]
.L507:
	ldr	r3, .L553
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L508
	cmp	r2, #1
	ldrgt	r3, [r4, #12]
	subgt	r2, r2, r3
	strgt	r2, [r4, #4]
.L508:
	mov	r0, #0
	ldr	r3, [r4, #20]
	add	r3, r3, #1
	stm	sp, {r1, r3}
	ldr	ip, [r4, #8]
	str	r0, [sp, #8]
	ldr	r5, .L553+8
	ldr	r3, [r4]
	ldr	r0, [r5, #12]
	mov	r1, #240
	str	ip, [sp, #12]
	ldr	r6, .L553+12
	mov	lr, pc
	bx	r6
	rsbs	r0, r0, #1
	movcc	r0, #0
	ldr	r3, .L553+16
	ldrh	r2, [r3]
	ldr	r3, .L553+20
	tst	r2, #64
	str	r0, [r3]
	beq	.L509
	ldr	r3, .L553+24
	ldrh	r3, [r3]
	eor	r3, r3, #64
	ands	r3, r0, r3, lsr #6
	movne	r2, #1
	ldr	r3, [r4]
	strne	r2, [r4, #48]
	bne	.L511
	ldr	r2, [r4, #48]
	cmp	r2, #0
	beq	.L512
.L552:
	ldr	r2, [r4, #52]
	add	r2, r2, #1
.L511:
	ldr	r1, [r5, #16]
	sub	r3, r3, #4
	cmp	r3, #0
	cmpne	r1, r2
	str	r3, [r4]
	str	r2, [r4, #52]
	moveq	r3, #0
	streq	r3, [r4, #48]
.L514:
	ldr	r5, .L553+28
	ldr	r3, [r5, #56]
	cmp	r3, #0
	bne	.L548
.L517:
	ldr	r3, .L553+32
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L549
.L520:
	ldr	r3, .L553+36
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L550
.L523:
	ldr	r3, .L553+40
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L551
.L526:
	ldr	r3, .L553+44
	ldr	r3, [r3]
	cmp	r3, #5
	moveq	r1, #1
	moveq	r2, #0
	ldreq	r3, .L553
	streq	r1, [r5, #56]
	strheq	r2, [r3, #10]	@ movhi
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	animatePlayer
.L509:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	ldr	r3, [r4]
	bne	.L552
.L512:
	ldr	r1, [r4, #20]
	str	r2, [sp, #8]
	ldr	ip, [r4, #8]
	ldr	r2, [r4, #16]
	ldr	r0, [r5, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #240
	str	ip, [sp, #12]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r3, [r4]
	ldr	r5, .L553+28
	addne	r3, r3, #1
	strne	r3, [r4]
	ldr	r3, [r5, #56]
	cmp	r3, #0
	beq	.L517
.L548:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L553+48
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L553+52
	strne	r2, [r3]
	ldr	r3, .L553+32
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L520
.L549:
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L553+48
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L520
	mov	r3, #0
	str	r3, [r4, #48]
	bl	initPlayer
	ldr	r3, .L553+36
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L523
.L550:
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L553+48
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L523
	mov	r3, #0
	str	r3, [r4, #48]
	bl	initPlayer
	ldr	r3, .L553+40
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L526
.L551:
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L553+48
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L526
	mov	r3, #0
	str	r3, [r4, #48]
	bl	initPlayer
	b	.L526
.L554:
	.align	2
.L553:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	collisionCheck
	.word	oldButtons
	.word	isGrounded
	.word	buttons
	.word	mazePrize
	.word	truck
	.word	carA
	.word	carB
	.word	time_s
	.word	collision
	.word	prizes
	.size	updatePlayerMaze, .-updatePlayerMaze
	.align	2
	.global	initTruck
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTruck, %function
initTruck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #104
	mov	lr, #24
	mov	ip, #16
	mov	r0, #1
	mov	r1, #3
	ldr	r3, .L557
	str	r4, [r3]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r1, [r3, #40]
	str	r2, [r3, #4]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L558:
	.align	2
.L557:
	.word	truck
	.size	initTruck, .-initTruck
	.align	2
	.global	updateTruck
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTruck, %function
updateTruck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L569
	ldr	r2, [r4, #4]
	cmp	r2, #249
	ldr	r3, [r4, #56]
	ldr	r5, [r4, #24]
	ble	.L560
	cmp	r3, #0
	beq	.L562
	mov	r2, #0
.L561:
	ldr	r3, .L569+4
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	ldr	r1, [r4, #12]
	add	r3, r3, r3, lsl #2
	add	r2, r1, r2
	cmp	r5, r3, lsl #1
	str	r2, [r4, #4]
	bne	.L562
	ldr	r0, [r4, #36]
	ldr	r3, .L569+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L562:
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L560:
	cmp	r3, #0
	bne	.L561
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L570:
	.align	2
.L569:
	.word	truck
	.word	1717986919
	.word	__aeabi_idivmod
	.size	updateTruck, .-updateTruck
	.align	2
	.global	drawTruck
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTruck, %function
drawTruck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L573
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawTruck.part.0
.L572:
	ldr	r2, .L573+4
	ldrh	r3, [r2, #24]
	orr	r3, r3, #512
	strh	r3, [r2, #24]	@ movhi
	bx	lr
.L574:
	.align	2
.L573:
	.word	truck
	.word	shadowOAM
	.size	drawTruck, .-drawTruck
	.align	2
	.global	initCarA
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCarA, %function
initCarA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	mov	r1, #3
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #104
	mov	r5, #24
	mov	r4, #16
	mov	lr, #25
	mov	r0, #11
	ldr	r3, .L577
	str	ip, [r3, #12]
	str	r1, [r3, #40]
	ldr	ip, .L577+4
	ldr	r1, .L577+8
	str	r6, [r3]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [ip]
	str	r2, [r3, #4]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L578:
	.align	2
.L577:
	.word	carA
	.word	col
	.word	row
	.size	initCarA, .-initCarA
	.align	2
	.global	updateCarA
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCarA, %function
updateCarA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L599
	ldr	r2, [r4, #4]
	cmp	r2, #249
	ldr	r3, [r4, #56]
	sub	sp, sp, #12
	ble	.L580
	cmp	r3, #0
	bne	.L597
.L581:
	mov	r3, #1
	str	r3, [r4, #56]
.L587:
	ldr	r5, [r4, #24]
	ldr	r3, .L599+4
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	ldr	r1, [r4, #12]
	add	r3, r3, r3, lsl #2
	add	r2, r1, r2
	cmp	r5, r3, lsl #1
	str	r2, [r4, #4]
	bne	.L589
	ldr	r0, [r4, #36]
	ldr	r3, .L599+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L589:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L598:
	mov	r0, #21
.L595:
	mov	r2, #11
	ldr	r1, .L599+12
	ldr	r3, .L599+16
	str	r0, [r1]
	str	r2, [r3]
.L583:
	mov	r2, #0
	ldr	r3, [r4, #56]
.L580:
	cmp	r3, #0
	bne	.L587
	b	.L581
.L597:
	ldr	r10, .L599+20
	mov	lr, pc
	bx	r10
	str	r0, [sp, #4]
	mov	lr, pc
	bx	r10
	mov	r9, r0
	mov	lr, pc
	bx	r10
	mov	r8, r0
	mov	lr, pc
	bx	r10
	mov	r7, r0
	mov	lr, pc
	bx	r10
	mov	r5, r0
	mov	lr, pc
	bx	r10
	mov	r6, r0
	mov	lr, pc
	bx	r10
	mov	fp, r0
	mov	lr, pc
	bx	r10
	mov	r3, r0
	ldr	r2, [sp, #4]
	rsbs	r1, r2, #0
	and	r1, r1, #15
	and	r2, r2, #15
	rsbpl	r2, r1, #0
	lsl	r2, r2, #1
	rsbs	r1, r9, #0
	add	r2, r2, #83886080
	add	r2, r2, #832
	and	r1, r1, #15
	ldrh	r0, [r2]
	and	r9, r9, #15
	ldr	r2, .L599+24
	rsbpl	r9, r1, #0
	lsl	r9, r9, #1
	strh	r0, [r2, #32]	@ movhi
	rsbs	r1, r8, #0
	add	r9, r9, #83886080
	and	r1, r1, #15
	add	r9, r9, #832
	ldrh	r0, [r9]
	and	r8, r8, #15
	rsbpl	r8, r1, #0
	lsl	r8, r8, #1
	strh	r0, [r2, #34]	@ movhi
	rsbs	r1, r7, #0
	add	r8, r8, #83886080
	and	r1, r1, #15
	add	r8, r8, #832
	ldrh	r0, [r8]
	and	r7, r7, #15
	rsbpl	r7, r1, #0
	lsl	r7, r7, #1
	strh	r0, [r2, #34]	@ movhi
	rsbs	r1, fp, #0
	add	r7, r7, #83886080
	and	r1, r1, #15
	add	r7, r7, #832
	ldrh	r0, [r7]
	and	fp, fp, #15
	rsbpl	fp, r1, #0
	lsl	fp, fp, #1
	strh	r0, [r2, #38]	@ movhi
	rsbs	r1, r3, #0
	add	fp, fp, #83886080
	and	r1, r1, #15
	add	fp, fp, #832
	ldrh	r0, [fp]
	and	r3, r3, #15
	rsbpl	r3, r1, #0
	lsl	r3, r3, #1
	strh	r0, [r2, #44]	@ movhi
	rsbs	r1, r6, #0
	add	r3, r3, #83886080
	and	r1, r1, #15
	add	r3, r3, #832
	ldrh	r3, [r3]
	and	r6, r6, #15
	rsbpl	r6, r1, #0
	lsl	r6, r6, #1
	strh	r3, [r2, #46]	@ movhi
	add	r6, r6, #83886080
	rsbs	r3, r5, #0
	and	r3, r3, #15
	add	r6, r6, #832
	ldrh	r1, [r6]
	and	r5, r5, #15
	rsbpl	r5, r3, #0
	lsl	r5, r5, #1
	strh	r1, [r2, #50]	@ movhi
	add	r5, r5, #83886080
	add	r5, r5, #832
	ldrh	r3, [r5]
	strh	r3, [r2, #54]	@ movhi
	mov	lr, pc
	bx	r10
	ldr	r3, .L599+4
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r0, r3
	moveq	r0, #17
	beq	.L595
	cmp	r3, #1
	beq	.L598
	cmp	r3, #2
	moveq	r0, #25
	beq	.L595
	cmp	r3, #3
	moveq	r0, #21
	beq	.L596
	cmp	r3, #4
	bne	.L583
	mov	r0, #25
.L596:
	mov	r2, #17
	ldr	r1, .L599+12
	ldr	r3, .L599+16
	str	r0, [r1]
	str	r2, [r3]
	b	.L583
.L600:
	.align	2
.L599:
	.word	carA
	.word	1717986919
	.word	__aeabi_idivmod
	.word	col
	.word	row
	.word	rand
	.word	83886848
	.size	updateCarA, .-updateCarA
	.align	2
	.global	drawCarA
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCarA, %function
drawCarA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L603
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawCarA.part.0
.L602:
	ldr	r2, .L603+4
	ldrh	r3, [r2, #32]
	orr	r3, r3, #512
	strh	r3, [r2, #32]	@ movhi
	bx	lr
.L604:
	.align	2
.L603:
	.word	carA
	.word	shadowOAM
	.size	drawCarA, .-drawCarA
	.align	2
	.global	initCarB
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCarB, %function
initCarB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	mov	r1, #3
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #104
	mov	r5, #24
	mov	r4, #16
	mov	lr, #25
	mov	r0, #11
	ldr	r3, .L607
	str	ip, [r3, #12]
	str	r1, [r3, #40]
	ldr	ip, .L607+4
	ldr	r1, .L607+8
	str	r6, [r3]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [ip]
	str	r2, [r3, #4]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L608:
	.align	2
.L607:
	.word	carB
	.word	colB
	.word	rowB
	.size	initCarB, .-initCarB
	.align	2
	.global	updateCarB
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCarB, %function
updateCarB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L629
	ldr	r5, .L629+4
	sub	sp, sp, #12
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #4]
	cmp	r1, #249
	ble	.L610
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L627
.L611:
	mov	r3, #1
	str	r3, [r4, #56]
.L612:
	ldr	r5, [r4, #24]
	ldr	r3, .L629+8
	smull	r2, r0, r3, r5
	ldr	r2, [r4, #12]
	asr	r3, r5, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	add	r2, r2, #1
	cmp	r5, r3, lsl #1
	add	r3, r2, r1
	str	r3, [r4, #4]
	bne	.L619
	ldr	r0, [r4, #36]
	ldr	r3, .L629+12
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L619:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L628:
	mov	r0, #21
.L625:
	mov	r2, #17
	ldr	r1, .L629+16
	ldr	r3, .L629+20
	str	r0, [r1]
	str	r2, [r3]
.L614:
	mov	r1, #0
.L610:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L612
	b	.L611
.L627:
	ldr	r3, .L629+24
	smull	ip, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r2, .L629+28
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #3
	ldr	r3, [r2, #4]
	add	r0, r0, #30
	cmp	r3, r0
	bne	.L612
	mov	lr, pc
	bx	r5
	mov	fp, r0
	mov	lr, pc
	bx	r5
	mov	r10, r0
	mov	lr, pc
	bx	r5
	mov	r9, r0
	mov	lr, pc
	bx	r5
	mov	r8, r0
	mov	lr, pc
	bx	r5
	mov	r6, r0
	mov	lr, pc
	bx	r5
	mov	r7, r0
	mov	lr, pc
	bx	r5
	str	r0, [sp, #4]
	mov	lr, pc
	bx	r5
	mov	r3, r0
	rsbs	r2, fp, #0
	and	r2, r2, #15
	and	fp, fp, #15
	rsbpl	fp, r2, #0
	lsl	fp, fp, #1
	rsbs	r0, r10, #0
	add	r2, fp, #83886080
	add	r2, r2, #832
	and	r0, r0, #15
	ldrh	ip, [r2]
	and	r10, r10, #15
	ldr	r2, .L629+32
	rsbpl	r10, r0, #0
	lsl	r10, r10, #1
	strh	ip, [r2, #64]	@ movhi
	add	r0, r10, #83886080
	rsbs	ip, r9, #0
	and	ip, ip, #15
	add	r0, r0, #832
	ldrh	r0, [r0]
	and	r9, r9, #15
	rsbpl	r9, ip, #0
	lsl	r9, r9, #1
	strh	r0, [r2, #66]	@ movhi
	rsbs	ip, r8, #0
	add	r0, r9, #83886080
	and	ip, ip, #15
	add	r0, r0, #832
	ldrh	r0, [r0]
	ldr	r1, [sp, #4]
	and	r8, r8, #15
	rsbpl	r8, ip, #0
	lsl	r8, r8, #1
	strh	r0, [r2, #70]	@ movhi
	rsbs	ip, r1, #0
	add	r0, r8, #83886080
	and	ip, ip, #15
	add	r0, r0, #832
	ldrh	r0, [r0]
	and	r1, r1, #15
	rsbpl	r1, ip, #0
	lsl	r1, r1, #1
	strh	r0, [r2, #76]	@ movhi
	add	r1, r1, #83886080
	rsbs	r0, r3, #0
	and	r0, r0, #15
	add	r1, r1, #832
	ldrh	r1, [r1]
	and	r3, r3, #15
	rsbpl	r3, r0, #0
	lsl	r3, r3, #1
	strh	r1, [r2, #78]	@ movhi
	add	r3, r3, #83886080
	rsbs	r1, r7, #0
	and	r1, r1, #15
	add	r3, r3, #832
	ldrh	r3, [r3]
	and	r7, r7, #15
	rsbpl	r7, r1, #0
	lsl	r7, r7, #1
	strh	r3, [r2, #84]	@ movhi
	rsbs	r1, r6, #0
	add	r3, r7, #83886080
	and	r1, r1, #15
	add	r3, r3, #832
	ldrh	r3, [r3]
	and	r6, r6, #15
	rsbpl	r6, r1, #0
	lsl	r6, r6, #1
	strh	r3, [r2, #86]	@ movhi
	add	r3, r6, #83886080
	add	r3, r3, #832
	ldrh	r3, [r3]
	strh	r3, [r2, #90]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r3, .L629+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r0, r3
	moveq	r0, #25
	beq	.L625
	cmp	r3, #1
	moveq	r0, #17
	beq	.L626
	cmp	r3, #2
	moveq	r0, #25
	beq	.L626
	cmp	r3, #3
	beq	.L628
	cmp	r3, #4
	bne	.L614
	mov	r0, #21
.L626:
	mov	r2, #11
	ldr	r1, .L629+16
	ldr	r3, .L629+20
	str	r0, [r1]
	str	r2, [r3]
	b	.L614
.L630:
	.align	2
.L629:
	.word	carB
	.word	rand
	.word	1717986919
	.word	__aeabi_idivmod
	.word	colB
	.word	rowB
	.word	1374389535
	.word	carA
	.word	83886848
	.size	updateCarB, .-updateCarB
	.align	2
	.global	drawCarB
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCarB, %function
drawCarB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L633
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawCarB.part.0
.L632:
	ldr	r2, .L633+4
	ldrh	r3, [r2, #40]
	orr	r3, r3, #512
	strh	r3, [r2, #40]	@ movhi
	bx	lr
.L634:
	.align	2
.L633:
	.word	carB
	.word	shadowOAM
	.size	drawCarB, .-drawCarB
	.align	2
	.global	initCone
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCone, %function
initCone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #104
	mov	r4, #0
	mov	lr, #8
	ldr	r2, .L639
	sub	sp, sp, #16
	ldm	r2, {r0, r1, r2}
	add	r3, sp, #4
	mov	ip, r3
	stm	r3, {r0, r1, r2}
	ldr	r3, .L639+4
	add	r6, sp, #16
.L636:
	ldr	r2, [ip], #4
	cmp	ip, r6
	str	r5, [r3]
	str	r4, [r3, #56]
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3, #4]
	add	r3, r3, #64
	bne	.L636
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L640:
	.align	2
.L639:
	.word	.LANCHOR1+516
	.word	cone
	.size	initCone, .-initCone
	.align	2
	.global	updateCone
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCone, %function
updateCone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r6, .L660
	mov	r9, #0
	mov	r4, r6
	ldr	r5, .L660+4
	ldr	r8, .L660+8
	sub	sp, sp, #20
	add	r7, r6, #192
.L645:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L658
.L643:
	add	r4, r4, #64
	cmp	r7, r4
	bne	.L645
	ldr	r3, .L660+12
	ldr	r3, [r3]
	cmp	r3, #1
	streq	r3, [r6, #184]
	beq	.L641
	cmp	r3, #2
	moveq	r3, #1
	streq	r3, [r6, #120]
	bne	.L659
.L641:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L658:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L643
	str	r9, [r5, #48]
	bl	initPlayer
	b	.L643
.L659:
	cmp	r3, #3
	moveq	r3, #1
	streq	r3, [r6, #56]
	beq	.L641
	cmp	r3, #4
	moveq	r2, #0
	ldreq	r3, .L660+16
	strheq	r2, [r3, #14]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L661:
	.align	2
.L660:
	.word	cone
	.word	player
	.word	collision
	.word	time_s2
	.word	67109120
	.size	updateCone, .-updateCone
	.align	2
	.global	drawCone
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCone, %function
drawCone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L677
	ldr	r1, [r2, #56]
	ldr	r3, .L677+4
	cmp	r1, #0
	add	ip, r3, #24
	bne	.L672
.L675:
	ldrh	r1, [r3, #48]
	orr	r1, r1, #512
	strh	r1, [r3, #48]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #64
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L675
.L672:
	str	lr, [sp, #-4]!
.L669:
	ldr	r0, [r2, #36]
	ldr	r1, [r2, #28]
	add	r1, r1, r0, lsl #5
	add	r1, r1, #280
	ldr	r0, [r2, #4]
	ldr	lr, [r2]
	add	r1, r1, #1
	lsl	r1, r1, #1
	orr	r0, r0, #16384
	strh	r1, [r3, #52]	@ movhi
	strh	r0, [r3, #50]	@ movhi
	strh	lr, [r3, #48]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #64
	beq	.L676
.L665:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L669
	ldrh	r1, [r3, #48]
	orr	r1, r1, #512
	strh	r1, [r3, #48]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #64
	bne	.L665
.L676:
	ldr	lr, [sp], #4
	bx	lr
.L678:
	.align	2
.L677:
	.word	cone
	.word	shadowOAM
	.size	drawCone, .-drawCone
	.align	2
	.global	setCone
	.syntax unified
	.arm
	.fpu softvfp
	.type	setCone, %function
setCone:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L680
	str	r2, [r3, #56]
	str	r2, [r3, #120]
	str	r2, [r3, #184]
	bx	lr
.L681:
	.align	2
.L680:
	.word	cone
	.size	setCone, .-setCone
	.align	2
	.global	updatePlayerLaser
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerLaser, %function
updatePlayerLaser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L717
	ldrh	r3, [r3, #48]
	ldr	r4, .L717+4
	ldr	r5, .L717+8
	ands	ip, r3, #32
	ldr	r0, [r5, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	sub	sp, sp, #20
	beq	.L711
	ldr	r6, .L717+12
.L683:
	ldr	ip, .L717
	ldrh	ip, [ip, #48]
	ands	ip, ip, #16
	beq	.L713
.L685:
	mov	r7, #0
	add	r1, r1, #1
	str	r1, [sp, #4]
	ldr	r1, [r4, #8]
	str	lr, [sp]
	str	r1, [sp, #12]
	str	r7, [sp, #8]
	mov	r1, #240
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	moveq	r0, #1
	beq	.L687
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #16]
	add	r3, r3, #1
	stmib	sp, {r3, r7}
	str	r1, [sp, #12]
	str	r2, [sp]
	mov	r1, #240
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r0, [r5, #20]
	mov	lr, pc
	bx	r6
	sub	r3, r0, r7
	rsbs	r0, r3, #0
	adc	r0, r0, r3
.L687:
	ldr	r3, .L717+16
	ldrh	r2, [r3]
	ldr	r3, .L717+20
	tst	r2, #64
	str	r0, [r3]
	ldr	r3, [r4]
	beq	.L688
	ldr	r2, .L717+24
	ldrh	r2, [r2]
	eor	r2, r2, #64
	ands	r2, r0, r2, lsr #6
	movne	r2, #1
	strne	r2, [r4, #48]
	bne	.L689
.L688:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	beq	.L690
	ldr	r2, [r4, #52]
	add	r2, r2, #1
.L689:
	ldr	r1, [r5, #16]
	sub	r3, r3, #1
	cmp	r3, #0
	cmpne	r1, r2
	str	r3, [r4]
	str	r2, [r4, #52]
	moveq	r3, #0
	streq	r3, [r4, #48]
.L692:
	ldr	r3, .L717+28
	ldr	r3, [r3]
	cmp	r3, #4
	beq	.L714
.L695:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	animatePlayer
.L690:
	ldr	r1, [r4, #20]
	ldr	ip, [r4, #8]
	str	r2, [sp, #8]
	ldr	r2, [r4, #16]
	str	r1, [sp, #4]
	str	ip, [sp, #12]
	str	r2, [sp]
	mov	r1, #240
	ldr	r0, [r5, #20]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r3, [r4]
	addne	r3, r3, #2
	strne	r3, [r4]
	ldr	r3, .L717+28
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L695
.L714:
	ldr	r3, .L717+32
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r4, .L717+36
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #2
	ldrne	r3, .L717+40
	strne	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	animatePlayer
.L713:
	ldr	r7, [r4, #12]
	sub	r1, r1, #1
	str	r1, [sp, #4]
	str	ip, [sp, #12]
	mov	r1, #240
	str	lr, [sp]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L715
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #16]
	add	r3, r2, lr
	cmp	r3, #239
	ldrle	ip, [r4, #12]
	addle	r2, r2, ip
	ldr	r0, [r5, #20]
	ldr	r3, [r4]
	ldr	r1, [r4, #20]
	strle	r2, [r4, #4]
	b	.L685
.L711:
	ldr	r6, [r4, #12]
	sub	r1, r1, #1
	rsb	r6, r6, #0
	str	r1, [sp, #4]
	str	r6, [sp, #8]
	mov	r1, #240
	str	ip, [sp, #12]
	str	lr, [sp]
	ldr	r6, .L717+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L716
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ldrgt	ip, [r4, #12]
	subgt	r2, r2, ip
	ldr	r0, [r5, #20]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	strgt	r2, [r4, #4]
	b	.L683
.L716:
	ldr	r0, [r5, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	b	.L683
.L715:
	ldr	r0, [r5, #20]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	b	.L685
.L718:
	.align	2
.L717:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	collisionCheck
	.word	oldButtons
	.word	isGrounded
	.word	buttons
	.word	starsCollected
	.word	laserPortal
	.word	collision
	.word	prizes
	.size	updatePlayerLaser, .-updatePlayerLaser
	.align	2
	.global	initStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStar, %function
initStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r3, #8
	mov	r1, #1
	mov	r9, #19
	mov	r8, #22
	mov	r7, #161
	mov	r6, #53
	mov	r5, #44
	mov	r4, #68
	mov	lr, #182
	mov	ip, #78
	mov	r0, #0
	ldr	r2, .L721
	stm	r2, {r8, r9}
	str	r1, [r2, #56]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	ldr	r2, .L721+4
	stm	r2, {r6, r7}
	str	r1, [r2, #56]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	ldr	r2, .L721+8
	stm	r2, {r4, r5}
	str	r1, [r2, #56]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	ldr	r2, .L721+12
	str	r1, [r2, #56]
	ldr	r1, .L721+16
	stm	r2, {ip, lr}
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r0, [r1]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L722:
	.align	2
.L721:
	.word	leftTop
	.word	rightTop
	.word	leftBottom
	.word	rightBottom
	.word	starsCollected
	.size	initStar, .-initStar
	.align	2
	.global	updateStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStar, %function
updateStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L759
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	push	{r4, r5, r6, lr}
	ldr	r3, .L759+4
	ldrh	r3, [r3]
	ands	r4, r3, #1
	sub	sp, sp, #16
	bne	.L723
	ldr	r5, .L759+8
	ldr	r3, [r5, #56]
	cmp	r3, #0
	bne	.L755
.L728:
	ldr	r4, .L759+12
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L756
.L731:
	ldr	r4, .L759+16
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L757
.L734:
	ldr	r4, .L759+20
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L758
.L723:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L758:
	ldr	r0, .L759+24
	ldr	r5, [r4, #20]
	ldr	ip, [r4, #16]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldr	lr, [r4]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	ldr	r5, .L759+28
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L723
	mov	r1, #0
	ldr	r2, .L759+32
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #56]
	b	.L723
.L757:
	ldr	r0, .L759+24
	ldr	r5, [r4, #20]
	ldr	ip, [r4, #16]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldr	lr, [r4]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	ldr	r5, .L759+28
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L734
	mov	r1, #0
	ldr	r2, .L759+32
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #56]
	b	.L734
.L756:
	ldr	r0, .L759+24
	ldr	r5, [r4, #20]
	ldr	ip, [r4, #16]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldr	lr, [r4]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	ldr	r5, .L759+28
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L731
	mov	r1, #0
	ldr	r2, .L759+32
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #56]
	b	.L731
.L755:
	ldr	r0, .L759+24
	ldr	r6, [r5, #20]
	ldr	ip, [r5, #16]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	lr, [r5]
	ldr	r0, [r0, #4]
	str	r6, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r5, #4]
	ldr	r6, .L759+28
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r2, .L759+32
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r4, [r5, #56]
	strne	r3, [r2]
	b	.L728
.L760:
	.align	2
.L759:
	.word	oldButtons
	.word	buttons
	.word	leftTop
	.word	leftBottom
	.word	rightTop
	.word	rightBottom
	.word	player
	.word	collision
	.word	starsCollected
	.size	updateStar, .-updateStar
	.align	2
	.global	drawStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStar, %function
drawStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L770
	ldr	r3, [r2, #56]
	cmp	r3, #0
	beq	.L762
	mov	r0, #548
	ldr	r3, .L770+4
	ldm	r2, {r1, r2}
	strh	r0, [r3, #100]	@ movhi
	strh	r1, [r3, #96]	@ movhi
	strh	r2, [r3, #98]	@ movhi
.L763:
	ldr	r2, .L770+8
	ldr	r1, [r2, #56]
	cmp	r1, #0
	moveq	r1, #200
	moveq	r0, #16
	ldmne	r2, {r0, r1}
	ldr	r2, .L770+12
	strh	r2, [r3, #108]	@ movhi
	ldr	r2, .L770+16
	strh	r1, [r3, #106]	@ movhi
	ldr	r1, [r2, #56]
	cmp	r1, #0
	strh	r0, [r3, #104]	@ movhi
	beq	.L766
	mov	r0, #580
	ldm	r2, {r1, r2}
	strh	r0, [r3, #116]	@ movhi
	strh	r1, [r3, #112]	@ movhi
	strh	r2, [r3, #114]	@ movhi
.L767:
	ldr	r2, .L770+20
	ldr	r1, [r2, #56]
	cmp	r1, #0
	moveq	r0, #24
	moveq	r1, #200
	ldmne	r2, {r0, r1}
	ldr	r2, .L770+24
	strh	r0, [r3, #120]	@ movhi
	strh	r1, [r3, #122]	@ movhi
	strh	r2, [r3, #124]	@ movhi
	bx	lr
.L762:
	mov	r0, #16
	mov	r1, #192
	mov	r2, #548
	ldr	r3, .L770+4
	strh	r0, [r3, #96]	@ movhi
	strh	r1, [r3, #98]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	b	.L763
.L766:
	mov	r0, #24
	mov	r1, #192
	mov	r2, #580
	strh	r0, [r3, #112]	@ movhi
	strh	r1, [r3, #114]	@ movhi
	strh	r2, [r3, #116]	@ movhi
	b	.L767
.L771:
	.align	2
.L770:
	.word	leftTop
	.word	shadowOAM
	.word	rightTop
	.word	549
	.word	leftBottom
	.word	rightBottom
	.word	581
	.size	drawStar, .-drawStar
	.align	2
	.global	updateSkyfallPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSkyfallPlayer, %function
updateSkyfallPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L791
	ldrh	r3, [r3, #48]
	tst	r3, #32
	sub	sp, sp, #20
	bne	.L773
	ldr	r2, .L791+4
	ldr	r3, [r2, #4]
	cmp	r3, #0
	ldrgt	r1, [r2, #12]
	subgt	r3, r3, r1
	strgt	r3, [r2, #4]
.L773:
	ldr	r3, .L791
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L774
	ldr	r3, .L791+4
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #16]
	add	r2, r1, r2
	cmp	r2, #239
	ldrle	r2, [r3, #12]
	addle	r1, r2, r1
	strle	r1, [r3, #4]
.L774:
	ldr	r3, .L791+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L775
	ldr	r3, .L791+12
	ldrh	r3, [r3]
	ands	r3, r3, #1
	bne	.L775
	ldr	r1, .L791+16
.L777:
	ldr	r2, [r1, r3, lsl #6]
	cmp	r2, #0
	lsl	r2, r3, #6
	beq	.L789
	add	r3, r3, #1
	cmp	r3, #8
	bne	.L777
.L775:
	ldr	r4, .L791+20
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L790
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	animatePlayer
.L790:
	ldr	r0, .L791+4
	ldr	ip, [r4, #16]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	r5, [r4, #20]
	ldr	r0, [r0, #4]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	str	r5, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r5, .L791+24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r1, #0
	movne	r2, #3
	ldrne	r3, .L791+28
	strne	r1, [r4, #56]
	strne	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	animatePlayer
.L789:
	mov	lr, #1
	ldr	ip, .L791+4
	ldr	r1, [ip, #16]
	ldr	r0, [ip, #4]
	add	r1, r1, r1, lsr #31
	add	r1, r0, r1, asr lr
	ldr	r0, .L791+32
	ldr	ip, [ip]
	add	r2, r0, r2
	str	r1, [r2, #4]
	str	ip, [r0, r3, lsl #6]
	str	lr, [r2, #56]
	b	.L775
.L792:
	.align	2
.L791:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.word	skyPlayerBullet+56
	.word	skyPrize
	.word	collision
	.word	prizes
	.word	skyPlayerBullet
	.size	updateSkyfallPlayer, .-updateSkyfallPlayer
	.align	2
	.global	initSkyEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSkyEnemies, %function
initSkyEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #144
	mov	r2, #72
	ldr	r1, .L797
	ldr	r4, .L797+4
	mov	r0, sp
	mov	lr, pc
	bx	r4
	mov	r2, #72
	ldr	r1, .L797+8
	add	r0, sp, r2
	mov	lr, pc
	bx	r4
	add	r0, sp, #68
	mov	r6, r0
	mov	lr, #16
	mov	ip, #1
	mov	r5, #0
	ldr	r3, .L797+12
	sub	r1, sp, #4
.L794:
	ldr	r4, [r1, #4]!
	ldr	r2, [r0, #4]!
	cmp	r1, r6
	sub	r2, r2, #20
	stm	r3, {r2, r4}
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #56]
	str	ip, [r3, #12]
	str	r5, [r3, #60]
	add	r3, r3, #64
	bne	.L794
	add	sp, sp, #144
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L798:
	.align	2
.L797:
	.word	.LANCHOR1+528
	.word	memcpy
	.word	.LANCHOR1+600
	.word	skyEnemies
	.size	initSkyEnemies, .-initSkyEnemies
	.align	2
	.global	updateSkyEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSkyEnemies, %function
updateSkyEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L826
	ldr	r8, .L826+4
	ldr	r9, .L826+8
	ldr	fp, .L826+12
	sub	sp, sp, #20
	add	r7, r5, #1152
	b	.L811
.L801:
	add	r5, r5, #64
	cmp	r5, r7
	beq	.L824
.L811:
	ldr	r3, [r5, #56]
	cmp	r3, #0
	beq	.L801
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #12]
	ldr	r1, [r5, #16]
	cmp	r3, #0
	rsbeq	r2, r2, #0
	add	r1, r3, r1
	streq	r2, [r5, #12]
	cmp	r1, #239
	rsbeq	r2, r2, #0
	ldr	r4, .L826+16
	add	r3, r3, r2
	mov	r10, #0
	streq	r2, [r5, #12]
	str	r3, [r5, #4]
	add	r6, r4, #512
	b	.L807
.L805:
	add	r4, r4, #64
	cmp	r4, r6
	beq	.L825
.L807:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L805
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L805
	mov	r2, #1
	ldr	r3, [r9]
	str	r10, [r4, #56]
	add	r4, r4, #64
	add	r3, r3, r2
	cmp	r4, r6
	str	r3, [r9]
	str	r2, [r5, #60]
	bne	.L807
.L825:
	ldr	r3, [r5, #60]
	cmp	r3, #0
	beq	.L801
	ldr	r3, [r5]
	cmp	r3, #123
	movgt	r3, #124
	movgt	r2, #0
	movgt	r1, r3
	strgt	r2, [r5, #12]
	strgt	r1, [r5]
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	addle	r3, r3, #2
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp]
	str	r3, [sp, #4]
	add	r2, fp, #16
	strle	r3, [r5]
	ldr	r1, [fp]
	ldm	r2, {r2, r3}
	ldr	r0, [fp, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r3, #0
	add	r5, r5, #64
	strne	r3, [r5, #-8]
	cmp	r5, r7
	bne	.L811
.L824:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L827:
	.align	2
.L826:
	.word	skyEnemies
	.word	collision
	.word	skyEnemiesGone
	.word	player
	.word	skyPlayerBullet
	.size	updateSkyEnemies, .-updateSkyEnemies
	.align	2
	.global	drawSkyEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSkyEnemies, %function
drawSkyEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #512
	mov	lr, #548
	ldr	r3, .L834
	ldr	r2, .L834+4
	add	r0, r3, #144
.L831:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	ldrne	r1, [r2, #4]
	ldrne	ip, [r2]
	orrne	r1, r1, #16384
	strhne	lr, [r3, #12]	@ movhi
	strhne	r1, [r3, #10]	@ movhi
	strhne	ip, [r3, #8]	@ movhi
	strheq	r4, [r3, #8]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #64
	bne	.L831
	pop	{r4, lr}
	bx	lr
.L835:
	.align	2
.L834:
	.word	shadowOAM
	.word	skyEnemies
	.size	drawSkyEnemies, .-drawSkyEnemies
	.align	2
	.global	initSkyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSkyBullets, %function
initSkyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #1
	mov	r5, #4
	mov	r4, #8
	mov	lr, #0
	ldr	r3, .L840
	ldr	r2, .L840+4
	add	ip, r3, #256
.L837:
	ldr	r0, [r2, #4]
	ldr	r1, [r2], #64
	str	r6, [r3, #8]
	str	r5, [r3, #20]
	str	r4, [r3, #16]
	str	lr, [r3, #56]
	str	r0, [r3, #4]
	str	r1, [r3]
	add	r3, r3, #64
	cmp	r3, ip
	bne	.L837
	pop	{r4, r5, r6, lr}
	bx	lr
.L841:
	.align	2
.L840:
	.word	skyBullets
	.word	skyEnemies
	.size	initSkyBullets, .-initSkyBullets
	.align	2
	.global	fireSkyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireSkyBullets, %function
fireSkyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r6, .L849
	ldr	r4, .L849+4
	ldr	r5, .L849+8
.L845:
	mov	lr, pc
	bx	r6
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #3
	sub	r3, r0, r3, lsl #1
	add	r2, r4, r3, lsl #6
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L848
	add	r7, r7, #1
	cmp	r7, #4
	bne	.L845
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L848:
	mov	ip, #1
	ldr	r0, .L849+12
	add	r1, r0, r7, lsl #6
	ldr	r1, [r1, #4]
	ldr	r0, [r0, r7, lsl #6]
	add	r1, r1, #8
	str	r0, [r4, r3, lsl #6]
	str	r1, [r2, #4]
	str	ip, [r2, #56]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L850:
	.align	2
.L849:
	.word	rand
	.word	skyBullets
	.word	954437177
	.word	skyEnemies
	.size	fireSkyBullets, .-fireSkyBullets
	.align	2
	.global	updateSkyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSkyBullets, %function
updateSkyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r3, .L860
	add	r1, r3, #256
.L854:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L852
	ldr	r0, [r3]
	ldr	r2, [r3, #20]
	add	r2, r0, r2
	sub	r2, r2, #2
	cmp	r2, #141
	ldrls	r2, [r3, #8]
	addls	r0, r2, r0
	strls	r0, [r3]
	strhi	ip, [r3, #56]
.L852:
	add	r3, r3, #64
	cmp	r3, r1
	bne	.L854
	bx	lr
.L861:
	.align	2
.L860:
	.word	skyBullets
	.size	updateSkyBullets, .-updateSkyBullets
	.align	2
	.global	drawSkyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSkyBullets, %function
drawSkyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #512
	mov	lr, #548
	ldr	r3, .L868
	ldr	r2, .L868+4
	add	r0, r3, #32
.L865:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	ldrne	ip, [r2]
	ldrne	r1, [r2, #4]
	strhne	lr, [r3, #180]	@ movhi
	strhne	ip, [r3, #176]	@ movhi
	strhne	r1, [r3, #178]	@ movhi
	strheq	r4, [r3, #176]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #64
	bne	.L865
	pop	{r4, lr}
	bx	lr
.L869:
	.align	2
.L868:
	.word	shadowOAM
	.word	skyBullets
	.size	drawSkyBullets, .-drawSkyBullets
	.align	2
	.global	initSkyPlayerBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSkyPlayerBullet, %function
initSkyPlayerBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #0
	mov	r2, #4
	mvn	lr, #1
	ldr	r0, .L874
	ldr	r3, .L874+4
	ldr	ip, [r0, #20]
	add	r0, r3, #512
.L871:
	str	r1, [r3, #4]
	str	ip, [r3]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	lr, [r3, #8]
	str	r1, [r3, #56]
	add	r3, r3, #64
	cmp	r3, r0
	bne	.L871
	ldr	lr, [sp], #4
	bx	lr
.L875:
	.align	2
.L874:
	.word	player
	.word	skyPlayerBullet
	.size	initSkyPlayerBullet, .-initSkyPlayerBullet
	.align	2
	.global	fireSkyPlayerBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireSkyPlayerBullet, %function
fireSkyPlayerBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r1, .L886
	b	.L879
.L877:
	add	r3, r3, #1
	cmp	r3, #8
	bxeq	lr
.L879:
	ldr	r2, [r1, r3, lsl #6]
	cmp	r2, #0
	lsl	r2, r3, #6
	bne	.L877
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	ip, .L886+4
	ldr	r1, [ip, #16]
	ldr	r0, [ip, #4]
	add	r1, r1, r1, lsr #31
	add	r1, r0, r1, asr lr
	ldr	r0, .L886+8
	ldr	ip, [ip]
	add	r2, r0, r2
	str	lr, [r2, #56]
	str	r1, [r2, #4]
	str	ip, [r0, r3, lsl #6]
	ldr	lr, [sp], #4
	bx	lr
.L887:
	.align	2
.L886:
	.word	skyPlayerBullet+56
	.word	player
	.word	skyPlayerBullet
	.size	fireSkyPlayerBullet, .-fireSkyPlayerBullet
	.align	2
	.global	updateSkyPlayerBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSkyPlayerBullet, %function
updateSkyPlayerBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #0
	ldr	r3, .L897
	add	r0, r3, #512
.L891:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L889
	ldr	r1, [r3]
	ldr	r2, [r3, #20]
	add	r2, r1, r2
	cmp	r2, #1
	ble	.L890
	ldmib	r3, {r2, ip}
	add	r2, ip, r2
	sub	r2, r2, #1
	cmp	r2, #222
	addls	r1, r1, ip
	strls	r1, [r3]
	bls	.L889
.L890:
	str	lr, [r3, #56]
.L889:
	add	r3, r3, #64
	cmp	r3, r0
	bne	.L891
	ldr	lr, [sp], #4
	bx	lr
.L898:
	.align	2
.L897:
	.word	skyPlayerBullet
	.size	updateSkyPlayerBullet, .-updateSkyPlayerBullet
	.align	2
	.global	drawSkyPlayerBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSkyPlayerBullet, %function
drawSkyPlayerBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L914
	ldr	r1, [r2, #56]
	ldr	r3, .L914+4
	cmp	r1, #0
	mov	ip, #512
	add	r0, r3, #32
	bne	.L909
.L912:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #64
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L912
.L909:
	str	lr, [sp, #-4]!
.L906:
	ldr	lr, [r2]
	ldr	r1, [r2, #4]
	strh	ip, [r3, #4]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #64
	beq	.L913
.L902:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L906
	strh	ip, [r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #64
	bne	.L902
.L913:
	ldr	lr, [sp], #4
	bx	lr
.L915:
	.align	2
.L914:
	.word	skyPlayerBullet
	.word	shadowOAM+320
	.size	drawSkyPlayerBullet, .-drawSkyPlayerBullet
	.align	2
	.global	initSkyPrize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSkyPrize, %function
initSkyPrize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	mov	r2, #16
	mov	r0, #100
	ldr	r3, .L917
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r1, [r3, #56]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L918:
	.align	2
.L917:
	.word	skyPrize
	.size	initSkyPrize, .-initSkyPrize
	.align	2
	.global	updateSkyPrize
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSkyPrize, %function
updateSkyPrize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L923
	ldr	r3, [r3, #188]
	cmp	r3, #0
	beq	.L920
	mov	r2, #1
	ldr	r3, .L923+4
	str	r2, [r3, #56]
.L921:
	b	updateSkyPrize.part.0
.L920:
	ldr	r3, .L923+4
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bxeq	lr
	b	.L921
.L924:
	.align	2
.L923:
	.word	skyEnemies
	.word	skyPrize
	.size	updateSkyPrize, .-updateSkyPrize
	.align	2
	.global	drawSkyPrize
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSkyPrize, %function
drawSkyPrize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L927
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawSkyPrize.part.0
.L926:
	mov	r2, #512
	ldr	r3, .L927+4
	strh	r2, [r3]	@ movhi
	bx	lr
.L928:
	.align	2
.L927:
	.word	skyPrize
	.word	shadowOAM+368
	.size	drawSkyPrize, .-drawSkyPrize
	.align	2
	.global	initLasers2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLasers2, %function
initLasers2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #92
	add	r6, sp, #16
	mov	r10, r6
	add	lr, sp, #48
	mov	r8, lr
	mov	r7, #1
	mov	r5, #16
	mov	r4, #8
	ldr	ip, .L935
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r10!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	fp, [ip], #4
	stmia	r10!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	add	r9, sp, #52
	stmia	r9!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	str	fp, [r10]
	stmia	r9!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [r9]
	ldr	r3, .L935+4
	add	r2, sp, #12
.L930:
	ldr	r0, [r2, #4]!
	ldr	r1, [lr, #4]!
	cmp	r2, r8
	str	r7, [r3, #56]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	r0, [r3, #4]
	str	r1, [r3]
	add	r3, r3, #64
	bne	.L930
	mov	r7, #119
	mov	r5, #1
	mov	r4, #5
	mov	lr, #16
	ldr	r2, .L935+8
	ldm	r2, {r0, r1, r2}
	add	r3, sp, #4
	mov	ip, r3
	stm	r3, {r0, r1, r2}
	ldr	r3, .L935+12
.L931:
	ldr	r2, [ip], #4
	cmp	ip, r6
	str	r7, [r3]
	str	r5, [r3, #56]
	str	r4, [r3, #20]
	str	lr, [r3, #16]
	str	r2, [r3, #4]
	add	r3, r3, #64
	bne	.L931
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L936:
	.align	2
.L935:
	.word	.LANCHOR1+672
	.word	lasers2
	.word	.LANCHOR1+744
	.word	upLasers
	.size	initLasers2, .-initLasers2
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L962
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L954
	cmp	r4, #1
	beq	.L955
	cmp	r4, #2
	beq	.L956
	cmp	r4, #3
	beq	.L957
	cmp	r4, #4
	beq	.L958
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L954:
	bl	initScoreBarBar
	ldr	r3, .L962+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L959
	cmp	r3, #1
	beq	.L960
	cmp	r3, #2
	beq	.L961
	cmp	r3, #3
	beq	.L952
	ldr	r5, .L962+8
	ldr	r7, .L962+12
	ldr	r6, .L962+16
.L940:
	mov	r1, #16
	mov	ip, #320
	mov	r0, #280
	mov	lr, #13
	mov	r2, #24
	mov	r3, #232
	mov	r4, #32
	str	r1, [r7, #16]
	str	r1, [r6, #16]
	ldr	r1, .L962+20
	stm	r7, {r0, ip}
	add	r0, r0, #138
	str	r4, [r5, #16]
	str	lr, [r5, #20]
	mov	r4, #0
	str	r2, [r7, #20]
	str	r2, [r6, #20]
	str	r3, [r6, #4]
	str	r3, [r6]
	str	r0, [r5, #4]
	str	r1, [r5]
	bl	initPlayer
	mov	r1, #3
	mov	r2, #5
	ldr	r3, .L962+24
	ldr	r0, .L962+28
	ldr	ip, [r3]
	ldr	r3, .L962+32
	str	ip, [r0]
	str	r4, [r3, #56]
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	r1, [r3, #8]
	str	r1, [r3, #40]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bl	initLivesSB
	mov	r1, #10
	mov	r2, #8
	ldr	r3, .L962+36
	ldr	r0, .L962+40
	str	r4, [r3, #36]
	str	r4, [r0, #36]
	str	r1, [r0, #40]
	str	r1, [r3, #40]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L956:
	mov	r4, #0
	ldr	r2, .L962+44
	ldr	r3, .L962+48
	str	r4, [r2]
	str	r4, [r3]
	mov	r6, #1
	bl	initPlayer
	mov	r5, #4
	mov	r1, r4
	mov	r4, #8
	ldr	r3, .L962+52
	ldr	r2, .L962+56
	add	lr, r3, #256
.L946:
	ldr	ip, [r2, #4]
	ldr	r0, [r2], #64
	str	r6, [r3, #8]
	str	r5, [r3, #20]
	str	r4, [r3, #16]
	str	r1, [r3, #56]
	stm	r3, {r0, ip}
	add	r3, r3, #64
	cmp	r3, lr
	bne	.L946
	bl	initSkyEnemies
	mov	r2, #0
	mov	r1, #4
	mvn	lr, #1
	ldr	r0, .L962+60
	ldr	r3, .L962+64
	ldr	ip, [r0, #20]
	add	r0, r3, #512
.L947:
	str	r2, [r3, #4]
	str	ip, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3, #8]
	str	r2, [r3, #56]
	add	r3, r3, #64
	cmp	r0, r3
	bne	.L947
	mov	r1, #16
	mov	r0, #100
	ldr	r3, .L962+68
	pop	{r4, r5, r6, r7, r8, lr}
	str	r0, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #56]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	bx	lr
.L955:
	mov	r5, #0
	mov	r6, #16
	mov	r1, #5
	mov	r2, #100
	ldr	r3, .L962+72
	ldr	ip, .L962+44
	ldr	r0, .L962+48
	str	r5, [ip]
	str	r5, [r0]
	str	r5, [r3, #56]
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	bl	initPlayer
	mov	r0, #104
	mov	r1, #24
	mov	r2, #3
	mov	lr, #25
	mov	ip, #11
	ldr	r3, .L962+76
	str	r0, [r3]
	str	r1, [r3, #16]
	str	r2, [r3, #40]
	str	r5, [r3, #4]
	str	r6, [r3, #20]
	str	r4, [r3, #12]
	str	r5, [r3, #24]
	str	r5, [r3, #36]
	ldr	r3, .L962+80
	stm	r3, {r0, r5}
	str	r1, [r3, #16]
	str	r2, [r3, #40]
	str	r6, [r3, #20]
	str	r4, [r3, #12]
	str	r5, [r3, #24]
	str	r5, [r3, #36]
	ldr	r3, .L962+84
	ldr	r7, .L962+88
	stm	r3, {r0, r5}
	str	r1, [r3, #16]
	str	r2, [r3, #40]
	ldr	r0, .L962+92
	ldr	r1, .L962+96
	ldr	r2, .L962+100
	str	r6, [r3, #20]
	str	r4, [r3, #12]
	str	r5, [r3, #24]
	str	r5, [r3, #36]
	str	lr, [r7]
	str	lr, [r0]
	str	ip, [r1]
	str	ip, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	b	initCone
.L959:
	mov	r0, #352
	mov	r4, #1
	ldr	r2, .L962+44
	ldr	r1, .L962+48
	str	r0, [r2]
	ldr	r5, .L962+8
	ldr	r2, .L962+104
	ldr	r7, .L962+12
	ldr	r6, .L962+16
	str	r3, [r1]
	str	r3, [r2, #56]
	str	r3, [r7, #56]
	str	r3, [r6, #56]
	str	r4, [r5, #56]
	bl	initBallsP0
	bl	initPrizeSB
	bl	initEnemyP0
	mov	r2, #8
	mov	r0, #280
	ldr	r3, .L962+108
	ldr	r1, .L962+112
	str	r4, [r3, #56]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	b	.L940
.L957:
	mov	r3, #0
	ldr	r1, .L962+44
	ldr	r2, .L962+48
	str	r3, [r1]
	str	r3, [r2]
	bl	initPlayer
	bl	initLasers2
	mov	lr, #224
	mov	ip, #120
	mov	r0, #16
	mov	r1, #14
	mov	r2, #1
	ldr	r3, .L962+116
	stm	r3, {ip, lr}
	pop	{r4, r5, r6, r7, r8, lr}
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #56]
	b	initStar
.L958:
	bl	initScoreBarBar
	mov	r0, #352
	mov	r2, #0
	ldr	r1, .L962+44
	ldr	r3, .L962+48
	pop	{r4, r5, r6, r7, r8, lr}
	str	r0, [r1]
	str	r2, [r3]
	b	initPlayer
.L960:
	mov	r1, #352
	ldr	r2, .L962+44
	ldr	r7, .L962+12
	str	r1, [r2]
	ldr	r2, .L962+104
	ldr	r5, .L962+8
	ldr	r6, .L962+16
	str	r3, [r7, #56]
	str	r4, [r2, #56]
	ldr	r3, .L962+48
	ldr	r2, .L962+120
	str	r4, [r5, #56]
	str	r2, [r3]
	str	r4, [r6, #56]
	bl	initBallsP1
	bl	initEnemyP1
	b	.L940
.L961:
	mov	r3, #1
	mov	r2, #272
	mov	r0, #216
	ldr	r6, .L962+16
	str	r3, [r6, #56]
	ldr	r3, .L962+48
	ldr	r1, .L962+44
	str	r2, [r3]
	ldr	r5, .L962+8
	ldr	r3, .L962+104
	ldr	r7, .L962+12
	str	r0, [r1]
	str	r4, [r3, #56]
	str	r4, [r5, #56]
	str	r4, [r7, #56]
	bl	initBallsP2
	bl	initEnemyP2
	b	.L940
.L952:
	mov	lr, #496
	mov	ip, #128
	mov	r0, #1
	mov	r1, #16
	mov	r2, #100
	ldr	r3, .L962+104
	ldr	r5, .L962+8
	stm	r3, {ip, lr}
	str	r0, [r3, #56]
	ldr	ip, .L962+44
	ldr	r0, .L962+48
	ldr	r7, .L962+12
	ldr	r6, .L962+16
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [ip]
	str	r2, [r0]
	str	r4, [r5, #56]
	str	r4, [r7, #56]
	str	r4, [r6, #56]
	bl	initBallsP3
	bl	initEnemyP3
	b	.L940
.L963:
	.align	2
.L962:
	.word	level
	.word	prizes
	.word	portal1
	.word	portal2
	.word	portal3
	.word	465
	.word	collectedBalls
	.word	bullAmt
	.word	bullets
	.word	ballAmount1
	.word	ballAmount2
	.word	vOff
	.word	hOff
	.word	skyBullets
	.word	skyEnemies
	.word	player
	.word	skyPlayerBullet
	.word	skyPrize
	.word	mazePrize
	.word	truck
	.word	carA
	.word	carB
	.word	col
	.word	colB
	.word	row
	.word	rowB
	.word	winPortal
	.word	cheatPortal
	.word	489
	.word	laserPortal
	.word	271
	.size	initGame, .-initGame
	.align	2
	.global	updateLasers2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLasers2, %function
updateLasers2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L980
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	sub	sp, sp, #20
	ldr	r5, .L980+4
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	r7, .L980+8
	mov	lr, pc
	bx	r7
	subs	r6, r0, #0
	beq	.L965
	mov	r1, #0
	mov	r2, #32
	mov	r3, #128
	str	r1, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
.L964:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L965:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #80
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #64]
	ldr	r0, [r5, #68]
	mov	lr, pc
	bx	r7
	subs	r8, r0, #0
	beq	.L967
	mov	r2, #156
	mov	r3, #96
	str	r6, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L967:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #144
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #128]
	ldr	r0, [r5, #132]
	mov	lr, pc
	bx	r7
	subs	r6, r0, #0
	beq	.L968
	mov	r2, #166
	mov	r3, #128
	str	r8, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L964
.L968:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #208
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #192]
	ldr	r0, [r5, #196]
	mov	lr, pc
	bx	r7
	subs	r8, r0, #0
	beq	.L969
	mov	r2, #40
	mov	r3, #16
	str	r6, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L964
.L969:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #272
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #256]
	ldr	r0, [r5, #260]
	mov	lr, pc
	bx	r7
	subs	r6, r0, #0
	beq	.L970
	mov	r2, #176
	mov	r3, #72
	str	r8, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L964
.L970:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #336
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #320]
	ldr	r0, [r5, #324]
	mov	lr, pc
	bx	r7
	subs	r8, r0, #0
	beq	.L971
	mov	r2, #88
	mov	r3, #40
	str	r6, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L964
.L971:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #400
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #384]
	ldr	r0, [r5, #388]
	mov	lr, pc
	bx	r7
	subs	r9, r0, #0
	beq	.L972
	mov	r3, #16
	str	r8, [r4, #48]
	str	r3, [r4, #4]
	str	r3, [r4]
	b	.L964
.L972:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #464
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #448]
	ldr	r0, [r5, #452]
	mov	lr, pc
	bx	r7
	subs	r6, r0, #0
	beq	.L973
	mov	r2, #16
	mov	r3, #88
	str	r9, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L964
.L973:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #528
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #512]
	ldr	r0, [r5, #516]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L974
	mov	r2, #40
	mov	r3, #64
	str	r6, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L964
.L974:
	ldr	r5, .L980+12
	ldr	ip, [r4, #16]
	add	r2, r5, #80
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #64]
	ldr	r0, [r5, #68]
	ldr	r6, [r4, #20]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	str	r6, [sp, #12]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L975
	mov	r1, #0
	mov	r2, #104
	mov	r3, #72
	str	r1, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L964
.L975:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #144
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #128]
	ldr	r0, [r5, #132]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L964
	mov	r1, #0
	mov	r2, #156
	mov	r3, #48
	str	r1, [r4, #48]
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L964
.L981:
	.align	2
.L980:
	.word	player
	.word	lasers2
	.word	collision
	.word	upLasers
	.size	updateLasers2, .-updateLasers2
	.align	2
	.global	drawLasers2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLasers2, %function
drawLasers2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L988
	mov	ip, r4
	ldr	lr, .L988+4
	sub	sp, sp, #100
	ldmia	lr!, {r0, r1, r2, r3}
	add	r6, sp, #24
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	ldr	r7, [lr], #4
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	add	r5, sp, #60
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	str	r7, [r6]
	stmia	r5!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	ldr	r2, .L988+8
	str	r3, [r5]
	add	r6, r4, #72
	add	lr, sp, #56
	add	r0, sp, #20
.L983:
	ldr	r5, [lr, #4]!
	ldr	r3, [r0, #4]!
	ldr	r1, [r2]
	add	r3, r3, r5, lsl #5
	ldr	r5, [r2, #4]
	orr	r3, r3, #8192
	orr	r1, r1, #16384
	strh	r3, [ip, #12]	@ movhi
	strh	r1, [ip, #8]	@ movhi
	strh	r5, [ip, #10]	@ movhi
	add	ip, ip, #8
	cmp	r6, ip
	add	r2, r2, #64
	bne	.L983
	mov	r6, sp
	mov	lr, r6
	ldr	r3, .L988+12
	ldm	r3, {r0, r1, r2}
	add	r3, r3, #12
	stm	r6, {r0, r1, r2}
	ldm	r3, {r0, r1, r2}
	add	r5, sp, #12
	stm	r5, {r0, r1, r2}
	mov	ip, r5
	ldr	r2, .L988+16
	ldr	r5, .L988+20
.L984:
	ldr	r0, [ip], #4
	ldr	r3, [lr], #4
	ldr	r1, [r2]
	add	r3, r3, r0, lsl #5
	ldr	r0, [r2, #4]
	orr	r3, r3, #8192
	orr	r1, r1, #16384
	strh	r3, [r4, #212]	@ movhi
	strh	r1, [r4, #208]	@ movhi
	strh	r0, [r4, #210]	@ movhi
	add	r4, r4, #8
	cmp	r5, r4
	add	r2, r2, #64
	bne	.L984
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L989:
	.align	2
.L988:
	.word	shadowOAM
	.word	.LANCHOR1+756
	.word	lasers2
	.word	.LANCHOR1+828
	.word	upLasers
	.word	shadowOAM+24
	.size	drawLasers2, .-drawLasers2
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1052
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	bne	.L991
	ldr	r3, .L1052+4
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L1043
	cmp	r4, #1
	beq	.L1044
	cmp	r4, #2
	beq	.L1045
	cmp	r4, #3
	beq	.L1046
.L994:
	ldr	r3, .L1052+8
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L997
	ldr	r4, .L1052+12
	ldrh	r3, [r4]
	orr	r3, r3, #512
	strh	r3, [r4]	@ movhi
.L998:
	ldr	r3, .L1052+16
	ldr	r3, [r3, #56]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r4, #112]	@ movhi
	blne	drawBullets.part.0
.L1000:
	bl	drawPortals
	ldr	r3, .L1052+20
	ldr	r3, [r3, #56]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r4, #104]	@ movhi
	blne	drawWinPortal.part.0
.L1002:
	ldr	r3, .L1052+24
	ldr	r2, .L1052+28
	ldr	lr, .L1052+32
	add	ip, r3, #120
.L1003:
	ldm	r2, {r0, r1}
	orr	r1, r1, #16384
	strh	lr, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	add	r3, r3, #8
	cmp	ip, r3
	add	r2, r2, #64
	bne	.L1003
	mov	r1, #2
	mov	lr, #125
	mov	r5, #119
	mov	ip, #110
	mov	r0, #45
	ldr	r3, .L1052+36
	ldr	r2, [r3, #36]
	ldr	r3, .L1052+40
	ldr	r3, [r3, #36]
	lsl	r2, r2, #5
	lsl	r3, r3, #5
	add	r2, r2, #12
	add	r3, r3, #12
	strh	r2, [r4, #68]	@ movhi
	strh	r3, [r4, #76]	@ movhi
	strh	r1, [r4, #64]	@ movhi
	strh	r1, [r4, #72]	@ movhi
	strh	r1, [r4, #56]	@ movhi
	strh	r5, [r4, #66]	@ movhi
	strh	lr, [r4, #74]	@ movhi
	strh	ip, [r4, #58]	@ movhi
	strh	r0, [r4, #60]	@ movhi
	bl	drawLivesSB
	pop	{r4, r5, r6, lr}
	b	drawPrizeSB
.L991:
	cmp	r3, #1
	beq	.L1047
	cmp	r3, #2
	beq	.L1048
	cmp	r3, #3
	beq	.L1049
	cmp	r3, #4
	beq	.L1050
.L990:
	pop	{r4, r5, r6, lr}
	bx	lr
.L997:
	bl	drawPlayer.part.0
	ldr	r4, .L1052+12
	b	.L998
.L1047:
	ldr	r3, .L1052+44
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L1005
	bl	drawMazePrize.part.0
.L1006:
	ldr	r3, .L1052+8
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L1007
	ldr	r2, .L1052+12
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L1008:
	ldr	r3, .L1052+48
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L1009
	bl	drawTruck.part.0
.L1010:
	ldr	r3, .L1052+52
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L1011
	bl	drawCarA.part.0
.L1012:
	ldr	r3, .L1052+56
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L1013
	bl	drawCarB.part.0
.L1014:
	pop	{r4, r5, r6, lr}
	b	drawCone
.L1043:
	bl	drawBallsP0
	bl	drawEnemyP0
	ldr	r3, .L1052+60
	ldr	r2, [r3, #56]
	cmp	r2, #0
	moveq	r2, #512
	ldrne	r2, .L1052+64
	ldmne	r3, {r1, r3}
	ldreq	r3, .L1052+68
	strhne	r4, [r2, #4]	@ movhi
	strhne	r1, [r2]	@ movhi
	strhne	r3, [r2, #2]	@ movhi
	strheq	r2, [r3]	@ movhi
	b	.L994
.L1049:
	ldr	r3, .L1052+8
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L1051
	bl	drawPlayer.part.0
.L1031:
	bl	drawLasers2
	ldr	r3, .L1052+72
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L1032
	bl	drawLaserPortal.part.0
.L1033:
	pop	{r4, r5, r6, lr}
	b	drawStar
.L1048:
	ldr	r3, .L1052+8
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L1016
	ldr	r4, .L1052+12
	ldrh	r3, [r4]
	orr	r3, r3, #512
	strh	r3, [r4]	@ movhi
.L1017:
	mov	r4, #512
	mov	lr, #548
	ldr	r0, .L1052+76
	ldr	r2, .L1052+80
	sub	r3, r0, #32
.L1020:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	ldrne	ip, [r2]
	ldrne	r1, [r2, #4]
	strhne	lr, [r3, #180]	@ movhi
	strhne	ip, [r3, #176]	@ movhi
	strhne	r1, [r3, #178]	@ movhi
	strheq	r4, [r3, #176]	@ movhi
	add	r3, r3, #8
	cmp	r3, r0
	add	r2, r2, #64
	bne	.L1020
	mov	r4, #512
	mov	lr, #548
	ldr	r0, .L1052+84
	ldr	r2, .L1052+88
	sub	r3, r0, #144
.L1023:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	ldrne	r1, [r2, #4]
	ldrne	ip, [r2]
	orrne	r1, r1, #16384
	strhne	lr, [r3, #12]	@ movhi
	strhne	r1, [r3, #10]	@ movhi
	strhne	ip, [r3, #8]	@ movhi
	strheq	r4, [r3, #8]	@ movhi
	add	r3, r3, #8
	cmp	r0, r3
	add	r2, r2, #64
	bne	.L1023
	mov	ip, #512
	ldr	r3, .L1052+92
	ldr	r2, .L1052+96
	add	r0, r3, #32
.L1026:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	ldrne	lr, [r2]
	ldrne	r1, [r2, #4]
	strhne	ip, [r3, #4]	@ movhi
	strhne	lr, [r3]	@ movhi
	strhne	r1, [r3, #2]	@ movhi
	strheq	ip, [r3]	@ movhi
	add	r3, r3, #8
	cmp	r0, r3
	add	r2, r2, #64
	bne	.L1026
	ldr	r3, .L1052+100
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L1027
	pop	{r4, r5, r6, lr}
	b	drawSkyPrize.part.0
.L1013:
	ldr	r2, .L1052+12
	ldrh	r3, [r2, #40]
	orr	r3, r3, #512
	strh	r3, [r2, #40]	@ movhi
	b	.L1014
.L1011:
	ldr	r2, .L1052+12
	ldrh	r3, [r2, #32]
	orr	r3, r3, #512
	strh	r3, [r2, #32]	@ movhi
	b	.L1012
.L1009:
	ldr	r2, .L1052+12
	ldrh	r3, [r2, #24]
	orr	r3, r3, #512
	strh	r3, [r2, #24]	@ movhi
	b	.L1010
.L1007:
	bl	drawPlayer.part.0
	b	.L1008
.L1005:
	mov	r2, #512
	ldr	r3, .L1052+12
	strh	r2, [r3, #8]	@ movhi
	b	.L1006
.L1044:
	bl	drawBallsP1
	bl	drawEnemyP1
	b	.L994
.L1027:
	mov	r2, #512
	ldr	r3, .L1052+104
	strh	r2, [r3]	@ movhi
	b	.L990
.L1016:
	bl	drawPlayer.part.0
	b	.L1017
.L1045:
	bl	drawBallsP2
	bl	drawEnemyP2
	b	.L994
.L1046:
	bl	drawBallsP3
	bl	drawEnemyP3
	b	.L994
.L1051:
	ldr	r2, .L1052+12
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	b	.L1031
.L1050:
	ldr	r3, .L1052+8
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L1034
	ldr	r2, .L1052+12
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L1035:
	ldr	r3, .L1052+24
	ldr	r2, .L1052+28
	ldr	lr, .L1052+32
	add	ip, r3, #120
.L1036:
	ldm	r2, {r0, r1}
	orr	r1, r1, #16384
	strh	lr, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	add	r2, r2, #64
	bne	.L1036
	bl	drawLivesSB
	pop	{r4, r5, r6, lr}
	b	drawPrizeSB
.L1032:
	mov	r2, #512
	ldr	r3, .L1052+12
	strh	r2, [r3, #240]	@ movhi
	b	.L1033
.L1034:
	bl	drawPlayer.part.0
	b	.L1035
.L1053:
	.align	2
.L1052:
	.word	level
	.word	prizes
	.word	player
	.word	shadowOAM
	.word	bullets
	.word	winPortal
	.word	shadowOAM+280
	.word	scoreBar
	.word	-28128
	.word	ballAmount1
	.word	ballAmount2
	.word	mazePrize
	.word	truck
	.word	carA
	.word	carB
	.word	cheatPortal
	.word	shadowOAM+640
	.word	shadowOAM+644
	.word	laserPortal
	.word	shadowOAM+32
	.word	skyBullets
	.word	shadowOAM+144
	.word	skyEnemies
	.word	shadowOAM+320
	.word	skyPlayerBullet
	.word	skyPrize
	.word	shadowOAM+368
	.size	drawGame, .-drawGame
	.align	2
	.global	initLaserPortal
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLaserPortal, %function
initLaserPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #120
	mov	lr, #224
	mov	r0, #16
	mov	r1, #14
	mov	r2, #1
	ldr	r3, .L1056
	stm	r3, {ip, lr}
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #56]
	ldr	lr, [sp], #4
	bx	lr
.L1057:
	.align	2
.L1056:
	.word	laserPortal
	.size	initLaserPortal, .-initLaserPortal
	.align	2
	.global	drawLaserPortal
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLaserPortal, %function
drawLaserPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1060
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	drawLaserPortal.part.0
.L1059:
	mov	r2, #512
	ldr	r3, .L1060+4
	strh	r2, [r3, #240]	@ movhi
	bx	lr
.L1061:
	.align	2
.L1060:
	.word	laserPortal
	.word	shadowOAM
	.size	drawLaserPortal, .-drawLaserPortal
	.align	2
	.global	initCheatPortal
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCheatPortal, %function
initCheatPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	ip, #280
	mov	r1, #1
	ldr	r3, .L1063
	ldr	r0, .L1063+4
	str	r1, [r3, #56]
	stm	r3, {r0, ip}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L1064:
	.align	2
.L1063:
	.word	cheatPortal
	.word	489
	.size	initCheatPortal, .-initCheatPortal
	.align	2
	.global	updateCheatPortal
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCheatPortal, %function
updateCheatPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L1071
	add	r1, r3, #16
	ldm	r1, {r1, ip}
	ldm	r3, {r2, r3}
	sub	sp, sp, #16
	ldr	r0, .L1071+4
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	r4, .L1071+8
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L1071+12
	strne	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L1072:
	.align	2
.L1071:
	.word	bullets
	.word	cheatPortal
	.word	collision
	.word	sewerActivate
	.size	updateCheatPortal, .-updateCheatPortal
	.align	2
	.global	drawCheatPortal
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCheatPortal, %function
drawCheatPortal:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1076
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L1074
	mov	r1, #0
	ldr	r2, .L1076+4
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L1074:
	mov	r2, #512
	ldr	r3, .L1076+8
	strh	r2, [r3]	@ movhi
	bx	lr
.L1077:
	.align	2
.L1076:
	.word	cheatPortal
	.word	shadowOAM+640
	.word	shadowOAM+644
	.size	drawCheatPortal, .-drawCheatPortal
	.align	2
	.global	updateSewerPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSewerPlayer, %function
updateSewerPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, .L1105
	ldrh	r3, [r3, #48]
	ldr	r4, .L1105+4
	ldr	r5, .L1105+8
	ands	ip, r3, #32
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	ldr	r0, [r5, #24]
	sub	sp, sp, #20
	bne	.L1101
	cmp	r2, #0
	bgt	.L1099
.L1101:
	ldr	r6, .L1105+12
.L1079:
	ldr	ip, .L1105
	ldrh	ip, [ip, #48]
	ands	ip, ip, #16
	bne	.L1081
	add	r7, r2, lr
	cmp	r7, #512
	blt	.L1102
.L1081:
	mov	r7, #0
	add	r1, r1, #1
	str	r1, [sp, #4]
	ldr	r1, [r4, #8]
	str	lr, [sp]
	str	r1, [sp, #12]
	str	r7, [sp, #8]
	mov	r1, #512
	mov	lr, pc
	bx	r6
	sub	r3, r0, r7
	rsbs	r0, r3, #0
	adc	r0, r0, r3
	ldr	r3, .L1105+16
	ldrh	r2, [r3]
	ldr	r3, .L1105+20
	tst	r2, #64
	str	r0, [r3]
	beq	.L1083
	ldr	r3, .L1105+24
	ldrh	r3, [r3]
	eor	r3, r3, #64
	ands	r3, r0, r3, lsr #6
	ldr	r2, [r4, #4]
	ldr	r0, [r5, #24]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r8, [r4, #20]
	ldr	r1, [r4, #8]
	bne	.L1103
.L1084:
	ldr	ip, [r4, #48]
	cmp	ip, #0
	bne	.L1085
	str	r1, [sp, #12]
	stmib	sp, {r8, ip}
	mov	r1, #512
	str	lr, [sp]
	ldr	r5, .L1105+28
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r0, #0
	addne	r3, r3, #1
	strne	r3, [r4]
.L1090:
	ldr	r2, [r4, #20]
	add	r3, r3, r2
	cmp	r3, #508
	bne	.L1092
	mov	lr, #352
	mov	r3, #0
	mov	ip, #488
	mov	r1, #2
	mov	r2, #1
	ldr	r0, .L1105+32
	str	lr, [r0]
	ldr	r0, .L1105+36
	str	r3, [r4, #4]
	str	ip, [r4]
	str	r3, [r0]
	str	r1, [r4, #12]
	str	r2, [r4, #8]
.L1092:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	animatePlayer
.L1103:
	mov	ip, #1
	ldr	r9, .L1105+40
	str	r7, [r4, #52]
	str	ip, [r4, #48]
	str	ip, [r9]
.L1085:
	mov	r7, #0
	rsb	r1, r1, #0
	str	r1, [sp, #12]
	str	r8, [sp, #4]
	mov	r1, #512
	str	lr, [sp]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	bne	.L1087
	mov	r2, #1
	ldr	r3, .L1105+44
	str	r7, [r4, #48]
	str	r2, [r3]
.L1088:
	ldr	r2, [r4, #52]
	ldr	r1, [r5, #16]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r4, #52]
	moveq	r2, #0
	ldr	r3, [r4]
	sub	r3, r3, #2
	str	r3, [r4]
	streq	r2, [r4, #48]
	b	.L1090
.L1083:
	ldr	r0, [r5, #24]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r8, [r4, #20]
	ldr	r1, [r4, #8]
	b	.L1084
.L1087:
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	rsb	r3, r3, #0
	str	r3, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	str	r7, [sp, #8]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r0, [r5, #24]
	mov	lr, pc
	bx	r6
	cmp	r0, #3
	bne	.L1089
	mov	r2, #1
	ldr	r3, .L1105+48
	str	r7, [r4, #48]
	str	r2, [r3]
	b	.L1088
.L1099:
	ldr	r6, [r4, #12]
	sub	r1, r1, #1
	rsb	r6, r6, #0
	str	r1, [sp, #4]
	str	r6, [sp, #8]
	mov	r1, #512
	str	ip, [sp, #12]
	str	lr, [sp]
	ldr	r6, .L1105+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L1104
	ldr	r9, .L1105+36
	ldr	r2, [r4, #4]
	ldr	r7, [r4, #12]
	ldr	ip, [r9]
	sub	r2, r2, r7
	cmp	ip, #0
	str	r2, [r4, #4]
	ldr	lr, [r4, #16]
	ldr	r0, [r5, #24]
	ldr	r3, [r4]
	ldr	r1, [r4, #20]
	ble	.L1079
	sub	r8, r2, ip
	sub	r8, r8, r7
	cmp	r8, #120
	suble	ip, ip, r7
	strle	ip, [r9]
	b	.L1079
.L1102:
	ldr	r7, [r4, #12]
	sub	r1, r1, #1
	str	r1, [sp, #4]
	str	ip, [sp, #12]
	mov	r1, #512
	str	lr, [sp]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L1082
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #16]
	ldr	r0, [r5, #24]
	ldr	r3, [r4]
	ldr	r1, [r4, #20]
	b	.L1081
.L1089:
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	rsb	r3, r3, #0
	str	r3, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	str	r7, [sp, #8]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	r1, #512
	ldr	r0, [r5, #24]
	mov	lr, pc
	bx	r6
	cmp	r0, #7
	moveq	r2, #1
	ldreq	r3, .L1105+52
	streq	r7, [r4, #48]
	streq	r2, [r3]
	b	.L1088
.L1104:
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #16]
	ldr	r0, [r5, #24]
	ldr	r3, [r4]
	ldr	r1, [r4, #20]
	b	.L1079
.L1082:
	ldr	r8, .L1105+36
	ldr	r7, [r8]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #4]
	add	r3, r7, #240
	add	r3, r3, ip
	cmp	r3, #512
	add	r2, ip, r2
	str	r2, [r4, #4]
	ldr	lr, [r4, #16]
	ldr	r0, [r5, #24]
	ldr	r3, [r4]
	ldr	r1, [r4, #20]
	bge	.L1081
	sub	r9, r2, r7
	cmp	r9, #119
	addgt	ip, ip, r7
	strgt	ip, [r8]
	b	.L1081
.L1106:
	.align	2
.L1105:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	collisionCheck
	.word	oldButtons
	.word	isGrounded
	.word	buttons
	.word	footCollision
	.word	vOff
	.word	hOff
	.word	up
	.word	cheatPort1
	.word	cheatPort2
	.word	cheatPort3
	.size	updateSewerPlayer, .-updateSewerPlayer
	.align	2
	.global	setupSounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L1108
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L1109:
	.align	2
.L1108:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r3, .L1112+8
	ldr	r3, [r3]
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #20]
	mov	r0, #1
	mov	r3, #910163968
	ldr	r2, .L1112+12
	ldr	r4, .L1112+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	mvn	r0, #1520
	mov	r1, #128
	ldr	r4, .L1112+20
	ldr	r3, .L1112+24
	strh	r7, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	mov	r0, r5
	str	r5, [r4, #4]
	str	r2, [r4, #12]
	ldr	r3, .L1112+28
	str	r6, [r4]
	str	r8, [r4, #16]
	str	r7, [r4, #28]
	mov	lr, pc
	bx	r3
	ldr	r5, .L1112+32
	adr	r3, .L1112
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L1112+36
	ldr	r3, .L1112+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L1112+44
	mov	lr, pc
	bx	r3
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L1113:
	.align	3
.L1112:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109024
	.word	DMANow
	.word	soundA
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r3, .L1116+8
	ldr	r3, [r3]
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #32]
	mov	r0, #2
	mov	r3, #910163968
	ldr	r2, .L1116+12
	ldr	r4, .L1116+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	mvn	r0, #1520
	mov	r1, #128
	ldr	r4, .L1116+20
	ldr	r3, .L1116+24
	strh	r7, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	mov	r0, r5
	str	r5, [r4, #4]
	str	r2, [r4, #12]
	ldr	r3, .L1116+28
	str	r6, [r4]
	str	r8, [r4, #16]
	str	r7, [r4, #28]
	mov	lr, pc
	bx	r3
	ldr	r5, .L1116+32
	adr	r3, .L1116
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L1116+36
	ldr	r3, .L1116+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L1116+44
	mov	lr, pc
	bx	r3
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L1117:
	.align	3
.L1116:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109028
	.word	DMANow
	.word	soundB
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	updateBallsP0
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBallsP0, %function
updateBallsP0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L1135
	ldr	r5, .L1135+4
	ldr	r8, .L1135+8
	ldr	r7, .L1135+12
	ldr	r9, .L1135+16
	ldr	r10, .L1135+20
	sub	sp, sp, #20
	add	r6, r4, #384
	b	.L1124
.L1120:
	add	r4, r4, #64
	cmp	r4, r6
	beq	.L1133
.L1124:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L1120
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L1134
.L1121:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L1120
	ldr	fp, [r4, #24]
	add	r3, fp, fp, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, fp, r3, lsl #3
	add	r3, r3, r3, lsl #15
	add	r3, fp, r3, lsl #3
	sub	r3, r7, r3
	cmp	r7, r3, ror #1
	bcc	.L1123
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	str	r1, [r4, #36]
.L1123:
	add	r2, fp, #1
	str	r2, [r4, #24]
	add	r4, r4, #64
	cmp	r4, r6
	bne	.L1124
.L1133:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L1134:
	mov	r2, #0
	ldr	r3, .L1135+24
	mov	r0, r10
	ldr	r1, [r3]
	str	r2, [r4, #56]
	bl	playSoundB
	ldr	r2, .L1135+28
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	.L1121
.L1136:
	.align	2
.L1135:
	.word	balls0
	.word	player
	.word	collision
	.word	306783378
	.word	__aeabi_idivmod
	.word	ding2_data
	.word	ding2_length
	.word	collectedBalls
	.size	updateBallsP0, .-updateBallsP0
	.align	2
	.global	updateBallsP1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBallsP1, %function
updateBallsP1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L1154
	ldr	r5, .L1154+4
	ldr	r8, .L1154+8
	ldr	r7, .L1154+12
	ldr	r9, .L1154+16
	ldr	r10, .L1154+20
	sub	sp, sp, #20
	add	r6, r4, #576
	b	.L1143
.L1139:
	add	r4, r4, #64
	cmp	r4, r6
	beq	.L1152
.L1143:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L1139
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L1153
.L1140:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L1139
	ldr	fp, [r4, #24]
	add	r3, fp, fp, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, fp, r3, lsl #3
	add	r3, r3, r3, lsl #15
	add	r3, fp, r3, lsl #3
	sub	r3, r7, r3
	cmp	r7, r3, ror #1
	bcc	.L1142
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	str	r1, [r4, #36]
.L1142:
	add	r2, fp, #1
	str	r2, [r4, #24]
	add	r4, r4, #64
	cmp	r4, r6
	bne	.L1143
.L1152:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L1153:
	mov	r2, #0
	ldr	r3, .L1154+24
	mov	r0, r10
	ldr	r1, [r3]
	str	r2, [r4, #56]
	bl	playSoundB
	ldr	r2, .L1154+28
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	.L1140
.L1155:
	.align	2
.L1154:
	.word	balls1
	.word	player
	.word	collision
	.word	306783378
	.word	__aeabi_idivmod
	.word	ding2_data
	.word	ding2_length
	.word	collectedBalls
	.size	updateBallsP1, .-updateBallsP1
	.align	2
	.global	updateBallsP2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBallsP2, %function
updateBallsP2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L1173
	ldr	r5, .L1173+4
	ldr	r8, .L1173+8
	ldr	r7, .L1173+12
	ldr	r9, .L1173+16
	ldr	r10, .L1173+20
	sub	sp, sp, #20
	add	r6, r4, #256
.L1162:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L1171
.L1158:
	add	r4, r4, #64
	cmp	r4, r6
	bne	.L1162
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L1171:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L1172
.L1159:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L1158
	ldr	fp, [r4, #24]
	add	r3, fp, fp, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, fp, r3, lsl #3
	add	r3, r3, r3, lsl #15
	add	r3, fp, r3, lsl #3
	sub	r3, r7, r3
	cmp	r7, r3, ror #1
	bcc	.L1161
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	str	r1, [r4, #36]
.L1161:
	add	r2, fp, #1
	str	r2, [r4, #24]
	b	.L1158
.L1172:
	mov	r2, #0
	ldr	r3, .L1173+24
	mov	r0, r10
	ldr	r1, [r3]
	str	r2, [r4, #56]
	bl	playSoundB
	ldr	r2, .L1173+28
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	.L1159
.L1174:
	.align	2
.L1173:
	.word	balls2
	.word	player
	.word	collision
	.word	306783378
	.word	__aeabi_idivmod
	.word	ding2_data
	.word	ding2_length
	.word	collectedBalls
	.size	updateBallsP2, .-updateBallsP2
	.align	2
	.global	updateBallsP3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBallsP3, %function
updateBallsP3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L1192
	ldr	r5, .L1192+4
	ldr	r8, .L1192+8
	ldr	r7, .L1192+12
	ldr	r9, .L1192+16
	ldr	r10, .L1192+20
	sub	sp, sp, #20
	add	r6, r4, #512
	b	.L1181
.L1177:
	add	r4, r4, #64
	cmp	r4, r6
	beq	.L1190
.L1181:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L1177
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L1191
.L1178:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L1177
	ldr	fp, [r4, #24]
	add	r3, fp, fp, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, fp, r3, lsl #3
	add	r3, r3, r3, lsl #15
	add	r3, fp, r3, lsl #3
	sub	r3, r7, r3
	cmp	r7, r3, ror #1
	bcc	.L1180
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	str	r1, [r4, #36]
.L1180:
	add	r2, fp, #1
	str	r2, [r4, #24]
	add	r4, r4, #64
	cmp	r4, r6
	bne	.L1181
.L1190:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L1191:
	mov	r2, #0
	ldr	r3, .L1192+24
	mov	r0, r10
	ldr	r1, [r3]
	str	r2, [r4, #56]
	bl	playSoundB
	ldr	r2, .L1192+28
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	.L1178
.L1193:
	.align	2
.L1192:
	.word	balls3
	.word	player
	.word	collision
	.word	306783378
	.word	__aeabi_idivmod
	.word	ding2_data
	.word	ding2_length
	.word	collectedBalls
	.size	updateBallsP3, .-updateBallsP3
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1202
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bxne	lr
	push	{r4, lr}
	ldr	r4, .L1202+4
	ldr	r2, [r4]
	cmp	r2, #0
	ble	.L1194
	ldr	r1, .L1202+8
	ldr	r2, [r1, #28]
	cmp	r2, #0
	mvneq	r2, #2
	streq	r2, [r3, #12]
	beq	.L1197
	cmp	r2, #1
	moveq	r2, #3
	streq	r2, [r3, #12]
.L1197:
	mov	ip, #1
	ldr	r2, [r1]
	ldr	r0, [r1, #4]
	ldr	r1, .L1202+12
	add	r2, r2, #6
	add	r0, r0, #8
	str	r2, [r3]
	str	r0, [r3, #4]
	mov	r2, #0
	ldr	r1, [r1]
	ldr	r0, .L1202+16
	str	ip, [r3, #56]
	bl	playSoundB
	ldr	r1, .L1202+20
	ldr	r3, [r4]
	ldr	r2, [r1]
	sub	r3, r3, #1
	sub	r2, r2, #1
	str	r2, [r1]
	str	r3, [r4]
.L1194:
	pop	{r4, lr}
	bx	lr
.L1203:
	.align	2
.L1202:
	.word	bullets
	.word	collectedBalls
	.word	player
	.word	woosh_length
	.word	woosh_data
	.word	bullAmt
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L1291
	ldrh	r3, [r3, #48]
	ldr	r4, .L1291+4
	ands	r0, r3, #64
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	sub	sp, sp, #16
	beq	.L1272
	ldr	r5, .L1291+8
	ldr	r7, .L1291+12
.L1205:
	ldr	r0, .L1291
	ldrh	r0, [r0, #48]
	ands	ip, r0, #32
	ldr	r0, [r5]
	bne	.L1276
	cmp	r2, #0
	bgt	.L1274
.L1276:
	ldr	r6, .L1291+16
.L1208:
	ldr	ip, .L1291
	ldrh	ip, [ip, #48]
	ands	ip, ip, #16
	bne	.L1210
	add	r8, r2, lr
	cmp	r8, #512
	blt	.L1278
.L1210:
	mov	r8, #0
	add	r1, r1, #1
	str	r1, [sp, #4]
	ldr	r1, [r4, #8]
	str	lr, [sp]
	str	r1, [sp, #12]
	str	r8, [sp, #8]
	mov	r1, #512
	mov	lr, pc
	bx	r6
	ldr	r9, .L1291+20
	sub	r3, r0, r8
	rsbs	r0, r3, #0
	ldrh	r2, [r9]
	adc	r0, r0, r3
	ldr	r3, .L1291+24
	tst	r2, #64
	str	r0, [r3]
	beq	.L1212
	ldr	r3, .L1291+28
	ldrh	r3, [r3]
	eor	r3, r3, #64
	ands	r3, r0, r3, lsr #6
	ldr	r3, [r4]
	bne	.L1279
	ldr	r8, [r4, #48]
	cmp	r8, #0
	beq	.L1216
.L1285:
	ldr	r2, [r4, #52]
	add	r2, r2, #1
.L1215:
	ldr	r1, [r5, #16]
	sub	r3, r3, #2
	cmp	r1, r2
	str	r3, [r4]
	moveq	r3, #0
	str	r2, [r4, #52]
	streq	r3, [r4, #48]
.L1218:
	ldrh	r3, [r9]
	tst	r3, #1
	beq	.L1220
	ldr	r3, .L1291+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L1280
.L1220:
	ldr	r3, [r4, #20]
	ldr	r2, [r4]
	add	r2, r3, r2
	cmp	r2, #508
	beq	.L1221
.L1277:
	ldr	r2, [r7]
	cmp	r2, #352
	bge	.L1224
	ldr	r1, [r4]
	sub	r1, r1, r2
	cmp	r1, #79
	bgt	.L1241
.L1224:
	ldr	r2, .L1291+32
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L1281
.L1230:
	ldr	r5, .L1291+36
	ldr	r3, [r5, #56]
	cmp	r3, #0
	bne	.L1282
.L1233:
	ldr	r3, .L1291+40
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L1283
.L1236:
	ldr	r3, .L1291+44
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L1284
.L1239:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	animatePlayer
.L1212:
	ldr	r8, [r4, #48]
	cmp	r8, #0
	ldr	r3, [r4]
	bne	.L1285
.L1216:
	ldr	r0, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r1, [sp, #4]
	str	r8, [sp, #8]
	str	r0, [sp, #12]
	str	r2, [sp]
	mov	r1, #512
	ldr	r2, [r4, #4]
	ldr	r0, [r5]
	ldr	r10, .L1291+48
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L1218
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r8, [sp, #8]
	rsb	r3, r3, #0
	ldr	r0, [r5, #4]
	str	r1, [sp, #4]
	str	r3, [sp, #12]
	str	r2, [sp]
	mov	r1, #512
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	ldrne	r3, [r4]
	addne	r3, r3, #1
	strne	r3, [r4]
	b	.L1218
.L1280:
	ldr	r3, [r4, #28]
	cmp	r3, #2
	beq	.L1220
	bl	fireBullet
	b	.L1220
.L1274:
	ldr	r6, [r4, #12]
	sub	r1, r1, #1
	rsb	r6, r6, #0
	str	r1, [sp, #4]
	str	r6, [sp, #8]
	mov	r1, #512
	str	ip, [sp, #12]
	str	lr, [sp]
	ldr	r6, .L1291+16
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L1286
	ldr	r10, .L1291+52
	ldr	r2, [r4, #4]
	ldr	r8, [r4, #12]
	ldr	ip, [r10]
	sub	r2, r2, r8
	cmp	ip, #0
	str	r2, [r4, #4]
	ldr	lr, [r4, #16]
	ldr	r3, [r4]
	ldr	r1, [r4, #20]
	ldr	r0, [r5]
	ble	.L1208
	sub	r9, r2, ip
	sub	r9, r9, r8
	cmp	r9, #120
	suble	ip, ip, r8
	strle	ip, [r10]
	b	.L1208
.L1289:
	mov	ip, #272
	mov	r1, #1
	str	r2, [r4, #12]
	ldr	r2, .L1291+52
	mov	lr, #400
	str	ip, [r2]
	mov	r0, #296
	ldr	r2, .L1291+56
	str	r1, [r2]
	mov	r2, #216
	str	lr, [r4, #4]
	str	r0, [r4]
	str	r1, [r4, #8]
.L1241:
	add	r2, r2, #1
	str	r2, [r7]
	ldr	r2, .L1291+32
	ldr	r1, [r2, #56]
	cmp	r1, #0
	beq	.L1230
.L1281:
	add	r0, r2, #16
	ldm	r0, {r0, ip}
	ldm	r2, {r1, r2}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	ldr	r5, .L1291+60
	ldr	r2, [r4, #16]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L1291+64
	ldr	r5, .L1291+36
	strne	r2, [r3]
	ldr	r3, [r5, #56]
	cmp	r3, #0
	beq	.L1233
.L1282:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L1291+60
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #1
	movne	r1, #0
	ldrne	r3, .L1291+68
	strne	r2, [r3]
	ldr	r3, .L1291+40
	ldr	r2, [r3, #56]
	strne	r1, [r5, #56]
	cmp	r2, #0
	beq	.L1236
.L1283:
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r5, .L1291+60
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L1291+72
	strne	r2, [r3]
	ldr	r3, .L1291+44
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L1239
.L1284:
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r4, .L1291+60
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	ldrne	r2, .L1291+76
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	animatePlayer
.L1221:
	ldr	r2, .L1291+80
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L1287
	cmp	r2, #1
	beq	.L1288
	cmp	r2, #2
	beq	.L1289
	cmp	r2, #3
	beq	.L1228
	mov	r1, #1
	ldr	r2, .L1291+56
	str	r1, [r2]
	b	.L1277
.L1272:
	ldr	ip, [r4, #8]
	rsb	ip, ip, #0
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	lr, [sp]
	str	ip, [sp, #12]
	ldr	r5, .L1291+8
	mov	r1, #512
	ldr	r0, [r5, #4]
	ldr	r6, .L1291+48
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	beq	.L1206
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	ldr	r7, .L1291+12
	b	.L1205
.L1287:
	mov	ip, #488
	mov	r0, #2
	mov	r1, #1
	mov	lr, #352
	str	ip, [r4]
	str	r0, [r4, #12]
	ldr	ip, .L1291+56
	ldr	r0, .L1291+52
	str	r2, [r4, #4]
	str	lr, [r7]
	str	r1, [r4, #8]
	str	r1, [ip]
	str	r2, [r0]
	b	.L1224
.L1278:
	ldr	r8, [r4, #12]
	sub	r1, r1, #1
	str	r1, [sp, #4]
	str	ip, [sp, #12]
	mov	r1, #512
	str	lr, [sp]
	str	r8, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L1211
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	ldr	r0, [r5]
	b	.L1210
.L1286:
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #16]
	ldr	r3, [r4]
	ldr	r1, [r4, #20]
	ldr	r0, [r5]
	b	.L1208
.L1279:
	ldr	r2, [r4, #8]
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	rsb	r2, r2, #0
	str	r1, [sp]
	str	r8, [sp, #8]
	str	r2, [sp, #12]
	str	r0, [sp, #4]
	mov	r1, #512
	ldr	r2, [r4, #4]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #2
	beq	.L1212
	mov	r2, #1
	ldr	r3, [r4]
	str	r2, [r4, #48]
	b	.L1215
.L1206:
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L1290
	ldr	r7, .L1291+12
	ldr	r0, [r7]
	sub	r3, r3, #4
	cmp	r0, #0
	str	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	ble	.L1205
	sub	ip, r3, r0
	cmp	ip, #80
	suble	r0, r0, #4
	strle	r0, [r7]
	b	.L1205
.L1211:
	ldr	r8, .L1291+52
	ldr	r9, [r8]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #4]
	add	r3, r9, #240
	add	r3, r3, ip
	cmp	r3, #512
	add	r2, ip, r2
	str	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	ldr	r0, [r5]
	bge	.L1210
	sub	r10, r2, r9
	cmp	r10, #119
	addgt	ip, ip, r9
	strgt	ip, [r8]
	b	.L1210
.L1288:
	mov	r1, #352
	mov	r0, #272
	mov	lr, #440
	mov	ip, #2
	str	r1, [r7]
	ldr	r1, .L1291+52
	str	r0, [r1]
	ldr	r1, .L1291+56
	add	r0, r0, #218
	str	r2, [r4, #8]
	str	lr, [r4]
	str	ip, [r4, #12]
	str	r0, [r4, #4]
	str	r2, [r1]
	b	.L1224
.L1228:
	mov	r0, #224
	mov	r1, #1
	mov	r2, #100
	mov	r5, #176
	mov	ip, #2
	ldr	lr, .L1291+52
	str	r0, [r4]
	ldr	r0, .L1291+56
	str	r5, [r4, #4]
	str	r2, [lr]
	str	ip, [r4, #12]
	str	r1, [r4, #8]
	str	r1, [r0]
	b	.L1241
.L1290:
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #16]
	ldr	r1, [r4, #20]
	ldr	r7, .L1291+12
	b	.L1205
.L1292:
	.align	2
.L1291:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	vOff
	.word	collisionCheck
	.word	oldButtons
	.word	isGrounded
	.word	buttons
	.word	portal1
	.word	portal2
	.word	portal3
	.word	winPortal
	.word	footCollision
	.word	hOff
	.word	groundCollision
	.word	collision
	.word	portalCollision1
	.word	portalCollision2
	.word	portalCollision3
	.word	winCollision
	.word	prizes
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1319
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, lr}
	bne	.L1294
	ldr	r3, .L1319+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1311
	cmp	r3, #1
	beq	.L1312
	cmp	r3, #2
	beq	.L1313
	cmp	r3, #3
	beq	.L1314
.L1296:
	ldr	r3, .L1319+8
	ldr	r3, [r3, #56]
	cmp	r3, #0
	blne	updateBullets.part.0
.L1299:
	bl	updatePlayer
	bl	animateLives
	bl	updatePrizeSB
	ldr	r3, .L1319+12
	ldr	r2, .L1319+16
	ldr	r3, [r3]
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	ldr	r0, .L1319+20
	ldr	r1, .L1319+24
	add	ip, r2, r2, lsl #2
	sub	r3, r3, ip, lsl #1
	str	r2, [r0, #36]
	str	r3, [r1, #36]
.L1293:
	pop	{r4, lr}
	bx	lr
.L1294:
	cmp	r3, #1
	beq	.L1315
	cmp	r3, #2
	beq	.L1316
	cmp	r3, #3
	beq	.L1317
	cmp	r3, #4
	bne	.L1293
	bl	updatePrizeSB
	bl	animateLives
	pop	{r4, lr}
	b	updateSewerPlayer
.L1311:
	bl	updateBallsP0
	bl	updateEnemyP0
	bl	updateCheatPortal
	b	.L1296
.L1315:
	bl	updatePlayerMaze
	bl	updateTruck
	bl	updateCarA
	bl	updateCarB
	pop	{r4, lr}
	b	updateCone
.L1316:
	bl	updateSkyfallPlayer
	bl	updateSkyEnemies
	bl	updateSkyBullets
	bl	updateSkyPlayerBullet
	ldr	r3, .L1319+28
	ldr	r3, [r3, #188]
	cmp	r3, #0
	bne	.L1318
	ldr	r3, .L1319+32
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L1293
.L1304:
	pop	{r4, lr}
	b	updateSkyPrize.part.0
.L1312:
	bl	updateBallsP1
	bl	updateEnemyP1
	b	.L1296
.L1317:
	bl	updateLasers2
	bl	updateStar
	pop	{r4, lr}
	b	updatePlayerLaser
.L1313:
	bl	updateBallsP2
	bl	updateEnemyP2
	b	.L1296
.L1314:
	bl	updateBallsP3
	bl	updateEnemyP3
	b	.L1296
.L1318:
	mov	r2, #1
	ldr	r3, .L1319+32
	str	r2, [r3, #56]
	b	.L1304
.L1320:
	.align	2
.L1319:
	.word	level
	.word	prizes
	.word	bullets
	.word	collectedBalls
	.word	1717986919
	.word	ballAmount1
	.word	ballAmount2
	.word	skyEnemies
	.word	skyPrize
	.size	updateGame, .-updateGame
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1354
	ldrh	r2, [r3, #2]
	tst	r2, #32
	push	{r4, lr}
	beq	.L1322
	ldr	r2, .L1354+4
	ldr	r2, [r2]
	cmp	r2, #1
	ldrhne	r3, [r3, #2]
	beq	.L1350
.L1335:
	ldr	r3, .L1354
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L1325
.L1353:
	ldr	r3, .L1354+4
	ldr	r3, [r3]
	bics	r3, r3, #4
	bne	.L1325
	ldr	r3, .L1354+8
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L1328
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L1328
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L1351
	ldr	r0, .L1354+12
	ldr	r1, .L1354+16
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L1328:
	ldr	r3, .L1354+20
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L1332
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L1332
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L1352
	ldr	r0, .L1354+12
	ldr	r1, .L1354+16
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
.L1332:
	mov	r2, #1
	ldr	r3, .L1354
	strh	r2, [r3, #2]	@ movhi
.L1325:
	mov	r1, #1
	ldr	r3, .L1354
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L1322:
	ldrh	r3, [r3, #2]
	tst	r3, #64
	beq	.L1335
	ldr	r3, .L1354+4
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L1326
	ldr	r3, .L1354
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L1325
	b	.L1353
.L1350:
	ldr	r1, .L1354+24
	ldrh	r3, [r3, #2]
	ldr	r2, [r1]
	tst	r3, #64
	add	r2, r2, #1
	str	r2, [r1]
	beq	.L1335
.L1326:
	ldr	r2, .L1354+28
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L1354
	ldrh	r3, [r3, #2]
	b	.L1325
.L1352:
	ldm	r3, {r0, r1}
	bl	playSoundB
	b	.L1332
.L1351:
	ldm	r3, {r0, r1}
	bl	playSoundA
	b	.L1328
.L1355:
	.align	2
.L1354:
	.word	67109376
	.word	level
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.word	time_s
	.word	time_s2
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L1357
	ldr	r0, .L1357+4
	ldr	r1, .L1357+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L1358:
	.align	2
.L1357:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L1360
	ldr	ip, .L1360+4
	ldr	r0, .L1360+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L1361:
	.align	2
.L1360:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L1363
	ldr	r2, .L1363+4
	ldr	r1, [r1]
	ldr	ip, .L1363+8
	ldr	r0, .L1363+12
	str	r3, [r1, #20]
	str	r3, [ip, #12]
	strh	r3, [r2, #2]	@ movhi
	str	r3, [r0, #12]
	str	r3, [r1, #32]
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L1364:
	.align	2
.L1363:
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.align	2
	.global	stopSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSoundB, %function
stopSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L1366
	ldr	r1, .L1366+4
	ldr	r0, [r2]
	ldr	r2, .L1366+8
	str	r3, [r0, #32]
	str	r3, [r1, #12]
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L1367:
	.align	2
.L1366:
	.word	dma
	.word	soundB
	.word	67109120
	.size	stopSoundB, .-stopSoundB
	.align	2
	.global	stopSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSoundA, %function
stopSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L1369
	ldr	r1, .L1369+4
	ldr	r0, [r2]
	ldr	r2, .L1369+8
	str	r3, [r0, #20]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	bx	lr
.L1370:
	.align	2
.L1369:
	.word	dma
	.word	soundA
	.word	67109120
	.size	stopSoundA, .-stopSoundA
	.align	2
	.global	pauseSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSoundA, %function
pauseSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L1372
	ldr	r2, .L1372+4
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	bx	lr
.L1373:
	.align	2
.L1372:
	.word	soundA
	.word	67109120
	.size	pauseSoundA, .-pauseSoundA
	.align	2
	.global	unpauseSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSoundA, %function
unpauseSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	mov	r2, #128
	ldr	r1, .L1375
	ldr	r3, .L1375+4
	str	r0, [r1, #12]
	strh	r2, [r3, #2]	@ movhi
	bx	lr
.L1376:
	.align	2
.L1375:
	.word	soundA
	.word	67109120
	.size	unpauseSoundA, .-unpauseSoundA
	.align	2
	.global	setUpInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setUpInterrupts, %function
setUpInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	lr, #67108864
	mov	ip, #49152
	mov	r0, #67
	mov	r5, #97
	mov	r4, #1
	ldr	r3, .L1379
	str	r2, [r3]
	ldr	r3, .L1379+4
	ldrh	r1, [lr, #4]
	str	r2, [r3]
	ldr	r3, .L1379+8
	orr	r1, r1, #8
	strh	r2, [r3, #10]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	ldr	r1, .L1379+12
	strh	ip, [r3, #8]	@ movhi
	ldr	lr, .L1379+16
	strh	r5, [r1]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r4, [r1, #8]	@ movhi
	ldr	r1, .L1379+20
	strh	r2, [r3, #14]	@ movhi
	str	lr, [r1, #4092]
	strh	ip, [r3, #12]	@ movhi
	pop	{r4, r5, lr}
	strh	r0, [r3, #14]	@ movhi
	bx	lr
.L1380:
	.align	2
.L1379:
	.word	time_s
	.word	time_s2
	.word	67109120
	.word	67109376
	.word	interruptHandler
	.word	50360320
	.size	setUpInterrupts, .-setUpInterrupts
	.global	maxFramesL
	.global	maxFrames
	.comm	isOnPlatform,4,4
	.comm	isGrounded,4,4
	.comm	cheatPort3,4,4
	.comm	cheatPort2,4,4
	.comm	cheatPort1,4,4
	.comm	sewerActivate,4,4
	.comm	time_s2,4,4
	.comm	time_s,4,4
	.comm	enemyNum,4,4
	.comm	groundCollision,4,4
	.comm	skyEnemiesGone,4,4
	.comm	portalCollision3,4,4
	.comm	portalCollision2,4,4
	.comm	portalCollision1,4,4
	.comm	prizes,4,4
	.comm	bullAmt,4,4
	.comm	gameLives,4,4
	.comm	collectedBalls,4,4
	.comm	winPortal,64,4
	.comm	ballAmount2,64,4
	.comm	ballAmount1,64,4
	.comm	lives,192,4
	.comm	prize,192,4
	.comm	up,4,4
	.comm	cheatPortal,64,4
	.comm	carB,64,4
	.comm	carA,64,4
	.comm	randKey,64,4
	.comm	laserPortal,64,4
	.comm	cone,192,4
	.comm	upLasers,192,4
	.comm	lasers2,576,4
	.comm	cars,192,4
	.comm	scoreBar,960,4
	.comm	truck,64,4
	.comm	skyPrize,64,4
	.comm	skyPlayerBullet,512,4
	.comm	skyBullets,256,4
	.comm	skyEnemies,1152,4
	.comm	rightBottom,64,4
	.comm	leftBottom,64,4
	.comm	rightTop,64,4
	.comm	leftTop,64,4
	.comm	lasers,704,4
	.comm	mineBlock,64,4
	.comm	platforms,512,4
	.comm	mazePrize,64,4
	.comm	portal4,64,4
	.comm	portal3,64,4
	.comm	portal2,64,4
	.comm	portal1,64,4
	.comm	bullets,64,4
	.comm	balls3,512,4
	.comm	balls2,256,4
	.comm	balls1,576,4
	.comm	balls0,384,4
	.comm	enemies3,640,4
	.comm	enemies2,256,4
	.comm	enemies1,576,4
	.comm	enemies0,256,4
	.comm	player,64,4
	.comm	needToPlace,4,4
	.comm	winCollision,4,4
	.comm	shadowOAM,1024,4
	.comm	level,4,4
	.comm	vOffBG2,4,4
	.comm	hOffBG2,4,4
	.comm	vOffBG1,4,4
	.comm	hOffBG1,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	rowB,4,4
	.comm	colB,4,4
	.comm	row,4,4
	.comm	col,4,4
	.comm	type,4,4
	.comm	starsCollected,4,4
	.global	sewerColMap
	.global	highwayColMap
	.global	enemyColMap
	.global	skyfallColMap
	.global	windowColMap
	.global	test2LadderMap
	.global	test2CollMap
	.comm	soundB,32,4
	.comm	soundA,32,4
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	196
	.word	210
	.word	224
.LC1:
	.word	5
	.word	18
	.word	31
.LC2:
	.word	64
	.word	200
	.word	280
	.word	359
.LC3:
	.word	480
	.word	424
	.word	448
	.word	472
.LC4:
	.word	448
	.word	336
	.word	280
	.word	248
	.word	200
	.word	128
	.word	56
	.word	112
	.word	200
.LC5:
	.word	392
	.word	400
	.word	376
	.word	376
	.word	376
	.word	368
	.word	360
	.word	320
	.word	312
.LC6:
	.word	440
	.word	440
	.word	344
	.word	204
.LC7:
	.word	304
	.word	248
	.word	240
	.word	240
.LC8:
	.word	120
	.word	25
	.word	40
	.word	64
	.word	148
	.word	233
	.word	284
	.word	337
	.word	373
	.word	456
.LC9:
	.word	216
	.word	152
	.word	152
	.word	152
	.word	144
	.word	136
	.word	136
	.word	152
	.word	160
	.word	144
.LC10:
	.word	80
	.word	234
	.word	248
	.word	254
	.word	320
	.word	338
.LC11:
	.word	476
	.word	413
	.word	425
	.word	440
	.word	440
	.word	456
.LC12:
	.word	464
	.word	437
	.word	292
	.word	246
	.word	194
	.word	178
	.word	58
	.word	86
	.word	186
.LC13:
	.word	372
	.word	372
	.word	350
	.word	358
	.word	346
	.word	360
	.word	286
	.word	296
	.word	300
.LC14:
	.word	424
	.word	480
	.word	440
	.word	230
.LC15:
	.word	284
	.word	284
	.word	232
	.word	240
.LC16:
	.word	196
	.word	168
	.word	92
	.word	16
	.word	40
	.word	94
	.word	226
	.word	248
.LC17:
	.word	216
	.word	208
	.word	216
	.word	224
	.word	152
	.word	152
	.word	94
	.word	94
.LC18:
	.word	0
	.word	16
	.word	32
	.word	48
	.word	64
	.word	80
	.word	96
	.word	112
	.word	128
	.word	144
	.word	160
	.word	176
	.word	192
	.word	208
	.word	224
.LC19:
	.word	40
	.word	100
	.word	150
.LC20:
	.word	45
	.word	75
	.word	105
	.word	135
	.word	165
	.word	195
	.word	45
	.word	75
	.word	105
	.word	135
	.word	165
	.word	195
	.word	45
	.word	75
	.word	105
	.word	135
	.word	165
	.word	195
.LC21:
	.word	30
	.word	30
	.word	30
	.word	30
	.word	30
	.word	30
	.word	50
	.word	50
	.word	50
	.word	50
	.word	50
	.word	50
	.word	70
	.word	70
	.word	70
	.word	70
	.word	70
	.word	70
.LC22:
	.word	16
	.word	40
	.word	40
	.word	16
	.word	88
	.word	104
	.word	156
	.word	176
	.word	156
.LC23:
	.word	8
	.word	8
	.word	56
	.word	80
	.word	32
	.word	64
	.word	40
	.word	64
	.word	88
.LC24:
	.word	28
	.word	96
	.word	164
.LC25:
	.word	22
	.word	24
	.word	26
	.word	22
	.word	24
	.word	26
	.word	22
	.word	24
	.word	26
.LC26:
	.word	24
	.word	24
	.word	24
	.word	25
	.word	25
	.word	25
	.word	26
	.word	26
	.word	26
.LC27:
	.word	22
	.word	24
	.word	26
.LC28:
	.word	27
	.word	27
	.word	27
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	test2CollMap, %object
	.size	test2CollMap, 4
test2CollMap:
	.word	vibeyBMBitmap
	.type	test2LadderMap, %object
	.size	test2LadderMap, 4
test2LadderMap:
	.word	test2LadderBMBitmap
	.type	enemyColMap, %object
	.size	enemyColMap, 4
enemyColMap:
	.word	enemyBMBitmap
	.type	highwayColMap, %object
	.size	highwayColMap, 4
highwayColMap:
	.word	highwayBMBitmap
	.type	maxFrames, %object
	.size	maxFrames, 4
maxFrames:
	.word	10
	.type	windowColMap, %object
	.size	windowColMap, 4
windowColMap:
	.word	boxBMBitmap
	.type	sewerColMap, %object
	.size	sewerColMap, 4
sewerColMap:
	.word	sewerBMBitmap
	.type	maxFramesL, %object
	.size	maxFramesL, 4
maxFramesL:
	.word	3
	.type	skyfallColMap, %object
	.size	skyfallColMap, 4
skyfallColMap:
	.word	skyfallBMBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
