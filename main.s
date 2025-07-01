
main.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <foo>:
    8000:	e92d4800 	push	{fp, lr}
    8004:	e28db004 	add	fp, sp, #4
    8008:	e24dd008 	sub	sp, sp, #8
    800c:	eb00000a 	bl	803c <bar>
    8010:	e1a02000 	mov	r2, r0
    8014:	e59f301c 	ldr	r3, [pc, #28]	@ 8038 <foo+0x38>
    8018:	e5933000 	ldr	r3, [r3]
    801c:	e0823003 	add	r3, r2, r3
    8020:	e50b3008 	str	r3, [fp, #-8]
    8024:	e51b3008 	ldr	r3, [fp, #-8]
    8028:	e1a00003 	mov	r0, r3
    802c:	e24bd004 	sub	sp, fp, #4
    8030:	e8bd4800 	pop	{fp, lr}
    8034:	e12fff1e 	bx	lr
    8038:	00009058 	andeq	r9, r0, r8, asr r0

0000803c <bar>:
    803c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    8040:	e28db000 	add	fp, sp, #0
    8044:	e3a03014 	mov	r3, #20
    8048:	e1a00003 	mov	r0, r3
    804c:	e28bd000 	add	sp, fp, #0
    8050:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    8054:	e12fff1e 	bx	lr

Disassembly of section .data:

00009058 <a>:
    9058:	00000064 	andeq	r0, r0, r4, rrx

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_stack+0x1050d24>
   4:	35312820 	ldrcc	r2, [r1, #-2080]!	@ 0xfffff7e0
   8:	2e33313a 	mrccs	1, 1, r3, cr3, cr10, {1}
   c:	65722e32 	ldrbvs	r2, [r2, #-3634]!	@ 0xfffff1ce
  10:	322d316c 	eorcc	r3, sp, #108, 2
  14:	33312029 	teqcc	r1, #41	@ 0x29
  18:	312e322e 			@ <UNDEFINED> instruction: 0x312e322e
  1c:	32303220 	eorscc	r3, r0, #32, 4
  20:	30303133 	eorscc	r3, r0, r3, lsr r1
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

