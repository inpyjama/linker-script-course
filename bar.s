
bar.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <bar>:
   0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   4:	e28db000 	add	fp, sp, #0
   8:	e3a03014 	mov	r3, #20
   c:	e1a00003 	mov	r0, r3
  10:	e28bd000 	add	sp, fp, #0
  14:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
  18:	e12fff1e 	bx	lr

Disassembly of section .data:

00000000 <a>:
   0:	00000064 	andeq	r0, r0, r4, rrx

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	@ 0x3700
   4:	3128203a 			@ <UNDEFINED> instruction: 0x3128203a
   8:	33313a35 	teqcc	r1, #217088	@ 0x35000
   c:	722e322e 	eorvc	r3, lr, #-536870910	@ 0xe0000002
  10:	2d316c65 	ldccs	12, cr6, [r1, #-404]!	@ 0xfffffe6c
  14:	31202932 			@ <UNDEFINED> instruction: 0x31202932
  18:	2e322e33 	mrccs	14, 1, r2, cr2, cr3, {1}
  1c:	30322031 	eorscc	r2, r2, r1, lsr r0
  20:	30313332 	eorscc	r3, r1, r2, lsr r3
  24:	Address 0x24 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	@ 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x28 is out of bounds.

