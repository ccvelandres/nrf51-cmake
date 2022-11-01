
build/main:     file format elf32-littlearm


Disassembly of section .text:

0001b000 <__isr_vector>:
   1b000:	20004000 	.word	0x20004000
   1b004:	0001b56d 	.word	0x0001b56d
   1b008:	0001b5ad 	.word	0x0001b5ad
   1b00c:	0001b5af 	.word	0x0001b5af
	...
   1b02c:	0001b5b1 	.word	0x0001b5b1
	...
   1b038:	0001b5b3 	.word	0x0001b5b3
   1b03c:	0001b5b5 	.word	0x0001b5b5
   1b040:	0001b5b7 	.word	0x0001b5b7
   1b044:	0001b5b7 	.word	0x0001b5b7
   1b048:	0001be91 	.word	0x0001be91
   1b04c:	0001b5b7 	.word	0x0001b5b7
   1b050:	0001b5b7 	.word	0x0001b5b7
   1b054:	00000000 	.word	0x00000000
   1b058:	0001b5b7 	.word	0x0001b5b7
   1b05c:	0001b5b7 	.word	0x0001b5b7
   1b060:	0001b5b7 	.word	0x0001b5b7
   1b064:	0001b5b7 	.word	0x0001b5b7
   1b068:	0001b5b7 	.word	0x0001b5b7
   1b06c:	0001b5b7 	.word	0x0001b5b7
   1b070:	0001b5b7 	.word	0x0001b5b7
   1b074:	0001b5b7 	.word	0x0001b5b7
   1b078:	0001b5b7 	.word	0x0001b5b7
   1b07c:	0001b5b7 	.word	0x0001b5b7
   1b080:	0001b5b7 	.word	0x0001b5b7
   1b084:	0001b5b7 	.word	0x0001b5b7
   1b088:	0001b5b7 	.word	0x0001b5b7
   1b08c:	0001b5b7 	.word	0x0001b5b7
   1b090:	0001b5b7 	.word	0x0001b5b7
   1b094:	0001b5b7 	.word	0x0001b5b7
   1b098:	0001b5b7 	.word	0x0001b5b7
   1b09c:	0001b5b7 	.word	0x0001b5b7
   1b0a0:	0001b5b7 	.word	0x0001b5b7
   1b0a4:	0001b5b7 	.word	0x0001b5b7
	...

0001b0c0 <deregister_tm_clones>:
   1b0c0:	4804      	ldr	r0, [pc, #16]	; (1b0d4 <deregister_tm_clones+0x14>)
   1b0c2:	4b05      	ldr	r3, [pc, #20]	; (1b0d8 <deregister_tm_clones+0x18>)
   1b0c4:	b510      	push	{r4, lr}
   1b0c6:	4283      	cmp	r3, r0
   1b0c8:	d003      	beq.n	1b0d2 <deregister_tm_clones+0x12>
   1b0ca:	4b04      	ldr	r3, [pc, #16]	; (1b0dc <deregister_tm_clones+0x1c>)
   1b0cc:	2b00      	cmp	r3, #0
   1b0ce:	d000      	beq.n	1b0d2 <deregister_tm_clones+0x12>
   1b0d0:	4798      	blx	r3
   1b0d2:	bd10      	pop	{r4, pc}
   1b0d4:	20001444 	.word	0x20001444
   1b0d8:	20001444 	.word	0x20001444
   1b0dc:	00000000 	.word	0x00000000

0001b0e0 <register_tm_clones>:
   1b0e0:	4806      	ldr	r0, [pc, #24]	; (1b0fc <register_tm_clones+0x1c>)
   1b0e2:	4907      	ldr	r1, [pc, #28]	; (1b100 <register_tm_clones+0x20>)
   1b0e4:	1a09      	subs	r1, r1, r0
   1b0e6:	1089      	asrs	r1, r1, #2
   1b0e8:	0fcb      	lsrs	r3, r1, #31
   1b0ea:	1859      	adds	r1, r3, r1
   1b0ec:	b510      	push	{r4, lr}
   1b0ee:	1049      	asrs	r1, r1, #1
   1b0f0:	d003      	beq.n	1b0fa <register_tm_clones+0x1a>
   1b0f2:	4b04      	ldr	r3, [pc, #16]	; (1b104 <register_tm_clones+0x24>)
   1b0f4:	2b00      	cmp	r3, #0
   1b0f6:	d000      	beq.n	1b0fa <register_tm_clones+0x1a>
   1b0f8:	4798      	blx	r3
   1b0fa:	bd10      	pop	{r4, pc}
   1b0fc:	20001444 	.word	0x20001444
   1b100:	20001444 	.word	0x20001444
   1b104:	00000000 	.word	0x00000000

0001b108 <__do_global_dtors_aux>:
   1b108:	b510      	push	{r4, lr}
   1b10a:	4c07      	ldr	r4, [pc, #28]	; (1b128 <__do_global_dtors_aux+0x20>)
   1b10c:	7823      	ldrb	r3, [r4, #0]
   1b10e:	2b00      	cmp	r3, #0
   1b110:	d109      	bne.n	1b126 <__do_global_dtors_aux+0x1e>
   1b112:	f7ff ffd5 	bl	1b0c0 <deregister_tm_clones>
   1b116:	4b05      	ldr	r3, [pc, #20]	; (1b12c <__do_global_dtors_aux+0x24>)
   1b118:	2b00      	cmp	r3, #0
   1b11a:	d002      	beq.n	1b122 <__do_global_dtors_aux+0x1a>
   1b11c:	4804      	ldr	r0, [pc, #16]	; (1b130 <__do_global_dtors_aux+0x28>)
   1b11e:	e000      	b.n	1b122 <__do_global_dtors_aux+0x1a>
   1b120:	bf00      	nop
   1b122:	2301      	movs	r3, #1
   1b124:	7023      	strb	r3, [r4, #0]
   1b126:	bd10      	pop	{r4, pc}
   1b128:	20001444 	.word	0x20001444
   1b12c:	00000000 	.word	0x00000000
   1b130:	0001e098 	.word	0x0001e098

0001b134 <frame_dummy>:
   1b134:	4b05      	ldr	r3, [pc, #20]	; (1b14c <frame_dummy+0x18>)
   1b136:	b510      	push	{r4, lr}
   1b138:	2b00      	cmp	r3, #0
   1b13a:	d003      	beq.n	1b144 <frame_dummy+0x10>
   1b13c:	4904      	ldr	r1, [pc, #16]	; (1b150 <frame_dummy+0x1c>)
   1b13e:	4805      	ldr	r0, [pc, #20]	; (1b154 <frame_dummy+0x20>)
   1b140:	e000      	b.n	1b144 <frame_dummy+0x10>
   1b142:	bf00      	nop
   1b144:	f7ff ffcc 	bl	1b0e0 <register_tm_clones>
   1b148:	bd10      	pop	{r4, pc}
   1b14a:	46c0      	nop			; (mov r8, r8)
   1b14c:	00000000 	.word	0x00000000
   1b150:	20001448 	.word	0x20001448
   1b154:	0001e098 	.word	0x0001e098

0001b158 <_stack_init>:
   1b158:	2240      	movs	r2, #64	; 0x40
   1b15a:	0292      	lsls	r2, r2, #10
   1b15c:	1a9a      	subs	r2, r3, r2
   1b15e:	4692      	mov	sl, r2
   1b160:	4770      	bx	lr
   1b162:	46c0      	nop			; (mov r8, r8)

0001b164 <_mainCRTStartup>:
   1b164:	4b15      	ldr	r3, [pc, #84]	; (1b1bc <_mainCRTStartup+0x58>)
   1b166:	2b00      	cmp	r3, #0
   1b168:	d100      	bne.n	1b16c <_mainCRTStartup+0x8>
   1b16a:	4b11      	ldr	r3, [pc, #68]	; (1b1b0 <_mainCRTStartup+0x4c>)
   1b16c:	469d      	mov	sp, r3
   1b16e:	f7ff fff3 	bl	1b158 <_stack_init>
   1b172:	2100      	movs	r1, #0
   1b174:	468b      	mov	fp, r1
   1b176:	460f      	mov	r7, r1
   1b178:	4811      	ldr	r0, [pc, #68]	; (1b1c0 <_mainCRTStartup+0x5c>)
   1b17a:	4a12      	ldr	r2, [pc, #72]	; (1b1c4 <_mainCRTStartup+0x60>)
   1b17c:	1a12      	subs	r2, r2, r0
   1b17e:	f000 f879 	bl	1b274 <memset>
   1b182:	4b0c      	ldr	r3, [pc, #48]	; (1b1b4 <_mainCRTStartup+0x50>)
   1b184:	2b00      	cmp	r3, #0
   1b186:	d000      	beq.n	1b18a <_mainCRTStartup+0x26>
   1b188:	4798      	blx	r3
   1b18a:	4b0b      	ldr	r3, [pc, #44]	; (1b1b8 <_mainCRTStartup+0x54>)
   1b18c:	2b00      	cmp	r3, #0
   1b18e:	d000      	beq.n	1b192 <_mainCRTStartup+0x2e>
   1b190:	4798      	blx	r3
   1b192:	2000      	movs	r0, #0
   1b194:	2100      	movs	r1, #0
   1b196:	0004      	movs	r4, r0
   1b198:	000d      	movs	r5, r1
   1b19a:	480b      	ldr	r0, [pc, #44]	; (1b1c8 <_mainCRTStartup+0x64>)
   1b19c:	f000 f816 	bl	1b1cc <atexit>
   1b1a0:	f000 f846 	bl	1b230 <__libc_init_array>
   1b1a4:	0020      	movs	r0, r4
   1b1a6:	0029      	movs	r1, r5
   1b1a8:	f000 f99c 	bl	1b4e4 <main>
   1b1ac:	f000 f816 	bl	1b1dc <exit>
   1b1b0:	00080000 	.word	0x00080000
	...
   1b1bc:	20004000 	.word	0x20004000
   1b1c0:	20001444 	.word	0x20001444
   1b1c4:	20001b68 	.word	0x20001b68
   1b1c8:	0001b209 	.word	0x0001b209

0001b1cc <atexit>:
   1b1cc:	b510      	push	{r4, lr}
   1b1ce:	0001      	movs	r1, r0
   1b1d0:	2300      	movs	r3, #0
   1b1d2:	2200      	movs	r2, #0
   1b1d4:	2000      	movs	r0, #0
   1b1d6:	f000 f8a1 	bl	1b31c <__register_exitproc>
   1b1da:	bd10      	pop	{r4, pc}

0001b1dc <exit>:
   1b1dc:	4b08      	ldr	r3, [pc, #32]	; (1b200 <exit+0x24>)
   1b1de:	b510      	push	{r4, lr}
   1b1e0:	0004      	movs	r4, r0
   1b1e2:	2b00      	cmp	r3, #0
   1b1e4:	d002      	beq.n	1b1ec <exit+0x10>
   1b1e6:	2100      	movs	r1, #0
   1b1e8:	f000 f906 	bl	1b3f8 <__call_exitprocs>
   1b1ec:	4b05      	ldr	r3, [pc, #20]	; (1b204 <exit+0x28>)
   1b1ee:	6818      	ldr	r0, [r3, #0]
   1b1f0:	6a83      	ldr	r3, [r0, #40]	; 0x28
   1b1f2:	2b00      	cmp	r3, #0
   1b1f4:	d000      	beq.n	1b1f8 <exit+0x1c>
   1b1f6:	4798      	blx	r3
   1b1f8:	0020      	movs	r0, r4
   1b1fa:	f000 f95b 	bl	1b4b4 <_exit>
   1b1fe:	46c0      	nop			; (mov r8, r8)
   1b200:	0001b3f9 	.word	0x0001b3f9
   1b204:	0001df38 	.word	0x0001df38

0001b208 <__libc_fini_array>:
   1b208:	b570      	push	{r4, r5, r6, lr}
   1b20a:	4d07      	ldr	r5, [pc, #28]	; (1b228 <__libc_fini_array+0x20>)
   1b20c:	4c07      	ldr	r4, [pc, #28]	; (1b22c <__libc_fini_array+0x24>)
   1b20e:	1b64      	subs	r4, r4, r5
   1b210:	10a4      	asrs	r4, r4, #2
   1b212:	d005      	beq.n	1b220 <__libc_fini_array+0x18>
   1b214:	3c01      	subs	r4, #1
   1b216:	00a3      	lsls	r3, r4, #2
   1b218:	58eb      	ldr	r3, [r5, r3]
   1b21a:	4798      	blx	r3
   1b21c:	2c00      	cmp	r4, #0
   1b21e:	d1f9      	bne.n	1b214 <__libc_fini_array+0xc>
   1b220:	f002 fe84 	bl	1df2c <_fini>
   1b224:	bd70      	pop	{r4, r5, r6, pc}
   1b226:	46c0      	nop			; (mov r8, r8)
   1b228:	20001440 	.word	0x20001440
   1b22c:	20001444 	.word	0x20001444

0001b230 <__libc_init_array>:
   1b230:	b570      	push	{r4, r5, r6, lr}
   1b232:	4d0c      	ldr	r5, [pc, #48]	; (1b264 <__libc_init_array+0x34>)
   1b234:	4e0c      	ldr	r6, [pc, #48]	; (1b268 <__libc_init_array+0x38>)
   1b236:	1b76      	subs	r6, r6, r5
   1b238:	10b6      	asrs	r6, r6, #2
   1b23a:	d005      	beq.n	1b248 <__libc_init_array+0x18>
   1b23c:	2400      	movs	r4, #0
   1b23e:	cd08      	ldmia	r5!, {r3}
   1b240:	3401      	adds	r4, #1
   1b242:	4798      	blx	r3
   1b244:	42a6      	cmp	r6, r4
   1b246:	d1fa      	bne.n	1b23e <__libc_init_array+0xe>
   1b248:	f002 fe6a 	bl	1df20 <_init>
   1b24c:	4d07      	ldr	r5, [pc, #28]	; (1b26c <__libc_init_array+0x3c>)
   1b24e:	4e08      	ldr	r6, [pc, #32]	; (1b270 <__libc_init_array+0x40>)
   1b250:	1b76      	subs	r6, r6, r5
   1b252:	10b6      	asrs	r6, r6, #2
   1b254:	d005      	beq.n	1b262 <__libc_init_array+0x32>
   1b256:	2400      	movs	r4, #0
   1b258:	cd08      	ldmia	r5!, {r3}
   1b25a:	3401      	adds	r4, #1
   1b25c:	4798      	blx	r3
   1b25e:	42a6      	cmp	r6, r4
   1b260:	d1fa      	bne.n	1b258 <__libc_init_array+0x28>
   1b262:	bd70      	pop	{r4, r5, r6, pc}
   1b264:	2000143c 	.word	0x2000143c
   1b268:	2000143c 	.word	0x2000143c
   1b26c:	2000143c 	.word	0x2000143c
   1b270:	20001440 	.word	0x20001440

0001b274 <memset>:
   1b274:	b5f0      	push	{r4, r5, r6, r7, lr}
   1b276:	0005      	movs	r5, r0
   1b278:	0783      	lsls	r3, r0, #30
   1b27a:	d04a      	beq.n	1b312 <memset+0x9e>
   1b27c:	1e54      	subs	r4, r2, #1
   1b27e:	2a00      	cmp	r2, #0
   1b280:	d044      	beq.n	1b30c <memset+0x98>
   1b282:	b2ce      	uxtb	r6, r1
   1b284:	0003      	movs	r3, r0
   1b286:	2203      	movs	r2, #3
   1b288:	e002      	b.n	1b290 <memset+0x1c>
   1b28a:	3501      	adds	r5, #1
   1b28c:	3c01      	subs	r4, #1
   1b28e:	d33d      	bcc.n	1b30c <memset+0x98>
   1b290:	3301      	adds	r3, #1
   1b292:	702e      	strb	r6, [r5, #0]
   1b294:	4213      	tst	r3, r2
   1b296:	d1f8      	bne.n	1b28a <memset+0x16>
   1b298:	2c03      	cmp	r4, #3
   1b29a:	d92f      	bls.n	1b2fc <memset+0x88>
   1b29c:	22ff      	movs	r2, #255	; 0xff
   1b29e:	400a      	ands	r2, r1
   1b2a0:	0215      	lsls	r5, r2, #8
   1b2a2:	4315      	orrs	r5, r2
   1b2a4:	042a      	lsls	r2, r5, #16
   1b2a6:	4315      	orrs	r5, r2
   1b2a8:	2c0f      	cmp	r4, #15
   1b2aa:	d935      	bls.n	1b318 <memset+0xa4>
   1b2ac:	0027      	movs	r7, r4
   1b2ae:	3f10      	subs	r7, #16
   1b2b0:	093f      	lsrs	r7, r7, #4
   1b2b2:	013e      	lsls	r6, r7, #4
   1b2b4:	46b4      	mov	ip, r6
   1b2b6:	001e      	movs	r6, r3
   1b2b8:	001a      	movs	r2, r3
   1b2ba:	3610      	adds	r6, #16
   1b2bc:	4466      	add	r6, ip
   1b2be:	6015      	str	r5, [r2, #0]
   1b2c0:	6055      	str	r5, [r2, #4]
   1b2c2:	6095      	str	r5, [r2, #8]
   1b2c4:	60d5      	str	r5, [r2, #12]
   1b2c6:	3210      	adds	r2, #16
   1b2c8:	42b2      	cmp	r2, r6
   1b2ca:	d1f8      	bne.n	1b2be <memset+0x4a>
   1b2cc:	260f      	movs	r6, #15
   1b2ce:	220c      	movs	r2, #12
   1b2d0:	3701      	adds	r7, #1
   1b2d2:	013f      	lsls	r7, r7, #4
   1b2d4:	4026      	ands	r6, r4
   1b2d6:	19db      	adds	r3, r3, r7
   1b2d8:	0037      	movs	r7, r6
   1b2da:	4222      	tst	r2, r4
   1b2dc:	d017      	beq.n	1b30e <memset+0x9a>
   1b2de:	1f3e      	subs	r6, r7, #4
   1b2e0:	08b6      	lsrs	r6, r6, #2
   1b2e2:	00b4      	lsls	r4, r6, #2
   1b2e4:	46a4      	mov	ip, r4
   1b2e6:	001a      	movs	r2, r3
   1b2e8:	1d1c      	adds	r4, r3, #4
   1b2ea:	4464      	add	r4, ip
   1b2ec:	c220      	stmia	r2!, {r5}
   1b2ee:	42a2      	cmp	r2, r4
   1b2f0:	d1fc      	bne.n	1b2ec <memset+0x78>
   1b2f2:	2403      	movs	r4, #3
   1b2f4:	3601      	adds	r6, #1
   1b2f6:	00b6      	lsls	r6, r6, #2
   1b2f8:	199b      	adds	r3, r3, r6
   1b2fa:	403c      	ands	r4, r7
   1b2fc:	2c00      	cmp	r4, #0
   1b2fe:	d005      	beq.n	1b30c <memset+0x98>
   1b300:	b2c9      	uxtb	r1, r1
   1b302:	191c      	adds	r4, r3, r4
   1b304:	7019      	strb	r1, [r3, #0]
   1b306:	3301      	adds	r3, #1
   1b308:	429c      	cmp	r4, r3
   1b30a:	d1fb      	bne.n	1b304 <memset+0x90>
   1b30c:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1b30e:	0034      	movs	r4, r6
   1b310:	e7f4      	b.n	1b2fc <memset+0x88>
   1b312:	0014      	movs	r4, r2
   1b314:	0003      	movs	r3, r0
   1b316:	e7bf      	b.n	1b298 <memset+0x24>
   1b318:	0027      	movs	r7, r4
   1b31a:	e7e0      	b.n	1b2de <memset+0x6a>

0001b31c <__register_exitproc>:
   1b31c:	b5f0      	push	{r4, r5, r6, r7, lr}
   1b31e:	4646      	mov	r6, r8
   1b320:	464f      	mov	r7, r9
   1b322:	46d6      	mov	lr, sl
   1b324:	b5c0      	push	{r6, r7, lr}
   1b326:	001f      	movs	r7, r3
   1b328:	4b2f      	ldr	r3, [pc, #188]	; (1b3e8 <__register_exitproc+0xcc>)
   1b32a:	b082      	sub	sp, #8
   1b32c:	681c      	ldr	r4, [r3, #0]
   1b32e:	0005      	movs	r5, r0
   1b330:	000e      	movs	r6, r1
   1b332:	4690      	mov	r8, r2
   1b334:	2c00      	cmp	r4, #0
   1b336:	d02d      	beq.n	1b394 <__register_exitproc+0x78>
   1b338:	6863      	ldr	r3, [r4, #4]
   1b33a:	2b1f      	cmp	r3, #31
   1b33c:	dc50      	bgt.n	1b3e0 <__register_exitproc+0xc4>
   1b33e:	2d00      	cmp	r5, #0
   1b340:	d01c      	beq.n	1b37c <__register_exitproc+0x60>
   1b342:	2288      	movs	r2, #136	; 0x88
   1b344:	58a0      	ldr	r0, [r4, r2]
   1b346:	4691      	mov	r9, r2
   1b348:	2800      	cmp	r0, #0
   1b34a:	d034      	beq.n	1b3b6 <__register_exitproc+0x9a>
   1b34c:	3278      	adds	r2, #120	; 0x78
   1b34e:	5882      	ldr	r2, [r0, r2]
   1b350:	4694      	mov	ip, r2
   1b352:	009a      	lsls	r2, r3, #2
   1b354:	4691      	mov	r9, r2
   1b356:	4481      	add	r9, r0
   1b358:	4642      	mov	r2, r8
   1b35a:	4649      	mov	r1, r9
   1b35c:	600a      	str	r2, [r1, #0]
   1b35e:	2101      	movs	r1, #1
   1b360:	4662      	mov	r2, ip
   1b362:	4099      	lsls	r1, r3
   1b364:	430a      	orrs	r2, r1
   1b366:	4694      	mov	ip, r2
   1b368:	2280      	movs	r2, #128	; 0x80
   1b36a:	468a      	mov	sl, r1
   1b36c:	4661      	mov	r1, ip
   1b36e:	0052      	lsls	r2, r2, #1
   1b370:	5081      	str	r1, [r0, r2]
   1b372:	4649      	mov	r1, r9
   1b374:	3a80      	subs	r2, #128	; 0x80
   1b376:	508f      	str	r7, [r1, r2]
   1b378:	2d02      	cmp	r5, #2
   1b37a:	d016      	beq.n	1b3aa <__register_exitproc+0x8e>
   1b37c:	2000      	movs	r0, #0
   1b37e:	1c5a      	adds	r2, r3, #1
   1b380:	3302      	adds	r3, #2
   1b382:	009b      	lsls	r3, r3, #2
   1b384:	6062      	str	r2, [r4, #4]
   1b386:	511e      	str	r6, [r3, r4]
   1b388:	b002      	add	sp, #8
   1b38a:	bc1c      	pop	{r2, r3, r4}
   1b38c:	4690      	mov	r8, r2
   1b38e:	4699      	mov	r9, r3
   1b390:	46a2      	mov	sl, r4
   1b392:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1b394:	4c15      	ldr	r4, [pc, #84]	; (1b3ec <__register_exitproc+0xd0>)
   1b396:	601c      	str	r4, [r3, #0]
   1b398:	4b15      	ldr	r3, [pc, #84]	; (1b3f0 <__register_exitproc+0xd4>)
   1b39a:	2b00      	cmp	r3, #0
   1b39c:	d0cc      	beq.n	1b338 <__register_exitproc+0x1c>
   1b39e:	681b      	ldr	r3, [r3, #0]
   1b3a0:	9301      	str	r3, [sp, #4]
   1b3a2:	2388      	movs	r3, #136	; 0x88
   1b3a4:	9a01      	ldr	r2, [sp, #4]
   1b3a6:	50e2      	str	r2, [r4, r3]
   1b3a8:	e7c6      	b.n	1b338 <__register_exitproc+0x1c>
   1b3aa:	4655      	mov	r5, sl
   1b3ac:	3284      	adds	r2, #132	; 0x84
   1b3ae:	5881      	ldr	r1, [r0, r2]
   1b3b0:	430d      	orrs	r5, r1
   1b3b2:	5085      	str	r5, [r0, r2]
   1b3b4:	e7e2      	b.n	1b37c <__register_exitproc+0x60>
   1b3b6:	4b0f      	ldr	r3, [pc, #60]	; (1b3f4 <__register_exitproc+0xd8>)
   1b3b8:	2b00      	cmp	r3, #0
   1b3ba:	d011      	beq.n	1b3e0 <__register_exitproc+0xc4>
   1b3bc:	2084      	movs	r0, #132	; 0x84
   1b3be:	0040      	lsls	r0, r0, #1
   1b3c0:	e000      	b.n	1b3c4 <__register_exitproc+0xa8>
   1b3c2:	bf00      	nop
   1b3c4:	2800      	cmp	r0, #0
   1b3c6:	d00b      	beq.n	1b3e0 <__register_exitproc+0xc4>
   1b3c8:	2280      	movs	r2, #128	; 0x80
   1b3ca:	2300      	movs	r3, #0
   1b3cc:	0052      	lsls	r2, r2, #1
   1b3ce:	5083      	str	r3, [r0, r2]
   1b3d0:	3204      	adds	r2, #4
   1b3d2:	5083      	str	r3, [r0, r2]
   1b3d4:	464b      	mov	r3, r9
   1b3d6:	2200      	movs	r2, #0
   1b3d8:	50e0      	str	r0, [r4, r3]
   1b3da:	4694      	mov	ip, r2
   1b3dc:	6863      	ldr	r3, [r4, #4]
   1b3de:	e7b8      	b.n	1b352 <__register_exitproc+0x36>
   1b3e0:	2001      	movs	r0, #1
   1b3e2:	4240      	negs	r0, r0
   1b3e4:	e7d0      	b.n	1b388 <__register_exitproc+0x6c>
   1b3e6:	46c0      	nop			; (mov r8, r8)
   1b3e8:	200014ec 	.word	0x200014ec
   1b3ec:	20001460 	.word	0x20001460
	...

0001b3f8 <__call_exitprocs>:
   1b3f8:	b5f0      	push	{r4, r5, r6, r7, lr}
   1b3fa:	46de      	mov	lr, fp
   1b3fc:	464e      	mov	r6, r9
   1b3fe:	4645      	mov	r5, r8
   1b400:	4657      	mov	r7, sl
   1b402:	4b2b      	ldr	r3, [pc, #172]	; (1b4b0 <__call_exitprocs+0xb8>)
   1b404:	4688      	mov	r8, r1
   1b406:	469b      	mov	fp, r3
   1b408:	b5e0      	push	{r5, r6, r7, lr}
   1b40a:	681e      	ldr	r6, [r3, #0]
   1b40c:	b083      	sub	sp, #12
   1b40e:	9001      	str	r0, [sp, #4]
   1b410:	2e00      	cmp	r6, #0
   1b412:	d045      	beq.n	1b4a0 <__call_exitprocs+0xa8>
   1b414:	2388      	movs	r3, #136	; 0x88
   1b416:	6875      	ldr	r5, [r6, #4]
   1b418:	58f7      	ldr	r7, [r6, r3]
   1b41a:	1e6c      	subs	r4, r5, #1
   1b41c:	d440      	bmi.n	1b4a0 <__call_exitprocs+0xa8>
   1b41e:	3501      	adds	r5, #1
   1b420:	00ad      	lsls	r5, r5, #2
   1b422:	3378      	adds	r3, #120	; 0x78
   1b424:	1975      	adds	r5, r6, r5
   1b426:	469a      	mov	sl, r3
   1b428:	e00a      	b.n	1b440 <__call_exitprocs+0x48>
   1b42a:	2f00      	cmp	r7, #0
   1b42c:	d005      	beq.n	1b43a <__call_exitprocs+0x42>
   1b42e:	003b      	movs	r3, r7
   1b430:	00a2      	lsls	r2, r4, #2
   1b432:	3380      	adds	r3, #128	; 0x80
   1b434:	589b      	ldr	r3, [r3, r2]
   1b436:	4543      	cmp	r3, r8
   1b438:	d005      	beq.n	1b446 <__call_exitprocs+0x4e>
   1b43a:	3d04      	subs	r5, #4
   1b43c:	3c01      	subs	r4, #1
   1b43e:	d32f      	bcc.n	1b4a0 <__call_exitprocs+0xa8>
   1b440:	4643      	mov	r3, r8
   1b442:	2b00      	cmp	r3, #0
   1b444:	d1f1      	bne.n	1b42a <__call_exitprocs+0x32>
   1b446:	6873      	ldr	r3, [r6, #4]
   1b448:	682a      	ldr	r2, [r5, #0]
   1b44a:	3b01      	subs	r3, #1
   1b44c:	42a3      	cmp	r3, r4
   1b44e:	d022      	beq.n	1b496 <__call_exitprocs+0x9e>
   1b450:	2300      	movs	r3, #0
   1b452:	602b      	str	r3, [r5, #0]
   1b454:	2a00      	cmp	r2, #0
   1b456:	d0f0      	beq.n	1b43a <__call_exitprocs+0x42>
   1b458:	6873      	ldr	r3, [r6, #4]
   1b45a:	4699      	mov	r9, r3
   1b45c:	2f00      	cmp	r7, #0
   1b45e:	d018      	beq.n	1b492 <__call_exitprocs+0x9a>
   1b460:	2301      	movs	r3, #1
   1b462:	4651      	mov	r1, sl
   1b464:	40a3      	lsls	r3, r4
   1b466:	5879      	ldr	r1, [r7, r1]
   1b468:	4219      	tst	r1, r3
   1b46a:	d012      	beq.n	1b492 <__call_exitprocs+0x9a>
   1b46c:	2082      	movs	r0, #130	; 0x82
   1b46e:	0040      	lsls	r0, r0, #1
   1b470:	5838      	ldr	r0, [r7, r0]
   1b472:	00a1      	lsls	r1, r4, #2
   1b474:	5879      	ldr	r1, [r7, r1]
   1b476:	9000      	str	r0, [sp, #0]
   1b478:	4218      	tst	r0, r3
   1b47a:	d10e      	bne.n	1b49a <__call_exitprocs+0xa2>
   1b47c:	9801      	ldr	r0, [sp, #4]
   1b47e:	4790      	blx	r2
   1b480:	465b      	mov	r3, fp
   1b482:	6872      	ldr	r2, [r6, #4]
   1b484:	681b      	ldr	r3, [r3, #0]
   1b486:	454a      	cmp	r2, r9
   1b488:	d101      	bne.n	1b48e <__call_exitprocs+0x96>
   1b48a:	42b3      	cmp	r3, r6
   1b48c:	d0d5      	beq.n	1b43a <__call_exitprocs+0x42>
   1b48e:	001e      	movs	r6, r3
   1b490:	e7be      	b.n	1b410 <__call_exitprocs+0x18>
   1b492:	4790      	blx	r2
   1b494:	e7f4      	b.n	1b480 <__call_exitprocs+0x88>
   1b496:	6074      	str	r4, [r6, #4]
   1b498:	e7dc      	b.n	1b454 <__call_exitprocs+0x5c>
   1b49a:	0008      	movs	r0, r1
   1b49c:	4790      	blx	r2
   1b49e:	e7ef      	b.n	1b480 <__call_exitprocs+0x88>
   1b4a0:	b003      	add	sp, #12
   1b4a2:	bc3c      	pop	{r2, r3, r4, r5}
   1b4a4:	4690      	mov	r8, r2
   1b4a6:	4699      	mov	r9, r3
   1b4a8:	46a2      	mov	sl, r4
   1b4aa:	46ab      	mov	fp, r5
   1b4ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1b4ae:	46c0      	nop			; (mov r8, r8)
   1b4b0:	200014ec 	.word	0x200014ec

0001b4b4 <_exit>:
   1b4b4:	e7fe      	b.n	1b4b4 <_exit>
   1b4b6:	46c0      	nop			; (mov r8, r8)

0001b4b8 <uart_error_handle>:
   1b4b8:	b510      	push	{r4, lr}
   1b4ba:	7803      	ldrb	r3, [r0, #0]
   1b4bc:	2b02      	cmp	r3, #2
   1b4be:	d002      	beq.n	1b4c6 <uart_error_handle+0xe>
   1b4c0:	2b01      	cmp	r3, #1
   1b4c2:	d006      	beq.n	1b4d2 <uart_error_handle+0x1a>
   1b4c4:	bd10      	pop	{r4, pc}
   1b4c6:	6840      	ldr	r0, [r0, #4]
   1b4c8:	4a05      	ldr	r2, [pc, #20]	; (1b4e0 <uart_error_handle+0x28>)
   1b4ca:	2145      	movs	r1, #69	; 0x45
   1b4cc:	f000 f9e8 	bl	1b8a0 <app_error_handler>
   1b4d0:	e7f8      	b.n	1b4c4 <uart_error_handle+0xc>
   1b4d2:	6840      	ldr	r0, [r0, #4]
   1b4d4:	4a02      	ldr	r2, [pc, #8]	; (1b4e0 <uart_error_handle+0x28>)
   1b4d6:	2149      	movs	r1, #73	; 0x49
   1b4d8:	f000 f9e2 	bl	1b8a0 <app_error_handler>
   1b4dc:	e7f2      	b.n	1b4c4 <uart_error_handle+0xc>
   1b4de:	46c0      	nop			; (mov r8, r8)
   1b4e0:	0001df6c 	.word	0x0001df6c

0001b4e4 <main>:
   1b4e4:	b530      	push	{r4, r5, lr}
   1b4e6:	b08b      	sub	sp, #44	; 0x2c
   1b4e8:	a804      	add	r0, sp, #16
   1b4ea:	4919      	ldr	r1, [pc, #100]	; (1b550 <main+0x6c>)
   1b4ec:	0003      	movs	r3, r0
   1b4ee:	000a      	movs	r2, r1
   1b4f0:	ca32      	ldmia	r2!, {r1, r4, r5}
   1b4f2:	c332      	stmia	r3!, {r1, r4, r5}
   1b4f4:	ca32      	ldmia	r2!, {r1, r4, r5}
   1b4f6:	c332      	stmia	r3!, {r1, r4, r5}
   1b4f8:	4b16      	ldr	r3, [pc, #88]	; (1b554 <main+0x70>)
   1b4fa:	9300      	str	r3, [sp, #0]
   1b4fc:	2380      	movs	r3, #128	; 0x80
   1b4fe:	005b      	lsls	r3, r3, #1
   1b500:	9301      	str	r3, [sp, #4]
   1b502:	4a15      	ldr	r2, [pc, #84]	; (1b558 <main+0x74>)
   1b504:	9202      	str	r2, [sp, #8]
   1b506:	9303      	str	r3, [sp, #12]
   1b508:	3bfd      	subs	r3, #253	; 0xfd
   1b50a:	4a14      	ldr	r2, [pc, #80]	; (1b55c <main+0x78>)
   1b50c:	4669      	mov	r1, sp
   1b50e:	f000 f955 	bl	1b7bc <app_uart_init>
   1b512:	2800      	cmp	r0, #0
   1b514:	d117      	bne.n	1b546 <main+0x62>
   1b516:	4812      	ldr	r0, [pc, #72]	; (1b560 <main+0x7c>)
   1b518:	f000 ffdc 	bl	1c4d4 <iprintf>
   1b51c:	4668      	mov	r0, sp
   1b51e:	f000 f999 	bl	1b854 <app_uart_get>
   1b522:	2800      	cmp	r0, #0
   1b524:	d1fa      	bne.n	1b51c <main+0x38>
   1b526:	466b      	mov	r3, sp
   1b528:	7818      	ldrb	r0, [r3, #0]
   1b52a:	f000 f9a5 	bl	1b878 <app_uart_put>
   1b52e:	2800      	cmp	r0, #0
   1b530:	d1f9      	bne.n	1b526 <main+0x42>
   1b532:	466b      	mov	r3, sp
   1b534:	781b      	ldrb	r3, [r3, #0]
   1b536:	2b71      	cmp	r3, #113	; 0x71
   1b538:	d001      	beq.n	1b53e <main+0x5a>
   1b53a:	2b51      	cmp	r3, #81	; 0x51
   1b53c:	d1ee      	bne.n	1b51c <main+0x38>
   1b53e:	4809      	ldr	r0, [pc, #36]	; (1b564 <main+0x80>)
   1b540:	f000 ffc8 	bl	1c4d4 <iprintf>
   1b544:	e7fe      	b.n	1b544 <main+0x60>
   1b546:	4a08      	ldr	r2, [pc, #32]	; (1b568 <main+0x84>)
   1b548:	2194      	movs	r1, #148	; 0x94
   1b54a:	f000 f9a9 	bl	1b8a0 <app_error_handler>
   1b54e:	e7e2      	b.n	1b516 <main+0x32>
   1b550:	0001df3c 	.word	0x0001df3c
   1b554:	200014f0 	.word	0x200014f0
   1b558:	200015f0 	.word	0x200015f0
   1b55c:	0001b4b9 	.word	0x0001b4b9
   1b560:	0001df54 	.word	0x0001df54
   1b564:	0001df60 	.word	0x0001df60
   1b568:	0001df6c 	.word	0x0001df6c

0001b56c <Reset_Handler>:
   1b56c:	2103      	movs	r1, #3
   1b56e:	480a      	ldr	r0, [pc, #40]	; (1b598 <Reset_Handler+0x2c>)
   1b570:	6802      	ldr	r2, [r0, #0]
   1b572:	430a      	orrs	r2, r1
   1b574:	6002      	str	r2, [r0, #0]
   1b576:	4809      	ldr	r0, [pc, #36]	; (1b59c <Reset_Handler+0x30>)
   1b578:	6802      	ldr	r2, [r0, #0]
   1b57a:	430a      	orrs	r2, r1
   1b57c:	6002      	str	r2, [r0, #0]
   1b57e:	4908      	ldr	r1, [pc, #32]	; (1b5a0 <Reset_Handler+0x34>)
   1b580:	4a08      	ldr	r2, [pc, #32]	; (1b5a4 <Reset_Handler+0x38>)
   1b582:	4b09      	ldr	r3, [pc, #36]	; (1b5a8 <Reset_Handler+0x3c>)
   1b584:	1a9b      	subs	r3, r3, r2
   1b586:	dd03      	ble.n	1b590 <Reset_Handler+0x24>
   1b588:	3b04      	subs	r3, #4
   1b58a:	58c8      	ldr	r0, [r1, r3]
   1b58c:	50d0      	str	r0, [r2, r3]
   1b58e:	dcfb      	bgt.n	1b588 <Reset_Handler+0x1c>
   1b590:	f000 f8a2 	bl	1b6d8 <SystemInit>
   1b594:	f7ff fde6 	bl	1b164 <_mainCRTStartup>
   1b598:	40000524 	.word	0x40000524
   1b59c:	40000554 	.word	0x40000554
   1b5a0:	0001e0a4 	.word	0x0001e0a4
   1b5a4:	200013c8 	.word	0x200013c8
   1b5a8:	20001444 	.word	0x20001444

0001b5ac <NMI_Handler>:
   1b5ac:	e7fe      	b.n	1b5ac <NMI_Handler>

0001b5ae <HardFault_Handler>:
   1b5ae:	e7fe      	b.n	1b5ae <HardFault_Handler>

0001b5b0 <SVC_Handler>:
   1b5b0:	e7fe      	b.n	1b5b0 <SVC_Handler>

0001b5b2 <PendSV_Handler>:
   1b5b2:	e7fe      	b.n	1b5b2 <PendSV_Handler>

0001b5b4 <SysTick_Handler>:
   1b5b4:	e7fe      	b.n	1b5b4 <SysTick_Handler>

0001b5b6 <Default_Handler>:
   1b5b6:	e7fe      	b.n	1b5b6 <Default_Handler>

0001b5b8 <is_manual_peripheral_setup_needed>:
   1b5b8:	4b17      	ldr	r3, [pc, #92]	; (1b618 <is_manual_peripheral_setup_needed+0x60>)
   1b5ba:	681a      	ldr	r2, [r3, #0]
   1b5bc:	23ff      	movs	r3, #255	; 0xff
   1b5be:	4013      	ands	r3, r2
   1b5c0:	2b01      	cmp	r3, #1
   1b5c2:	d001      	beq.n	1b5c8 <is_manual_peripheral_setup_needed+0x10>
   1b5c4:	2000      	movs	r0, #0
   1b5c6:	4770      	bx	lr
   1b5c8:	4b14      	ldr	r3, [pc, #80]	; (1b61c <is_manual_peripheral_setup_needed+0x64>)
   1b5ca:	681b      	ldr	r3, [r3, #0]
   1b5cc:	071b      	lsls	r3, r3, #28
   1b5ce:	d11d      	bne.n	1b60c <is_manual_peripheral_setup_needed+0x54>
   1b5d0:	4b13      	ldr	r3, [pc, #76]	; (1b620 <is_manual_peripheral_setup_needed+0x68>)
   1b5d2:	681a      	ldr	r2, [r3, #0]
   1b5d4:	23f0      	movs	r3, #240	; 0xf0
   1b5d6:	4013      	ands	r3, r2
   1b5d8:	d104      	bne.n	1b5e4 <is_manual_peripheral_setup_needed+0x2c>
   1b5da:	4a12      	ldr	r2, [pc, #72]	; (1b624 <is_manual_peripheral_setup_needed+0x6c>)
   1b5dc:	6812      	ldr	r2, [r2, #0]
   1b5de:	21f0      	movs	r1, #240	; 0xf0
   1b5e0:	4211      	tst	r1, r2
   1b5e2:	d015      	beq.n	1b610 <is_manual_peripheral_setup_needed+0x58>
   1b5e4:	2b10      	cmp	r3, #16
   1b5e6:	d003      	beq.n	1b5f0 <is_manual_peripheral_setup_needed+0x38>
   1b5e8:	2b30      	cmp	r3, #48	; 0x30
   1b5ea:	d008      	beq.n	1b5fe <is_manual_peripheral_setup_needed+0x46>
   1b5ec:	2000      	movs	r0, #0
   1b5ee:	e7ea      	b.n	1b5c6 <is_manual_peripheral_setup_needed+0xe>
   1b5f0:	4a0c      	ldr	r2, [pc, #48]	; (1b624 <is_manual_peripheral_setup_needed+0x6c>)
   1b5f2:	6812      	ldr	r2, [r2, #0]
   1b5f4:	21f0      	movs	r1, #240	; 0xf0
   1b5f6:	4211      	tst	r1, r2
   1b5f8:	d1f6      	bne.n	1b5e8 <is_manual_peripheral_setup_needed+0x30>
   1b5fa:	2001      	movs	r0, #1
   1b5fc:	e7e3      	b.n	1b5c6 <is_manual_peripheral_setup_needed+0xe>
   1b5fe:	4b09      	ldr	r3, [pc, #36]	; (1b624 <is_manual_peripheral_setup_needed+0x6c>)
   1b600:	681b      	ldr	r3, [r3, #0]
   1b602:	22f0      	movs	r2, #240	; 0xf0
   1b604:	421a      	tst	r2, r3
   1b606:	d005      	beq.n	1b614 <is_manual_peripheral_setup_needed+0x5c>
   1b608:	2000      	movs	r0, #0
   1b60a:	e7dc      	b.n	1b5c6 <is_manual_peripheral_setup_needed+0xe>
   1b60c:	2000      	movs	r0, #0
   1b60e:	e7da      	b.n	1b5c6 <is_manual_peripheral_setup_needed+0xe>
   1b610:	2001      	movs	r0, #1
   1b612:	e7d8      	b.n	1b5c6 <is_manual_peripheral_setup_needed+0xe>
   1b614:	2001      	movs	r0, #1
   1b616:	e7d6      	b.n	1b5c6 <is_manual_peripheral_setup_needed+0xe>
   1b618:	f0000fe0 	.word	0xf0000fe0
   1b61c:	f0000fe4 	.word	0xf0000fe4
   1b620:	f0000fe8 	.word	0xf0000fe8
   1b624:	f0000fec 	.word	0xf0000fec

0001b628 <is_disabled_in_debug_needed>:
   1b628:	4b0f      	ldr	r3, [pc, #60]	; (1b668 <is_disabled_in_debug_needed+0x40>)
   1b62a:	681a      	ldr	r2, [r3, #0]
   1b62c:	23ff      	movs	r3, #255	; 0xff
   1b62e:	4013      	ands	r3, r2
   1b630:	2b01      	cmp	r3, #1
   1b632:	d001      	beq.n	1b638 <is_disabled_in_debug_needed+0x10>
   1b634:	2000      	movs	r0, #0
   1b636:	4770      	bx	lr
   1b638:	4b0c      	ldr	r3, [pc, #48]	; (1b66c <is_disabled_in_debug_needed+0x44>)
   1b63a:	681b      	ldr	r3, [r3, #0]
   1b63c:	071b      	lsls	r3, r3, #28
   1b63e:	d10e      	bne.n	1b65e <is_disabled_in_debug_needed+0x36>
   1b640:	4b0b      	ldr	r3, [pc, #44]	; (1b670 <is_disabled_in_debug_needed+0x48>)
   1b642:	681a      	ldr	r2, [r3, #0]
   1b644:	23f0      	movs	r3, #240	; 0xf0
   1b646:	4013      	ands	r3, r2
   1b648:	2b40      	cmp	r3, #64	; 0x40
   1b64a:	d001      	beq.n	1b650 <is_disabled_in_debug_needed+0x28>
   1b64c:	2000      	movs	r0, #0
   1b64e:	e7f2      	b.n	1b636 <is_disabled_in_debug_needed+0xe>
   1b650:	4b08      	ldr	r3, [pc, #32]	; (1b674 <is_disabled_in_debug_needed+0x4c>)
   1b652:	681b      	ldr	r3, [r3, #0]
   1b654:	22f0      	movs	r2, #240	; 0xf0
   1b656:	421a      	tst	r2, r3
   1b658:	d003      	beq.n	1b662 <is_disabled_in_debug_needed+0x3a>
   1b65a:	2000      	movs	r0, #0
   1b65c:	e7eb      	b.n	1b636 <is_disabled_in_debug_needed+0xe>
   1b65e:	2000      	movs	r0, #0
   1b660:	e7e9      	b.n	1b636 <is_disabled_in_debug_needed+0xe>
   1b662:	2001      	movs	r0, #1
   1b664:	e7e7      	b.n	1b636 <is_disabled_in_debug_needed+0xe>
   1b666:	46c0      	nop			; (mov r8, r8)
   1b668:	f0000fe0 	.word	0xf0000fe0
   1b66c:	f0000fe4 	.word	0xf0000fe4
   1b670:	f0000fe8 	.word	0xf0000fe8
   1b674:	f0000fec 	.word	0xf0000fec

0001b678 <is_peripheral_domain_setup_needed>:
   1b678:	4b13      	ldr	r3, [pc, #76]	; (1b6c8 <is_peripheral_domain_setup_needed+0x50>)
   1b67a:	681a      	ldr	r2, [r3, #0]
   1b67c:	23ff      	movs	r3, #255	; 0xff
   1b67e:	4013      	ands	r3, r2
   1b680:	2b01      	cmp	r3, #1
   1b682:	d001      	beq.n	1b688 <is_peripheral_domain_setup_needed+0x10>
   1b684:	2000      	movs	r0, #0
   1b686:	4770      	bx	lr
   1b688:	4b10      	ldr	r3, [pc, #64]	; (1b6cc <is_peripheral_domain_setup_needed+0x54>)
   1b68a:	681b      	ldr	r3, [r3, #0]
   1b68c:	071b      	lsls	r3, r3, #28
   1b68e:	d117      	bne.n	1b6c0 <is_peripheral_domain_setup_needed+0x48>
   1b690:	4b0f      	ldr	r3, [pc, #60]	; (1b6d0 <is_peripheral_domain_setup_needed+0x58>)
   1b692:	681a      	ldr	r2, [r3, #0]
   1b694:	23f0      	movs	r3, #240	; 0xf0
   1b696:	4013      	ands	r3, r2
   1b698:	2ba0      	cmp	r3, #160	; 0xa0
   1b69a:	d003      	beq.n	1b6a4 <is_peripheral_domain_setup_needed+0x2c>
   1b69c:	2bd0      	cmp	r3, #208	; 0xd0
   1b69e:	d008      	beq.n	1b6b2 <is_peripheral_domain_setup_needed+0x3a>
   1b6a0:	2000      	movs	r0, #0
   1b6a2:	e7f0      	b.n	1b686 <is_peripheral_domain_setup_needed+0xe>
   1b6a4:	4a0b      	ldr	r2, [pc, #44]	; (1b6d4 <is_peripheral_domain_setup_needed+0x5c>)
   1b6a6:	6812      	ldr	r2, [r2, #0]
   1b6a8:	21f0      	movs	r1, #240	; 0xf0
   1b6aa:	4211      	tst	r1, r2
   1b6ac:	d1f6      	bne.n	1b69c <is_peripheral_domain_setup_needed+0x24>
   1b6ae:	2001      	movs	r0, #1
   1b6b0:	e7e9      	b.n	1b686 <is_peripheral_domain_setup_needed+0xe>
   1b6b2:	4b08      	ldr	r3, [pc, #32]	; (1b6d4 <is_peripheral_domain_setup_needed+0x5c>)
   1b6b4:	681b      	ldr	r3, [r3, #0]
   1b6b6:	22f0      	movs	r2, #240	; 0xf0
   1b6b8:	421a      	tst	r2, r3
   1b6ba:	d003      	beq.n	1b6c4 <is_peripheral_domain_setup_needed+0x4c>
   1b6bc:	2000      	movs	r0, #0
   1b6be:	e7e2      	b.n	1b686 <is_peripheral_domain_setup_needed+0xe>
   1b6c0:	2000      	movs	r0, #0
   1b6c2:	e7e0      	b.n	1b686 <is_peripheral_domain_setup_needed+0xe>
   1b6c4:	2001      	movs	r0, #1
   1b6c6:	e7de      	b.n	1b686 <is_peripheral_domain_setup_needed+0xe>
   1b6c8:	f0000fe0 	.word	0xf0000fe0
   1b6cc:	f0000fe4 	.word	0xf0000fe4
   1b6d0:	f0000fe8 	.word	0xf0000fe8
   1b6d4:	f0000fec 	.word	0xf0000fec

0001b6d8 <SystemInit>:
   1b6d8:	b510      	push	{r4, lr}
   1b6da:	f7ff ff6d 	bl	1b5b8 <is_manual_peripheral_setup_needed>
   1b6de:	2800      	cmp	r0, #0
   1b6e0:	d006      	beq.n	1b6f0 <SystemInit+0x18>
   1b6e2:	4b12      	ldr	r3, [pc, #72]	; (1b72c <SystemInit+0x54>)
   1b6e4:	4a12      	ldr	r2, [pc, #72]	; (1b730 <SystemInit+0x58>)
   1b6e6:	601a      	str	r2, [r3, #0]
   1b6e8:	4b12      	ldr	r3, [pc, #72]	; (1b734 <SystemInit+0x5c>)
   1b6ea:	2280      	movs	r2, #128	; 0x80
   1b6ec:	0212      	lsls	r2, r2, #8
   1b6ee:	601a      	str	r2, [r3, #0]
   1b6f0:	f7ff ff9a 	bl	1b628 <is_disabled_in_debug_needed>
   1b6f4:	2800      	cmp	r0, #0
   1b6f6:	d005      	beq.n	1b704 <SystemInit+0x2c>
   1b6f8:	2280      	movs	r2, #128	; 0x80
   1b6fa:	05d2      	lsls	r2, r2, #23
   1b6fc:	23c1      	movs	r3, #193	; 0xc1
   1b6fe:	00db      	lsls	r3, r3, #3
   1b700:	2101      	movs	r1, #1
   1b702:	50d1      	str	r1, [r2, r3]
   1b704:	f7ff ffb8 	bl	1b678 <is_peripheral_domain_setup_needed>
   1b708:	2800      	cmp	r0, #0
   1b70a:	d00d      	beq.n	1b728 <SystemInit+0x50>
   1b70c:	4b0a      	ldr	r3, [pc, #40]	; (1b738 <SystemInit+0x60>)
   1b70e:	681b      	ldr	r3, [r3, #0]
   1b710:	2b01      	cmp	r3, #1
   1b712:	d006      	beq.n	1b722 <SystemInit+0x4a>
   1b714:	4b08      	ldr	r3, [pc, #32]	; (1b738 <SystemInit+0x60>)
   1b716:	4a09      	ldr	r2, [pc, #36]	; (1b73c <SystemInit+0x64>)
   1b718:	601a      	str	r2, [r3, #0]
   1b71a:	4b07      	ldr	r3, [pc, #28]	; (1b738 <SystemInit+0x60>)
   1b71c:	681b      	ldr	r3, [r3, #0]
   1b71e:	2b01      	cmp	r3, #1
   1b720:	d1fb      	bne.n	1b71a <SystemInit+0x42>
   1b722:	4b07      	ldr	r3, [pc, #28]	; (1b740 <SystemInit+0x68>)
   1b724:	22c0      	movs	r2, #192	; 0xc0
   1b726:	601a      	str	r2, [r3, #0]
   1b728:	bd10      	pop	{r4, pc}
   1b72a:	46c0      	nop			; (mov r8, r8)
   1b72c:	40000504 	.word	0x40000504
   1b730:	c007ffdf 	.word	0xc007ffdf
   1b734:	40006c18 	.word	0x40006c18
   1b738:	4006ec00 	.word	0x4006ec00
   1b73c:	00009375 	.word	0x00009375
   1b740:	4006ec14 	.word	0x4006ec14

0001b744 <uart_event_handler>:
   1b744:	b500      	push	{lr}
   1b746:	b085      	sub	sp, #20
   1b748:	7803      	ldrb	r3, [r0, #0]
   1b74a:	2b01      	cmp	r3, #1
   1b74c:	d00c      	beq.n	1b768 <uart_event_handler+0x24>
   1b74e:	2b02      	cmp	r3, #2
   1b750:	d01d      	beq.n	1b78e <uart_event_handler+0x4a>
   1b752:	2b00      	cmp	r3, #0
   1b754:	d106      	bne.n	1b764 <uart_event_handler+0x20>
   1b756:	3303      	adds	r3, #3
   1b758:	aa02      	add	r2, sp, #8
   1b75a:	7013      	strb	r3, [r2, #0]
   1b75c:	4b13      	ldr	r3, [pc, #76]	; (1b7ac <uart_event_handler+0x68>)
   1b75e:	681b      	ldr	r3, [r3, #0]
   1b760:	0010      	movs	r0, r2
   1b762:	4798      	blx	r3
   1b764:	b005      	add	sp, #20
   1b766:	bd00      	pop	{pc}
   1b768:	3303      	adds	r3, #3
   1b76a:	aa02      	add	r2, sp, #8
   1b76c:	7013      	strb	r3, [r2, #0]
   1b76e:	6843      	ldr	r3, [r0, #4]
   1b770:	781b      	ldrb	r3, [r3, #0]
   1b772:	7113      	strb	r3, [r2, #4]
   1b774:	2201      	movs	r2, #1
   1b776:	490e      	ldr	r1, [pc, #56]	; (1b7b0 <uart_event_handler+0x6c>)
   1b778:	480e      	ldr	r0, [pc, #56]	; (1b7b4 <uart_event_handler+0x70>)
   1b77a:	f000 faa1 	bl	1bcc0 <nrf_drv_uart_rx>
   1b77e:	4b0e      	ldr	r3, [pc, #56]	; (1b7b8 <uart_event_handler+0x74>)
   1b780:	2201      	movs	r2, #1
   1b782:	701a      	strb	r2, [r3, #0]
   1b784:	4b09      	ldr	r3, [pc, #36]	; (1b7ac <uart_event_handler+0x68>)
   1b786:	681b      	ldr	r3, [r3, #0]
   1b788:	a802      	add	r0, sp, #8
   1b78a:	4798      	blx	r3
   1b78c:	e7ea      	b.n	1b764 <uart_event_handler+0x20>
   1b78e:	aa02      	add	r2, sp, #8
   1b790:	7013      	strb	r3, [r2, #0]
   1b792:	68c3      	ldr	r3, [r0, #12]
   1b794:	9301      	str	r3, [sp, #4]
   1b796:	9303      	str	r3, [sp, #12]
   1b798:	2201      	movs	r2, #1
   1b79a:	4905      	ldr	r1, [pc, #20]	; (1b7b0 <uart_event_handler+0x6c>)
   1b79c:	4805      	ldr	r0, [pc, #20]	; (1b7b4 <uart_event_handler+0x70>)
   1b79e:	f000 fa8f 	bl	1bcc0 <nrf_drv_uart_rx>
   1b7a2:	4b02      	ldr	r3, [pc, #8]	; (1b7ac <uart_event_handler+0x68>)
   1b7a4:	681b      	ldr	r3, [r3, #0]
   1b7a6:	a802      	add	r0, sp, #8
   1b7a8:	4798      	blx	r3
   1b7aa:	e7db      	b.n	1b764 <uart_event_handler+0x20>
   1b7ac:	200016f0 	.word	0x200016f0
   1b7b0:	200016f4 	.word	0x200016f4
   1b7b4:	2000142c 	.word	0x2000142c
   1b7b8:	200016f5 	.word	0x200016f5

0001b7bc <app_uart_init>:
   1b7bc:	b5f0      	push	{r4, r5, r6, r7, lr}
   1b7be:	b089      	sub	sp, #36	; 0x24
   1b7c0:	0005      	movs	r5, r0
   1b7c2:	469c      	mov	ip, r3
   1b7c4:	466c      	mov	r4, sp
   1b7c6:	4e1d      	ldr	r6, [pc, #116]	; (1b83c <app_uart_init+0x80>)
   1b7c8:	0021      	movs	r1, r4
   1b7ca:	0030      	movs	r0, r6
   1b7cc:	c8c8      	ldmia	r0!, {r3, r6, r7}
   1b7ce:	c1c8      	stmia	r1!, {r3, r6, r7}
   1b7d0:	c8c8      	ldmia	r0!, {r3, r6, r7}
   1b7d2:	c1c8      	stmia	r1!, {r3, r6, r7}
   1b7d4:	c848      	ldmia	r0!, {r3, r6}
   1b7d6:	c148      	stmia	r1!, {r3, r6}
   1b7d8:	6969      	ldr	r1, [r5, #20]
   1b7da:	61a1      	str	r1, [r4, #24]
   1b7dc:	7c29      	ldrb	r1, [r5, #16]
   1b7de:	1e48      	subs	r0, r1, #1
   1b7e0:	4181      	sbcs	r1, r0
   1b7e2:	7521      	strb	r1, [r4, #20]
   1b7e4:	4663      	mov	r3, ip
   1b7e6:	7723      	strb	r3, [r4, #28]
   1b7e8:	7c6b      	ldrb	r3, [r5, #17]
   1b7ea:	2b00      	cmp	r3, #0
   1b7ec:	d01a      	beq.n	1b824 <app_uart_init+0x68>
   1b7ee:	230e      	movs	r3, #14
   1b7f0:	4669      	mov	r1, sp
   1b7f2:	754b      	strb	r3, [r1, #21]
   1b7f4:	68eb      	ldr	r3, [r5, #12]
   1b7f6:	9302      	str	r3, [sp, #8]
   1b7f8:	68ab      	ldr	r3, [r5, #8]
   1b7fa:	9303      	str	r3, [sp, #12]
   1b7fc:	682b      	ldr	r3, [r5, #0]
   1b7fe:	9301      	str	r3, [sp, #4]
   1b800:	686b      	ldr	r3, [r5, #4]
   1b802:	9300      	str	r3, [sp, #0]
   1b804:	4b0e      	ldr	r3, [pc, #56]	; (1b840 <app_uart_init+0x84>)
   1b806:	601a      	str	r2, [r3, #0]
   1b808:	4b0e      	ldr	r3, [pc, #56]	; (1b844 <app_uart_init+0x88>)
   1b80a:	2200      	movs	r2, #0
   1b80c:	701a      	strb	r2, [r3, #0]
   1b80e:	4a0e      	ldr	r2, [pc, #56]	; (1b848 <app_uart_init+0x8c>)
   1b810:	480e      	ldr	r0, [pc, #56]	; (1b84c <app_uart_init+0x90>)
   1b812:	f000 f89f 	bl	1b954 <nrf_drv_uart_init>
   1b816:	2800      	cmp	r0, #0
   1b818:	d102      	bne.n	1b820 <app_uart_init+0x64>
   1b81a:	682b      	ldr	r3, [r5, #0]
   1b81c:	3301      	adds	r3, #1
   1b81e:	d103      	bne.n	1b828 <app_uart_init+0x6c>
   1b820:	b009      	add	sp, #36	; 0x24
   1b822:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1b824:	2300      	movs	r3, #0
   1b826:	e7e3      	b.n	1b7f0 <app_uart_init+0x34>
   1b828:	4c08      	ldr	r4, [pc, #32]	; (1b84c <app_uart_init+0x90>)
   1b82a:	0020      	movs	r0, r4
   1b82c:	f000 fb12 	bl	1be54 <nrf_drv_uart_rx_enable>
   1b830:	2201      	movs	r2, #1
   1b832:	4907      	ldr	r1, [pc, #28]	; (1b850 <app_uart_init+0x94>)
   1b834:	0020      	movs	r0, r4
   1b836:	f000 fa43 	bl	1bcc0 <nrf_drv_uart_rx>
   1b83a:	e7f1      	b.n	1b820 <app_uart_init+0x64>
   1b83c:	0001df98 	.word	0x0001df98
   1b840:	200016f0 	.word	0x200016f0
   1b844:	200016f5 	.word	0x200016f5
   1b848:	0001b745 	.word	0x0001b745
   1b84c:	2000142c 	.word	0x2000142c
   1b850:	200016f4 	.word	0x200016f4

0001b854 <app_uart_get>:
   1b854:	4b06      	ldr	r3, [pc, #24]	; (1b870 <app_uart_get+0x1c>)
   1b856:	781b      	ldrb	r3, [r3, #0]
   1b858:	2b00      	cmp	r3, #0
   1b85a:	d007      	beq.n	1b86c <app_uart_get+0x18>
   1b85c:	4b05      	ldr	r3, [pc, #20]	; (1b874 <app_uart_get+0x20>)
   1b85e:	781b      	ldrb	r3, [r3, #0]
   1b860:	7003      	strb	r3, [r0, #0]
   1b862:	4b03      	ldr	r3, [pc, #12]	; (1b870 <app_uart_get+0x1c>)
   1b864:	2200      	movs	r2, #0
   1b866:	701a      	strb	r2, [r3, #0]
   1b868:	2000      	movs	r0, #0
   1b86a:	4770      	bx	lr
   1b86c:	2005      	movs	r0, #5
   1b86e:	e7fc      	b.n	1b86a <app_uart_get+0x16>
   1b870:	200016f5 	.word	0x200016f5
   1b874:	200016f4 	.word	0x200016f4

0001b878 <app_uart_put>:
   1b878:	b510      	push	{r4, lr}
   1b87a:	4907      	ldr	r1, [pc, #28]	; (1b898 <app_uart_put+0x20>)
   1b87c:	7008      	strb	r0, [r1, #0]
   1b87e:	2201      	movs	r2, #1
   1b880:	4806      	ldr	r0, [pc, #24]	; (1b89c <app_uart_put+0x24>)
   1b882:	f000 f991 	bl	1bba8 <nrf_drv_uart_tx>
   1b886:	2811      	cmp	r0, #17
   1b888:	d004      	beq.n	1b894 <app_uart_put+0x1c>
   1b88a:	2800      	cmp	r0, #0
   1b88c:	d100      	bne.n	1b890 <app_uart_put+0x18>
   1b88e:	bd10      	pop	{r4, pc}
   1b890:	2003      	movs	r0, #3
   1b892:	e7fc      	b.n	1b88e <app_uart_put+0x16>
   1b894:	2004      	movs	r0, #4
   1b896:	e7fa      	b.n	1b88e <app_uart_put+0x16>
   1b898:	200016f8 	.word	0x200016f8
   1b89c:	2000142c 	.word	0x2000142c

0001b8a0 <app_error_handler>:
   1b8a0:	b500      	push	{lr}
   1b8a2:	b085      	sub	sp, #20
   1b8a4:	ab01      	add	r3, sp, #4
   1b8a6:	8019      	strh	r1, [r3, #0]
   1b8a8:	9202      	str	r2, [sp, #8]
   1b8aa:	9003      	str	r0, [sp, #12]
   1b8ac:	001a      	movs	r2, r3
   1b8ae:	2100      	movs	r1, #0
   1b8b0:	4802      	ldr	r0, [pc, #8]	; (1b8bc <app_error_handler+0x1c>)
   1b8b2:	f000 f839 	bl	1b928 <app_error_fault_handler>
   1b8b6:	b005      	add	sp, #20
   1b8b8:	bd00      	pop	{pc}
   1b8ba:	46c0      	nop			; (mov r8, r8)
   1b8bc:	00004001 	.word	0x00004001

0001b8c0 <app_error_save_and_stop>:
   1b8c0:	b510      	push	{r4, lr}
   1b8c2:	b082      	sub	sp, #8
   1b8c4:	466b      	mov	r3, sp
   1b8c6:	2401      	movs	r4, #1
   1b8c8:	71dc      	strb	r4, [r3, #7]
   1b8ca:	3307      	adds	r3, #7
   1b8cc:	781b      	ldrb	r3, [r3, #0]
   1b8ce:	4b13      	ldr	r3, [pc, #76]	; (1b91c <app_error_save_and_stop+0x5c>)
   1b8d0:	6018      	str	r0, [r3, #0]
   1b8d2:	6059      	str	r1, [r3, #4]
   1b8d4:	609a      	str	r2, [r3, #8]
   1b8d6:	4b12      	ldr	r3, [pc, #72]	; (1b920 <app_error_save_and_stop+0x60>)
   1b8d8:	4298      	cmp	r0, r3
   1b8da:	d013      	beq.n	1b904 <app_error_save_and_stop+0x44>
   1b8dc:	4b11      	ldr	r3, [pc, #68]	; (1b924 <app_error_save_and_stop+0x64>)
   1b8de:	4298      	cmp	r0, r3
   1b8e0:	d107      	bne.n	1b8f2 <app_error_save_and_stop+0x32>
   1b8e2:	4b0e      	ldr	r3, [pc, #56]	; (1b91c <app_error_save_and_stop+0x5c>)
   1b8e4:	60da      	str	r2, [r3, #12]
   1b8e6:	68da      	ldr	r2, [r3, #12]
   1b8e8:	8812      	ldrh	r2, [r2, #0]
   1b8ea:	619a      	str	r2, [r3, #24]
   1b8ec:	68da      	ldr	r2, [r3, #12]
   1b8ee:	6852      	ldr	r2, [r2, #4]
   1b8f0:	61da      	str	r2, [r3, #28]
   1b8f2:	b672      	cpsid	i
   1b8f4:	466b      	mov	r3, sp
   1b8f6:	3307      	adds	r3, #7
   1b8f8:	781b      	ldrb	r3, [r3, #0]
   1b8fa:	2b00      	cmp	r3, #0
   1b8fc:	d1fa      	bne.n	1b8f4 <app_error_save_and_stop+0x34>
   1b8fe:	b662      	cpsie	i
   1b900:	b002      	add	sp, #8
   1b902:	bd10      	pop	{r4, pc}
   1b904:	4b05      	ldr	r3, [pc, #20]	; (1b91c <app_error_save_and_stop+0x5c>)
   1b906:	611a      	str	r2, [r3, #16]
   1b908:	691a      	ldr	r2, [r3, #16]
   1b90a:	6892      	ldr	r2, [r2, #8]
   1b90c:	615a      	str	r2, [r3, #20]
   1b90e:	691a      	ldr	r2, [r3, #16]
   1b910:	8812      	ldrh	r2, [r2, #0]
   1b912:	619a      	str	r2, [r3, #24]
   1b914:	691a      	ldr	r2, [r3, #16]
   1b916:	6852      	ldr	r2, [r2, #4]
   1b918:	61da      	str	r2, [r3, #28]
   1b91a:	e7ea      	b.n	1b8f2 <app_error_save_and_stop+0x32>
   1b91c:	200016fc 	.word	0x200016fc
   1b920:	00004001 	.word	0x00004001
   1b924:	00004002 	.word	0x00004002

0001b928 <app_error_fault_handler>:
   1b928:	b570      	push	{r4, r5, r6, lr}
   1b92a:	0004      	movs	r4, r0
   1b92c:	000d      	movs	r5, r1
   1b92e:	0016      	movs	r6, r2
   1b930:	4907      	ldr	r1, [pc, #28]	; (1b950 <app_error_fault_handler+0x28>)
   1b932:	2001      	movs	r0, #1
   1b934:	f000 fbe0 	bl	1c0f8 <nrf_log_frontend_std_0>
   1b938:	f000 fbd8 	bl	1c0ec <nrf_log_blocking_backend_set>
   1b93c:	f000 fc28 	bl	1c190 <nrf_log_frontend_dequeue>
   1b940:	2800      	cmp	r0, #0
   1b942:	d1fb      	bne.n	1b93c <app_error_fault_handler+0x14>
   1b944:	0032      	movs	r2, r6
   1b946:	0029      	movs	r1, r5
   1b948:	0020      	movs	r0, r4
   1b94a:	f7ff ffb9 	bl	1b8c0 <app_error_save_and_stop>
   1b94e:	bd70      	pop	{r4, r5, r6, pc}
   1b950:	0001dfb8 	.word	0x0001dfb8

0001b954 <nrf_drv_uart_init>:
   1b954:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1b956:	0005      	movs	r5, r0
   1b958:	7904      	ldrb	r4, [r0, #4]
   1b95a:	00e3      	lsls	r3, r4, #3
   1b95c:	1b1b      	subs	r3, r3, r4
   1b95e:	0098      	lsls	r0, r3, #2
   1b960:	4b46      	ldr	r3, [pc, #280]	; (1ba7c <nrf_drv_uart_init+0x128>)
   1b962:	181b      	adds	r3, r3, r0
   1b964:	7edb      	ldrb	r3, [r3, #27]
   1b966:	2b00      	cmp	r3, #0
   1b968:	d000      	beq.n	1b96c <nrf_drv_uart_init+0x18>
   1b96a:	e085      	b.n	1ba78 <nrf_drv_uart_init+0x124>
   1b96c:	680b      	ldr	r3, [r1, #0]
   1b96e:	1c58      	adds	r0, r3, #1
   1b970:	d00d      	beq.n	1b98e <nrf_drv_uart_init+0x3a>
   1b972:	2001      	movs	r0, #1
   1b974:	4098      	lsls	r0, r3
   1b976:	0003      	movs	r3, r0
   1b978:	20a0      	movs	r0, #160	; 0xa0
   1b97a:	05c0      	lsls	r0, r0, #23
   1b97c:	26a1      	movs	r6, #161	; 0xa1
   1b97e:	00f6      	lsls	r6, r6, #3
   1b980:	5183      	str	r3, [r0, r6]
   1b982:	680b      	ldr	r3, [r1, #0]
   1b984:	33c1      	adds	r3, #193	; 0xc1
   1b986:	33ff      	adds	r3, #255	; 0xff
   1b988:	009b      	lsls	r3, r3, #2
   1b98a:	2603      	movs	r6, #3
   1b98c:	501e      	str	r6, [r3, r0]
   1b98e:	684b      	ldr	r3, [r1, #4]
   1b990:	1c58      	adds	r0, r3, #1
   1b992:	d006      	beq.n	1b9a2 <nrf_drv_uart_init+0x4e>
   1b994:	33c1      	adds	r3, #193	; 0xc1
   1b996:	33ff      	adds	r3, #255	; 0xff
   1b998:	009b      	lsls	r3, r3, #2
   1b99a:	20a0      	movs	r0, #160	; 0xa0
   1b99c:	05c0      	lsls	r0, r0, #23
   1b99e:	2600      	movs	r6, #0
   1b9a0:	501e      	str	r6, [r3, r0]
   1b9a2:	4b37      	ldr	r3, [pc, #220]	; (1ba80 <nrf_drv_uart_init+0x12c>)
   1b9a4:	6828      	ldr	r0, [r5, #0]
   1b9a6:	698e      	ldr	r6, [r1, #24]
   1b9a8:	50c6      	str	r6, [r0, r3]
   1b9aa:	7d4b      	ldrb	r3, [r1, #21]
   1b9ac:	7d08      	ldrb	r0, [r1, #20]
   1b9ae:	4303      	orrs	r3, r0
   1b9b0:	4834      	ldr	r0, [pc, #208]	; (1ba84 <nrf_drv_uart_init+0x130>)
   1b9b2:	682e      	ldr	r6, [r5, #0]
   1b9b4:	5033      	str	r3, [r6, r0]
   1b9b6:	682b      	ldr	r3, [r5, #0]
   1b9b8:	680e      	ldr	r6, [r1, #0]
   1b9ba:	4833      	ldr	r0, [pc, #204]	; (1ba88 <nrf_drv_uart_init+0x134>)
   1b9bc:	684f      	ldr	r7, [r1, #4]
   1b9be:	501f      	str	r7, [r3, r0]
   1b9c0:	4832      	ldr	r0, [pc, #200]	; (1ba8c <nrf_drv_uart_init+0x138>)
   1b9c2:	501e      	str	r6, [r3, r0]
   1b9c4:	7d0b      	ldrb	r3, [r1, #20]
   1b9c6:	2b01      	cmp	r3, #1
   1b9c8:	d032      	beq.n	1ba30 <nrf_drv_uart_init+0xdc>
   1b9ca:	4e2c      	ldr	r6, [pc, #176]	; (1ba7c <nrf_drv_uart_init+0x128>)
   1b9cc:	00e3      	lsls	r3, r4, #3
   1b9ce:	1b1f      	subs	r7, r3, r4
   1b9d0:	00b8      	lsls	r0, r7, #2
   1b9d2:	0007      	movs	r7, r0
   1b9d4:	1830      	adds	r0, r6, r0
   1b9d6:	6042      	str	r2, [r0, #4]
   1b9d8:	690b      	ldr	r3, [r1, #16]
   1b9da:	51bb      	str	r3, [r7, r6]
   1b9dc:	2a00      	cmp	r2, #0
   1b9de:	d012      	beq.n	1ba06 <nrf_drv_uart_init+0xb2>
   1b9e0:	7f09      	ldrb	r1, [r1, #28]
   1b9e2:	2300      	movs	r3, #0
   1b9e4:	228e      	movs	r2, #142	; 0x8e
   1b9e6:	0052      	lsls	r2, r2, #1
   1b9e8:	6828      	ldr	r0, [r5, #0]
   1b9ea:	5083      	str	r3, [r0, r2]
   1b9ec:	3228      	adds	r2, #40	; 0x28
   1b9ee:	6828      	ldr	r0, [r5, #0]
   1b9f0:	5083      	str	r3, [r0, r2]
   1b9f2:	23c1      	movs	r3, #193	; 0xc1
   1b9f4:	009b      	lsls	r3, r3, #2
   1b9f6:	4a26      	ldr	r2, [pc, #152]	; (1ba90 <nrf_drv_uart_init+0x13c>)
   1b9f8:	6828      	ldr	r0, [r5, #0]
   1b9fa:	50c2      	str	r2, [r0, r3]
   1b9fc:	682b      	ldr	r3, [r5, #0]
   1b9fe:	0b18      	lsrs	r0, r3, #12
   1ba00:	b240      	sxtb	r0, r0
   1ba02:	f000 fb37 	bl	1c074 <nrf_drv_common_irq_enable>
   1ba06:	682a      	ldr	r2, [r5, #0]
   1ba08:	23a0      	movs	r3, #160	; 0xa0
   1ba0a:	00db      	lsls	r3, r3, #3
   1ba0c:	2104      	movs	r1, #4
   1ba0e:	50d1      	str	r1, [r2, r3]
   1ba10:	491a      	ldr	r1, [pc, #104]	; (1ba7c <nrf_drv_uart_init+0x128>)
   1ba12:	00e2      	lsls	r2, r4, #3
   1ba14:	1b10      	subs	r0, r2, r4
   1ba16:	0083      	lsls	r3, r0, #2
   1ba18:	18cb      	adds	r3, r1, r3
   1ba1a:	2000      	movs	r0, #0
   1ba1c:	75d8      	strb	r0, [r3, #23]
   1ba1e:	7618      	strb	r0, [r3, #24]
   1ba20:	7598      	strb	r0, [r3, #22]
   1ba22:	2501      	movs	r5, #1
   1ba24:	76dd      	strb	r5, [r3, #27]
   1ba26:	1b14      	subs	r4, r2, r4
   1ba28:	00a3      	lsls	r3, r4, #2
   1ba2a:	18c9      	adds	r1, r1, r3
   1ba2c:	7688      	strb	r0, [r1, #26]
   1ba2e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   1ba30:	688b      	ldr	r3, [r1, #8]
   1ba32:	1c58      	adds	r0, r3, #1
   1ba34:	d006      	beq.n	1ba44 <nrf_drv_uart_init+0xf0>
   1ba36:	33c1      	adds	r3, #193	; 0xc1
   1ba38:	33ff      	adds	r3, #255	; 0xff
   1ba3a:	009b      	lsls	r3, r3, #2
   1ba3c:	20a0      	movs	r0, #160	; 0xa0
   1ba3e:	05c0      	lsls	r0, r0, #23
   1ba40:	2600      	movs	r6, #0
   1ba42:	501e      	str	r6, [r3, r0]
   1ba44:	68cb      	ldr	r3, [r1, #12]
   1ba46:	1c58      	adds	r0, r3, #1
   1ba48:	d00d      	beq.n	1ba66 <nrf_drv_uart_init+0x112>
   1ba4a:	2001      	movs	r0, #1
   1ba4c:	4098      	lsls	r0, r3
   1ba4e:	0003      	movs	r3, r0
   1ba50:	20a0      	movs	r0, #160	; 0xa0
   1ba52:	05c0      	lsls	r0, r0, #23
   1ba54:	26a1      	movs	r6, #161	; 0xa1
   1ba56:	00f6      	lsls	r6, r6, #3
   1ba58:	5183      	str	r3, [r0, r6]
   1ba5a:	68cb      	ldr	r3, [r1, #12]
   1ba5c:	33c1      	adds	r3, #193	; 0xc1
   1ba5e:	33ff      	adds	r3, #255	; 0xff
   1ba60:	009b      	lsls	r3, r3, #2
   1ba62:	2603      	movs	r6, #3
   1ba64:	501e      	str	r6, [r3, r0]
   1ba66:	682b      	ldr	r3, [r5, #0]
   1ba68:	688e      	ldr	r6, [r1, #8]
   1ba6a:	20a1      	movs	r0, #161	; 0xa1
   1ba6c:	00c0      	lsls	r0, r0, #3
   1ba6e:	68cf      	ldr	r7, [r1, #12]
   1ba70:	501f      	str	r7, [r3, r0]
   1ba72:	3008      	adds	r0, #8
   1ba74:	501e      	str	r6, [r3, r0]
   1ba76:	e7a8      	b.n	1b9ca <nrf_drv_uart_init+0x76>
   1ba78:	2008      	movs	r0, #8
   1ba7a:	e7d8      	b.n	1ba2e <nrf_drv_uart_init+0xda>
   1ba7c:	2000171c 	.word	0x2000171c
   1ba80:	00000524 	.word	0x00000524
   1ba84:	0000056c 	.word	0x0000056c
   1ba88:	00000514 	.word	0x00000514
   1ba8c:	0000050c 	.word	0x0000050c
   1ba90:	00020080 	.word	0x00020080

0001ba94 <nrf_drv_uart_uninit>:
   1ba94:	b5f0      	push	{r4, r5, r6, r7, lr}
   1ba96:	46de      	mov	lr, fp
   1ba98:	4657      	mov	r7, sl
   1ba9a:	464e      	mov	r6, r9
   1ba9c:	4645      	mov	r5, r8
   1ba9e:	b5e0      	push	{r5, r6, r7, lr}
   1baa0:	7902      	ldrb	r2, [r0, #4]
   1baa2:	23a0      	movs	r3, #160	; 0xa0
   1baa4:	00db      	lsls	r3, r3, #3
   1baa6:	2100      	movs	r1, #0
   1baa8:	6804      	ldr	r4, [r0, #0]
   1baaa:	50e1      	str	r1, [r4, r3]
   1baac:	00d3      	lsls	r3, r2, #3
   1baae:	1a9b      	subs	r3, r3, r2
   1bab0:	0099      	lsls	r1, r3, #2
   1bab2:	4b31      	ldr	r3, [pc, #196]	; (1bb78 <nrf_drv_uart_uninit+0xe4>)
   1bab4:	185b      	adds	r3, r3, r1
   1bab6:	685b      	ldr	r3, [r3, #4]
   1bab8:	2b00      	cmp	r3, #0
   1baba:	d00e      	beq.n	1bada <nrf_drv_uart_uninit+0x46>
   1babc:	23c2      	movs	r3, #194	; 0xc2
   1babe:	009b      	lsls	r3, r3, #2
   1bac0:	492e      	ldr	r1, [pc, #184]	; (1bb7c <nrf_drv_uart_uninit+0xe8>)
   1bac2:	6804      	ldr	r4, [r0, #0]
   1bac4:	50e1      	str	r1, [r4, r3]
   1bac6:	6803      	ldr	r3, [r0, #0]
   1bac8:	0b1b      	lsrs	r3, r3, #12
   1baca:	211f      	movs	r1, #31
   1bacc:	400b      	ands	r3, r1
   1bace:	391e      	subs	r1, #30
   1bad0:	4099      	lsls	r1, r3
   1bad2:	000b      	movs	r3, r1
   1bad4:	4c2a      	ldr	r4, [pc, #168]	; (1bb80 <nrf_drv_uart_uninit+0xec>)
   1bad6:	2180      	movs	r1, #128	; 0x80
   1bad8:	5063      	str	r3, [r4, r1]
   1bada:	6803      	ldr	r3, [r0, #0]
   1badc:	4929      	ldr	r1, [pc, #164]	; (1bb84 <nrf_drv_uart_uninit+0xf0>)
   1bade:	4689      	mov	r9, r1
   1bae0:	585e      	ldr	r6, [r3, r1]
   1bae2:	4929      	ldr	r1, [pc, #164]	; (1bb88 <nrf_drv_uart_uninit+0xf4>)
   1bae4:	468a      	mov	sl, r1
   1bae6:	585d      	ldr	r5, [r3, r1]
   1bae8:	390c      	subs	r1, #12
   1baea:	4688      	mov	r8, r1
   1baec:	5859      	ldr	r1, [r3, r1]
   1baee:	468b      	mov	fp, r1
   1baf0:	24a2      	movs	r4, #162	; 0xa2
   1baf2:	00e4      	lsls	r4, r4, #3
   1baf4:	46a4      	mov	ip, r4
   1baf6:	591c      	ldr	r4, [r3, r4]
   1baf8:	2701      	movs	r7, #1
   1bafa:	427f      	negs	r7, r7
   1bafc:	4651      	mov	r1, sl
   1bafe:	505f      	str	r7, [r3, r1]
   1bb00:	4649      	mov	r1, r9
   1bb02:	505f      	str	r7, [r3, r1]
   1bb04:	6803      	ldr	r3, [r0, #0]
   1bb06:	4641      	mov	r1, r8
   1bb08:	505f      	str	r7, [r3, r1]
   1bb0a:	4661      	mov	r1, ip
   1bb0c:	505f      	str	r7, [r3, r1]
   1bb0e:	1c73      	adds	r3, r6, #1
   1bb10:	d006      	beq.n	1bb20 <nrf_drv_uart_uninit+0x8c>
   1bb12:	36c1      	adds	r6, #193	; 0xc1
   1bb14:	36ff      	adds	r6, #255	; 0xff
   1bb16:	00b6      	lsls	r6, r6, #2
   1bb18:	23a0      	movs	r3, #160	; 0xa0
   1bb1a:	05db      	lsls	r3, r3, #23
   1bb1c:	2002      	movs	r0, #2
   1bb1e:	50f0      	str	r0, [r6, r3]
   1bb20:	1c6b      	adds	r3, r5, #1
   1bb22:	d006      	beq.n	1bb32 <nrf_drv_uart_uninit+0x9e>
   1bb24:	35c1      	adds	r5, #193	; 0xc1
   1bb26:	35ff      	adds	r5, #255	; 0xff
   1bb28:	00ad      	lsls	r5, r5, #2
   1bb2a:	23a0      	movs	r3, #160	; 0xa0
   1bb2c:	05db      	lsls	r3, r3, #23
   1bb2e:	2002      	movs	r0, #2
   1bb30:	50e8      	str	r0, [r5, r3]
   1bb32:	1c63      	adds	r3, r4, #1
   1bb34:	d006      	beq.n	1bb44 <nrf_drv_uart_uninit+0xb0>
   1bb36:	34c1      	adds	r4, #193	; 0xc1
   1bb38:	34ff      	adds	r4, #255	; 0xff
   1bb3a:	00a4      	lsls	r4, r4, #2
   1bb3c:	23a0      	movs	r3, #160	; 0xa0
   1bb3e:	05db      	lsls	r3, r3, #23
   1bb40:	2002      	movs	r0, #2
   1bb42:	50e0      	str	r0, [r4, r3]
   1bb44:	465b      	mov	r3, fp
   1bb46:	3301      	adds	r3, #1
   1bb48:	d007      	beq.n	1bb5a <nrf_drv_uart_uninit+0xc6>
   1bb4a:	4659      	mov	r1, fp
   1bb4c:	31c1      	adds	r1, #193	; 0xc1
   1bb4e:	31ff      	adds	r1, #255	; 0xff
   1bb50:	0089      	lsls	r1, r1, #2
   1bb52:	23a0      	movs	r3, #160	; 0xa0
   1bb54:	05db      	lsls	r3, r3, #23
   1bb56:	2002      	movs	r0, #2
   1bb58:	50c8      	str	r0, [r1, r3]
   1bb5a:	4907      	ldr	r1, [pc, #28]	; (1bb78 <nrf_drv_uart_uninit+0xe4>)
   1bb5c:	00d3      	lsls	r3, r2, #3
   1bb5e:	1a9c      	subs	r4, r3, r2
   1bb60:	00a0      	lsls	r0, r4, #2
   1bb62:	1808      	adds	r0, r1, r0
   1bb64:	2400      	movs	r4, #0
   1bb66:	76c4      	strb	r4, [r0, #27]
   1bb68:	6044      	str	r4, [r0, #4]
   1bb6a:	bc3c      	pop	{r2, r3, r4, r5}
   1bb6c:	4690      	mov	r8, r2
   1bb6e:	4699      	mov	r9, r3
   1bb70:	46a2      	mov	sl, r4
   1bb72:	46ab      	mov	fp, r5
   1bb74:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1bb76:	46c0      	nop			; (mov r8, r8)
   1bb78:	2000171c 	.word	0x2000171c
   1bb7c:	00020284 	.word	0x00020284
   1bb80:	e000e100 	.word	0xe000e100
   1bb84:	0000050c 	.word	0x0000050c
   1bb88:	00000514 	.word	0x00000514

0001bb8c <nrf_drv_uart_tx_in_progress>:
   1bb8c:	7902      	ldrb	r2, [r0, #4]
   1bb8e:	00d3      	lsls	r3, r2, #3
   1bb90:	1a9b      	subs	r3, r3, r2
   1bb92:	009a      	lsls	r2, r3, #2
   1bb94:	4b03      	ldr	r3, [pc, #12]	; (1bba4 <nrf_drv_uart_tx_in_progress+0x18>)
   1bb96:	189b      	adds	r3, r3, r2
   1bb98:	7d98      	ldrb	r0, [r3, #22]
   1bb9a:	1e43      	subs	r3, r0, #1
   1bb9c:	4198      	sbcs	r0, r3
   1bb9e:	b2c0      	uxtb	r0, r0
   1bba0:	4770      	bx	lr
   1bba2:	46c0      	nop			; (mov r8, r8)
   1bba4:	2000171c 	.word	0x2000171c

0001bba8 <nrf_drv_uart_tx>:
   1bba8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1bbaa:	0004      	movs	r4, r0
   1bbac:	000d      	movs	r5, r1
   1bbae:	0016      	movs	r6, r2
   1bbb0:	7907      	ldrb	r7, [r0, #4]
   1bbb2:	f7ff ffeb 	bl	1bb8c <nrf_drv_uart_tx_in_progress>
   1bbb6:	2800      	cmp	r0, #0
   1bbb8:	d000      	beq.n	1bbbc <nrf_drv_uart_tx+0x14>
   1bbba:	e07a      	b.n	1bcb2 <nrf_drv_uart_tx+0x10a>
   1bbbc:	4a3e      	ldr	r2, [pc, #248]	; (1bcb8 <nrf_drv_uart_tx+0x110>)
   1bbbe:	00fb      	lsls	r3, r7, #3
   1bbc0:	1bd8      	subs	r0, r3, r7
   1bbc2:	0081      	lsls	r1, r0, #2
   1bbc4:	0008      	movs	r0, r1
   1bbc6:	1851      	adds	r1, r2, r1
   1bbc8:	758e      	strb	r6, [r1, #22]
   1bbca:	608d      	str	r5, [r1, #8]
   1bbcc:	1811      	adds	r1, r2, r0
   1bbce:	2000      	movs	r0, #0
   1bbd0:	8288      	strh	r0, [r1, #20]
   1bbd2:	7923      	ldrb	r3, [r4, #4]
   1bbd4:	218e      	movs	r1, #142	; 0x8e
   1bbd6:	0049      	lsls	r1, r1, #1
   1bbd8:	6825      	ldr	r5, [r4, #0]
   1bbda:	5068      	str	r0, [r5, r1]
   1bbdc:	6825      	ldr	r5, [r4, #0]
   1bbde:	2601      	movs	r6, #1
   1bbe0:	60ae      	str	r6, [r5, #8]
   1bbe2:	6825      	ldr	r5, [r4, #0]
   1bbe4:	5068      	str	r0, [r5, r1]
   1bbe6:	00d9      	lsls	r1, r3, #3
   1bbe8:	1ac9      	subs	r1, r1, r3
   1bbea:	0088      	lsls	r0, r1, #2
   1bbec:	1812      	adds	r2, r2, r0
   1bbee:	6890      	ldr	r0, [r2, #8]
   1bbf0:	8a91      	ldrh	r1, [r2, #20]
   1bbf2:	5c46      	ldrb	r6, [r0, r1]
   1bbf4:	8a91      	ldrh	r1, [r2, #20]
   1bbf6:	3101      	adds	r1, #1
   1bbf8:	b289      	uxth	r1, r1
   1bbfa:	8291      	strh	r1, [r2, #20]
   1bbfc:	492f      	ldr	r1, [pc, #188]	; (1bcbc <nrf_drv_uart_tx+0x114>)
   1bbfe:	506e      	str	r6, [r5, r1]
   1bc00:	6852      	ldr	r2, [r2, #4]
   1bc02:	2a00      	cmp	r2, #0
   1bc04:	d00c      	beq.n	1bc20 <nrf_drv_uart_tx+0x78>
   1bc06:	2000      	movs	r0, #0
   1bc08:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   1bc0a:	00da      	lsls	r2, r3, #3
   1bc0c:	1ad2      	subs	r2, r2, r3
   1bc0e:	0095      	lsls	r5, r2, #2
   1bc10:	4a29      	ldr	r2, [pc, #164]	; (1bcb8 <nrf_drv_uart_tx+0x110>)
   1bc12:	1952      	adds	r2, r2, r5
   1bc14:	8a92      	ldrh	r2, [r2, #20]
   1bc16:	b292      	uxth	r2, r2
   1bc18:	2580      	movs	r5, #128	; 0x80
   1bc1a:	006d      	lsls	r5, r5, #1
   1bc1c:	42aa      	cmp	r2, r5
   1bc1e:	d11b      	bne.n	1bc58 <nrf_drv_uart_tx+0xb0>
   1bc20:	00d9      	lsls	r1, r3, #3
   1bc22:	1ac9      	subs	r1, r1, r3
   1bc24:	008d      	lsls	r5, r1, #2
   1bc26:	4a24      	ldr	r2, [pc, #144]	; (1bcb8 <nrf_drv_uart_tx+0x110>)
   1bc28:	1952      	adds	r2, r2, r5
   1bc2a:	8a91      	ldrh	r1, [r2, #20]
   1bc2c:	b289      	uxth	r1, r1
   1bc2e:	7d92      	ldrb	r2, [r2, #22]
   1bc30:	4291      	cmp	r1, r2
   1bc32:	d223      	bcs.n	1bc7c <nrf_drv_uart_tx+0xd4>
   1bc34:	6821      	ldr	r1, [r4, #0]
   1bc36:	228e      	movs	r2, #142	; 0x8e
   1bc38:	0052      	lsls	r2, r2, #1
   1bc3a:	588a      	ldr	r2, [r1, r2]
   1bc3c:	2a00      	cmp	r2, #0
   1bc3e:	d1e4      	bne.n	1bc0a <nrf_drv_uart_tx+0x62>
   1bc40:	00da      	lsls	r2, r3, #3
   1bc42:	1ad2      	subs	r2, r2, r3
   1bc44:	0095      	lsls	r5, r2, #2
   1bc46:	4a1c      	ldr	r2, [pc, #112]	; (1bcb8 <nrf_drv_uart_tx+0x110>)
   1bc48:	1952      	adds	r2, r2, r5
   1bc4a:	8a92      	ldrh	r2, [r2, #20]
   1bc4c:	b292      	uxth	r2, r2
   1bc4e:	2580      	movs	r5, #128	; 0x80
   1bc50:	006d      	lsls	r5, r5, #1
   1bc52:	42aa      	cmp	r2, r5
   1bc54:	d1ee      	bne.n	1bc34 <nrf_drv_uart_tx+0x8c>
   1bc56:	e7d8      	b.n	1bc0a <nrf_drv_uart_tx+0x62>
   1bc58:	228e      	movs	r2, #142	; 0x8e
   1bc5a:	0052      	lsls	r2, r2, #1
   1bc5c:	2500      	movs	r5, #0
   1bc5e:	508d      	str	r5, [r1, r2]
   1bc60:	00dd      	lsls	r5, r3, #3
   1bc62:	1aed      	subs	r5, r5, r3
   1bc64:	00ae      	lsls	r6, r5, #2
   1bc66:	4a14      	ldr	r2, [pc, #80]	; (1bcb8 <nrf_drv_uart_tx+0x110>)
   1bc68:	1992      	adds	r2, r2, r6
   1bc6a:	8a95      	ldrh	r5, [r2, #20]
   1bc6c:	5d46      	ldrb	r6, [r0, r5]
   1bc6e:	8a95      	ldrh	r5, [r2, #20]
   1bc70:	3501      	adds	r5, #1
   1bc72:	b2ad      	uxth	r5, r5
   1bc74:	8295      	strh	r5, [r2, #20]
   1bc76:	4a11      	ldr	r2, [pc, #68]	; (1bcbc <nrf_drv_uart_tx+0x114>)
   1bc78:	508e      	str	r6, [r1, r2]
   1bc7a:	e7d1      	b.n	1bc20 <nrf_drv_uart_tx+0x78>
   1bc7c:	4a0e      	ldr	r2, [pc, #56]	; (1bcb8 <nrf_drv_uart_tx+0x110>)
   1bc7e:	1952      	adds	r2, r2, r5
   1bc80:	8a92      	ldrh	r2, [r2, #20]
   1bc82:	b292      	uxth	r2, r2
   1bc84:	2180      	movs	r1, #128	; 0x80
   1bc86:	0049      	lsls	r1, r1, #1
   1bc88:	428a      	cmp	r2, r1
   1bc8a:	d010      	beq.n	1bcae <nrf_drv_uart_tx+0x106>
   1bc8c:	6822      	ldr	r2, [r4, #0]
   1bc8e:	218e      	movs	r1, #142	; 0x8e
   1bc90:	0049      	lsls	r1, r1, #1
   1bc92:	5851      	ldr	r1, [r2, r1]
   1bc94:	2900      	cmp	r1, #0
   1bc96:	d0f9      	beq.n	1bc8c <nrf_drv_uart_tx+0xe4>
   1bc98:	2101      	movs	r1, #1
   1bc9a:	60d1      	str	r1, [r2, #12]
   1bc9c:	2000      	movs	r0, #0
   1bc9e:	00da      	lsls	r2, r3, #3
   1bca0:	1ad3      	subs	r3, r2, r3
   1bca2:	009a      	lsls	r2, r3, #2
   1bca4:	4b04      	ldr	r3, [pc, #16]	; (1bcb8 <nrf_drv_uart_tx+0x110>)
   1bca6:	189b      	adds	r3, r3, r2
   1bca8:	2200      	movs	r2, #0
   1bcaa:	759a      	strb	r2, [r3, #22]
   1bcac:	e7ac      	b.n	1bc08 <nrf_drv_uart_tx+0x60>
   1bcae:	200f      	movs	r0, #15
   1bcb0:	e7f5      	b.n	1bc9e <nrf_drv_uart_tx+0xf6>
   1bcb2:	2011      	movs	r0, #17
   1bcb4:	e7a8      	b.n	1bc08 <nrf_drv_uart_tx+0x60>
   1bcb6:	46c0      	nop			; (mov r8, r8)
   1bcb8:	2000171c 	.word	0x2000171c
   1bcbc:	0000051c 	.word	0x0000051c

0001bcc0 <nrf_drv_uart_rx>:
   1bcc0:	b5f0      	push	{r4, r5, r6, r7, lr}
   1bcc2:	7903      	ldrb	r3, [r0, #4]
   1bcc4:	00dc      	lsls	r4, r3, #3
   1bcc6:	1ae4      	subs	r4, r4, r3
   1bcc8:	00a5      	lsls	r5, r4, #2
   1bcca:	4c61      	ldr	r4, [pc, #388]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bccc:	1964      	adds	r4, r4, r5
   1bcce:	6866      	ldr	r6, [r4, #4]
   1bcd0:	2e00      	cmp	r6, #0
   1bcd2:	d005      	beq.n	1bce0 <nrf_drv_uart_rx+0x20>
   1bcd4:	24c2      	movs	r4, #194	; 0xc2
   1bcd6:	00a4      	lsls	r4, r4, #2
   1bcd8:	2581      	movs	r5, #129	; 0x81
   1bcda:	00ad      	lsls	r5, r5, #2
   1bcdc:	6807      	ldr	r7, [r0, #0]
   1bcde:	513d      	str	r5, [r7, r4]
   1bce0:	00dc      	lsls	r4, r3, #3
   1bce2:	1ae4      	subs	r4, r4, r3
   1bce4:	00a5      	lsls	r5, r4, #2
   1bce6:	4c5a      	ldr	r4, [pc, #360]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bce8:	1964      	adds	r4, r4, r5
   1bcea:	7de4      	ldrb	r4, [r4, #23]
   1bcec:	2c00      	cmp	r4, #0
   1bcee:	d017      	beq.n	1bd20 <nrf_drv_uart_rx+0x60>
   1bcf0:	4c57      	ldr	r4, [pc, #348]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bcf2:	1964      	adds	r4, r4, r5
   1bcf4:	7e24      	ldrb	r4, [r4, #24]
   1bcf6:	2c00      	cmp	r4, #0
   1bcf8:	d108      	bne.n	1bd0c <nrf_drv_uart_rx+0x4c>
   1bcfa:	4d55      	ldr	r5, [pc, #340]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bcfc:	00dc      	lsls	r4, r3, #3
   1bcfe:	1ae7      	subs	r7, r4, r3
   1bd00:	00be      	lsls	r6, r7, #2
   1bd02:	19ae      	adds	r6, r5, r6
   1bd04:	6131      	str	r1, [r6, #16]
   1bd06:	7632      	strb	r2, [r6, #24]
   1bd08:	2401      	movs	r4, #1
   1bd0a:	e014      	b.n	1bd36 <nrf_drv_uart_rx+0x76>
   1bd0c:	2e00      	cmp	r6, #0
   1bd0e:	d005      	beq.n	1bd1c <nrf_drv_uart_rx+0x5c>
   1bd10:	6802      	ldr	r2, [r0, #0]
   1bd12:	23c1      	movs	r3, #193	; 0xc1
   1bd14:	009b      	lsls	r3, r3, #2
   1bd16:	2181      	movs	r1, #129	; 0x81
   1bd18:	0089      	lsls	r1, r1, #2
   1bd1a:	50d1      	str	r1, [r2, r3]
   1bd1c:	2411      	movs	r4, #17
   1bd1e:	e02f      	b.n	1bd80 <nrf_drv_uart_rx+0xc0>
   1bd20:	4e4b      	ldr	r6, [pc, #300]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bd22:	00dd      	lsls	r5, r3, #3
   1bd24:	1aef      	subs	r7, r5, r3
   1bd26:	00bc      	lsls	r4, r7, #2
   1bd28:	1934      	adds	r4, r6, r4
   1bd2a:	75e2      	strb	r2, [r4, #23]
   1bd2c:	60e1      	str	r1, [r4, #12]
   1bd2e:	2200      	movs	r2, #0
   1bd30:	7662      	strb	r2, [r4, #25]
   1bd32:	7622      	strb	r2, [r4, #24]
   1bd34:	2400      	movs	r4, #0
   1bd36:	7903      	ldrb	r3, [r0, #4]
   1bd38:	00da      	lsls	r2, r3, #3
   1bd3a:	1ad2      	subs	r2, r2, r3
   1bd3c:	0091      	lsls	r1, r2, #2
   1bd3e:	4a44      	ldr	r2, [pc, #272]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bd40:	1852      	adds	r2, r2, r1
   1bd42:	7e92      	ldrb	r2, [r2, #26]
   1bd44:	2a00      	cmp	r2, #0
   1bd46:	d10c      	bne.n	1bd62 <nrf_drv_uart_rx+0xa2>
   1bd48:	2c00      	cmp	r4, #0
   1bd4a:	d10a      	bne.n	1bd62 <nrf_drv_uart_rx+0xa2>
   1bd4c:	2192      	movs	r1, #146	; 0x92
   1bd4e:	0049      	lsls	r1, r1, #1
   1bd50:	6804      	ldr	r4, [r0, #0]
   1bd52:	5062      	str	r2, [r4, r1]
   1bd54:	391c      	subs	r1, #28
   1bd56:	6804      	ldr	r4, [r0, #0]
   1bd58:	5062      	str	r2, [r4, r1]
   1bd5a:	6802      	ldr	r2, [r0, #0]
   1bd5c:	3908      	subs	r1, #8
   1bd5e:	39ff      	subs	r1, #255	; 0xff
   1bd60:	6011      	str	r1, [r2, #0]
   1bd62:	00da      	lsls	r2, r3, #3
   1bd64:	1ad2      	subs	r2, r2, r3
   1bd66:	0091      	lsls	r1, r2, #2
   1bd68:	4a39      	ldr	r2, [pc, #228]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bd6a:	1852      	adds	r2, r2, r1
   1bd6c:	6852      	ldr	r2, [r2, #4]
   1bd6e:	2a00      	cmp	r2, #0
   1bd70:	d008      	beq.n	1bd84 <nrf_drv_uart_rx+0xc4>
   1bd72:	6802      	ldr	r2, [r0, #0]
   1bd74:	23c1      	movs	r3, #193	; 0xc1
   1bd76:	009b      	lsls	r3, r3, #2
   1bd78:	2181      	movs	r1, #129	; 0x81
   1bd7a:	0089      	lsls	r1, r1, #2
   1bd7c:	50d1      	str	r1, [r2, r3]
   1bd7e:	2400      	movs	r4, #0
   1bd80:	0020      	movs	r0, r4
   1bd82:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1bd84:	3245      	adds	r2, #69	; 0x45
   1bd86:	32ff      	adds	r2, #255	; 0xff
   1bd88:	2100      	movs	r1, #0
   1bd8a:	6804      	ldr	r4, [r0, #0]
   1bd8c:	50a1      	str	r1, [r4, r2]
   1bd8e:	e027      	b.n	1bde0 <nrf_drv_uart_rx+0x120>
   1bd90:	0029      	movs	r1, r5
   1bd92:	4321      	orrs	r1, r4
   1bd94:	d13c      	bne.n	1be10 <nrf_drv_uart_rx+0x150>
   1bd96:	00d9      	lsls	r1, r3, #3
   1bd98:	1ac9      	subs	r1, r1, r3
   1bd9a:	008e      	lsls	r6, r1, #2
   1bd9c:	492c      	ldr	r1, [pc, #176]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bd9e:	1989      	adds	r1, r1, r6
   1bda0:	7dc9      	ldrb	r1, [r1, #23]
   1bda2:	2900      	cmp	r1, #0
   1bda4:	d02c      	beq.n	1be00 <nrf_drv_uart_rx+0x140>
   1bda6:	2184      	movs	r1, #132	; 0x84
   1bda8:	0049      	lsls	r1, r1, #1
   1bdaa:	2600      	movs	r6, #0
   1bdac:	5056      	str	r6, [r2, r1]
   1bdae:	00de      	lsls	r6, r3, #3
   1bdb0:	1af6      	subs	r6, r6, r3
   1bdb2:	00b7      	lsls	r7, r6, #2
   1bdb4:	4926      	ldr	r1, [pc, #152]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bdb6:	19c9      	adds	r1, r1, r7
   1bdb8:	7e4e      	ldrb	r6, [r1, #25]
   1bdba:	27a3      	movs	r7, #163	; 0xa3
   1bdbc:	00ff      	lsls	r7, r7, #3
   1bdbe:	59d2      	ldr	r2, [r2, r7]
   1bdc0:	68cf      	ldr	r7, [r1, #12]
   1bdc2:	55ba      	strb	r2, [r7, r6]
   1bdc4:	7e4a      	ldrb	r2, [r1, #25]
   1bdc6:	3201      	adds	r2, #1
   1bdc8:	b2d2      	uxtb	r2, r2
   1bdca:	764a      	strb	r2, [r1, #25]
   1bdcc:	00d9      	lsls	r1, r3, #3
   1bdce:	1ac9      	subs	r1, r1, r3
   1bdd0:	008e      	lsls	r6, r1, #2
   1bdd2:	4a1f      	ldr	r2, [pc, #124]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1bdd4:	1992      	adds	r2, r2, r6
   1bdd6:	7dd1      	ldrb	r1, [r2, #23]
   1bdd8:	7e52      	ldrb	r2, [r2, #25]
   1bdda:	b2d2      	uxtb	r2, r2
   1bddc:	4291      	cmp	r1, r2
   1bdde:	d917      	bls.n	1be10 <nrf_drv_uart_rx+0x150>
   1bde0:	6802      	ldr	r2, [r0, #0]
   1bde2:	2192      	movs	r1, #146	; 0x92
   1bde4:	0049      	lsls	r1, r1, #1
   1bde6:	5855      	ldr	r5, [r2, r1]
   1bde8:	391c      	subs	r1, #28
   1bdea:	5851      	ldr	r1, [r2, r1]
   1bdec:	24a2      	movs	r4, #162	; 0xa2
   1bdee:	0064      	lsls	r4, r4, #1
   1bdf0:	5914      	ldr	r4, [r2, r4]
   1bdf2:	2900      	cmp	r1, #0
   1bdf4:	d1cc      	bne.n	1bd90 <nrf_drv_uart_rx+0xd0>
   1bdf6:	2c00      	cmp	r4, #0
   1bdf8:	d1ca      	bne.n	1bd90 <nrf_drv_uart_rx+0xd0>
   1bdfa:	2d00      	cmp	r5, #0
   1bdfc:	d0f0      	beq.n	1bde0 <nrf_drv_uart_rx+0x120>
   1bdfe:	e7c7      	b.n	1bd90 <nrf_drv_uart_rx+0xd0>
   1be00:	3109      	adds	r1, #9
   1be02:	31ff      	adds	r1, #255	; 0xff
   1be04:	2600      	movs	r6, #0
   1be06:	5056      	str	r6, [r2, r1]
   1be08:	21a3      	movs	r1, #163	; 0xa3
   1be0a:	00c9      	lsls	r1, r1, #3
   1be0c:	5852      	ldr	r2, [r2, r1]
   1be0e:	e7dd      	b.n	1bdcc <nrf_drv_uart_rx+0x10c>
   1be10:	00da      	lsls	r2, r3, #3
   1be12:	1ad2      	subs	r2, r2, r3
   1be14:	0091      	lsls	r1, r2, #2
   1be16:	4a0e      	ldr	r2, [pc, #56]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1be18:	1852      	adds	r2, r2, r1
   1be1a:	2100      	movs	r1, #0
   1be1c:	75d1      	strb	r1, [r2, #23]
   1be1e:	2d00      	cmp	r5, #0
   1be20:	d111      	bne.n	1be46 <nrf_drv_uart_rx+0x186>
   1be22:	2c00      	cmp	r4, #0
   1be24:	d111      	bne.n	1be4a <nrf_drv_uart_rx+0x18a>
   1be26:	00da      	lsls	r2, r3, #3
   1be28:	1ad3      	subs	r3, r2, r3
   1be2a:	009a      	lsls	r2, r3, #2
   1be2c:	4b08      	ldr	r3, [pc, #32]	; (1be50 <nrf_drv_uart_rx+0x190>)
   1be2e:	189b      	adds	r3, r3, r2
   1be30:	7e9b      	ldrb	r3, [r3, #26]
   1be32:	2b00      	cmp	r3, #0
   1be34:	d003      	beq.n	1be3e <nrf_drv_uart_rx+0x17e>
   1be36:	6803      	ldr	r3, [r0, #0]
   1be38:	2201      	movs	r2, #1
   1be3a:	601a      	str	r2, [r3, #0]
   1be3c:	e7a0      	b.n	1bd80 <nrf_drv_uart_rx+0xc0>
   1be3e:	6803      	ldr	r3, [r0, #0]
   1be40:	2201      	movs	r2, #1
   1be42:	605a      	str	r2, [r3, #4]
   1be44:	e79c      	b.n	1bd80 <nrf_drv_uart_rx+0xc0>
   1be46:	2403      	movs	r4, #3
   1be48:	e79a      	b.n	1bd80 <nrf_drv_uart_rx+0xc0>
   1be4a:	240f      	movs	r4, #15
   1be4c:	e798      	b.n	1bd80 <nrf_drv_uart_rx+0xc0>
   1be4e:	46c0      	nop			; (mov r8, r8)
   1be50:	2000171c 	.word	0x2000171c

0001be54 <nrf_drv_uart_rx_enable>:
   1be54:	7902      	ldrb	r2, [r0, #4]
   1be56:	00d3      	lsls	r3, r2, #3
   1be58:	1a9b      	subs	r3, r3, r2
   1be5a:	009a      	lsls	r2, r3, #2
   1be5c:	4b0b      	ldr	r3, [pc, #44]	; (1be8c <nrf_drv_uart_rx_enable+0x38>)
   1be5e:	189b      	adds	r3, r3, r2
   1be60:	7e9b      	ldrb	r3, [r3, #26]
   1be62:	2b00      	cmp	r3, #0
   1be64:	d111      	bne.n	1be8a <nrf_drv_uart_rx_enable+0x36>
   1be66:	2292      	movs	r2, #146	; 0x92
   1be68:	0052      	lsls	r2, r2, #1
   1be6a:	6801      	ldr	r1, [r0, #0]
   1be6c:	508b      	str	r3, [r1, r2]
   1be6e:	3a1c      	subs	r2, #28
   1be70:	6801      	ldr	r1, [r0, #0]
   1be72:	508b      	str	r3, [r1, r2]
   1be74:	6803      	ldr	r3, [r0, #0]
   1be76:	3a08      	subs	r2, #8
   1be78:	3aff      	subs	r2, #255	; 0xff
   1be7a:	601a      	str	r2, [r3, #0]
   1be7c:	7901      	ldrb	r1, [r0, #4]
   1be7e:	00cb      	lsls	r3, r1, #3
   1be80:	1a5b      	subs	r3, r3, r1
   1be82:	0099      	lsls	r1, r3, #2
   1be84:	4b01      	ldr	r3, [pc, #4]	; (1be8c <nrf_drv_uart_rx_enable+0x38>)
   1be86:	185b      	adds	r3, r3, r1
   1be88:	769a      	strb	r2, [r3, #26]
   1be8a:	4770      	bx	lr
   1be8c:	2000171c 	.word	0x2000171c

0001be90 <UART0_IRQHandler>:
   1be90:	b510      	push	{r4, lr}
   1be92:	b084      	sub	sp, #16
   1be94:	4a74      	ldr	r2, [pc, #464]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1be96:	23c1      	movs	r3, #193	; 0xc1
   1be98:	009b      	lsls	r3, r3, #2
   1be9a:	58d3      	ldr	r3, [r2, r3]
   1be9c:	059b      	lsls	r3, r3, #22
   1be9e:	d400      	bmi.n	1bea2 <UART0_IRQHandler+0x12>
   1bea0:	e06b      	b.n	1bf7a <UART0_IRQHandler+0xea>
   1bea2:	2392      	movs	r3, #146	; 0x92
   1bea4:	005b      	lsls	r3, r3, #1
   1bea6:	58d3      	ldr	r3, [r2, r3]
   1bea8:	2b00      	cmp	r3, #0
   1beaa:	d066      	beq.n	1bf7a <UART0_IRQHandler+0xea>
   1beac:	0013      	movs	r3, r2
   1beae:	2292      	movs	r2, #146	; 0x92
   1beb0:	0052      	lsls	r2, r2, #1
   1beb2:	2100      	movs	r1, #0
   1beb4:	5099      	str	r1, [r3, r2]
   1beb6:	32e5      	adds	r2, #229	; 0xe5
   1beb8:	32ff      	adds	r2, #255	; 0xff
   1beba:	2181      	movs	r1, #129	; 0x81
   1bebc:	0089      	lsls	r1, r1, #2
   1bebe:	5099      	str	r1, [r3, r2]
   1bec0:	4b6a      	ldr	r3, [pc, #424]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bec2:	7e9b      	ldrb	r3, [r3, #26]
   1bec4:	2b00      	cmp	r3, #0
   1bec6:	d102      	bne.n	1bece <UART0_IRQHandler+0x3e>
   1bec8:	4b67      	ldr	r3, [pc, #412]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1beca:	2201      	movs	r2, #1
   1becc:	605a      	str	r2, [r3, #4]
   1bece:	2302      	movs	r3, #2
   1bed0:	466a      	mov	r2, sp
   1bed2:	7013      	strb	r3, [r2, #0]
   1bed4:	4964      	ldr	r1, [pc, #400]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1bed6:	2290      	movs	r2, #144	; 0x90
   1bed8:	00d2      	lsls	r2, r2, #3
   1beda:	588b      	ldr	r3, [r1, r2]
   1bedc:	508b      	str	r3, [r1, r2]
   1bede:	9303      	str	r3, [sp, #12]
   1bee0:	4b62      	ldr	r3, [pc, #392]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bee2:	7dda      	ldrb	r2, [r3, #23]
   1bee4:	4669      	mov	r1, sp
   1bee6:	720a      	strb	r2, [r1, #8]
   1bee8:	68da      	ldr	r2, [r3, #12]
   1beea:	9201      	str	r2, [sp, #4]
   1beec:	2200      	movs	r2, #0
   1beee:	75da      	strb	r2, [r3, #23]
   1bef0:	761a      	strb	r2, [r3, #24]
   1bef2:	685a      	ldr	r2, [r3, #4]
   1bef4:	6819      	ldr	r1, [r3, #0]
   1bef6:	4668      	mov	r0, sp
   1bef8:	4790      	blx	r2
   1befa:	4a5b      	ldr	r2, [pc, #364]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1befc:	238e      	movs	r3, #142	; 0x8e
   1befe:	005b      	lsls	r3, r3, #1
   1bf00:	58d3      	ldr	r3, [r2, r3]
   1bf02:	2b00      	cmp	r3, #0
   1bf04:	d015      	beq.n	1bf32 <UART0_IRQHandler+0xa2>
   1bf06:	4a59      	ldr	r2, [pc, #356]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bf08:	8a93      	ldrh	r3, [r2, #20]
   1bf0a:	b29b      	uxth	r3, r3
   1bf0c:	7d92      	ldrb	r2, [r2, #22]
   1bf0e:	4293      	cmp	r3, r2
   1bf10:	d300      	bcc.n	1bf14 <UART0_IRQHandler+0x84>
   1bf12:	e091      	b.n	1c038 <UART0_IRQHandler+0x1a8>
   1bf14:	4954      	ldr	r1, [pc, #336]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1bf16:	238e      	movs	r3, #142	; 0x8e
   1bf18:	005b      	lsls	r3, r3, #1
   1bf1a:	2200      	movs	r2, #0
   1bf1c:	50ca      	str	r2, [r1, r3]
   1bf1e:	4a53      	ldr	r2, [pc, #332]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bf20:	8a93      	ldrh	r3, [r2, #20]
   1bf22:	6890      	ldr	r0, [r2, #8]
   1bf24:	5cc0      	ldrb	r0, [r0, r3]
   1bf26:	8a93      	ldrh	r3, [r2, #20]
   1bf28:	3301      	adds	r3, #1
   1bf2a:	b29b      	uxth	r3, r3
   1bf2c:	8293      	strh	r3, [r2, #20]
   1bf2e:	4b50      	ldr	r3, [pc, #320]	; (1c070 <UART0_IRQHandler+0x1e0>)
   1bf30:	50c8      	str	r0, [r1, r3]
   1bf32:	4a4d      	ldr	r2, [pc, #308]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1bf34:	23a2      	movs	r3, #162	; 0xa2
   1bf36:	005b      	lsls	r3, r3, #1
   1bf38:	58d3      	ldr	r3, [r2, r3]
   1bf3a:	2b00      	cmp	r3, #0
   1bf3c:	d01b      	beq.n	1bf76 <UART0_IRQHandler+0xe6>
   1bf3e:	23a2      	movs	r3, #162	; 0xa2
   1bf40:	005b      	lsls	r3, r3, #1
   1bf42:	2100      	movs	r1, #0
   1bf44:	50d1      	str	r1, [r2, r3]
   1bf46:	4b49      	ldr	r3, [pc, #292]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bf48:	7e9b      	ldrb	r3, [r3, #26]
   1bf4a:	2b00      	cmp	r3, #0
   1bf4c:	d002      	beq.n	1bf54 <UART0_IRQHandler+0xc4>
   1bf4e:	0013      	movs	r3, r2
   1bf50:	2201      	movs	r2, #1
   1bf52:	601a      	str	r2, [r3, #0]
   1bf54:	4b45      	ldr	r3, [pc, #276]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bf56:	7ddb      	ldrb	r3, [r3, #23]
   1bf58:	2b00      	cmp	r3, #0
   1bf5a:	d00c      	beq.n	1bf76 <UART0_IRQHandler+0xe6>
   1bf5c:	4b43      	ldr	r3, [pc, #268]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bf5e:	2200      	movs	r2, #0
   1bf60:	75da      	strb	r2, [r3, #23]
   1bf62:	7e5a      	ldrb	r2, [r3, #25]
   1bf64:	2101      	movs	r1, #1
   1bf66:	4668      	mov	r0, sp
   1bf68:	7001      	strb	r1, [r0, #0]
   1bf6a:	7202      	strb	r2, [r0, #8]
   1bf6c:	68da      	ldr	r2, [r3, #12]
   1bf6e:	9201      	str	r2, [sp, #4]
   1bf70:	685a      	ldr	r2, [r3, #4]
   1bf72:	6819      	ldr	r1, [r3, #0]
   1bf74:	4790      	blx	r2
   1bf76:	b004      	add	sp, #16
   1bf78:	bd10      	pop	{r4, pc}
   1bf7a:	4a3b      	ldr	r2, [pc, #236]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1bf7c:	23c1      	movs	r3, #193	; 0xc1
   1bf7e:	009b      	lsls	r3, r3, #2
   1bf80:	58d3      	ldr	r3, [r2, r3]
   1bf82:	075b      	lsls	r3, r3, #29
   1bf84:	d5b9      	bpl.n	1befa <UART0_IRQHandler+0x6a>
   1bf86:	2384      	movs	r3, #132	; 0x84
   1bf88:	005b      	lsls	r3, r3, #1
   1bf8a:	58d3      	ldr	r3, [r2, r3]
   1bf8c:	2b00      	cmp	r3, #0
   1bf8e:	d0b4      	beq.n	1befa <UART0_IRQHandler+0x6a>
   1bf90:	4b36      	ldr	r3, [pc, #216]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bf92:	7ddb      	ldrb	r3, [r3, #23]
   1bf94:	2b00      	cmp	r3, #0
   1bf96:	d02b      	beq.n	1bff0 <UART0_IRQHandler+0x160>
   1bf98:	4b33      	ldr	r3, [pc, #204]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1bf9a:	2284      	movs	r2, #132	; 0x84
   1bf9c:	0052      	lsls	r2, r2, #1
   1bf9e:	2100      	movs	r1, #0
   1bfa0:	5099      	str	r1, [r3, r2]
   1bfa2:	4a32      	ldr	r2, [pc, #200]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bfa4:	7e51      	ldrb	r1, [r2, #25]
   1bfa6:	20a3      	movs	r0, #163	; 0xa3
   1bfa8:	00c0      	lsls	r0, r0, #3
   1bfaa:	581b      	ldr	r3, [r3, r0]
   1bfac:	68d0      	ldr	r0, [r2, #12]
   1bfae:	5443      	strb	r3, [r0, r1]
   1bfb0:	7e53      	ldrb	r3, [r2, #25]
   1bfb2:	3301      	adds	r3, #1
   1bfb4:	b2db      	uxtb	r3, r3
   1bfb6:	7653      	strb	r3, [r2, #25]
   1bfb8:	4b2c      	ldr	r3, [pc, #176]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bfba:	7dda      	ldrb	r2, [r3, #23]
   1bfbc:	7e5b      	ldrb	r3, [r3, #25]
   1bfbe:	b2db      	uxtb	r3, r3
   1bfc0:	429a      	cmp	r2, r3
   1bfc2:	d19a      	bne.n	1befa <UART0_IRQHandler+0x6a>
   1bfc4:	4b29      	ldr	r3, [pc, #164]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1bfc6:	7e1a      	ldrb	r2, [r3, #24]
   1bfc8:	2a00      	cmp	r2, #0
   1bfca:	d01a      	beq.n	1c002 <UART0_IRQHandler+0x172>
   1bfcc:	68d9      	ldr	r1, [r3, #12]
   1bfce:	7e58      	ldrb	r0, [r3, #25]
   1bfd0:	75da      	strb	r2, [r3, #23]
   1bfd2:	691a      	ldr	r2, [r3, #16]
   1bfd4:	60da      	str	r2, [r3, #12]
   1bfd6:	2200      	movs	r2, #0
   1bfd8:	761a      	strb	r2, [r3, #24]
   1bfda:	765a      	strb	r2, [r3, #25]
   1bfdc:	3201      	adds	r2, #1
   1bfde:	466c      	mov	r4, sp
   1bfe0:	7022      	strb	r2, [r4, #0]
   1bfe2:	7220      	strb	r0, [r4, #8]
   1bfe4:	9101      	str	r1, [sp, #4]
   1bfe6:	685a      	ldr	r2, [r3, #4]
   1bfe8:	6819      	ldr	r1, [r3, #0]
   1bfea:	4668      	mov	r0, sp
   1bfec:	4790      	blx	r2
   1bfee:	e784      	b.n	1befa <UART0_IRQHandler+0x6a>
   1bff0:	0013      	movs	r3, r2
   1bff2:	2284      	movs	r2, #132	; 0x84
   1bff4:	0052      	lsls	r2, r2, #1
   1bff6:	2100      	movs	r1, #0
   1bff8:	5099      	str	r1, [r3, r2]
   1bffa:	22a3      	movs	r2, #163	; 0xa3
   1bffc:	00d2      	lsls	r2, r2, #3
   1bffe:	589b      	ldr	r3, [r3, r2]
   1c000:	e7da      	b.n	1bfb8 <UART0_IRQHandler+0x128>
   1c002:	4b1a      	ldr	r3, [pc, #104]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1c004:	7e9b      	ldrb	r3, [r3, #26]
   1c006:	2b00      	cmp	r3, #0
   1c008:	d102      	bne.n	1c010 <UART0_IRQHandler+0x180>
   1c00a:	4b17      	ldr	r3, [pc, #92]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1c00c:	2201      	movs	r2, #1
   1c00e:	605a      	str	r2, [r3, #4]
   1c010:	4a15      	ldr	r2, [pc, #84]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1c012:	23c2      	movs	r3, #194	; 0xc2
   1c014:	009b      	lsls	r3, r3, #2
   1c016:	2181      	movs	r1, #129	; 0x81
   1c018:	0089      	lsls	r1, r1, #2
   1c01a:	50d1      	str	r1, [r2, r3]
   1c01c:	4b13      	ldr	r3, [pc, #76]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1c01e:	2200      	movs	r2, #0
   1c020:	75da      	strb	r2, [r3, #23]
   1c022:	7e5a      	ldrb	r2, [r3, #25]
   1c024:	2101      	movs	r1, #1
   1c026:	4668      	mov	r0, sp
   1c028:	7001      	strb	r1, [r0, #0]
   1c02a:	7202      	strb	r2, [r0, #8]
   1c02c:	68da      	ldr	r2, [r3, #12]
   1c02e:	9201      	str	r2, [sp, #4]
   1c030:	685a      	ldr	r2, [r3, #4]
   1c032:	6819      	ldr	r1, [r3, #0]
   1c034:	4790      	blx	r2
   1c036:	e760      	b.n	1befa <UART0_IRQHandler+0x6a>
   1c038:	4a0b      	ldr	r2, [pc, #44]	; (1c068 <UART0_IRQHandler+0x1d8>)
   1c03a:	238e      	movs	r3, #142	; 0x8e
   1c03c:	005b      	lsls	r3, r3, #1
   1c03e:	2100      	movs	r1, #0
   1c040:	50d1      	str	r1, [r2, r3]
   1c042:	4b0a      	ldr	r3, [pc, #40]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1c044:	7d9b      	ldrb	r3, [r3, #22]
   1c046:	2b00      	cmp	r3, #0
   1c048:	d100      	bne.n	1c04c <UART0_IRQHandler+0x1bc>
   1c04a:	e772      	b.n	1bf32 <UART0_IRQHandler+0xa2>
   1c04c:	2200      	movs	r2, #0
   1c04e:	4669      	mov	r1, sp
   1c050:	700a      	strb	r2, [r1, #0]
   1c052:	720b      	strb	r3, [r1, #8]
   1c054:	4b05      	ldr	r3, [pc, #20]	; (1c06c <UART0_IRQHandler+0x1dc>)
   1c056:	6899      	ldr	r1, [r3, #8]
   1c058:	9101      	str	r1, [sp, #4]
   1c05a:	759a      	strb	r2, [r3, #22]
   1c05c:	685a      	ldr	r2, [r3, #4]
   1c05e:	6819      	ldr	r1, [r3, #0]
   1c060:	4668      	mov	r0, sp
   1c062:	4790      	blx	r2
   1c064:	e765      	b.n	1bf32 <UART0_IRQHandler+0xa2>
   1c066:	46c0      	nop			; (mov r8, r8)
   1c068:	40002000 	.word	0x40002000
   1c06c:	2000171c 	.word	0x2000171c
   1c070:	0000051c 	.word	0x0000051c

0001c074 <nrf_drv_common_irq_enable>:
   1c074:	b5f0      	push	{r4, r5, r6, r7, lr}
   1c076:	2800      	cmp	r0, #0
   1c078:	db1a      	blt.n	1c0b0 <nrf_drv_common_irq_enable+0x3c>
   1c07a:	0883      	lsrs	r3, r0, #2
   1c07c:	4e19      	ldr	r6, [pc, #100]	; (1c0e4 <nrf_drv_common_irq_enable+0x70>)
   1c07e:	33c0      	adds	r3, #192	; 0xc0
   1c080:	009b      	lsls	r3, r3, #2
   1c082:	599d      	ldr	r5, [r3, r6]
   1c084:	2403      	movs	r4, #3
   1c086:	4004      	ands	r4, r0
   1c088:	00e4      	lsls	r4, r4, #3
   1c08a:	22ff      	movs	r2, #255	; 0xff
   1c08c:	0017      	movs	r7, r2
   1c08e:	40a7      	lsls	r7, r4
   1c090:	43bd      	bics	r5, r7
   1c092:	0189      	lsls	r1, r1, #6
   1c094:	400a      	ands	r2, r1
   1c096:	40a2      	lsls	r2, r4
   1c098:	432a      	orrs	r2, r5
   1c09a:	519a      	str	r2, [r3, r6]
   1c09c:	231f      	movs	r3, #31
   1c09e:	4018      	ands	r0, r3
   1c0a0:	3b1e      	subs	r3, #30
   1c0a2:	4083      	lsls	r3, r0
   1c0a4:	4a0f      	ldr	r2, [pc, #60]	; (1c0e4 <nrf_drv_common_irq_enable+0x70>)
   1c0a6:	21c0      	movs	r1, #192	; 0xc0
   1c0a8:	0049      	lsls	r1, r1, #1
   1c0aa:	5053      	str	r3, [r2, r1]
   1c0ac:	6013      	str	r3, [r2, #0]
   1c0ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1c0b0:	b2c5      	uxtb	r5, r0
   1c0b2:	230f      	movs	r3, #15
   1c0b4:	002a      	movs	r2, r5
   1c0b6:	402b      	ands	r3, r5
   1c0b8:	3b08      	subs	r3, #8
   1c0ba:	089b      	lsrs	r3, r3, #2
   1c0bc:	3306      	adds	r3, #6
   1c0be:	009b      	lsls	r3, r3, #2
   1c0c0:	4c09      	ldr	r4, [pc, #36]	; (1c0e8 <nrf_drv_common_irq_enable+0x74>)
   1c0c2:	46a4      	mov	ip, r4
   1c0c4:	4463      	add	r3, ip
   1c0c6:	685e      	ldr	r6, [r3, #4]
   1c0c8:	2503      	movs	r5, #3
   1c0ca:	4015      	ands	r5, r2
   1c0cc:	00ed      	lsls	r5, r5, #3
   1c0ce:	24ff      	movs	r4, #255	; 0xff
   1c0d0:	0022      	movs	r2, r4
   1c0d2:	40aa      	lsls	r2, r5
   1c0d4:	4396      	bics	r6, r2
   1c0d6:	0189      	lsls	r1, r1, #6
   1c0d8:	400c      	ands	r4, r1
   1c0da:	40ac      	lsls	r4, r5
   1c0dc:	4334      	orrs	r4, r6
   1c0de:	605c      	str	r4, [r3, #4]
   1c0e0:	e7dc      	b.n	1c09c <nrf_drv_common_irq_enable+0x28>
   1c0e2:	46c0      	nop			; (mov r8, r8)
   1c0e4:	e000e100 	.word	0xe000e100
   1c0e8:	e000ed00 	.word	0xe000ed00

0001c0ec <nrf_log_blocking_backend_set>:
   1c0ec:	b510      	push	{r4, lr}
   1c0ee:	2001      	movs	r0, #1
   1c0f0:	f000 f92c 	bl	1c34c <nrf_log_backend_init>
   1c0f4:	bd10      	pop	{r4, pc}
	...

0001c0f8 <nrf_log_frontend_std_0>:
   1c0f8:	b5f0      	push	{r4, r5, r6, r7, lr}
   1c0fa:	b083      	sub	sp, #12
   1c0fc:	9001      	str	r0, [sp, #4]
   1c0fe:	000c      	movs	r4, r1
   1c100:	4d1c      	ldr	r5, [pc, #112]	; (1c174 <nrf_log_frontend_std_0+0x7c>)
   1c102:	68af      	ldr	r7, [r5, #8]
   1c104:	2000      	movs	r0, #0
   1c106:	f000 f971 	bl	1c3ec <app_util_critical_region_enter>
   1c10a:	682e      	ldr	r6, [r5, #0]
   1c10c:	68aa      	ldr	r2, [r5, #8]
   1c10e:	686b      	ldr	r3, [r5, #4]
   1c110:	1b9b      	subs	r3, r3, r6
   1c112:	18d3      	adds	r3, r2, r3
   1c114:	3301      	adds	r3, #1
   1c116:	2b01      	cmp	r3, #1
   1c118:	d811      	bhi.n	1c13e <nrf_log_frontend_std_0+0x46>
   1c11a:	2b00      	cmp	r3, #0
   1c11c:	d028      	beq.n	1c170 <nrf_log_frontend_std_0+0x78>
   1c11e:	4916      	ldr	r1, [pc, #88]	; (1c178 <nrf_log_frontend_std_0+0x80>)
   1c120:	0289      	lsls	r1, r1, #10
   1c122:	2301      	movs	r3, #1
   1c124:	2028      	movs	r0, #40	; 0x28
   1c126:	4303      	orrs	r3, r0
   1c128:	430b      	orrs	r3, r1
   1c12a:	4912      	ldr	r1, [pc, #72]	; (1c174 <nrf_log_frontend_std_0+0x7c>)
   1c12c:	1c70      	adds	r0, r6, #1
   1c12e:	6008      	str	r0, [r1, #0]
   1c130:	4032      	ands	r2, r6
   1c132:	3202      	adds	r2, #2
   1c134:	0092      	lsls	r2, r2, #2
   1c136:	188a      	adds	r2, r1, r2
   1c138:	6053      	str	r3, [r2, #4]
   1c13a:	2500      	movs	r5, #0
   1c13c:	e003      	b.n	1c146 <nrf_log_frontend_std_0+0x4e>
   1c13e:	1c73      	adds	r3, r6, #1
   1c140:	4a0c      	ldr	r2, [pc, #48]	; (1c174 <nrf_log_frontend_std_0+0x7c>)
   1c142:	6013      	str	r3, [r2, #0]
   1c144:	2501      	movs	r5, #1
   1c146:	2000      	movs	r0, #0
   1c148:	f000 f954 	bl	1c3f4 <app_util_critical_region_exit>
   1c14c:	2d00      	cmp	r5, #0
   1c14e:	d00d      	beq.n	1c16c <nrf_log_frontend_std_0+0x74>
   1c150:	2307      	movs	r3, #7
   1c152:	9a01      	ldr	r2, [sp, #4]
   1c154:	4013      	ands	r3, r2
   1c156:	00db      	lsls	r3, r3, #3
   1c158:	02a4      	lsls	r4, r4, #10
   1c15a:	2501      	movs	r5, #1
   1c15c:	431d      	orrs	r5, r3
   1c15e:	432c      	orrs	r4, r5
   1c160:	403e      	ands	r6, r7
   1c162:	3602      	adds	r6, #2
   1c164:	00b6      	lsls	r6, r6, #2
   1c166:	4b03      	ldr	r3, [pc, #12]	; (1c174 <nrf_log_frontend_std_0+0x7c>)
   1c168:	199e      	adds	r6, r3, r6
   1c16a:	6074      	str	r4, [r6, #4]
   1c16c:	b003      	add	sp, #12
   1c16e:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1c170:	2500      	movs	r5, #0
   1c172:	e7e8      	b.n	1c146 <nrf_log_frontend_std_0+0x4e>
   1c174:	20001738 	.word	0x20001738
   1c178:	0001dfd0 	.word	0x0001dfd0

0001c17c <buffer_is_empty>:
   1c17c:	4b03      	ldr	r3, [pc, #12]	; (1c18c <buffer_is_empty+0x10>)
   1c17e:	6858      	ldr	r0, [r3, #4]
   1c180:	681b      	ldr	r3, [r3, #0]
   1c182:	1ac0      	subs	r0, r0, r3
   1c184:	4243      	negs	r3, r0
   1c186:	4158      	adcs	r0, r3
   1c188:	b2c0      	uxtb	r0, r0
   1c18a:	4770      	bx	lr
   1c18c:	20001738 	.word	0x20001738

0001c190 <nrf_log_frontend_dequeue>:
   1c190:	b5f0      	push	{r4, r5, r6, r7, lr}
   1c192:	46de      	mov	lr, fp
   1c194:	4657      	mov	r7, sl
   1c196:	464e      	mov	r6, r9
   1c198:	4645      	mov	r5, r8
   1c19a:	b5e0      	push	{r5, r6, r7, lr}
   1c19c:	b08d      	sub	sp, #52	; 0x34
   1c19e:	f7ff ffed 	bl	1c17c <buffer_is_empty>
   1c1a2:	2800      	cmp	r0, #0
   1c1a4:	d000      	beq.n	1c1a8 <nrf_log_frontend_dequeue+0x18>
   1c1a6:	e0bd      	b.n	1c324 <nrf_log_frontend_dequeue+0x194>
   1c1a8:	4b5f      	ldr	r3, [pc, #380]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c1aa:	685d      	ldr	r5, [r3, #4]
   1c1ac:	689f      	ldr	r7, [r3, #8]
   1c1ae:	1c6e      	adds	r6, r5, #1
   1c1b0:	003a      	movs	r2, r7
   1c1b2:	402a      	ands	r2, r5
   1c1b4:	3202      	adds	r2, #2
   1c1b6:	0092      	lsls	r2, r2, #2
   1c1b8:	189b      	adds	r3, r3, r2
   1c1ba:	685c      	ldr	r4, [r3, #4]
   1c1bc:	2303      	movs	r3, #3
   1c1be:	4023      	ands	r3, r4
   1c1c0:	d10d      	bne.n	1c1de <nrf_log_frontend_dequeue+0x4e>
   1c1c2:	0da5      	lsrs	r5, r4, #22
   1c1c4:	0424      	lsls	r4, r4, #16
   1c1c6:	0da4      	lsrs	r4, r4, #22
   1c1c8:	192d      	adds	r5, r5, r4
   1c1ca:	19ad      	adds	r5, r5, r6
   1c1cc:	1c6e      	adds	r6, r5, #1
   1c1ce:	002b      	movs	r3, r5
   1c1d0:	403b      	ands	r3, r7
   1c1d2:	3302      	adds	r3, #2
   1c1d4:	009b      	lsls	r3, r3, #2
   1c1d6:	4a54      	ldr	r2, [pc, #336]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c1d8:	18d3      	adds	r3, r2, r3
   1c1da:	685c      	ldr	r4, [r3, #4]
   1c1dc:	e7ee      	b.n	1c1bc <nrf_log_frontend_dequeue+0x2c>
   1c1de:	2b02      	cmp	r3, #2
   1c1e0:	d012      	beq.n	1c208 <nrf_log_frontend_dequeue+0x78>
   1c1e2:	0aa3      	lsrs	r3, r4, #10
   1c1e4:	469c      	mov	ip, r3
   1c1e6:	05a5      	lsls	r5, r4, #22
   1c1e8:	0f2d      	lsrs	r5, r5, #28
   1c1ea:	2000      	movs	r0, #0
   1c1ec:	aa06      	add	r2, sp, #24
   1c1ee:	42a8      	cmp	r0, r5
   1c1f0:	d27d      	bcs.n	1c2ee <nrf_log_frontend_dequeue+0x15e>
   1c1f2:	003b      	movs	r3, r7
   1c1f4:	4033      	ands	r3, r6
   1c1f6:	3302      	adds	r3, #2
   1c1f8:	009b      	lsls	r3, r3, #2
   1c1fa:	494b      	ldr	r1, [pc, #300]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c1fc:	18cb      	adds	r3, r1, r3
   1c1fe:	685b      	ldr	r3, [r3, #4]
   1c200:	c208      	stmia	r2!, {r3}
   1c202:	3001      	adds	r0, #1
   1c204:	3601      	adds	r6, #1
   1c206:	e7f2      	b.n	1c1ee <nrf_log_frontend_dequeue+0x5e>
   1c208:	1c73      	adds	r3, r6, #1
   1c20a:	4698      	mov	r8, r3
   1c20c:	403e      	ands	r6, r7
   1c20e:	3602      	adds	r6, #2
   1c210:	00b6      	lsls	r6, r6, #2
   1c212:	4b45      	ldr	r3, [pc, #276]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c214:	199e      	adds	r6, r3, r6
   1c216:	6872      	ldr	r2, [r6, #4]
   1c218:	0da6      	lsrs	r6, r4, #22
   1c21a:	9604      	str	r6, [sp, #16]
   1c21c:	0423      	lsls	r3, r4, #16
   1c21e:	0d9b      	lsrs	r3, r3, #22
   1c220:	9305      	str	r3, [sp, #20]
   1c222:	0039      	movs	r1, r7
   1c224:	4640      	mov	r0, r8
   1c226:	4381      	bics	r1, r0
   1c228:	3101      	adds	r1, #1
   1c22a:	0088      	lsls	r0, r1, #2
   1c22c:	4286      	cmp	r6, r0
   1c22e:	d944      	bls.n	1c2ba <nrf_log_frontend_dequeue+0x12a>
   1c230:	2800      	cmp	r0, #0
   1c232:	d037      	beq.n	1c2a4 <nrf_log_frontend_dequeue+0x114>
   1c234:	4641      	mov	r1, r8
   1c236:	4039      	ands	r1, r7
   1c238:	3102      	adds	r1, #2
   1c23a:	0089      	lsls	r1, r1, #2
   1c23c:	4b3a      	ldr	r3, [pc, #232]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c23e:	469c      	mov	ip, r3
   1c240:	4461      	add	r1, ip
   1c242:	3104      	adds	r1, #4
   1c244:	2800      	cmp	r0, #0
   1c246:	d02f      	beq.n	1c2a8 <nrf_log_frontend_dequeue+0x118>
   1c248:	b2c3      	uxtb	r3, r0
   1c24a:	469c      	mov	ip, r3
   1c24c:	2800      	cmp	r0, #0
   1c24e:	d02e      	beq.n	1c2ae <nrf_log_frontend_dequeue+0x11e>
   1c250:	4b36      	ldr	r3, [pc, #216]	; (1c32c <nrf_log_frontend_dequeue+0x19c>)
   1c252:	4699      	mov	r9, r3
   1c254:	2800      	cmp	r0, #0
   1c256:	d02d      	beq.n	1c2b4 <nrf_log_frontend_dequeue+0x124>
   1c258:	b2c3      	uxtb	r3, r0
   1c25a:	b2f0      	uxtb	r0, r6
   1c25c:	1ac0      	subs	r0, r0, r3
   1c25e:	b2c3      	uxtb	r3, r0
   1c260:	469b      	mov	fp, r3
   1c262:	4831      	ldr	r0, [pc, #196]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c264:	4682      	mov	sl, r0
   1c266:	4832      	ldr	r0, [pc, #200]	; (1c330 <nrf_log_frontend_dequeue+0x1a0>)
   1c268:	4653      	mov	r3, sl
   1c26a:	581b      	ldr	r3, [r3, r0]
   1c26c:	469a      	mov	sl, r3
   1c26e:	06a0      	lsls	r0, r4, #26
   1c270:	0f40      	lsrs	r0, r0, #29
   1c272:	465b      	mov	r3, fp
   1c274:	9303      	str	r3, [sp, #12]
   1c276:	464b      	mov	r3, r9
   1c278:	9302      	str	r3, [sp, #8]
   1c27a:	4663      	mov	r3, ip
   1c27c:	9301      	str	r3, [sp, #4]
   1c27e:	9100      	str	r1, [sp, #0]
   1c280:	9b05      	ldr	r3, [sp, #20]
   1c282:	2100      	movs	r1, #0
   1c284:	47d0      	blx	sl
   1c286:	9b04      	ldr	r3, [sp, #16]
   1c288:	4298      	cmp	r0, r3
   1c28a:	d02c      	beq.n	1c2e6 <nrf_log_frontend_dequeue+0x156>
   1c28c:	0580      	lsls	r0, r0, #22
   1c28e:	0c00      	lsrs	r0, r0, #16
   1c290:	4b28      	ldr	r3, [pc, #160]	; (1c334 <nrf_log_frontend_dequeue+0x1a4>)
   1c292:	401c      	ands	r4, r3
   1c294:	4304      	orrs	r4, r0
   1c296:	403d      	ands	r5, r7
   1c298:	3502      	adds	r5, #2
   1c29a:	00ad      	lsls	r5, r5, #2
   1c29c:	4f22      	ldr	r7, [pc, #136]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c29e:	197d      	adds	r5, r7, r5
   1c2a0:	606c      	str	r4, [r5, #4]
   1c2a2:	e033      	b.n	1c30c <nrf_log_frontend_dequeue+0x17c>
   1c2a4:	4921      	ldr	r1, [pc, #132]	; (1c32c <nrf_log_frontend_dequeue+0x19c>)
   1c2a6:	e7cd      	b.n	1c244 <nrf_log_frontend_dequeue+0xb4>
   1c2a8:	b2f3      	uxtb	r3, r6
   1c2aa:	469c      	mov	ip, r3
   1c2ac:	e7ce      	b.n	1c24c <nrf_log_frontend_dequeue+0xbc>
   1c2ae:	2300      	movs	r3, #0
   1c2b0:	4699      	mov	r9, r3
   1c2b2:	e7cf      	b.n	1c254 <nrf_log_frontend_dequeue+0xc4>
   1c2b4:	2300      	movs	r3, #0
   1c2b6:	469b      	mov	fp, r3
   1c2b8:	e7d3      	b.n	1c262 <nrf_log_frontend_dequeue+0xd2>
   1c2ba:	4b1b      	ldr	r3, [pc, #108]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c2bc:	469c      	mov	ip, r3
   1c2be:	491c      	ldr	r1, [pc, #112]	; (1c330 <nrf_log_frontend_dequeue+0x1a0>)
   1c2c0:	585b      	ldr	r3, [r3, r1]
   1c2c2:	469a      	mov	sl, r3
   1c2c4:	06a0      	lsls	r0, r4, #26
   1c2c6:	0f40      	lsrs	r0, r0, #29
   1c2c8:	4641      	mov	r1, r8
   1c2ca:	4039      	ands	r1, r7
   1c2cc:	3102      	adds	r1, #2
   1c2ce:	0089      	lsls	r1, r1, #2
   1c2d0:	4461      	add	r1, ip
   1c2d2:	3104      	adds	r1, #4
   1c2d4:	2300      	movs	r3, #0
   1c2d6:	9303      	str	r3, [sp, #12]
   1c2d8:	9302      	str	r3, [sp, #8]
   1c2da:	9601      	str	r6, [sp, #4]
   1c2dc:	9100      	str	r1, [sp, #0]
   1c2de:	9b05      	ldr	r3, [sp, #20]
   1c2e0:	2100      	movs	r1, #0
   1c2e2:	47d0      	blx	sl
   1c2e4:	e7cf      	b.n	1c286 <nrf_log_frontend_dequeue+0xf6>
   1c2e6:	3603      	adds	r6, #3
   1c2e8:	08b6      	lsrs	r6, r6, #2
   1c2ea:	4446      	add	r6, r8
   1c2ec:	e00c      	b.n	1c308 <nrf_log_frontend_dequeue+0x178>
   1c2ee:	490e      	ldr	r1, [pc, #56]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c2f0:	2382      	movs	r3, #130	; 0x82
   1c2f2:	00db      	lsls	r3, r3, #3
   1c2f4:	58cf      	ldr	r7, [r1, r3]
   1c2f6:	06a0      	lsls	r0, r4, #26
   1c2f8:	0f40      	lsrs	r0, r0, #29
   1c2fa:	9500      	str	r5, [sp, #0]
   1c2fc:	ab06      	add	r3, sp, #24
   1c2fe:	4662      	mov	r2, ip
   1c300:	2100      	movs	r1, #0
   1c302:	47b8      	blx	r7
   1c304:	2800      	cmp	r0, #0
   1c306:	d001      	beq.n	1c30c <nrf_log_frontend_dequeue+0x17c>
   1c308:	4b07      	ldr	r3, [pc, #28]	; (1c328 <nrf_log_frontend_dequeue+0x198>)
   1c30a:	605e      	str	r6, [r3, #4]
   1c30c:	f7ff ff36 	bl	1c17c <buffer_is_empty>
   1c310:	2301      	movs	r3, #1
   1c312:	4058      	eors	r0, r3
   1c314:	b2c0      	uxtb	r0, r0
   1c316:	b00d      	add	sp, #52	; 0x34
   1c318:	bc3c      	pop	{r2, r3, r4, r5}
   1c31a:	4690      	mov	r8, r2
   1c31c:	4699      	mov	r9, r3
   1c31e:	46a2      	mov	sl, r4
   1c320:	46ab      	mov	fp, r5
   1c322:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1c324:	2000      	movs	r0, #0
   1c326:	e7f6      	b.n	1c316 <nrf_log_frontend_dequeue+0x186>
   1c328:	20001738 	.word	0x20001738
   1c32c:	20001744 	.word	0x20001744
   1c330:	00000414 	.word	0x00000414
   1c334:	ffff003f 	.word	0xffff003f

0001c338 <uart_event_handler>:
   1c338:	7803      	ldrb	r3, [r0, #0]
   1c33a:	2b01      	cmp	r3, #1
   1c33c:	d000      	beq.n	1c340 <uart_event_handler+0x8>
   1c33e:	4770      	bx	lr
   1c340:	4b01      	ldr	r3, [pc, #4]	; (1c348 <uart_event_handler+0x10>)
   1c342:	2201      	movs	r2, #1
   1c344:	701a      	strb	r2, [r3, #0]
   1c346:	e7fa      	b.n	1c33e <uart_event_handler+0x6>
   1c348:	20001b52 	.word	0x20001b52

0001c34c <nrf_log_backend_init>:
   1c34c:	b570      	push	{r4, r5, r6, lr}
   1c34e:	b088      	sub	sp, #32
   1c350:	0004      	movs	r4, r0
   1c352:	4b18      	ldr	r3, [pc, #96]	; (1c3b4 <nrf_log_backend_init+0x68>)
   1c354:	781b      	ldrb	r3, [r3, #0]
   1c356:	2b00      	cmp	r3, #0
   1c358:	d003      	beq.n	1c362 <nrf_log_backend_init+0x16>
   1c35a:	4b17      	ldr	r3, [pc, #92]	; (1c3b8 <nrf_log_backend_init+0x6c>)
   1c35c:	781b      	ldrb	r3, [r3, #0]
   1c35e:	4283      	cmp	r3, r0
   1c360:	d026      	beq.n	1c3b0 <nrf_log_backend_init+0x64>
   1c362:	4669      	mov	r1, sp
   1c364:	4815      	ldr	r0, [pc, #84]	; (1c3bc <nrf_log_backend_init+0x70>)
   1c366:	000b      	movs	r3, r1
   1c368:	0002      	movs	r2, r0
   1c36a:	ca61      	ldmia	r2!, {r0, r5, r6}
   1c36c:	c361      	stmia	r3!, {r0, r5, r6}
   1c36e:	ca61      	ldmia	r2!, {r0, r5, r6}
   1c370:	c361      	stmia	r3!, {r0, r5, r6}
   1c372:	ca21      	ldmia	r2!, {r0, r5}
   1c374:	c321      	stmia	r3!, {r0, r5}
   1c376:	2309      	movs	r3, #9
   1c378:	9300      	str	r3, [sp, #0]
   1c37a:	3302      	adds	r3, #2
   1c37c:	604b      	str	r3, [r1, #4]
   1c37e:	3b03      	subs	r3, #3
   1c380:	60cb      	str	r3, [r1, #12]
   1c382:	3302      	adds	r3, #2
   1c384:	608b      	str	r3, [r1, #8]
   1c386:	480e      	ldr	r0, [pc, #56]	; (1c3c0 <nrf_log_backend_init+0x74>)
   1c388:	f7ff fb84 	bl	1ba94 <nrf_drv_uart_uninit>
   1c38c:	2c00      	cmp	r4, #0
   1c38e:	d00d      	beq.n	1c3ac <nrf_log_backend_init+0x60>
   1c390:	2200      	movs	r2, #0
   1c392:	4669      	mov	r1, sp
   1c394:	480a      	ldr	r0, [pc, #40]	; (1c3c0 <nrf_log_backend_init+0x74>)
   1c396:	f7ff fadd 	bl	1b954 <nrf_drv_uart_init>
   1c39a:	2800      	cmp	r0, #0
   1c39c:	d104      	bne.n	1c3a8 <nrf_log_backend_init+0x5c>
   1c39e:	4b05      	ldr	r3, [pc, #20]	; (1c3b4 <nrf_log_backend_init+0x68>)
   1c3a0:	2201      	movs	r2, #1
   1c3a2:	701a      	strb	r2, [r3, #0]
   1c3a4:	4b04      	ldr	r3, [pc, #16]	; (1c3b8 <nrf_log_backend_init+0x6c>)
   1c3a6:	701c      	strb	r4, [r3, #0]
   1c3a8:	b008      	add	sp, #32
   1c3aa:	bd70      	pop	{r4, r5, r6, pc}
   1c3ac:	4a05      	ldr	r2, [pc, #20]	; (1c3c4 <nrf_log_backend_init+0x78>)
   1c3ae:	e7f0      	b.n	1c392 <nrf_log_backend_init+0x46>
   1c3b0:	2000      	movs	r0, #0
   1c3b2:	e7f9      	b.n	1c3a8 <nrf_log_backend_init+0x5c>
   1c3b4:	20001b51 	.word	0x20001b51
   1c3b8:	20001b50 	.word	0x20001b50
   1c3bc:	0001dfdc 	.word	0x0001dfdc
   1c3c0:	20001434 	.word	0x20001434
   1c3c4:	0001c339 	.word	0x0001c339

0001c3c8 <app_util_disable_irq>:
   1c3c8:	b672      	cpsid	i
   1c3ca:	4a02      	ldr	r2, [pc, #8]	; (1c3d4 <app_util_disable_irq+0xc>)
   1c3cc:	6813      	ldr	r3, [r2, #0]
   1c3ce:	3301      	adds	r3, #1
   1c3d0:	6013      	str	r3, [r2, #0]
   1c3d2:	4770      	bx	lr
   1c3d4:	20001b54 	.word	0x20001b54

0001c3d8 <app_util_enable_irq>:
   1c3d8:	4a03      	ldr	r2, [pc, #12]	; (1c3e8 <app_util_enable_irq+0x10>)
   1c3da:	6813      	ldr	r3, [r2, #0]
   1c3dc:	3b01      	subs	r3, #1
   1c3de:	6013      	str	r3, [r2, #0]
   1c3e0:	2b00      	cmp	r3, #0
   1c3e2:	d100      	bne.n	1c3e6 <app_util_enable_irq+0xe>
   1c3e4:	b662      	cpsie	i
   1c3e6:	4770      	bx	lr
   1c3e8:	20001b54 	.word	0x20001b54

0001c3ec <app_util_critical_region_enter>:
   1c3ec:	b510      	push	{r4, lr}
   1c3ee:	f7ff ffeb 	bl	1c3c8 <app_util_disable_irq>
   1c3f2:	bd10      	pop	{r4, pc}

0001c3f4 <app_util_critical_region_exit>:
   1c3f4:	b510      	push	{r4, lr}
   1c3f6:	f7ff ffef 	bl	1c3d8 <app_util_enable_irq>
   1c3fa:	bd10      	pop	{r4, pc}

0001c3fc <memcpy>:
   1c3fc:	b5f0      	push	{r4, r5, r6, r7, lr}
   1c3fe:	46c6      	mov	lr, r8
   1c400:	b500      	push	{lr}
   1c402:	2a0f      	cmp	r2, #15
   1c404:	d943      	bls.n	1c48e <memcpy+0x92>
   1c406:	000b      	movs	r3, r1
   1c408:	2603      	movs	r6, #3
   1c40a:	4303      	orrs	r3, r0
   1c40c:	401e      	ands	r6, r3
   1c40e:	000c      	movs	r4, r1
   1c410:	0003      	movs	r3, r0
   1c412:	2e00      	cmp	r6, #0
   1c414:	d140      	bne.n	1c498 <memcpy+0x9c>
   1c416:	0015      	movs	r5, r2
   1c418:	3d10      	subs	r5, #16
   1c41a:	092d      	lsrs	r5, r5, #4
   1c41c:	46ac      	mov	ip, r5
   1c41e:	012d      	lsls	r5, r5, #4
   1c420:	46a8      	mov	r8, r5
   1c422:	4480      	add	r8, r0
   1c424:	e000      	b.n	1c428 <memcpy+0x2c>
   1c426:	003b      	movs	r3, r7
   1c428:	6867      	ldr	r7, [r4, #4]
   1c42a:	6825      	ldr	r5, [r4, #0]
   1c42c:	605f      	str	r7, [r3, #4]
   1c42e:	68e7      	ldr	r7, [r4, #12]
   1c430:	601d      	str	r5, [r3, #0]
   1c432:	60df      	str	r7, [r3, #12]
   1c434:	001f      	movs	r7, r3
   1c436:	68a5      	ldr	r5, [r4, #8]
   1c438:	3710      	adds	r7, #16
   1c43a:	609d      	str	r5, [r3, #8]
   1c43c:	3410      	adds	r4, #16
   1c43e:	4543      	cmp	r3, r8
   1c440:	d1f1      	bne.n	1c426 <memcpy+0x2a>
   1c442:	4665      	mov	r5, ip
   1c444:	230f      	movs	r3, #15
   1c446:	240c      	movs	r4, #12
   1c448:	3501      	adds	r5, #1
   1c44a:	012d      	lsls	r5, r5, #4
   1c44c:	1949      	adds	r1, r1, r5
   1c44e:	4013      	ands	r3, r2
   1c450:	1945      	adds	r5, r0, r5
   1c452:	4214      	tst	r4, r2
   1c454:	d023      	beq.n	1c49e <memcpy+0xa2>
   1c456:	598c      	ldr	r4, [r1, r6]
   1c458:	51ac      	str	r4, [r5, r6]
   1c45a:	3604      	adds	r6, #4
   1c45c:	1b9c      	subs	r4, r3, r6
   1c45e:	2c03      	cmp	r4, #3
   1c460:	d8f9      	bhi.n	1c456 <memcpy+0x5a>
   1c462:	2403      	movs	r4, #3
   1c464:	3b04      	subs	r3, #4
   1c466:	089b      	lsrs	r3, r3, #2
   1c468:	3301      	adds	r3, #1
   1c46a:	009b      	lsls	r3, r3, #2
   1c46c:	4022      	ands	r2, r4
   1c46e:	18ed      	adds	r5, r5, r3
   1c470:	18c9      	adds	r1, r1, r3
   1c472:	1e56      	subs	r6, r2, #1
   1c474:	2a00      	cmp	r2, #0
   1c476:	d007      	beq.n	1c488 <memcpy+0x8c>
   1c478:	2300      	movs	r3, #0
   1c47a:	e000      	b.n	1c47e <memcpy+0x82>
   1c47c:	0023      	movs	r3, r4
   1c47e:	5cca      	ldrb	r2, [r1, r3]
   1c480:	1c5c      	adds	r4, r3, #1
   1c482:	54ea      	strb	r2, [r5, r3]
   1c484:	429e      	cmp	r6, r3
   1c486:	d1f9      	bne.n	1c47c <memcpy+0x80>
   1c488:	bc04      	pop	{r2}
   1c48a:	4690      	mov	r8, r2
   1c48c:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1c48e:	0005      	movs	r5, r0
   1c490:	1e56      	subs	r6, r2, #1
   1c492:	2a00      	cmp	r2, #0
   1c494:	d1f0      	bne.n	1c478 <memcpy+0x7c>
   1c496:	e7f7      	b.n	1c488 <memcpy+0x8c>
   1c498:	1e56      	subs	r6, r2, #1
   1c49a:	0005      	movs	r5, r0
   1c49c:	e7ec      	b.n	1c478 <memcpy+0x7c>
   1c49e:	001a      	movs	r2, r3
   1c4a0:	e7f6      	b.n	1c490 <memcpy+0x94>
   1c4a2:	46c0      	nop			; (mov r8, r8)

0001c4a4 <_iprintf_r>:
   1c4a4:	b40e      	push	{r1, r2, r3}
   1c4a6:	b510      	push	{r4, lr}
   1c4a8:	0004      	movs	r4, r0
   1c4aa:	b083      	sub	sp, #12
   1c4ac:	2800      	cmp	r0, #0
   1c4ae:	d002      	beq.n	1c4b6 <_iprintf_r+0x12>
   1c4b0:	6983      	ldr	r3, [r0, #24]
   1c4b2:	2b00      	cmp	r3, #0
   1c4b4:	d00b      	beq.n	1c4ce <_iprintf_r+0x2a>
   1c4b6:	ab06      	add	r3, sp, #24
   1c4b8:	9a05      	ldr	r2, [sp, #20]
   1c4ba:	68a1      	ldr	r1, [r4, #8]
   1c4bc:	0020      	movs	r0, r4
   1c4be:	9301      	str	r3, [sp, #4]
   1c4c0:	f000 fa2a 	bl	1c918 <_vfiprintf_r>
   1c4c4:	b003      	add	sp, #12
   1c4c6:	bc10      	pop	{r4}
   1c4c8:	bc08      	pop	{r3}
   1c4ca:	b003      	add	sp, #12
   1c4cc:	4718      	bx	r3
   1c4ce:	f000 f915 	bl	1c6fc <__sinit>
   1c4d2:	e7f0      	b.n	1c4b6 <_iprintf_r+0x12>

0001c4d4 <iprintf>:
   1c4d4:	b40f      	push	{r0, r1, r2, r3}
   1c4d6:	b510      	push	{r4, lr}
   1c4d8:	4b0b      	ldr	r3, [pc, #44]	; (1c508 <iprintf+0x34>)
   1c4da:	b082      	sub	sp, #8
   1c4dc:	681c      	ldr	r4, [r3, #0]
   1c4de:	2c00      	cmp	r4, #0
   1c4e0:	d002      	beq.n	1c4e8 <iprintf+0x14>
   1c4e2:	69a3      	ldr	r3, [r4, #24]
   1c4e4:	2b00      	cmp	r3, #0
   1c4e6:	d00b      	beq.n	1c500 <iprintf+0x2c>
   1c4e8:	ab05      	add	r3, sp, #20
   1c4ea:	9a04      	ldr	r2, [sp, #16]
   1c4ec:	68a1      	ldr	r1, [r4, #8]
   1c4ee:	0020      	movs	r0, r4
   1c4f0:	9301      	str	r3, [sp, #4]
   1c4f2:	f000 fa11 	bl	1c918 <_vfiprintf_r>
   1c4f6:	b002      	add	sp, #8
   1c4f8:	bc10      	pop	{r4}
   1c4fa:	bc08      	pop	{r3}
   1c4fc:	b004      	add	sp, #16
   1c4fe:	4718      	bx	r3
   1c500:	0020      	movs	r0, r4
   1c502:	f000 f8fb 	bl	1c6fc <__sinit>
   1c506:	e7ef      	b.n	1c4e8 <iprintf+0x14>
   1c508:	200013c8 	.word	0x200013c8

0001c50c <__fp_lock>:
   1c50c:	2000      	movs	r0, #0
   1c50e:	4770      	bx	lr

0001c510 <_cleanup_r>:
   1c510:	b510      	push	{r4, lr}
   1c512:	4902      	ldr	r1, [pc, #8]	; (1c51c <_cleanup_r+0xc>)
   1c514:	f000 f93c 	bl	1c790 <_fwalk_reent>
   1c518:	bd10      	pop	{r4, pc}
   1c51a:	46c0      	nop			; (mov r8, r8)
   1c51c:	0001d445 	.word	0x0001d445

0001c520 <__fp_unlock>:
   1c520:	2000      	movs	r0, #0
   1c522:	4770      	bx	lr

0001c524 <__sfmoreglue>:
   1c524:	b570      	push	{r4, r5, r6, lr}
   1c526:	2468      	movs	r4, #104	; 0x68
   1c528:	1e4a      	subs	r2, r1, #1
   1c52a:	4354      	muls	r4, r2
   1c52c:	000e      	movs	r6, r1
   1c52e:	0021      	movs	r1, r4
   1c530:	3174      	adds	r1, #116	; 0x74
   1c532:	f000 f953 	bl	1c7dc <_malloc_r>
   1c536:	1e05      	subs	r5, r0, #0
   1c538:	d009      	beq.n	1c54e <__sfmoreglue+0x2a>
   1c53a:	2300      	movs	r3, #0
   1c53c:	0022      	movs	r2, r4
   1c53e:	6003      	str	r3, [r0, #0]
   1c540:	6046      	str	r6, [r0, #4]
   1c542:	300c      	adds	r0, #12
   1c544:	60a8      	str	r0, [r5, #8]
   1c546:	3268      	adds	r2, #104	; 0x68
   1c548:	2100      	movs	r1, #0
   1c54a:	f7fe fe93 	bl	1b274 <memset>
   1c54e:	0028      	movs	r0, r5
   1c550:	bd70      	pop	{r4, r5, r6, pc}
   1c552:	46c0      	nop			; (mov r8, r8)

0001c554 <__sfp>:
   1c554:	4b1e      	ldr	r3, [pc, #120]	; (1c5d0 <__sfp+0x7c>)
   1c556:	b570      	push	{r4, r5, r6, lr}
   1c558:	681d      	ldr	r5, [r3, #0]
   1c55a:	0006      	movs	r6, r0
   1c55c:	69ab      	ldr	r3, [r5, #24]
   1c55e:	2b00      	cmp	r3, #0
   1c560:	d027      	beq.n	1c5b2 <__sfp+0x5e>
   1c562:	3548      	adds	r5, #72	; 0x48
   1c564:	686b      	ldr	r3, [r5, #4]
   1c566:	68ac      	ldr	r4, [r5, #8]
   1c568:	3b01      	subs	r3, #1
   1c56a:	d503      	bpl.n	1c574 <__sfp+0x20>
   1c56c:	e01c      	b.n	1c5a8 <__sfp+0x54>
   1c56e:	3468      	adds	r4, #104	; 0x68
   1c570:	3b01      	subs	r3, #1
   1c572:	d319      	bcc.n	1c5a8 <__sfp+0x54>
   1c574:	210c      	movs	r1, #12
   1c576:	5e62      	ldrsh	r2, [r4, r1]
   1c578:	2a00      	cmp	r2, #0
   1c57a:	d1f8      	bne.n	1c56e <__sfp+0x1a>
   1c57c:	2500      	movs	r5, #0
   1c57e:	0020      	movs	r0, r4
   1c580:	4b14      	ldr	r3, [pc, #80]	; (1c5d4 <__sfp+0x80>)
   1c582:	6665      	str	r5, [r4, #100]	; 0x64
   1c584:	6025      	str	r5, [r4, #0]
   1c586:	6065      	str	r5, [r4, #4]
   1c588:	60a5      	str	r5, [r4, #8]
   1c58a:	60e3      	str	r3, [r4, #12]
   1c58c:	6125      	str	r5, [r4, #16]
   1c58e:	6165      	str	r5, [r4, #20]
   1c590:	61a5      	str	r5, [r4, #24]
   1c592:	2208      	movs	r2, #8
   1c594:	2100      	movs	r1, #0
   1c596:	305c      	adds	r0, #92	; 0x5c
   1c598:	f7fe fe6c 	bl	1b274 <memset>
   1c59c:	6365      	str	r5, [r4, #52]	; 0x34
   1c59e:	63a5      	str	r5, [r4, #56]	; 0x38
   1c5a0:	64a5      	str	r5, [r4, #72]	; 0x48
   1c5a2:	64e5      	str	r5, [r4, #76]	; 0x4c
   1c5a4:	0020      	movs	r0, r4
   1c5a6:	bd70      	pop	{r4, r5, r6, pc}
   1c5a8:	682c      	ldr	r4, [r5, #0]
   1c5aa:	2c00      	cmp	r4, #0
   1c5ac:	d005      	beq.n	1c5ba <__sfp+0x66>
   1c5ae:	0025      	movs	r5, r4
   1c5b0:	e7d8      	b.n	1c564 <__sfp+0x10>
   1c5b2:	0028      	movs	r0, r5
   1c5b4:	f000 f810 	bl	1c5d8 <__sinit.part.0>
   1c5b8:	e7d3      	b.n	1c562 <__sfp+0xe>
   1c5ba:	2104      	movs	r1, #4
   1c5bc:	0030      	movs	r0, r6
   1c5be:	f7ff ffb1 	bl	1c524 <__sfmoreglue>
   1c5c2:	1e04      	subs	r4, r0, #0
   1c5c4:	6028      	str	r0, [r5, #0]
   1c5c6:	d1f2      	bne.n	1c5ae <__sfp+0x5a>
   1c5c8:	230c      	movs	r3, #12
   1c5ca:	6033      	str	r3, [r6, #0]
   1c5cc:	e7ea      	b.n	1c5a4 <__sfp+0x50>
   1c5ce:	46c0      	nop			; (mov r8, r8)
   1c5d0:	0001df38 	.word	0x0001df38
   1c5d4:	ffff0001 	.word	0xffff0001

0001c5d8 <__sinit.part.0>:
   1c5d8:	b5f0      	push	{r4, r5, r6, r7, lr}
   1c5da:	46d6      	mov	lr, sl
   1c5dc:	464f      	mov	r7, r9
   1c5de:	4646      	mov	r6, r8
   1c5e0:	4b38      	ldr	r3, [pc, #224]	; (1c6c4 <__sinit.part.0+0xec>)
   1c5e2:	b5c0      	push	{r6, r7, lr}
   1c5e4:	6283      	str	r3, [r0, #40]	; 0x28
   1c5e6:	2300      	movs	r3, #0
   1c5e8:	6483      	str	r3, [r0, #72]	; 0x48
   1c5ea:	64c3      	str	r3, [r0, #76]	; 0x4c
   1c5ec:	6503      	str	r3, [r0, #80]	; 0x50
   1c5ee:	4b36      	ldr	r3, [pc, #216]	; (1c6c8 <__sinit.part.0+0xf0>)
   1c5f0:	b082      	sub	sp, #8
   1c5f2:	681b      	ldr	r3, [r3, #0]
   1c5f4:	0005      	movs	r5, r0
   1c5f6:	9301      	str	r3, [sp, #4]
   1c5f8:	4298      	cmp	r0, r3
   1c5fa:	d060      	beq.n	1c6be <__sinit.part.0+0xe6>
   1c5fc:	0028      	movs	r0, r5
   1c5fe:	f7ff ffa9 	bl	1c554 <__sfp>
   1c602:	6068      	str	r0, [r5, #4]
   1c604:	0028      	movs	r0, r5
   1c606:	f7ff ffa5 	bl	1c554 <__sfp>
   1c60a:	60a8      	str	r0, [r5, #8]
   1c60c:	0028      	movs	r0, r5
   1c60e:	f7ff ffa1 	bl	1c554 <__sfp>
   1c612:	686e      	ldr	r6, [r5, #4]
   1c614:	2400      	movs	r4, #0
   1c616:	60e8      	str	r0, [r5, #12]
   1c618:	2304      	movs	r3, #4
   1c61a:	0030      	movs	r0, r6
   1c61c:	6674      	str	r4, [r6, #100]	; 0x64
   1c61e:	6034      	str	r4, [r6, #0]
   1c620:	6074      	str	r4, [r6, #4]
   1c622:	60b4      	str	r4, [r6, #8]
   1c624:	60f3      	str	r3, [r6, #12]
   1c626:	6134      	str	r4, [r6, #16]
   1c628:	6174      	str	r4, [r6, #20]
   1c62a:	61b4      	str	r4, [r6, #24]
   1c62c:	2208      	movs	r2, #8
   1c62e:	2100      	movs	r1, #0
   1c630:	305c      	adds	r0, #92	; 0x5c
   1c632:	f7fe fe1f 	bl	1b274 <memset>
   1c636:	4b25      	ldr	r3, [pc, #148]	; (1c6cc <__sinit.part.0+0xf4>)
   1c638:	4f25      	ldr	r7, [pc, #148]	; (1c6d0 <__sinit.part.0+0xf8>)
   1c63a:	469a      	mov	sl, r3
   1c63c:	6273      	str	r3, [r6, #36]	; 0x24
   1c63e:	4b25      	ldr	r3, [pc, #148]	; (1c6d4 <__sinit.part.0+0xfc>)
   1c640:	6337      	str	r7, [r6, #48]	; 0x30
   1c642:	4699      	mov	r9, r3
   1c644:	62b3      	str	r3, [r6, #40]	; 0x28
   1c646:	4b24      	ldr	r3, [pc, #144]	; (1c6d8 <__sinit.part.0+0x100>)
   1c648:	6236      	str	r6, [r6, #32]
   1c64a:	62f3      	str	r3, [r6, #44]	; 0x2c
   1c64c:	68ae      	ldr	r6, [r5, #8]
   1c64e:	4698      	mov	r8, r3
   1c650:	0030      	movs	r0, r6
   1c652:	4b22      	ldr	r3, [pc, #136]	; (1c6dc <__sinit.part.0+0x104>)
   1c654:	6674      	str	r4, [r6, #100]	; 0x64
   1c656:	6034      	str	r4, [r6, #0]
   1c658:	6074      	str	r4, [r6, #4]
   1c65a:	60b4      	str	r4, [r6, #8]
   1c65c:	60f3      	str	r3, [r6, #12]
   1c65e:	6134      	str	r4, [r6, #16]
   1c660:	6174      	str	r4, [r6, #20]
   1c662:	61b4      	str	r4, [r6, #24]
   1c664:	2208      	movs	r2, #8
   1c666:	2100      	movs	r1, #0
   1c668:	305c      	adds	r0, #92	; 0x5c
   1c66a:	f7fe fe03 	bl	1b274 <memset>
   1c66e:	4653      	mov	r3, sl
   1c670:	6273      	str	r3, [r6, #36]	; 0x24
   1c672:	464b      	mov	r3, r9
   1c674:	62b3      	str	r3, [r6, #40]	; 0x28
   1c676:	4643      	mov	r3, r8
   1c678:	6337      	str	r7, [r6, #48]	; 0x30
   1c67a:	62f3      	str	r3, [r6, #44]	; 0x2c
   1c67c:	6236      	str	r6, [r6, #32]
   1c67e:	68ee      	ldr	r6, [r5, #12]
   1c680:	4b17      	ldr	r3, [pc, #92]	; (1c6e0 <__sinit.part.0+0x108>)
   1c682:	0030      	movs	r0, r6
   1c684:	60f3      	str	r3, [r6, #12]
   1c686:	6674      	str	r4, [r6, #100]	; 0x64
   1c688:	6034      	str	r4, [r6, #0]
   1c68a:	6074      	str	r4, [r6, #4]
   1c68c:	60b4      	str	r4, [r6, #8]
   1c68e:	6134      	str	r4, [r6, #16]
   1c690:	6174      	str	r4, [r6, #20]
   1c692:	61b4      	str	r4, [r6, #24]
   1c694:	2208      	movs	r2, #8
   1c696:	2100      	movs	r1, #0
   1c698:	305c      	adds	r0, #92	; 0x5c
   1c69a:	f7fe fdeb 	bl	1b274 <memset>
   1c69e:	4653      	mov	r3, sl
   1c6a0:	6273      	str	r3, [r6, #36]	; 0x24
   1c6a2:	464b      	mov	r3, r9
   1c6a4:	62b3      	str	r3, [r6, #40]	; 0x28
   1c6a6:	4643      	mov	r3, r8
   1c6a8:	62f3      	str	r3, [r6, #44]	; 0x2c
   1c6aa:	2301      	movs	r3, #1
   1c6ac:	6236      	str	r6, [r6, #32]
   1c6ae:	6337      	str	r7, [r6, #48]	; 0x30
   1c6b0:	61ab      	str	r3, [r5, #24]
   1c6b2:	b002      	add	sp, #8
   1c6b4:	bc1c      	pop	{r2, r3, r4}
   1c6b6:	4690      	mov	r8, r2
   1c6b8:	4699      	mov	r9, r3
   1c6ba:	46a2      	mov	sl, r4
   1c6bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1c6be:	2301      	movs	r3, #1
   1c6c0:	6183      	str	r3, [r0, #24]
   1c6c2:	e79b      	b.n	1c5fc <__sinit.part.0+0x24>
   1c6c4:	0001c511 	.word	0x0001c511
   1c6c8:	0001df38 	.word	0x0001df38
   1c6cc:	0001d029 	.word	0x0001d029
   1c6d0:	0001d0c1 	.word	0x0001d0c1
   1c6d4:	0001d055 	.word	0x0001d055
   1c6d8:	0001d095 	.word	0x0001d095
   1c6dc:	00010009 	.word	0x00010009
   1c6e0:	00020012 	.word	0x00020012

0001c6e4 <_cleanup>:
   1c6e4:	b510      	push	{r4, lr}
   1c6e6:	4b03      	ldr	r3, [pc, #12]	; (1c6f4 <_cleanup+0x10>)
   1c6e8:	4903      	ldr	r1, [pc, #12]	; (1c6f8 <_cleanup+0x14>)
   1c6ea:	6818      	ldr	r0, [r3, #0]
   1c6ec:	f000 f850 	bl	1c790 <_fwalk_reent>
   1c6f0:	bd10      	pop	{r4, pc}
   1c6f2:	46c0      	nop			; (mov r8, r8)
   1c6f4:	0001df38 	.word	0x0001df38
   1c6f8:	0001d445 	.word	0x0001d445

0001c6fc <__sinit>:
   1c6fc:	6983      	ldr	r3, [r0, #24]
   1c6fe:	b510      	push	{r4, lr}
   1c700:	2b00      	cmp	r3, #0
   1c702:	d101      	bne.n	1c708 <__sinit+0xc>
   1c704:	f7ff ff68 	bl	1c5d8 <__sinit.part.0>
   1c708:	bd10      	pop	{r4, pc}
   1c70a:	46c0      	nop			; (mov r8, r8)

0001c70c <__sfp_lock_acquire>:
   1c70c:	4770      	bx	lr
   1c70e:	46c0      	nop			; (mov r8, r8)

0001c710 <__sfp_lock_release>:
   1c710:	4770      	bx	lr
   1c712:	46c0      	nop			; (mov r8, r8)

0001c714 <__sinit_lock_acquire>:
   1c714:	4770      	bx	lr
   1c716:	46c0      	nop			; (mov r8, r8)

0001c718 <__sinit_lock_release>:
   1c718:	4770      	bx	lr
   1c71a:	46c0      	nop			; (mov r8, r8)

0001c71c <__fp_lock_all>:
   1c71c:	b510      	push	{r4, lr}
   1c71e:	4b03      	ldr	r3, [pc, #12]	; (1c72c <__fp_lock_all+0x10>)
   1c720:	4903      	ldr	r1, [pc, #12]	; (1c730 <__fp_lock_all+0x14>)
   1c722:	6818      	ldr	r0, [r3, #0]
   1c724:	f000 f812 	bl	1c74c <_fwalk>
   1c728:	bd10      	pop	{r4, pc}
   1c72a:	46c0      	nop			; (mov r8, r8)
   1c72c:	200013c8 	.word	0x200013c8
   1c730:	0001c50d 	.word	0x0001c50d

0001c734 <__fp_unlock_all>:
   1c734:	b510      	push	{r4, lr}
   1c736:	4b03      	ldr	r3, [pc, #12]	; (1c744 <__fp_unlock_all+0x10>)
   1c738:	4903      	ldr	r1, [pc, #12]	; (1c748 <__fp_unlock_all+0x14>)
   1c73a:	6818      	ldr	r0, [r3, #0]
   1c73c:	f000 f806 	bl	1c74c <_fwalk>
   1c740:	bd10      	pop	{r4, pc}
   1c742:	46c0      	nop			; (mov r8, r8)
   1c744:	200013c8 	.word	0x200013c8
   1c748:	0001c521 	.word	0x0001c521

0001c74c <_fwalk>:
   1c74c:	b5f0      	push	{r4, r5, r6, r7, lr}
   1c74e:	46c6      	mov	lr, r8
   1c750:	3048      	adds	r0, #72	; 0x48
   1c752:	b500      	push	{lr}
   1c754:	4688      	mov	r8, r1
   1c756:	0007      	movs	r7, r0
   1c758:	2600      	movs	r6, #0
   1c75a:	2800      	cmp	r0, #0
   1c75c:	d013      	beq.n	1c786 <_fwalk+0x3a>
   1c75e:	687b      	ldr	r3, [r7, #4]
   1c760:	68bc      	ldr	r4, [r7, #8]
   1c762:	1e5d      	subs	r5, r3, #1
   1c764:	d40c      	bmi.n	1c780 <_fwalk+0x34>
   1c766:	89a3      	ldrh	r3, [r4, #12]
   1c768:	2b01      	cmp	r3, #1
   1c76a:	d906      	bls.n	1c77a <_fwalk+0x2e>
   1c76c:	220e      	movs	r2, #14
   1c76e:	5ea3      	ldrsh	r3, [r4, r2]
   1c770:	3301      	adds	r3, #1
   1c772:	d002      	beq.n	1c77a <_fwalk+0x2e>
   1c774:	0020      	movs	r0, r4
   1c776:	47c0      	blx	r8
   1c778:	4306      	orrs	r6, r0
   1c77a:	3468      	adds	r4, #104	; 0x68
   1c77c:	3d01      	subs	r5, #1
   1c77e:	d2f2      	bcs.n	1c766 <_fwalk+0x1a>
   1c780:	683f      	ldr	r7, [r7, #0]
   1c782:	2f00      	cmp	r7, #0
   1c784:	d1eb      	bne.n	1c75e <_fwalk+0x12>
   1c786:	0030      	movs	r0, r6
   1c788:	bc04      	pop	{r2}
   1c78a:	4690      	mov	r8, r2
   1c78c:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1c78e:	46c0      	nop			; (mov r8, r8)

0001c790 <_fwalk_reent>:
   1c790:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1c792:	4647      	mov	r7, r8
   1c794:	46ce      	mov	lr, r9
   1c796:	b580      	push	{r7, lr}
   1c798:	0007      	movs	r7, r0
   1c79a:	3748      	adds	r7, #72	; 0x48
   1c79c:	4680      	mov	r8, r0
   1c79e:	4689      	mov	r9, r1
   1c7a0:	2600      	movs	r6, #0
   1c7a2:	2f00      	cmp	r7, #0
   1c7a4:	d014      	beq.n	1c7d0 <_fwalk_reent+0x40>
   1c7a6:	687b      	ldr	r3, [r7, #4]
   1c7a8:	68bc      	ldr	r4, [r7, #8]
   1c7aa:	1e5d      	subs	r5, r3, #1
   1c7ac:	d40d      	bmi.n	1c7ca <_fwalk_reent+0x3a>
   1c7ae:	89a3      	ldrh	r3, [r4, #12]
   1c7b0:	2b01      	cmp	r3, #1
   1c7b2:	d907      	bls.n	1c7c4 <_fwalk_reent+0x34>
   1c7b4:	220e      	movs	r2, #14
   1c7b6:	5ea3      	ldrsh	r3, [r4, r2]
   1c7b8:	3301      	adds	r3, #1
   1c7ba:	d003      	beq.n	1c7c4 <_fwalk_reent+0x34>
   1c7bc:	0021      	movs	r1, r4
   1c7be:	4640      	mov	r0, r8
   1c7c0:	47c8      	blx	r9
   1c7c2:	4306      	orrs	r6, r0
   1c7c4:	3468      	adds	r4, #104	; 0x68
   1c7c6:	3d01      	subs	r5, #1
   1c7c8:	d2f1      	bcs.n	1c7ae <_fwalk_reent+0x1e>
   1c7ca:	683f      	ldr	r7, [r7, #0]
   1c7cc:	2f00      	cmp	r7, #0
   1c7ce:	d1ea      	bne.n	1c7a6 <_fwalk_reent+0x16>
   1c7d0:	0030      	movs	r0, r6
   1c7d2:	bc0c      	pop	{r2, r3}
   1c7d4:	4690      	mov	r8, r2
   1c7d6:	4699      	mov	r9, r3
   1c7d8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   1c7da:	46c0      	nop			; (mov r8, r8)

0001c7dc <_malloc_r>:
   1c7dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1c7de:	2303      	movs	r3, #3
   1c7e0:	1ccd      	adds	r5, r1, #3
   1c7e2:	439d      	bics	r5, r3
   1c7e4:	3508      	adds	r5, #8
   1c7e6:	0006      	movs	r6, r0
   1c7e8:	2d0c      	cmp	r5, #12
   1c7ea:	d22a      	bcs.n	1c842 <_malloc_r+0x66>
   1c7ec:	250c      	movs	r5, #12
   1c7ee:	42a9      	cmp	r1, r5
   1c7f0:	d829      	bhi.n	1c846 <_malloc_r+0x6a>
   1c7f2:	0030      	movs	r0, r6
   1c7f4:	f001 f91a 	bl	1da2c <__malloc_lock>
   1c7f8:	4f2a      	ldr	r7, [pc, #168]	; (1c8a4 <_malloc_r+0xc8>)
   1c7fa:	683a      	ldr	r2, [r7, #0]
   1c7fc:	2a00      	cmp	r2, #0
   1c7fe:	d00a      	beq.n	1c816 <_malloc_r+0x3a>
   1c800:	6813      	ldr	r3, [r2, #0]
   1c802:	1b5b      	subs	r3, r3, r5
   1c804:	d404      	bmi.n	1c810 <_malloc_r+0x34>
   1c806:	e041      	b.n	1c88c <_malloc_r+0xb0>
   1c808:	6823      	ldr	r3, [r4, #0]
   1c80a:	1b5b      	subs	r3, r3, r5
   1c80c:	d51f      	bpl.n	1c84e <_malloc_r+0x72>
   1c80e:	0022      	movs	r2, r4
   1c810:	6854      	ldr	r4, [r2, #4]
   1c812:	2c00      	cmp	r4, #0
   1c814:	d1f8      	bne.n	1c808 <_malloc_r+0x2c>
   1c816:	687b      	ldr	r3, [r7, #4]
   1c818:	2b00      	cmp	r3, #0
   1c81a:	d03d      	beq.n	1c898 <_malloc_r+0xbc>
   1c81c:	0029      	movs	r1, r5
   1c81e:	0030      	movs	r0, r6
   1c820:	f000 fbf0 	bl	1d004 <_sbrk_r>
   1c824:	1c43      	adds	r3, r0, #1
   1c826:	d02a      	beq.n	1c87e <_malloc_r+0xa2>
   1c828:	2303      	movs	r3, #3
   1c82a:	1cc4      	adds	r4, r0, #3
   1c82c:	439c      	bics	r4, r3
   1c82e:	42a0      	cmp	r0, r4
   1c830:	d005      	beq.n	1c83e <_malloc_r+0x62>
   1c832:	1a21      	subs	r1, r4, r0
   1c834:	0030      	movs	r0, r6
   1c836:	f000 fbe5 	bl	1d004 <_sbrk_r>
   1c83a:	1c43      	adds	r3, r0, #1
   1c83c:	d01f      	beq.n	1c87e <_malloc_r+0xa2>
   1c83e:	6025      	str	r5, [r4, #0]
   1c840:	e010      	b.n	1c864 <_malloc_r+0x88>
   1c842:	2d00      	cmp	r5, #0
   1c844:	dad3      	bge.n	1c7ee <_malloc_r+0x12>
   1c846:	230c      	movs	r3, #12
   1c848:	2000      	movs	r0, #0
   1c84a:	6033      	str	r3, [r6, #0]
   1c84c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   1c84e:	2b0b      	cmp	r3, #11
   1c850:	d805      	bhi.n	1c85e <_malloc_r+0x82>
   1c852:	6863      	ldr	r3, [r4, #4]
   1c854:	42a2      	cmp	r2, r4
   1c856:	d01d      	beq.n	1c894 <_malloc_r+0xb8>
   1c858:	6053      	str	r3, [r2, #4]
   1c85a:	e003      	b.n	1c864 <_malloc_r+0x88>
   1c85c:	0014      	movs	r4, r2
   1c85e:	6023      	str	r3, [r4, #0]
   1c860:	18e4      	adds	r4, r4, r3
   1c862:	6025      	str	r5, [r4, #0]
   1c864:	0030      	movs	r0, r6
   1c866:	f001 f8e3 	bl	1da30 <__malloc_unlock>
   1c86a:	0020      	movs	r0, r4
   1c86c:	2207      	movs	r2, #7
   1c86e:	300b      	adds	r0, #11
   1c870:	1d23      	adds	r3, r4, #4
   1c872:	4390      	bics	r0, r2
   1c874:	1ac2      	subs	r2, r0, r3
   1c876:	d0e9      	beq.n	1c84c <_malloc_r+0x70>
   1c878:	1a1b      	subs	r3, r3, r0
   1c87a:	50a3      	str	r3, [r4, r2]
   1c87c:	e7e6      	b.n	1c84c <_malloc_r+0x70>
   1c87e:	230c      	movs	r3, #12
   1c880:	0030      	movs	r0, r6
   1c882:	6033      	str	r3, [r6, #0]
   1c884:	f001 f8d4 	bl	1da30 <__malloc_unlock>
   1c888:	2000      	movs	r0, #0
   1c88a:	e7df      	b.n	1c84c <_malloc_r+0x70>
   1c88c:	2b0b      	cmp	r3, #11
   1c88e:	d8e5      	bhi.n	1c85c <_malloc_r+0x80>
   1c890:	0014      	movs	r4, r2
   1c892:	6853      	ldr	r3, [r2, #4]
   1c894:	603b      	str	r3, [r7, #0]
   1c896:	e7e5      	b.n	1c864 <_malloc_r+0x88>
   1c898:	2100      	movs	r1, #0
   1c89a:	0030      	movs	r0, r6
   1c89c:	f000 fbb2 	bl	1d004 <_sbrk_r>
   1c8a0:	6078      	str	r0, [r7, #4]
   1c8a2:	e7bb      	b.n	1c81c <_malloc_r+0x40>
   1c8a4:	20001b58 	.word	0x20001b58

0001c8a8 <__sfputc_r>:
   1c8a8:	6893      	ldr	r3, [r2, #8]
   1c8aa:	b510      	push	{r4, lr}
   1c8ac:	3b01      	subs	r3, #1
   1c8ae:	6093      	str	r3, [r2, #8]
   1c8b0:	2b00      	cmp	r3, #0
   1c8b2:	da04      	bge.n	1c8be <__sfputc_r+0x16>
   1c8b4:	6994      	ldr	r4, [r2, #24]
   1c8b6:	42a3      	cmp	r3, r4
   1c8b8:	db07      	blt.n	1c8ca <__sfputc_r+0x22>
   1c8ba:	290a      	cmp	r1, #10
   1c8bc:	d005      	beq.n	1c8ca <__sfputc_r+0x22>
   1c8be:	6813      	ldr	r3, [r2, #0]
   1c8c0:	1c58      	adds	r0, r3, #1
   1c8c2:	6010      	str	r0, [r2, #0]
   1c8c4:	0008      	movs	r0, r1
   1c8c6:	7019      	strb	r1, [r3, #0]
   1c8c8:	bd10      	pop	{r4, pc}
   1c8ca:	f000 fbff 	bl	1d0cc <__swbuf_r>
   1c8ce:	e7fb      	b.n	1c8c8 <__sfputc_r+0x20>

0001c8d0 <__sfputs_r>:
   1c8d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1c8d2:	0006      	movs	r6, r0
   1c8d4:	000f      	movs	r7, r1
   1c8d6:	2b00      	cmp	r3, #0
   1c8d8:	d00d      	beq.n	1c8f6 <__sfputs_r+0x26>
   1c8da:	0014      	movs	r4, r2
   1c8dc:	18d5      	adds	r5, r2, r3
   1c8de:	e002      	b.n	1c8e6 <__sfputs_r+0x16>
   1c8e0:	3401      	adds	r4, #1
   1c8e2:	42ac      	cmp	r4, r5
   1c8e4:	d007      	beq.n	1c8f6 <__sfputs_r+0x26>
   1c8e6:	7821      	ldrb	r1, [r4, #0]
   1c8e8:	003a      	movs	r2, r7
   1c8ea:	0030      	movs	r0, r6
   1c8ec:	f7ff ffdc 	bl	1c8a8 <__sfputc_r>
   1c8f0:	1c43      	adds	r3, r0, #1
   1c8f2:	d1f5      	bne.n	1c8e0 <__sfputs_r+0x10>
   1c8f4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   1c8f6:	2000      	movs	r0, #0
   1c8f8:	e7fc      	b.n	1c8f4 <__sfputs_r+0x24>
   1c8fa:	46c0      	nop			; (mov r8, r8)

0001c8fc <__sprint_r>:
   1c8fc:	6893      	ldr	r3, [r2, #8]
   1c8fe:	b510      	push	{r4, lr}
   1c900:	0014      	movs	r4, r2
   1c902:	2b00      	cmp	r3, #0
   1c904:	d102      	bne.n	1c90c <__sprint_r+0x10>
   1c906:	2000      	movs	r0, #0
   1c908:	6053      	str	r3, [r2, #4]
   1c90a:	bd10      	pop	{r4, pc}
   1c90c:	f000 fddc 	bl	1d4c8 <__sfvwrite_r>
   1c910:	2300      	movs	r3, #0
   1c912:	60a3      	str	r3, [r4, #8]
   1c914:	6063      	str	r3, [r4, #4]
   1c916:	e7f8      	b.n	1c90a <__sprint_r+0xe>

0001c918 <_vfiprintf_r>:
   1c918:	b5f0      	push	{r4, r5, r6, r7, lr}
   1c91a:	464e      	mov	r6, r9
   1c91c:	46de      	mov	lr, fp
   1c91e:	4657      	mov	r7, sl
   1c920:	4645      	mov	r5, r8
   1c922:	b5e0      	push	{r5, r6, r7, lr}
   1c924:	b0a1      	sub	sp, #132	; 0x84
   1c926:	9004      	str	r0, [sp, #16]
   1c928:	9103      	str	r1, [sp, #12]
   1c92a:	4691      	mov	r9, r2
   1c92c:	001c      	movs	r4, r3
   1c92e:	2800      	cmp	r0, #0
   1c930:	d004      	beq.n	1c93c <_vfiprintf_r+0x24>
   1c932:	6983      	ldr	r3, [r0, #24]
   1c934:	9305      	str	r3, [sp, #20]
   1c936:	2b00      	cmp	r3, #0
   1c938:	d100      	bne.n	1c93c <_vfiprintf_r+0x24>
   1c93a:	e0be      	b.n	1caba <_vfiprintf_r+0x1a2>
   1c93c:	4bad      	ldr	r3, [pc, #692]	; (1cbf4 <_vfiprintf_r+0x2dc>)
   1c93e:	9a03      	ldr	r2, [sp, #12]
   1c940:	429a      	cmp	r2, r3
   1c942:	d100      	bne.n	1c946 <_vfiprintf_r+0x2e>
   1c944:	e0c0      	b.n	1cac8 <_vfiprintf_r+0x1b0>
   1c946:	4bac      	ldr	r3, [pc, #688]	; (1cbf8 <_vfiprintf_r+0x2e0>)
   1c948:	9a03      	ldr	r2, [sp, #12]
   1c94a:	429a      	cmp	r2, r3
   1c94c:	d100      	bne.n	1c950 <_vfiprintf_r+0x38>
   1c94e:	e0cd      	b.n	1caec <_vfiprintf_r+0x1d4>
   1c950:	4baa      	ldr	r3, [pc, #680]	; (1cbfc <_vfiprintf_r+0x2e4>)
   1c952:	9a03      	ldr	r2, [sp, #12]
   1c954:	429a      	cmp	r2, r3
   1c956:	d100      	bne.n	1c95a <_vfiprintf_r+0x42>
   1c958:	e147      	b.n	1cbea <_vfiprintf_r+0x2d2>
   1c95a:	9a03      	ldr	r2, [sp, #12]
   1c95c:	8993      	ldrh	r3, [r2, #12]
   1c95e:	071b      	lsls	r3, r3, #28
   1c960:	d400      	bmi.n	1c964 <_vfiprintf_r+0x4c>
   1c962:	e0b9      	b.n	1cad8 <_vfiprintf_r+0x1c0>
   1c964:	6913      	ldr	r3, [r2, #16]
   1c966:	9305      	str	r3, [sp, #20]
   1c968:	2b00      	cmp	r3, #0
   1c96a:	d100      	bne.n	1c96e <_vfiprintf_r+0x56>
   1c96c:	e0b4      	b.n	1cad8 <_vfiprintf_r+0x1c0>
   1c96e:	2300      	movs	r3, #0
   1c970:	ad08      	add	r5, sp, #32
   1c972:	616b      	str	r3, [r5, #20]
   1c974:	3320      	adds	r3, #32
   1c976:	766b      	strb	r3, [r5, #25]
   1c978:	3310      	adds	r3, #16
   1c97a:	76ab      	strb	r3, [r5, #26]
   1c97c:	3b2f      	subs	r3, #47	; 0x2f
   1c97e:	4698      	mov	r8, r3
   1c980:	464b      	mov	r3, r9
   1c982:	781b      	ldrb	r3, [r3, #0]
   1c984:	9407      	str	r4, [sp, #28]
   1c986:	4f9e      	ldr	r7, [pc, #632]	; (1cc00 <_vfiprintf_r+0x2e8>)
   1c988:	2b00      	cmp	r3, #0
   1c98a:	d100      	bne.n	1c98e <_vfiprintf_r+0x76>
   1c98c:	e089      	b.n	1caa2 <_vfiprintf_r+0x18a>
   1c98e:	2b25      	cmp	r3, #37	; 0x25
   1c990:	d100      	bne.n	1c994 <_vfiprintf_r+0x7c>
   1c992:	e125      	b.n	1cbe0 <_vfiprintf_r+0x2c8>
   1c994:	464e      	mov	r6, r9
   1c996:	e003      	b.n	1c9a0 <_vfiprintf_r+0x88>
   1c998:	2b25      	cmp	r3, #37	; 0x25
   1c99a:	d100      	bne.n	1c99e <_vfiprintf_r+0x86>
   1c99c:	e0aa      	b.n	1caf4 <_vfiprintf_r+0x1dc>
   1c99e:	0026      	movs	r6, r4
   1c9a0:	7873      	ldrb	r3, [r6, #1]
   1c9a2:	1c74      	adds	r4, r6, #1
   1c9a4:	2b00      	cmp	r3, #0
   1c9a6:	d1f7      	bne.n	1c998 <_vfiprintf_r+0x80>
   1c9a8:	464b      	mov	r3, r9
   1c9aa:	1ae3      	subs	r3, r4, r3
   1c9ac:	469a      	mov	sl, r3
   1c9ae:	d078      	beq.n	1caa2 <_vfiprintf_r+0x18a>
   1c9b0:	4653      	mov	r3, sl
   1c9b2:	464a      	mov	r2, r9
   1c9b4:	9903      	ldr	r1, [sp, #12]
   1c9b6:	9804      	ldr	r0, [sp, #16]
   1c9b8:	f7ff ff8a 	bl	1c8d0 <__sfputs_r>
   1c9bc:	1c43      	adds	r3, r0, #1
   1c9be:	d070      	beq.n	1caa2 <_vfiprintf_r+0x18a>
   1c9c0:	696b      	ldr	r3, [r5, #20]
   1c9c2:	4453      	add	r3, sl
   1c9c4:	616b      	str	r3, [r5, #20]
   1c9c6:	7873      	ldrb	r3, [r6, #1]
   1c9c8:	2b00      	cmp	r3, #0
   1c9ca:	d06a      	beq.n	1caa2 <_vfiprintf_r+0x18a>
   1c9cc:	2201      	movs	r2, #1
   1c9ce:	2300      	movs	r3, #0
   1c9d0:	4252      	negs	r2, r2
   1c9d2:	606a      	str	r2, [r5, #4]
   1c9d4:	3244      	adds	r2, #68	; 0x44
   1c9d6:	3401      	adds	r4, #1
   1c9d8:	602b      	str	r3, [r5, #0]
   1c9da:	60eb      	str	r3, [r5, #12]
   1c9dc:	60ab      	str	r3, [r5, #8]
   1c9de:	54ab      	strb	r3, [r5, r2]
   1c9e0:	65ab      	str	r3, [r5, #88]	; 0x58
   1c9e2:	e006      	b.n	1c9f2 <_vfiprintf_r+0xda>
   1c9e4:	4643      	mov	r3, r8
   1c9e6:	1bc0      	subs	r0, r0, r7
   1c9e8:	4083      	lsls	r3, r0
   1c9ea:	0034      	movs	r4, r6
   1c9ec:	682a      	ldr	r2, [r5, #0]
   1c9ee:	4313      	orrs	r3, r2
   1c9f0:	602b      	str	r3, [r5, #0]
   1c9f2:	7821      	ldrb	r1, [r4, #0]
   1c9f4:	2205      	movs	r2, #5
   1c9f6:	0038      	movs	r0, r7
   1c9f8:	f000 ff7a 	bl	1d8f0 <memchr>
   1c9fc:	1c66      	adds	r6, r4, #1
   1c9fe:	2800      	cmp	r0, #0
   1ca00:	d1f0      	bne.n	1c9e4 <_vfiprintf_r+0xcc>
   1ca02:	682b      	ldr	r3, [r5, #0]
   1ca04:	46b2      	mov	sl, r6
   1ca06:	06da      	lsls	r2, r3, #27
   1ca08:	d502      	bpl.n	1ca10 <_vfiprintf_r+0xf8>
   1ca0a:	2243      	movs	r2, #67	; 0x43
   1ca0c:	2120      	movs	r1, #32
   1ca0e:	54a9      	strb	r1, [r5, r2]
   1ca10:	071a      	lsls	r2, r3, #28
   1ca12:	d502      	bpl.n	1ca1a <_vfiprintf_r+0x102>
   1ca14:	2243      	movs	r2, #67	; 0x43
   1ca16:	212b      	movs	r1, #43	; 0x2b
   1ca18:	54a9      	strb	r1, [r5, r2]
   1ca1a:	7821      	ldrb	r1, [r4, #0]
   1ca1c:	292a      	cmp	r1, #42	; 0x2a
   1ca1e:	d000      	beq.n	1ca22 <_vfiprintf_r+0x10a>
   1ca20:	e06e      	b.n	1cb00 <_vfiprintf_r+0x1e8>
   1ca22:	9a07      	ldr	r2, [sp, #28]
   1ca24:	1d11      	adds	r1, r2, #4
   1ca26:	6812      	ldr	r2, [r2, #0]
   1ca28:	9107      	str	r1, [sp, #28]
   1ca2a:	2a00      	cmp	r2, #0
   1ca2c:	da00      	bge.n	1ca30 <_vfiprintf_r+0x118>
   1ca2e:	e0ba      	b.n	1cba6 <_vfiprintf_r+0x28e>
   1ca30:	60ea      	str	r2, [r5, #12]
   1ca32:	7861      	ldrb	r1, [r4, #1]
   1ca34:	1ca6      	adds	r6, r4, #2
   1ca36:	292e      	cmp	r1, #46	; 0x2e
   1ca38:	d100      	bne.n	1ca3c <_vfiprintf_r+0x124>
   1ca3a:	e07a      	b.n	1cb32 <_vfiprintf_r+0x21a>
   1ca3c:	4b71      	ldr	r3, [pc, #452]	; (1cc04 <_vfiprintf_r+0x2ec>)
   1ca3e:	2203      	movs	r2, #3
   1ca40:	0018      	movs	r0, r3
   1ca42:	4699      	mov	r9, r3
   1ca44:	f000 ff54 	bl	1d8f0 <memchr>
   1ca48:	2800      	cmp	r0, #0
   1ca4a:	d100      	bne.n	1ca4e <_vfiprintf_r+0x136>
   1ca4c:	e08f      	b.n	1cb6e <_vfiprintf_r+0x256>
   1ca4e:	464b      	mov	r3, r9
   1ca50:	1ac0      	subs	r0, r0, r3
   1ca52:	2340      	movs	r3, #64	; 0x40
   1ca54:	4083      	lsls	r3, r0
   1ca56:	682a      	ldr	r2, [r5, #0]
   1ca58:	7831      	ldrb	r1, [r6, #0]
   1ca5a:	4313      	orrs	r3, r2
   1ca5c:	602b      	str	r3, [r5, #0]
   1ca5e:	2206      	movs	r2, #6
   1ca60:	1c73      	adds	r3, r6, #1
   1ca62:	4869      	ldr	r0, [pc, #420]	; (1cc08 <_vfiprintf_r+0x2f0>)
   1ca64:	4699      	mov	r9, r3
   1ca66:	7629      	strb	r1, [r5, #24]
   1ca68:	f000 ff42 	bl	1d8f0 <memchr>
   1ca6c:	2800      	cmp	r0, #0
   1ca6e:	d100      	bne.n	1ca72 <_vfiprintf_r+0x15a>
   1ca70:	e088      	b.n	1cb84 <_vfiprintf_r+0x26c>
   1ca72:	4b66      	ldr	r3, [pc, #408]	; (1cc0c <_vfiprintf_r+0x2f4>)
   1ca74:	2b00      	cmp	r3, #0
   1ca76:	d100      	bne.n	1ca7a <_vfiprintf_r+0x162>
   1ca78:	e08e      	b.n	1cb98 <_vfiprintf_r+0x280>
   1ca7a:	ab07      	add	r3, sp, #28
   1ca7c:	9300      	str	r3, [sp, #0]
   1ca7e:	9a03      	ldr	r2, [sp, #12]
   1ca80:	4b63      	ldr	r3, [pc, #396]	; (1cc10 <_vfiprintf_r+0x2f8>)
   1ca82:	0029      	movs	r1, r5
   1ca84:	9804      	ldr	r0, [sp, #16]
   1ca86:	e000      	b.n	1ca8a <_vfiprintf_r+0x172>
   1ca88:	bf00      	nop
   1ca8a:	4683      	mov	fp, r0
   1ca8c:	465b      	mov	r3, fp
   1ca8e:	3301      	adds	r3, #1
   1ca90:	d007      	beq.n	1caa2 <_vfiprintf_r+0x18a>
   1ca92:	696b      	ldr	r3, [r5, #20]
   1ca94:	445b      	add	r3, fp
   1ca96:	616b      	str	r3, [r5, #20]
   1ca98:	464b      	mov	r3, r9
   1ca9a:	781b      	ldrb	r3, [r3, #0]
   1ca9c:	2b00      	cmp	r3, #0
   1ca9e:	d000      	beq.n	1caa2 <_vfiprintf_r+0x18a>
   1caa0:	e775      	b.n	1c98e <_vfiprintf_r+0x76>
   1caa2:	9b03      	ldr	r3, [sp, #12]
   1caa4:	899b      	ldrh	r3, [r3, #12]
   1caa6:	065b      	lsls	r3, r3, #25
   1caa8:	d41d      	bmi.n	1cae6 <_vfiprintf_r+0x1ce>
   1caaa:	6968      	ldr	r0, [r5, #20]
   1caac:	b021      	add	sp, #132	; 0x84
   1caae:	bc3c      	pop	{r2, r3, r4, r5}
   1cab0:	4690      	mov	r8, r2
   1cab2:	4699      	mov	r9, r3
   1cab4:	46a2      	mov	sl, r4
   1cab6:	46ab      	mov	fp, r5
   1cab8:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1caba:	f7ff fe1f 	bl	1c6fc <__sinit>
   1cabe:	4b4d      	ldr	r3, [pc, #308]	; (1cbf4 <_vfiprintf_r+0x2dc>)
   1cac0:	9a03      	ldr	r2, [sp, #12]
   1cac2:	429a      	cmp	r2, r3
   1cac4:	d000      	beq.n	1cac8 <_vfiprintf_r+0x1b0>
   1cac6:	e73e      	b.n	1c946 <_vfiprintf_r+0x2e>
   1cac8:	9b04      	ldr	r3, [sp, #16]
   1caca:	685b      	ldr	r3, [r3, #4]
   1cacc:	9303      	str	r3, [sp, #12]
   1cace:	9a03      	ldr	r2, [sp, #12]
   1cad0:	8993      	ldrh	r3, [r2, #12]
   1cad2:	071b      	lsls	r3, r3, #28
   1cad4:	d500      	bpl.n	1cad8 <_vfiprintf_r+0x1c0>
   1cad6:	e745      	b.n	1c964 <_vfiprintf_r+0x4c>
   1cad8:	9903      	ldr	r1, [sp, #12]
   1cada:	9804      	ldr	r0, [sp, #16]
   1cadc:	f000 fb80 	bl	1d1e0 <__swsetup_r>
   1cae0:	2800      	cmp	r0, #0
   1cae2:	d100      	bne.n	1cae6 <_vfiprintf_r+0x1ce>
   1cae4:	e743      	b.n	1c96e <_vfiprintf_r+0x56>
   1cae6:	2001      	movs	r0, #1
   1cae8:	4240      	negs	r0, r0
   1caea:	e7df      	b.n	1caac <_vfiprintf_r+0x194>
   1caec:	9b04      	ldr	r3, [sp, #16]
   1caee:	689b      	ldr	r3, [r3, #8]
   1caf0:	9303      	str	r3, [sp, #12]
   1caf2:	e732      	b.n	1c95a <_vfiprintf_r+0x42>
   1caf4:	464b      	mov	r3, r9
   1caf6:	1ae3      	subs	r3, r4, r3
   1caf8:	469a      	mov	sl, r3
   1cafa:	d100      	bne.n	1cafe <_vfiprintf_r+0x1e6>
   1cafc:	e766      	b.n	1c9cc <_vfiprintf_r+0xb4>
   1cafe:	e757      	b.n	1c9b0 <_vfiprintf_r+0x98>
   1cb00:	000a      	movs	r2, r1
   1cb02:	3a30      	subs	r2, #48	; 0x30
   1cb04:	46a2      	mov	sl, r4
   1cb06:	2a09      	cmp	r2, #9
   1cb08:	d895      	bhi.n	1ca36 <_vfiprintf_r+0x11e>
   1cb0a:	68eb      	ldr	r3, [r5, #12]
   1cb0c:	0018      	movs	r0, r3
   1cb0e:	e001      	b.n	1cb14 <_vfiprintf_r+0x1fc>
   1cb10:	0034      	movs	r4, r6
   1cb12:	3601      	adds	r6, #1
   1cb14:	0083      	lsls	r3, r0, #2
   1cb16:	181b      	adds	r3, r3, r0
   1cb18:	7831      	ldrb	r1, [r6, #0]
   1cb1a:	005b      	lsls	r3, r3, #1
   1cb1c:	1898      	adds	r0, r3, r2
   1cb1e:	000a      	movs	r2, r1
   1cb20:	3a30      	subs	r2, #48	; 0x30
   1cb22:	2a09      	cmp	r2, #9
   1cb24:	d9f4      	bls.n	1cb10 <_vfiprintf_r+0x1f8>
   1cb26:	46b2      	mov	sl, r6
   1cb28:	60e8      	str	r0, [r5, #12]
   1cb2a:	1ca6      	adds	r6, r4, #2
   1cb2c:	292e      	cmp	r1, #46	; 0x2e
   1cb2e:	d000      	beq.n	1cb32 <_vfiprintf_r+0x21a>
   1cb30:	e784      	b.n	1ca3c <_vfiprintf_r+0x124>
   1cb32:	4653      	mov	r3, sl
   1cb34:	7859      	ldrb	r1, [r3, #1]
   1cb36:	292a      	cmp	r1, #42	; 0x2a
   1cb38:	d13b      	bne.n	1cbb2 <_vfiprintf_r+0x29a>
   1cb3a:	9b07      	ldr	r3, [sp, #28]
   1cb3c:	1d1a      	adds	r2, r3, #4
   1cb3e:	9207      	str	r2, [sp, #28]
   1cb40:	4652      	mov	r2, sl
   1cb42:	7891      	ldrb	r1, [r2, #2]
   1cb44:	1cd6      	adds	r6, r2, #3
   1cb46:	2202      	movs	r2, #2
   1cb48:	4694      	mov	ip, r2
   1cb4a:	681b      	ldr	r3, [r3, #0]
   1cb4c:	44e2      	add	sl, ip
   1cb4e:	606b      	str	r3, [r5, #4]
   1cb50:	2b00      	cmp	r3, #0
   1cb52:	db00      	blt.n	1cb56 <_vfiprintf_r+0x23e>
   1cb54:	e772      	b.n	1ca3c <_vfiprintf_r+0x124>
   1cb56:	2301      	movs	r3, #1
   1cb58:	425b      	negs	r3, r3
   1cb5a:	606b      	str	r3, [r5, #4]
   1cb5c:	4b29      	ldr	r3, [pc, #164]	; (1cc04 <_vfiprintf_r+0x2ec>)
   1cb5e:	2203      	movs	r2, #3
   1cb60:	0018      	movs	r0, r3
   1cb62:	4699      	mov	r9, r3
   1cb64:	f000 fec4 	bl	1d8f0 <memchr>
   1cb68:	2800      	cmp	r0, #0
   1cb6a:	d000      	beq.n	1cb6e <_vfiprintf_r+0x256>
   1cb6c:	e76f      	b.n	1ca4e <_vfiprintf_r+0x136>
   1cb6e:	46b1      	mov	r9, r6
   1cb70:	4656      	mov	r6, sl
   1cb72:	7831      	ldrb	r1, [r6, #0]
   1cb74:	2206      	movs	r2, #6
   1cb76:	4824      	ldr	r0, [pc, #144]	; (1cc08 <_vfiprintf_r+0x2f0>)
   1cb78:	7629      	strb	r1, [r5, #24]
   1cb7a:	f000 feb9 	bl	1d8f0 <memchr>
   1cb7e:	2800      	cmp	r0, #0
   1cb80:	d000      	beq.n	1cb84 <_vfiprintf_r+0x26c>
   1cb82:	e776      	b.n	1ca72 <_vfiprintf_r+0x15a>
   1cb84:	ab07      	add	r3, sp, #28
   1cb86:	9300      	str	r3, [sp, #0]
   1cb88:	9a03      	ldr	r2, [sp, #12]
   1cb8a:	4b21      	ldr	r3, [pc, #132]	; (1cc10 <_vfiprintf_r+0x2f8>)
   1cb8c:	0029      	movs	r1, r5
   1cb8e:	9804      	ldr	r0, [sp, #16]
   1cb90:	f000 f8e4 	bl	1cd5c <_printf_i>
   1cb94:	4683      	mov	fp, r0
   1cb96:	e779      	b.n	1ca8c <_vfiprintf_r+0x174>
   1cb98:	2207      	movs	r2, #7
   1cb9a:	9b07      	ldr	r3, [sp, #28]
   1cb9c:	3307      	adds	r3, #7
   1cb9e:	4393      	bics	r3, r2
   1cba0:	3308      	adds	r3, #8
   1cba2:	9307      	str	r3, [sp, #28]
   1cba4:	e775      	b.n	1ca92 <_vfiprintf_r+0x17a>
   1cba6:	4252      	negs	r2, r2
   1cba8:	60ea      	str	r2, [r5, #12]
   1cbaa:	2202      	movs	r2, #2
   1cbac:	4313      	orrs	r3, r2
   1cbae:	602b      	str	r3, [r5, #0]
   1cbb0:	e73f      	b.n	1ca32 <_vfiprintf_r+0x11a>
   1cbb2:	000a      	movs	r2, r1
   1cbb4:	2300      	movs	r3, #0
   1cbb6:	3a30      	subs	r2, #48	; 0x30
   1cbb8:	606b      	str	r3, [r5, #4]
   1cbba:	0018      	movs	r0, r3
   1cbbc:	2a09      	cmp	r2, #9
   1cbbe:	d901      	bls.n	1cbc4 <_vfiprintf_r+0x2ac>
   1cbc0:	e010      	b.n	1cbe4 <_vfiprintf_r+0x2cc>
   1cbc2:	001e      	movs	r6, r3
   1cbc4:	0083      	lsls	r3, r0, #2
   1cbc6:	181b      	adds	r3, r3, r0
   1cbc8:	7871      	ldrb	r1, [r6, #1]
   1cbca:	005b      	lsls	r3, r3, #1
   1cbcc:	1898      	adds	r0, r3, r2
   1cbce:	000a      	movs	r2, r1
   1cbd0:	3a30      	subs	r2, #48	; 0x30
   1cbd2:	1c73      	adds	r3, r6, #1
   1cbd4:	2a09      	cmp	r2, #9
   1cbd6:	d9f4      	bls.n	1cbc2 <_vfiprintf_r+0x2aa>
   1cbd8:	469a      	mov	sl, r3
   1cbda:	3602      	adds	r6, #2
   1cbdc:	6068      	str	r0, [r5, #4]
   1cbde:	e72d      	b.n	1ca3c <_vfiprintf_r+0x124>
   1cbe0:	464c      	mov	r4, r9
   1cbe2:	e6f3      	b.n	1c9cc <_vfiprintf_r+0xb4>
   1cbe4:	46b2      	mov	sl, r6
   1cbe6:	3601      	adds	r6, #1
   1cbe8:	e728      	b.n	1ca3c <_vfiprintf_r+0x124>
   1cbea:	9b04      	ldr	r3, [sp, #16]
   1cbec:	68db      	ldr	r3, [r3, #12]
   1cbee:	9303      	str	r3, [sp, #12]
   1cbf0:	e6b3      	b.n	1c95a <_vfiprintf_r+0x42>
   1cbf2:	46c0      	nop			; (mov r8, r8)
   1cbf4:	0001e03c 	.word	0x0001e03c
   1cbf8:	0001e01c 	.word	0x0001e01c
   1cbfc:	0001dffc 	.word	0x0001dffc
   1cc00:	0001e05c 	.word	0x0001e05c
   1cc04:	0001e064 	.word	0x0001e064
   1cc08:	0001e068 	.word	0x0001e068
   1cc0c:	00000000 	.word	0x00000000
   1cc10:	0001c8d1 	.word	0x0001c8d1

0001cc14 <vfiprintf>:
   1cc14:	b510      	push	{r4, lr}
   1cc16:	0004      	movs	r4, r0
   1cc18:	0013      	movs	r3, r2
   1cc1a:	4a03      	ldr	r2, [pc, #12]	; (1cc28 <vfiprintf+0x14>)
   1cc1c:	6810      	ldr	r0, [r2, #0]
   1cc1e:	000a      	movs	r2, r1
   1cc20:	0021      	movs	r1, r4
   1cc22:	f7ff fe79 	bl	1c918 <_vfiprintf_r>
   1cc26:	bd10      	pop	{r4, pc}
   1cc28:	200013c8 	.word	0x200013c8

0001cc2c <_printf_common>:
   1cc2c:	b5f0      	push	{r4, r5, r6, r7, lr}
   1cc2e:	464f      	mov	r7, r9
   1cc30:	4646      	mov	r6, r8
   1cc32:	46d6      	mov	lr, sl
   1cc34:	b5c0      	push	{r6, r7, lr}
   1cc36:	001f      	movs	r7, r3
   1cc38:	9b08      	ldr	r3, [sp, #32]
   1cc3a:	4691      	mov	r9, r2
   1cc3c:	4698      	mov	r8, r3
   1cc3e:	688a      	ldr	r2, [r1, #8]
   1cc40:	690b      	ldr	r3, [r1, #16]
   1cc42:	0006      	movs	r6, r0
   1cc44:	000c      	movs	r4, r1
   1cc46:	4293      	cmp	r3, r2
   1cc48:	da00      	bge.n	1cc4c <_printf_common+0x20>
   1cc4a:	0013      	movs	r3, r2
   1cc4c:	464a      	mov	r2, r9
   1cc4e:	6013      	str	r3, [r2, #0]
   1cc50:	2243      	movs	r2, #67	; 0x43
   1cc52:	5ca2      	ldrb	r2, [r4, r2]
   1cc54:	2a00      	cmp	r2, #0
   1cc56:	d002      	beq.n	1cc5e <_printf_common+0x32>
   1cc58:	464a      	mov	r2, r9
   1cc5a:	3301      	adds	r3, #1
   1cc5c:	6013      	str	r3, [r2, #0]
   1cc5e:	6823      	ldr	r3, [r4, #0]
   1cc60:	069a      	lsls	r2, r3, #26
   1cc62:	d55a      	bpl.n	1cd1a <_printf_common+0xee>
   1cc64:	464b      	mov	r3, r9
   1cc66:	681b      	ldr	r3, [r3, #0]
   1cc68:	2006      	movs	r0, #6
   1cc6a:	1c9a      	adds	r2, r3, #2
   1cc6c:	464b      	mov	r3, r9
   1cc6e:	601a      	str	r2, [r3, #0]
   1cc70:	6823      	ldr	r3, [r4, #0]
   1cc72:	0019      	movs	r1, r3
   1cc74:	4218      	tst	r0, r3
   1cc76:	d108      	bne.n	1cc8a <_printf_common+0x5e>
   1cc78:	68e1      	ldr	r1, [r4, #12]
   1cc7a:	2500      	movs	r5, #0
   1cc7c:	1a8a      	subs	r2, r1, r2
   1cc7e:	2119      	movs	r1, #25
   1cc80:	468a      	mov	sl, r1
   1cc82:	0019      	movs	r1, r3
   1cc84:	44a2      	add	sl, r4
   1cc86:	2a00      	cmp	r2, #0
   1cc88:	dc3f      	bgt.n	1cd0a <_printf_common+0xde>
   1cc8a:	2343      	movs	r3, #67	; 0x43
   1cc8c:	5ce3      	ldrb	r3, [r4, r3]
   1cc8e:	1e5a      	subs	r2, r3, #1
   1cc90:	4193      	sbcs	r3, r2
   1cc92:	068a      	lsls	r2, r1, #26
   1cc94:	d50a      	bpl.n	1ccac <_printf_common+0x80>
   1cc96:	2030      	movs	r0, #48	; 0x30
   1cc98:	18e1      	adds	r1, r4, r3
   1cc9a:	3143      	adds	r1, #67	; 0x43
   1cc9c:	7008      	strb	r0, [r1, #0]
   1cc9e:	2145      	movs	r1, #69	; 0x45
   1cca0:	1c5a      	adds	r2, r3, #1
   1cca2:	5c61      	ldrb	r1, [r4, r1]
   1cca4:	18a2      	adds	r2, r4, r2
   1cca6:	3243      	adds	r2, #67	; 0x43
   1cca8:	3302      	adds	r3, #2
   1ccaa:	7011      	strb	r1, [r2, #0]
   1ccac:	0022      	movs	r2, r4
   1ccae:	0039      	movs	r1, r7
   1ccb0:	3243      	adds	r2, #67	; 0x43
   1ccb2:	0030      	movs	r0, r6
   1ccb4:	47c0      	blx	r8
   1ccb6:	1c43      	adds	r3, r0, #1
   1ccb8:	d019      	beq.n	1ccee <_printf_common+0xc2>
   1ccba:	2306      	movs	r3, #6
   1ccbc:	6820      	ldr	r0, [r4, #0]
   1ccbe:	68a2      	ldr	r2, [r4, #8]
   1ccc0:	6921      	ldr	r1, [r4, #16]
   1ccc2:	4003      	ands	r3, r0
   1ccc4:	2b04      	cmp	r3, #4
   1ccc6:	d030      	beq.n	1cd2a <_printf_common+0xfe>
   1ccc8:	428a      	cmp	r2, r1
   1ccca:	dd3a      	ble.n	1cd42 <_printf_common+0x116>
   1cccc:	2300      	movs	r3, #0
   1ccce:	4699      	mov	r9, r3
   1ccd0:	1a52      	subs	r2, r2, r1
   1ccd2:	4491      	add	r9, r2
   1ccd4:	341a      	adds	r4, #26
   1ccd6:	2500      	movs	r5, #0
   1ccd8:	e002      	b.n	1cce0 <_printf_common+0xb4>
   1ccda:	3501      	adds	r5, #1
   1ccdc:	454d      	cmp	r5, r9
   1ccde:	da30      	bge.n	1cd42 <_printf_common+0x116>
   1cce0:	2301      	movs	r3, #1
   1cce2:	0022      	movs	r2, r4
   1cce4:	0039      	movs	r1, r7
   1cce6:	0030      	movs	r0, r6
   1cce8:	47c0      	blx	r8
   1ccea:	1c43      	adds	r3, r0, #1
   1ccec:	d1f5      	bne.n	1ccda <_printf_common+0xae>
   1ccee:	2001      	movs	r0, #1
   1ccf0:	4240      	negs	r0, r0
   1ccf2:	bc1c      	pop	{r2, r3, r4}
   1ccf4:	4690      	mov	r8, r2
   1ccf6:	4699      	mov	r9, r3
   1ccf8:	46a2      	mov	sl, r4
   1ccfa:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1ccfc:	464b      	mov	r3, r9
   1ccfe:	68e2      	ldr	r2, [r4, #12]
   1cd00:	681b      	ldr	r3, [r3, #0]
   1cd02:	3501      	adds	r5, #1
   1cd04:	1ad3      	subs	r3, r2, r3
   1cd06:	42ab      	cmp	r3, r5
   1cd08:	dd20      	ble.n	1cd4c <_printf_common+0x120>
   1cd0a:	2301      	movs	r3, #1
   1cd0c:	4652      	mov	r2, sl
   1cd0e:	0039      	movs	r1, r7
   1cd10:	0030      	movs	r0, r6
   1cd12:	47c0      	blx	r8
   1cd14:	1c43      	adds	r3, r0, #1
   1cd16:	d1f1      	bne.n	1ccfc <_printf_common+0xd0>
   1cd18:	e7e9      	b.n	1ccee <_printf_common+0xc2>
   1cd1a:	2206      	movs	r2, #6
   1cd1c:	421a      	tst	r2, r3
   1cd1e:	d012      	beq.n	1cd46 <_printf_common+0x11a>
   1cd20:	2343      	movs	r3, #67	; 0x43
   1cd22:	5ce3      	ldrb	r3, [r4, r3]
   1cd24:	1e5a      	subs	r2, r3, #1
   1cd26:	4193      	sbcs	r3, r2
   1cd28:	e7c0      	b.n	1ccac <_printf_common+0x80>
   1cd2a:	464b      	mov	r3, r9
   1cd2c:	68e0      	ldr	r0, [r4, #12]
   1cd2e:	681b      	ldr	r3, [r3, #0]
   1cd30:	1ac3      	subs	r3, r0, r3
   1cd32:	43d8      	mvns	r0, r3
   1cd34:	17c0      	asrs	r0, r0, #31
   1cd36:	4018      	ands	r0, r3
   1cd38:	4681      	mov	r9, r0
   1cd3a:	428a      	cmp	r2, r1
   1cd3c:	dcc8      	bgt.n	1ccd0 <_printf_common+0xa4>
   1cd3e:	2b00      	cmp	r3, #0
   1cd40:	dcc8      	bgt.n	1ccd4 <_printf_common+0xa8>
   1cd42:	2000      	movs	r0, #0
   1cd44:	e7d5      	b.n	1ccf2 <_printf_common+0xc6>
   1cd46:	464a      	mov	r2, r9
   1cd48:	6812      	ldr	r2, [r2, #0]
   1cd4a:	e795      	b.n	1cc78 <_printf_common+0x4c>
   1cd4c:	2343      	movs	r3, #67	; 0x43
   1cd4e:	6821      	ldr	r1, [r4, #0]
   1cd50:	5ce3      	ldrb	r3, [r4, r3]
   1cd52:	1e5a      	subs	r2, r3, #1
   1cd54:	4193      	sbcs	r3, r2
   1cd56:	068a      	lsls	r2, r1, #26
   1cd58:	d49d      	bmi.n	1cc96 <_printf_common+0x6a>
   1cd5a:	e7a7      	b.n	1ccac <_printf_common+0x80>

0001cd5c <_printf_i>:
   1cd5c:	b5f0      	push	{r4, r5, r6, r7, lr}
   1cd5e:	4657      	mov	r7, sl
   1cd60:	469a      	mov	sl, r3
   1cd62:	2343      	movs	r3, #67	; 0x43
   1cd64:	469c      	mov	ip, r3
   1cd66:	464e      	mov	r6, r9
   1cd68:	4645      	mov	r5, r8
   1cd6a:	46de      	mov	lr, fp
   1cd6c:	448c      	add	ip, r1
   1cd6e:	4663      	mov	r3, ip
   1cd70:	b5e0      	push	{r5, r6, r7, lr}
   1cd72:	b087      	sub	sp, #28
   1cd74:	9303      	str	r3, [sp, #12]
   1cd76:	7e0b      	ldrb	r3, [r1, #24]
   1cd78:	4691      	mov	r9, r2
   1cd7a:	4680      	mov	r8, r0
   1cd7c:	000c      	movs	r4, r1
   1cd7e:	9a10      	ldr	r2, [sp, #64]	; 0x40
   1cd80:	2b6e      	cmp	r3, #110	; 0x6e
   1cd82:	d100      	bne.n	1cd86 <_printf_i+0x2a>
   1cd84:	e0d8      	b.n	1cf38 <_printf_i+0x1dc>
   1cd86:	d800      	bhi.n	1cd8a <_printf_i+0x2e>
   1cd88:	e071      	b.n	1ce6e <_printf_i+0x112>
   1cd8a:	2b73      	cmp	r3, #115	; 0x73
   1cd8c:	d100      	bne.n	1cd90 <_printf_i+0x34>
   1cd8e:	e11a      	b.n	1cfc6 <_printf_i+0x26a>
   1cd90:	d800      	bhi.n	1cd94 <_printf_i+0x38>
   1cd92:	e081      	b.n	1ce98 <_printf_i+0x13c>
   1cd94:	2b75      	cmp	r3, #117	; 0x75
   1cd96:	d100      	bne.n	1cd9a <_printf_i+0x3e>
   1cd98:	e0ff      	b.n	1cf9a <_printf_i+0x23e>
   1cd9a:	2b78      	cmp	r3, #120	; 0x78
   1cd9c:	d000      	beq.n	1cda0 <_printf_i+0x44>
   1cd9e:	e10b      	b.n	1cfb8 <_printf_i+0x25c>
   1cda0:	680b      	ldr	r3, [r1, #0]
   1cda2:	2078      	movs	r0, #120	; 0x78
   1cda4:	2145      	movs	r1, #69	; 0x45
   1cda6:	5460      	strb	r0, [r4, r1]
   1cda8:	4994      	ldr	r1, [pc, #592]	; (1cffc <_printf_i+0x2a0>)
   1cdaa:	468b      	mov	fp, r1
   1cdac:	6811      	ldr	r1, [r2, #0]
   1cdae:	c940      	ldmia	r1!, {r6}
   1cdb0:	6011      	str	r1, [r2, #0]
   1cdb2:	0618      	lsls	r0, r3, #24
   1cdb4:	d403      	bmi.n	1cdbe <_printf_i+0x62>
   1cdb6:	0658      	lsls	r0, r3, #25
   1cdb8:	d501      	bpl.n	1cdbe <_printf_i+0x62>
   1cdba:	0436      	lsls	r6, r6, #16
   1cdbc:	0c36      	lsrs	r6, r6, #16
   1cdbe:	07da      	lsls	r2, r3, #31
   1cdc0:	d502      	bpl.n	1cdc8 <_printf_i+0x6c>
   1cdc2:	2220      	movs	r2, #32
   1cdc4:	4313      	orrs	r3, r2
   1cdc6:	6023      	str	r3, [r4, #0]
   1cdc8:	2710      	movs	r7, #16
   1cdca:	2e00      	cmp	r6, #0
   1cdcc:	d100      	bne.n	1cdd0 <_printf_i+0x74>
   1cdce:	e0c2      	b.n	1cf56 <_printf_i+0x1fa>
   1cdd0:	2343      	movs	r3, #67	; 0x43
   1cdd2:	2200      	movs	r2, #0
   1cdd4:	54e2      	strb	r2, [r4, r3]
   1cdd6:	6863      	ldr	r3, [r4, #4]
   1cdd8:	60a3      	str	r3, [r4, #8]
   1cdda:	2b00      	cmp	r3, #0
   1cddc:	da00      	bge.n	1cde0 <_printf_i+0x84>
   1cdde:	e0c5      	b.n	1cf6c <_printf_i+0x210>
   1cde0:	2204      	movs	r2, #4
   1cde2:	6821      	ldr	r1, [r4, #0]
   1cde4:	4391      	bics	r1, r2
   1cde6:	6021      	str	r1, [r4, #0]
   1cde8:	2e00      	cmp	r6, #0
   1cdea:	d000      	beq.n	1cdee <_printf_i+0x92>
   1cdec:	e083      	b.n	1cef6 <_printf_i+0x19a>
   1cdee:	2b00      	cmp	r3, #0
   1cdf0:	d000      	beq.n	1cdf4 <_printf_i+0x98>
   1cdf2:	e0bd      	b.n	1cf70 <_printf_i+0x214>
   1cdf4:	9d03      	ldr	r5, [sp, #12]
   1cdf6:	2f08      	cmp	r7, #8
   1cdf8:	d100      	bne.n	1cdfc <_printf_i+0xa0>
   1cdfa:	e08c      	b.n	1cf16 <_printf_i+0x1ba>
   1cdfc:	9b03      	ldr	r3, [sp, #12]
   1cdfe:	1b5b      	subs	r3, r3, r5
   1ce00:	6123      	str	r3, [r4, #16]
   1ce02:	4653      	mov	r3, sl
   1ce04:	aa05      	add	r2, sp, #20
   1ce06:	9300      	str	r3, [sp, #0]
   1ce08:	0021      	movs	r1, r4
   1ce0a:	464b      	mov	r3, r9
   1ce0c:	4640      	mov	r0, r8
   1ce0e:	f7ff ff0d 	bl	1cc2c <_printf_common>
   1ce12:	1c43      	adds	r3, r0, #1
   1ce14:	d022      	beq.n	1ce5c <_printf_i+0x100>
   1ce16:	6923      	ldr	r3, [r4, #16]
   1ce18:	002a      	movs	r2, r5
   1ce1a:	4649      	mov	r1, r9
   1ce1c:	4640      	mov	r0, r8
   1ce1e:	47d0      	blx	sl
   1ce20:	1c43      	adds	r3, r0, #1
   1ce22:	d01b      	beq.n	1ce5c <_printf_i+0x100>
   1ce24:	6822      	ldr	r2, [r4, #0]
   1ce26:	9805      	ldr	r0, [sp, #20]
   1ce28:	68e3      	ldr	r3, [r4, #12]
   1ce2a:	0792      	lsls	r2, r2, #30
   1ce2c:	d400      	bmi.n	1ce30 <_printf_i+0xd4>
   1ce2e:	e07f      	b.n	1cf30 <_printf_i+0x1d4>
   1ce30:	1a1a      	subs	r2, r3, r0
   1ce32:	2a00      	cmp	r2, #0
   1ce34:	dc00      	bgt.n	1ce38 <_printf_i+0xdc>
   1ce36:	e07b      	b.n	1cf30 <_printf_i+0x1d4>
   1ce38:	0026      	movs	r6, r4
   1ce3a:	2500      	movs	r5, #0
   1ce3c:	3619      	adds	r6, #25
   1ce3e:	e006      	b.n	1ce4e <_printf_i+0xf2>
   1ce40:	68e3      	ldr	r3, [r4, #12]
   1ce42:	9805      	ldr	r0, [sp, #20]
   1ce44:	3501      	adds	r5, #1
   1ce46:	1a1a      	subs	r2, r3, r0
   1ce48:	42aa      	cmp	r2, r5
   1ce4a:	dc00      	bgt.n	1ce4e <_printf_i+0xf2>
   1ce4c:	e070      	b.n	1cf30 <_printf_i+0x1d4>
   1ce4e:	2301      	movs	r3, #1
   1ce50:	0032      	movs	r2, r6
   1ce52:	4649      	mov	r1, r9
   1ce54:	4640      	mov	r0, r8
   1ce56:	47d0      	blx	sl
   1ce58:	1c43      	adds	r3, r0, #1
   1ce5a:	d1f1      	bne.n	1ce40 <_printf_i+0xe4>
   1ce5c:	2001      	movs	r0, #1
   1ce5e:	4240      	negs	r0, r0
   1ce60:	b007      	add	sp, #28
   1ce62:	bc3c      	pop	{r2, r3, r4, r5}
   1ce64:	4690      	mov	r8, r2
   1ce66:	4699      	mov	r9, r3
   1ce68:	46a2      	mov	sl, r4
   1ce6a:	46ab      	mov	fp, r5
   1ce6c:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1ce6e:	2b63      	cmp	r3, #99	; 0x63
   1ce70:	d100      	bne.n	1ce74 <_printf_i+0x118>
   1ce72:	e084      	b.n	1cf7e <_printf_i+0x222>
   1ce74:	d81f      	bhi.n	1ceb6 <_printf_i+0x15a>
   1ce76:	2b00      	cmp	r3, #0
   1ce78:	d069      	beq.n	1cf4e <_printf_i+0x1f2>
   1ce7a:	2b58      	cmp	r3, #88	; 0x58
   1ce7c:	d000      	beq.n	1ce80 <_printf_i+0x124>
   1ce7e:	e09b      	b.n	1cfb8 <_printf_i+0x25c>
   1ce80:	2145      	movs	r1, #69	; 0x45
   1ce82:	5463      	strb	r3, [r4, r1]
   1ce84:	495e      	ldr	r1, [pc, #376]	; (1d000 <_printf_i+0x2a4>)
   1ce86:	6823      	ldr	r3, [r4, #0]
   1ce88:	468b      	mov	fp, r1
   1ce8a:	6811      	ldr	r1, [r2, #0]
   1ce8c:	c940      	ldmia	r1!, {r6}
   1ce8e:	6011      	str	r1, [r2, #0]
   1ce90:	0618      	lsls	r0, r3, #24
   1ce92:	d400      	bmi.n	1ce96 <_printf_i+0x13a>
   1ce94:	e78f      	b.n	1cdb6 <_printf_i+0x5a>
   1ce96:	e792      	b.n	1cdbe <_printf_i+0x62>
   1ce98:	2b6f      	cmp	r3, #111	; 0x6f
   1ce9a:	d07e      	beq.n	1cf9a <_printf_i+0x23e>
   1ce9c:	2b70      	cmp	r3, #112	; 0x70
   1ce9e:	d000      	beq.n	1cea2 <_printf_i+0x146>
   1cea0:	e08a      	b.n	1cfb8 <_printf_i+0x25c>
   1cea2:	2320      	movs	r3, #32
   1cea4:	6809      	ldr	r1, [r1, #0]
   1cea6:	2078      	movs	r0, #120	; 0x78
   1cea8:	430b      	orrs	r3, r1
   1ceaa:	2145      	movs	r1, #69	; 0x45
   1ceac:	6023      	str	r3, [r4, #0]
   1ceae:	5460      	strb	r0, [r4, r1]
   1ceb0:	4952      	ldr	r1, [pc, #328]	; (1cffc <_printf_i+0x2a0>)
   1ceb2:	468b      	mov	fp, r1
   1ceb4:	e77a      	b.n	1cdac <_printf_i+0x50>
   1ceb6:	2b64      	cmp	r3, #100	; 0x64
   1ceb8:	d001      	beq.n	1cebe <_printf_i+0x162>
   1ceba:	2b69      	cmp	r3, #105	; 0x69
   1cebc:	d17c      	bne.n	1cfb8 <_printf_i+0x25c>
   1cebe:	6811      	ldr	r1, [r2, #0]
   1cec0:	6823      	ldr	r3, [r4, #0]
   1cec2:	1d08      	adds	r0, r1, #4
   1cec4:	6010      	str	r0, [r2, #0]
   1cec6:	061d      	lsls	r5, r3, #24
   1cec8:	d54a      	bpl.n	1cf60 <_printf_i+0x204>
   1ceca:	680a      	ldr	r2, [r1, #0]
   1cecc:	0016      	movs	r6, r2
   1cece:	2a00      	cmp	r2, #0
   1ced0:	db03      	blt.n	1ceda <_printf_i+0x17e>
   1ced2:	4b4b      	ldr	r3, [pc, #300]	; (1d000 <_printf_i+0x2a4>)
   1ced4:	270a      	movs	r7, #10
   1ced6:	469b      	mov	fp, r3
   1ced8:	e77d      	b.n	1cdd6 <_printf_i+0x7a>
   1ceda:	2243      	movs	r2, #67	; 0x43
   1cedc:	212d      	movs	r1, #45	; 0x2d
   1cede:	54a1      	strb	r1, [r4, r2]
   1cee0:	6862      	ldr	r2, [r4, #4]
   1cee2:	4276      	negs	r6, r6
   1cee4:	60a2      	str	r2, [r4, #8]
   1cee6:	2a00      	cmp	r2, #0
   1cee8:	db02      	blt.n	1cef0 <_printf_i+0x194>
   1ceea:	2204      	movs	r2, #4
   1ceec:	4393      	bics	r3, r2
   1ceee:	6023      	str	r3, [r4, #0]
   1cef0:	4b43      	ldr	r3, [pc, #268]	; (1d000 <_printf_i+0x2a4>)
   1cef2:	270a      	movs	r7, #10
   1cef4:	469b      	mov	fp, r3
   1cef6:	9d03      	ldr	r5, [sp, #12]
   1cef8:	e000      	b.n	1cefc <_printf_i+0x1a0>
   1cefa:	0006      	movs	r6, r0
   1cefc:	0039      	movs	r1, r7
   1cefe:	0030      	movs	r0, r6
   1cf00:	f000 fee0 	bl	1dcc4 <__aeabi_uidivmod>
   1cf04:	465b      	mov	r3, fp
   1cf06:	5c5b      	ldrb	r3, [r3, r1]
   1cf08:	3d01      	subs	r5, #1
   1cf0a:	702b      	strb	r3, [r5, #0]
   1cf0c:	42be      	cmp	r6, r7
   1cf0e:	d2f4      	bcs.n	1cefa <_printf_i+0x19e>
   1cf10:	2f08      	cmp	r7, #8
   1cf12:	d000      	beq.n	1cf16 <_printf_i+0x1ba>
   1cf14:	e772      	b.n	1cdfc <_printf_i+0xa0>
   1cf16:	6823      	ldr	r3, [r4, #0]
   1cf18:	07db      	lsls	r3, r3, #31
   1cf1a:	d400      	bmi.n	1cf1e <_printf_i+0x1c2>
   1cf1c:	e76e      	b.n	1cdfc <_printf_i+0xa0>
   1cf1e:	6863      	ldr	r3, [r4, #4]
   1cf20:	6922      	ldr	r2, [r4, #16]
   1cf22:	4293      	cmp	r3, r2
   1cf24:	dd00      	ble.n	1cf28 <_printf_i+0x1cc>
   1cf26:	e769      	b.n	1cdfc <_printf_i+0xa0>
   1cf28:	2330      	movs	r3, #48	; 0x30
   1cf2a:	3d01      	subs	r5, #1
   1cf2c:	702b      	strb	r3, [r5, #0]
   1cf2e:	e765      	b.n	1cdfc <_printf_i+0xa0>
   1cf30:	4298      	cmp	r0, r3
   1cf32:	da95      	bge.n	1ce60 <_printf_i+0x104>
   1cf34:	0018      	movs	r0, r3
   1cf36:	e793      	b.n	1ce60 <_printf_i+0x104>
   1cf38:	6813      	ldr	r3, [r2, #0]
   1cf3a:	6809      	ldr	r1, [r1, #0]
   1cf3c:	1d1d      	adds	r5, r3, #4
   1cf3e:	6960      	ldr	r0, [r4, #20]
   1cf40:	6015      	str	r5, [r2, #0]
   1cf42:	681b      	ldr	r3, [r3, #0]
   1cf44:	060e      	lsls	r6, r1, #24
   1cf46:	d401      	bmi.n	1cf4c <_printf_i+0x1f0>
   1cf48:	0649      	lsls	r1, r1, #25
   1cf4a:	d44b      	bmi.n	1cfe4 <_printf_i+0x288>
   1cf4c:	6018      	str	r0, [r3, #0]
   1cf4e:	2300      	movs	r3, #0
   1cf50:	9d03      	ldr	r5, [sp, #12]
   1cf52:	6123      	str	r3, [r4, #16]
   1cf54:	e755      	b.n	1ce02 <_printf_i+0xa6>
   1cf56:	2320      	movs	r3, #32
   1cf58:	6822      	ldr	r2, [r4, #0]
   1cf5a:	439a      	bics	r2, r3
   1cf5c:	6022      	str	r2, [r4, #0]
   1cf5e:	e737      	b.n	1cdd0 <_printf_i+0x74>
   1cf60:	065d      	lsls	r5, r3, #25
   1cf62:	d5b2      	bpl.n	1ceca <_printf_i+0x16e>
   1cf64:	2200      	movs	r2, #0
   1cf66:	5e8e      	ldrsh	r6, [r1, r2]
   1cf68:	0032      	movs	r2, r6
   1cf6a:	e7b0      	b.n	1cece <_printf_i+0x172>
   1cf6c:	2e00      	cmp	r6, #0
   1cf6e:	d1c2      	bne.n	1cef6 <_printf_i+0x19a>
   1cf70:	465b      	mov	r3, fp
   1cf72:	0025      	movs	r5, r4
   1cf74:	781a      	ldrb	r2, [r3, #0]
   1cf76:	2342      	movs	r3, #66	; 0x42
   1cf78:	3542      	adds	r5, #66	; 0x42
   1cf7a:	54e2      	strb	r2, [r4, r3]
   1cf7c:	e73b      	b.n	1cdf6 <_printf_i+0x9a>
   1cf7e:	6813      	ldr	r3, [r2, #0]
   1cf80:	0025      	movs	r5, r4
   1cf82:	1d19      	adds	r1, r3, #4
   1cf84:	6011      	str	r1, [r2, #0]
   1cf86:	681a      	ldr	r2, [r3, #0]
   1cf88:	2342      	movs	r3, #66	; 0x42
   1cf8a:	54e2      	strb	r2, [r4, r3]
   1cf8c:	3b41      	subs	r3, #65	; 0x41
   1cf8e:	3542      	adds	r5, #66	; 0x42
   1cf90:	6123      	str	r3, [r4, #16]
   1cf92:	2343      	movs	r3, #67	; 0x43
   1cf94:	2200      	movs	r2, #0
   1cf96:	54e2      	strb	r2, [r4, r3]
   1cf98:	e733      	b.n	1ce02 <_printf_i+0xa6>
   1cf9a:	6811      	ldr	r1, [r2, #0]
   1cf9c:	6820      	ldr	r0, [r4, #0]
   1cf9e:	1d0d      	adds	r5, r1, #4
   1cfa0:	6015      	str	r5, [r2, #0]
   1cfa2:	0606      	lsls	r6, r0, #24
   1cfa4:	d401      	bmi.n	1cfaa <_printf_i+0x24e>
   1cfa6:	0640      	lsls	r0, r0, #25
   1cfa8:	d41e      	bmi.n	1cfe8 <_printf_i+0x28c>
   1cfaa:	680e      	ldr	r6, [r1, #0]
   1cfac:	2b6f      	cmp	r3, #111	; 0x6f
   1cfae:	d01d      	beq.n	1cfec <_printf_i+0x290>
   1cfb0:	4b13      	ldr	r3, [pc, #76]	; (1d000 <_printf_i+0x2a4>)
   1cfb2:	270a      	movs	r7, #10
   1cfb4:	469b      	mov	fp, r3
   1cfb6:	e70b      	b.n	1cdd0 <_printf_i+0x74>
   1cfb8:	2242      	movs	r2, #66	; 0x42
   1cfba:	0025      	movs	r5, r4
   1cfbc:	54a3      	strb	r3, [r4, r2]
   1cfbe:	2301      	movs	r3, #1
   1cfc0:	3542      	adds	r5, #66	; 0x42
   1cfc2:	6123      	str	r3, [r4, #16]
   1cfc4:	e7e5      	b.n	1cf92 <_printf_i+0x236>
   1cfc6:	6813      	ldr	r3, [r2, #0]
   1cfc8:	1d19      	adds	r1, r3, #4
   1cfca:	6011      	str	r1, [r2, #0]
   1cfcc:	681d      	ldr	r5, [r3, #0]
   1cfce:	6862      	ldr	r2, [r4, #4]
   1cfd0:	2100      	movs	r1, #0
   1cfd2:	0028      	movs	r0, r5
   1cfd4:	f000 fc8c 	bl	1d8f0 <memchr>
   1cfd8:	2800      	cmp	r0, #0
   1cfda:	d00b      	beq.n	1cff4 <_printf_i+0x298>
   1cfdc:	1b40      	subs	r0, r0, r5
   1cfde:	6060      	str	r0, [r4, #4]
   1cfe0:	6120      	str	r0, [r4, #16]
   1cfe2:	e7d6      	b.n	1cf92 <_printf_i+0x236>
   1cfe4:	8018      	strh	r0, [r3, #0]
   1cfe6:	e7b2      	b.n	1cf4e <_printf_i+0x1f2>
   1cfe8:	880e      	ldrh	r6, [r1, #0]
   1cfea:	e7df      	b.n	1cfac <_printf_i+0x250>
   1cfec:	4b04      	ldr	r3, [pc, #16]	; (1d000 <_printf_i+0x2a4>)
   1cfee:	2708      	movs	r7, #8
   1cff0:	469b      	mov	fp, r3
   1cff2:	e6ed      	b.n	1cdd0 <_printf_i+0x74>
   1cff4:	6860      	ldr	r0, [r4, #4]
   1cff6:	6120      	str	r0, [r4, #16]
   1cff8:	e7cb      	b.n	1cf92 <_printf_i+0x236>
   1cffa:	46c0      	nop			; (mov r8, r8)
   1cffc:	0001e084 	.word	0x0001e084
   1d000:	0001e070 	.word	0x0001e070

0001d004 <_sbrk_r>:
   1d004:	2300      	movs	r3, #0
   1d006:	b570      	push	{r4, r5, r6, lr}
   1d008:	4c06      	ldr	r4, [pc, #24]	; (1d024 <_sbrk_r+0x20>)
   1d00a:	0005      	movs	r5, r0
   1d00c:	0008      	movs	r0, r1
   1d00e:	6023      	str	r3, [r4, #0]
   1d010:	f000 ff70 	bl	1def4 <_sbrk>
   1d014:	1c43      	adds	r3, r0, #1
   1d016:	d000      	beq.n	1d01a <_sbrk_r+0x16>
   1d018:	bd70      	pop	{r4, r5, r6, pc}
   1d01a:	6823      	ldr	r3, [r4, #0]
   1d01c:	2b00      	cmp	r3, #0
   1d01e:	d0fb      	beq.n	1d018 <_sbrk_r+0x14>
   1d020:	602b      	str	r3, [r5, #0]
   1d022:	e7f9      	b.n	1d018 <_sbrk_r+0x14>
   1d024:	20001b64 	.word	0x20001b64

0001d028 <__sread>:
   1d028:	b570      	push	{r4, r5, r6, lr}
   1d02a:	000c      	movs	r4, r1
   1d02c:	250e      	movs	r5, #14
   1d02e:	5f49      	ldrsh	r1, [r1, r5]
   1d030:	f000 fd7e 	bl	1db30 <_read_r>
   1d034:	2800      	cmp	r0, #0
   1d036:	db03      	blt.n	1d040 <__sread+0x18>
   1d038:	6d63      	ldr	r3, [r4, #84]	; 0x54
   1d03a:	181b      	adds	r3, r3, r0
   1d03c:	6563      	str	r3, [r4, #84]	; 0x54
   1d03e:	bd70      	pop	{r4, r5, r6, pc}
   1d040:	89a3      	ldrh	r3, [r4, #12]
   1d042:	4a02      	ldr	r2, [pc, #8]	; (1d04c <__sread+0x24>)
   1d044:	4013      	ands	r3, r2
   1d046:	81a3      	strh	r3, [r4, #12]
   1d048:	e7f9      	b.n	1d03e <__sread+0x16>
   1d04a:	46c0      	nop			; (mov r8, r8)
   1d04c:	ffffefff 	.word	0xffffefff

0001d050 <__seofread>:
   1d050:	2000      	movs	r0, #0
   1d052:	4770      	bx	lr

0001d054 <__swrite>:
   1d054:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1d056:	0016      	movs	r6, r2
   1d058:	001f      	movs	r7, r3
   1d05a:	220c      	movs	r2, #12
   1d05c:	5e8b      	ldrsh	r3, [r1, r2]
   1d05e:	000c      	movs	r4, r1
   1d060:	0005      	movs	r5, r0
   1d062:	220e      	movs	r2, #14
   1d064:	5e89      	ldrsh	r1, [r1, r2]
   1d066:	05da      	lsls	r2, r3, #23
   1d068:	d408      	bmi.n	1d07c <__swrite+0x28>
   1d06a:	4a09      	ldr	r2, [pc, #36]	; (1d090 <__swrite+0x3c>)
   1d06c:	0028      	movs	r0, r5
   1d06e:	4013      	ands	r3, r2
   1d070:	81a3      	strh	r3, [r4, #12]
   1d072:	0032      	movs	r2, r6
   1d074:	003b      	movs	r3, r7
   1d076:	f000 f89f 	bl	1d1b8 <_write_r>
   1d07a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   1d07c:	2200      	movs	r2, #0
   1d07e:	2302      	movs	r3, #2
   1d080:	f000 fbb2 	bl	1d7e8 <_lseek_r>
   1d084:	220c      	movs	r2, #12
   1d086:	5ea3      	ldrsh	r3, [r4, r2]
   1d088:	220e      	movs	r2, #14
   1d08a:	5ea1      	ldrsh	r1, [r4, r2]
   1d08c:	e7ed      	b.n	1d06a <__swrite+0x16>
   1d08e:	46c0      	nop			; (mov r8, r8)
   1d090:	ffffefff 	.word	0xffffefff

0001d094 <__sseek>:
   1d094:	b570      	push	{r4, r5, r6, lr}
   1d096:	000c      	movs	r4, r1
   1d098:	250e      	movs	r5, #14
   1d09a:	5f49      	ldrsh	r1, [r1, r5]
   1d09c:	f000 fba4 	bl	1d7e8 <_lseek_r>
   1d0a0:	1c43      	adds	r3, r0, #1
   1d0a2:	d006      	beq.n	1d0b2 <__sseek+0x1e>
   1d0a4:	2380      	movs	r3, #128	; 0x80
   1d0a6:	89a2      	ldrh	r2, [r4, #12]
   1d0a8:	015b      	lsls	r3, r3, #5
   1d0aa:	4313      	orrs	r3, r2
   1d0ac:	81a3      	strh	r3, [r4, #12]
   1d0ae:	6560      	str	r0, [r4, #84]	; 0x54
   1d0b0:	bd70      	pop	{r4, r5, r6, pc}
   1d0b2:	89a3      	ldrh	r3, [r4, #12]
   1d0b4:	4a01      	ldr	r2, [pc, #4]	; (1d0bc <__sseek+0x28>)
   1d0b6:	4013      	ands	r3, r2
   1d0b8:	81a3      	strh	r3, [r4, #12]
   1d0ba:	e7f9      	b.n	1d0b0 <__sseek+0x1c>
   1d0bc:	ffffefff 	.word	0xffffefff

0001d0c0 <__sclose>:
   1d0c0:	b510      	push	{r4, lr}
   1d0c2:	230e      	movs	r3, #14
   1d0c4:	5ec9      	ldrsh	r1, [r1, r3]
   1d0c6:	f000 f911 	bl	1d2ec <_close_r>
   1d0ca:	bd10      	pop	{r4, pc}

0001d0cc <__swbuf_r>:
   1d0cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1d0ce:	0005      	movs	r5, r0
   1d0d0:	000e      	movs	r6, r1
   1d0d2:	0014      	movs	r4, r2
   1d0d4:	2800      	cmp	r0, #0
   1d0d6:	d002      	beq.n	1d0de <__swbuf_r+0x12>
   1d0d8:	6983      	ldr	r3, [r0, #24]
   1d0da:	2b00      	cmp	r3, #0
   1d0dc:	d029      	beq.n	1d132 <__swbuf_r+0x66>
   1d0de:	4b2d      	ldr	r3, [pc, #180]	; (1d194 <__swbuf_r+0xc8>)
   1d0e0:	429c      	cmp	r4, r3
   1d0e2:	d02b      	beq.n	1d13c <__swbuf_r+0x70>
   1d0e4:	4b2c      	ldr	r3, [pc, #176]	; (1d198 <__swbuf_r+0xcc>)
   1d0e6:	429c      	cmp	r4, r3
   1d0e8:	d046      	beq.n	1d178 <__swbuf_r+0xac>
   1d0ea:	4b2c      	ldr	r3, [pc, #176]	; (1d19c <__swbuf_r+0xd0>)
   1d0ec:	429c      	cmp	r4, r3
   1d0ee:	d04e      	beq.n	1d18e <__swbuf_r+0xc2>
   1d0f0:	69a3      	ldr	r3, [r4, #24]
   1d0f2:	60a3      	str	r3, [r4, #8]
   1d0f4:	89a3      	ldrh	r3, [r4, #12]
   1d0f6:	071b      	lsls	r3, r3, #28
   1d0f8:	d526      	bpl.n	1d148 <__swbuf_r+0x7c>
   1d0fa:	6923      	ldr	r3, [r4, #16]
   1d0fc:	2b00      	cmp	r3, #0
   1d0fe:	d023      	beq.n	1d148 <__swbuf_r+0x7c>
   1d100:	22ff      	movs	r2, #255	; 0xff
   1d102:	b2f7      	uxtb	r7, r6
   1d104:	6961      	ldr	r1, [r4, #20]
   1d106:	4016      	ands	r6, r2
   1d108:	6822      	ldr	r2, [r4, #0]
   1d10a:	1ad3      	subs	r3, r2, r3
   1d10c:	4299      	cmp	r1, r3
   1d10e:	dd2a      	ble.n	1d166 <__swbuf_r+0x9a>
   1d110:	3301      	adds	r3, #1
   1d112:	68a1      	ldr	r1, [r4, #8]
   1d114:	3901      	subs	r1, #1
   1d116:	60a1      	str	r1, [r4, #8]
   1d118:	1c51      	adds	r1, r2, #1
   1d11a:	6021      	str	r1, [r4, #0]
   1d11c:	7017      	strb	r7, [r2, #0]
   1d11e:	6962      	ldr	r2, [r4, #20]
   1d120:	429a      	cmp	r2, r3
   1d122:	d02b      	beq.n	1d17c <__swbuf_r+0xb0>
   1d124:	89a3      	ldrh	r3, [r4, #12]
   1d126:	07db      	lsls	r3, r3, #31
   1d128:	d501      	bpl.n	1d12e <__swbuf_r+0x62>
   1d12a:	2e0a      	cmp	r6, #10
   1d12c:	d026      	beq.n	1d17c <__swbuf_r+0xb0>
   1d12e:	0030      	movs	r0, r6
   1d130:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   1d132:	f7ff fae3 	bl	1c6fc <__sinit>
   1d136:	4b17      	ldr	r3, [pc, #92]	; (1d194 <__swbuf_r+0xc8>)
   1d138:	429c      	cmp	r4, r3
   1d13a:	d1d3      	bne.n	1d0e4 <__swbuf_r+0x18>
   1d13c:	686c      	ldr	r4, [r5, #4]
   1d13e:	69a3      	ldr	r3, [r4, #24]
   1d140:	60a3      	str	r3, [r4, #8]
   1d142:	89a3      	ldrh	r3, [r4, #12]
   1d144:	071b      	lsls	r3, r3, #28
   1d146:	d4d8      	bmi.n	1d0fa <__swbuf_r+0x2e>
   1d148:	0021      	movs	r1, r4
   1d14a:	0028      	movs	r0, r5
   1d14c:	f000 f848 	bl	1d1e0 <__swsetup_r>
   1d150:	2800      	cmp	r0, #0
   1d152:	d119      	bne.n	1d188 <__swbuf_r+0xbc>
   1d154:	22ff      	movs	r2, #255	; 0xff
   1d156:	6923      	ldr	r3, [r4, #16]
   1d158:	b2f7      	uxtb	r7, r6
   1d15a:	6961      	ldr	r1, [r4, #20]
   1d15c:	4016      	ands	r6, r2
   1d15e:	6822      	ldr	r2, [r4, #0]
   1d160:	1ad3      	subs	r3, r2, r3
   1d162:	4299      	cmp	r1, r3
   1d164:	dcd4      	bgt.n	1d110 <__swbuf_r+0x44>
   1d166:	0021      	movs	r1, r4
   1d168:	0028      	movs	r0, r5
   1d16a:	f000 f96b 	bl	1d444 <_fflush_r>
   1d16e:	2800      	cmp	r0, #0
   1d170:	d10a      	bne.n	1d188 <__swbuf_r+0xbc>
   1d172:	6822      	ldr	r2, [r4, #0]
   1d174:	2301      	movs	r3, #1
   1d176:	e7cc      	b.n	1d112 <__swbuf_r+0x46>
   1d178:	68ac      	ldr	r4, [r5, #8]
   1d17a:	e7b9      	b.n	1d0f0 <__swbuf_r+0x24>
   1d17c:	0021      	movs	r1, r4
   1d17e:	0028      	movs	r0, r5
   1d180:	f000 f960 	bl	1d444 <_fflush_r>
   1d184:	2800      	cmp	r0, #0
   1d186:	d0d2      	beq.n	1d12e <__swbuf_r+0x62>
   1d188:	2601      	movs	r6, #1
   1d18a:	4276      	negs	r6, r6
   1d18c:	e7cf      	b.n	1d12e <__swbuf_r+0x62>
   1d18e:	68ec      	ldr	r4, [r5, #12]
   1d190:	e7ae      	b.n	1d0f0 <__swbuf_r+0x24>
   1d192:	46c0      	nop			; (mov r8, r8)
   1d194:	0001e03c 	.word	0x0001e03c
   1d198:	0001e01c 	.word	0x0001e01c
   1d19c:	0001dffc 	.word	0x0001dffc

0001d1a0 <__swbuf>:
   1d1a0:	b510      	push	{r4, lr}
   1d1a2:	4b04      	ldr	r3, [pc, #16]	; (1d1b4 <__swbuf+0x14>)
   1d1a4:	000a      	movs	r2, r1
   1d1a6:	681b      	ldr	r3, [r3, #0]
   1d1a8:	0001      	movs	r1, r0
   1d1aa:	0018      	movs	r0, r3
   1d1ac:	f7ff ff8e 	bl	1d0cc <__swbuf_r>
   1d1b0:	bd10      	pop	{r4, pc}
   1d1b2:	46c0      	nop			; (mov r8, r8)
   1d1b4:	200013c8 	.word	0x200013c8

0001d1b8 <_write_r>:
   1d1b8:	b570      	push	{r4, r5, r6, lr}
   1d1ba:	0005      	movs	r5, r0
   1d1bc:	0008      	movs	r0, r1
   1d1be:	0011      	movs	r1, r2
   1d1c0:	2200      	movs	r2, #0
   1d1c2:	4c06      	ldr	r4, [pc, #24]	; (1d1dc <_write_r+0x24>)
   1d1c4:	6022      	str	r2, [r4, #0]
   1d1c6:	001a      	movs	r2, r3
   1d1c8:	f000 fea2 	bl	1df10 <_write>
   1d1cc:	1c43      	adds	r3, r0, #1
   1d1ce:	d000      	beq.n	1d1d2 <_write_r+0x1a>
   1d1d0:	bd70      	pop	{r4, r5, r6, pc}
   1d1d2:	6823      	ldr	r3, [r4, #0]
   1d1d4:	2b00      	cmp	r3, #0
   1d1d6:	d0fb      	beq.n	1d1d0 <_write_r+0x18>
   1d1d8:	602b      	str	r3, [r5, #0]
   1d1da:	e7f9      	b.n	1d1d0 <_write_r+0x18>
   1d1dc:	20001b64 	.word	0x20001b64

0001d1e0 <__swsetup_r>:
   1d1e0:	4b3e      	ldr	r3, [pc, #248]	; (1d2dc <__swsetup_r+0xfc>)
   1d1e2:	b570      	push	{r4, r5, r6, lr}
   1d1e4:	681d      	ldr	r5, [r3, #0]
   1d1e6:	0006      	movs	r6, r0
   1d1e8:	000c      	movs	r4, r1
   1d1ea:	2d00      	cmp	r5, #0
   1d1ec:	d002      	beq.n	1d1f4 <__swsetup_r+0x14>
   1d1ee:	69ab      	ldr	r3, [r5, #24]
   1d1f0:	2b00      	cmp	r3, #0
   1d1f2:	d01b      	beq.n	1d22c <__swsetup_r+0x4c>
   1d1f4:	4b3a      	ldr	r3, [pc, #232]	; (1d2e0 <__swsetup_r+0x100>)
   1d1f6:	429c      	cmp	r4, r3
   1d1f8:	d01e      	beq.n	1d238 <__swsetup_r+0x58>
   1d1fa:	4b3a      	ldr	r3, [pc, #232]	; (1d2e4 <__swsetup_r+0x104>)
   1d1fc:	429c      	cmp	r4, r3
   1d1fe:	d04c      	beq.n	1d29a <__swsetup_r+0xba>
   1d200:	4b39      	ldr	r3, [pc, #228]	; (1d2e8 <__swsetup_r+0x108>)
   1d202:	429c      	cmp	r4, r3
   1d204:	d060      	beq.n	1d2c8 <__swsetup_r+0xe8>
   1d206:	230c      	movs	r3, #12
   1d208:	5ee2      	ldrsh	r2, [r4, r3]
   1d20a:	b293      	uxth	r3, r2
   1d20c:	0719      	lsls	r1, r3, #28
   1d20e:	d519      	bpl.n	1d244 <__swsetup_r+0x64>
   1d210:	6921      	ldr	r1, [r4, #16]
   1d212:	2900      	cmp	r1, #0
   1d214:	d021      	beq.n	1d25a <__swsetup_r+0x7a>
   1d216:	07da      	lsls	r2, r3, #31
   1d218:	d52e      	bpl.n	1d278 <__swsetup_r+0x98>
   1d21a:	2300      	movs	r3, #0
   1d21c:	60a3      	str	r3, [r4, #8]
   1d21e:	6963      	ldr	r3, [r4, #20]
   1d220:	2000      	movs	r0, #0
   1d222:	425b      	negs	r3, r3
   1d224:	61a3      	str	r3, [r4, #24]
   1d226:	2900      	cmp	r1, #0
   1d228:	d02e      	beq.n	1d288 <__swsetup_r+0xa8>
   1d22a:	bd70      	pop	{r4, r5, r6, pc}
   1d22c:	0028      	movs	r0, r5
   1d22e:	f7ff fa65 	bl	1c6fc <__sinit>
   1d232:	4b2b      	ldr	r3, [pc, #172]	; (1d2e0 <__swsetup_r+0x100>)
   1d234:	429c      	cmp	r4, r3
   1d236:	d1e0      	bne.n	1d1fa <__swsetup_r+0x1a>
   1d238:	686c      	ldr	r4, [r5, #4]
   1d23a:	230c      	movs	r3, #12
   1d23c:	5ee2      	ldrsh	r2, [r4, r3]
   1d23e:	b293      	uxth	r3, r2
   1d240:	0719      	lsls	r1, r3, #28
   1d242:	d4e5      	bmi.n	1d210 <__swsetup_r+0x30>
   1d244:	06d9      	lsls	r1, r3, #27
   1d246:	d541      	bpl.n	1d2cc <__swsetup_r+0xec>
   1d248:	075b      	lsls	r3, r3, #29
   1d24a:	d428      	bmi.n	1d29e <__swsetup_r+0xbe>
   1d24c:	6921      	ldr	r1, [r4, #16]
   1d24e:	2308      	movs	r3, #8
   1d250:	4313      	orrs	r3, r2
   1d252:	81a3      	strh	r3, [r4, #12]
   1d254:	b29b      	uxth	r3, r3
   1d256:	2900      	cmp	r1, #0
   1d258:	d1dd      	bne.n	1d216 <__swsetup_r+0x36>
   1d25a:	22a0      	movs	r2, #160	; 0xa0
   1d25c:	2080      	movs	r0, #128	; 0x80
   1d25e:	0092      	lsls	r2, r2, #2
   1d260:	0080      	lsls	r0, r0, #2
   1d262:	401a      	ands	r2, r3
   1d264:	4282      	cmp	r2, r0
   1d266:	d0d6      	beq.n	1d216 <__swsetup_r+0x36>
   1d268:	0021      	movs	r1, r4
   1d26a:	0030      	movs	r0, r6
   1d26c:	f000 faf8 	bl	1d860 <__smakebuf_r>
   1d270:	89a3      	ldrh	r3, [r4, #12]
   1d272:	6921      	ldr	r1, [r4, #16]
   1d274:	07da      	lsls	r2, r3, #31
   1d276:	d4d0      	bmi.n	1d21a <__swsetup_r+0x3a>
   1d278:	2200      	movs	r2, #0
   1d27a:	079b      	lsls	r3, r3, #30
   1d27c:	d400      	bmi.n	1d280 <__swsetup_r+0xa0>
   1d27e:	6962      	ldr	r2, [r4, #20]
   1d280:	60a2      	str	r2, [r4, #8]
   1d282:	2000      	movs	r0, #0
   1d284:	2900      	cmp	r1, #0
   1d286:	d1d0      	bne.n	1d22a <__swsetup_r+0x4a>
   1d288:	220c      	movs	r2, #12
   1d28a:	5ea3      	ldrsh	r3, [r4, r2]
   1d28c:	061a      	lsls	r2, r3, #24
   1d28e:	d5cc      	bpl.n	1d22a <__swsetup_r+0x4a>
   1d290:	2240      	movs	r2, #64	; 0x40
   1d292:	4313      	orrs	r3, r2
   1d294:	81a3      	strh	r3, [r4, #12]
   1d296:	3801      	subs	r0, #1
   1d298:	e7c7      	b.n	1d22a <__swsetup_r+0x4a>
   1d29a:	68ac      	ldr	r4, [r5, #8]
   1d29c:	e7b3      	b.n	1d206 <__swsetup_r+0x26>
   1d29e:	6b61      	ldr	r1, [r4, #52]	; 0x34
   1d2a0:	2900      	cmp	r1, #0
   1d2a2:	d00a      	beq.n	1d2ba <__swsetup_r+0xda>
   1d2a4:	0023      	movs	r3, r4
   1d2a6:	3344      	adds	r3, #68	; 0x44
   1d2a8:	4299      	cmp	r1, r3
   1d2aa:	d004      	beq.n	1d2b6 <__swsetup_r+0xd6>
   1d2ac:	0030      	movs	r0, r6
   1d2ae:	f000 fbc1 	bl	1da34 <_free_r>
   1d2b2:	230c      	movs	r3, #12
   1d2b4:	5ee2      	ldrsh	r2, [r4, r3]
   1d2b6:	2300      	movs	r3, #0
   1d2b8:	6363      	str	r3, [r4, #52]	; 0x34
   1d2ba:	2324      	movs	r3, #36	; 0x24
   1d2bc:	439a      	bics	r2, r3
   1d2be:	2300      	movs	r3, #0
   1d2c0:	6921      	ldr	r1, [r4, #16]
   1d2c2:	6063      	str	r3, [r4, #4]
   1d2c4:	6021      	str	r1, [r4, #0]
   1d2c6:	e7c2      	b.n	1d24e <__swsetup_r+0x6e>
   1d2c8:	68ec      	ldr	r4, [r5, #12]
   1d2ca:	e79c      	b.n	1d206 <__swsetup_r+0x26>
   1d2cc:	2309      	movs	r3, #9
   1d2ce:	6033      	str	r3, [r6, #0]
   1d2d0:	2340      	movs	r3, #64	; 0x40
   1d2d2:	2001      	movs	r0, #1
   1d2d4:	431a      	orrs	r2, r3
   1d2d6:	81a2      	strh	r2, [r4, #12]
   1d2d8:	4240      	negs	r0, r0
   1d2da:	e7a6      	b.n	1d22a <__swsetup_r+0x4a>
   1d2dc:	200013c8 	.word	0x200013c8
   1d2e0:	0001e03c 	.word	0x0001e03c
   1d2e4:	0001e01c 	.word	0x0001e01c
   1d2e8:	0001dffc 	.word	0x0001dffc

0001d2ec <_close_r>:
   1d2ec:	2300      	movs	r3, #0
   1d2ee:	b570      	push	{r4, r5, r6, lr}
   1d2f0:	4c06      	ldr	r4, [pc, #24]	; (1d30c <_close_r+0x20>)
   1d2f2:	0005      	movs	r5, r0
   1d2f4:	0008      	movs	r0, r1
   1d2f6:	6023      	str	r3, [r4, #0]
   1d2f8:	f000 fdd4 	bl	1dea4 <_close>
   1d2fc:	1c43      	adds	r3, r0, #1
   1d2fe:	d000      	beq.n	1d302 <_close_r+0x16>
   1d300:	bd70      	pop	{r4, r5, r6, pc}
   1d302:	6823      	ldr	r3, [r4, #0]
   1d304:	2b00      	cmp	r3, #0
   1d306:	d0fb      	beq.n	1d300 <_close_r+0x14>
   1d308:	602b      	str	r3, [r5, #0]
   1d30a:	e7f9      	b.n	1d300 <_close_r+0x14>
   1d30c:	20001b64 	.word	0x20001b64

0001d310 <__sflush_r>:
   1d310:	b5f0      	push	{r4, r5, r6, r7, lr}
   1d312:	46c6      	mov	lr, r8
   1d314:	b500      	push	{lr}
   1d316:	898b      	ldrh	r3, [r1, #12]
   1d318:	4680      	mov	r8, r0
   1d31a:	000c      	movs	r4, r1
   1d31c:	071a      	lsls	r2, r3, #28
   1d31e:	d445      	bmi.n	1d3ac <__sflush_r+0x9c>
   1d320:	684a      	ldr	r2, [r1, #4]
   1d322:	2a00      	cmp	r2, #0
   1d324:	dd63      	ble.n	1d3ee <__sflush_r+0xde>
   1d326:	6ae5      	ldr	r5, [r4, #44]	; 0x2c
   1d328:	2d00      	cmp	r5, #0
   1d32a:	d03b      	beq.n	1d3a4 <__sflush_r+0x94>
   1d32c:	4642      	mov	r2, r8
   1d32e:	4641      	mov	r1, r8
   1d330:	6816      	ldr	r6, [r2, #0]
   1d332:	2200      	movs	r2, #0
   1d334:	600a      	str	r2, [r1, #0]
   1d336:	6a21      	ldr	r1, [r4, #32]
   1d338:	04da      	lsls	r2, r3, #19
   1d33a:	d45c      	bmi.n	1d3f6 <__sflush_r+0xe6>
   1d33c:	2301      	movs	r3, #1
   1d33e:	2200      	movs	r2, #0
   1d340:	4640      	mov	r0, r8
   1d342:	47a8      	blx	r5
   1d344:	1c43      	adds	r3, r0, #1
   1d346:	d061      	beq.n	1d40c <__sflush_r+0xfc>
   1d348:	89a3      	ldrh	r3, [r4, #12]
   1d34a:	6ae5      	ldr	r5, [r4, #44]	; 0x2c
   1d34c:	6a21      	ldr	r1, [r4, #32]
   1d34e:	075b      	lsls	r3, r3, #29
   1d350:	d506      	bpl.n	1d360 <__sflush_r+0x50>
   1d352:	6863      	ldr	r3, [r4, #4]
   1d354:	1ac0      	subs	r0, r0, r3
   1d356:	6b63      	ldr	r3, [r4, #52]	; 0x34
   1d358:	2b00      	cmp	r3, #0
   1d35a:	d001      	beq.n	1d360 <__sflush_r+0x50>
   1d35c:	6c23      	ldr	r3, [r4, #64]	; 0x40
   1d35e:	1ac0      	subs	r0, r0, r3
   1d360:	2300      	movs	r3, #0
   1d362:	0002      	movs	r2, r0
   1d364:	4640      	mov	r0, r8
   1d366:	47a8      	blx	r5
   1d368:	1c43      	adds	r3, r0, #1
   1d36a:	d146      	bne.n	1d3fa <__sflush_r+0xea>
   1d36c:	4643      	mov	r3, r8
   1d36e:	681b      	ldr	r3, [r3, #0]
   1d370:	210c      	movs	r1, #12
   1d372:	5e62      	ldrsh	r2, [r4, r1]
   1d374:	2b00      	cmp	r3, #0
   1d376:	d056      	beq.n	1d426 <__sflush_r+0x116>
   1d378:	2b1d      	cmp	r3, #29
   1d37a:	d001      	beq.n	1d380 <__sflush_r+0x70>
   1d37c:	2b16      	cmp	r3, #22
   1d37e:	d15d      	bne.n	1d43c <__sflush_r+0x12c>
   1d380:	2300      	movs	r3, #0
   1d382:	6063      	str	r3, [r4, #4]
   1d384:	6923      	ldr	r3, [r4, #16]
   1d386:	6023      	str	r3, [r4, #0]
   1d388:	4643      	mov	r3, r8
   1d38a:	6b61      	ldr	r1, [r4, #52]	; 0x34
   1d38c:	601e      	str	r6, [r3, #0]
   1d38e:	2900      	cmp	r1, #0
   1d390:	d008      	beq.n	1d3a4 <__sflush_r+0x94>
   1d392:	0023      	movs	r3, r4
   1d394:	3344      	adds	r3, #68	; 0x44
   1d396:	4299      	cmp	r1, r3
   1d398:	d002      	beq.n	1d3a0 <__sflush_r+0x90>
   1d39a:	4640      	mov	r0, r8
   1d39c:	f000 fb4a 	bl	1da34 <_free_r>
   1d3a0:	2300      	movs	r3, #0
   1d3a2:	6363      	str	r3, [r4, #52]	; 0x34
   1d3a4:	2000      	movs	r0, #0
   1d3a6:	bc04      	pop	{r2}
   1d3a8:	4690      	mov	r8, r2
   1d3aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1d3ac:	690e      	ldr	r6, [r1, #16]
   1d3ae:	2e00      	cmp	r6, #0
   1d3b0:	d0f8      	beq.n	1d3a4 <__sflush_r+0x94>
   1d3b2:	680a      	ldr	r2, [r1, #0]
   1d3b4:	600e      	str	r6, [r1, #0]
   1d3b6:	1b95      	subs	r5, r2, r6
   1d3b8:	2200      	movs	r2, #0
   1d3ba:	079b      	lsls	r3, r3, #30
   1d3bc:	d100      	bne.n	1d3c0 <__sflush_r+0xb0>
   1d3be:	694a      	ldr	r2, [r1, #20]
   1d3c0:	60a2      	str	r2, [r4, #8]
   1d3c2:	2d00      	cmp	r5, #0
   1d3c4:	dc04      	bgt.n	1d3d0 <__sflush_r+0xc0>
   1d3c6:	e7ed      	b.n	1d3a4 <__sflush_r+0x94>
   1d3c8:	1836      	adds	r6, r6, r0
   1d3ca:	1a2d      	subs	r5, r5, r0
   1d3cc:	2d00      	cmp	r5, #0
   1d3ce:	dde9      	ble.n	1d3a4 <__sflush_r+0x94>
   1d3d0:	002b      	movs	r3, r5
   1d3d2:	0032      	movs	r2, r6
   1d3d4:	6a21      	ldr	r1, [r4, #32]
   1d3d6:	4640      	mov	r0, r8
   1d3d8:	6aa7      	ldr	r7, [r4, #40]	; 0x28
   1d3da:	47b8      	blx	r7
   1d3dc:	2800      	cmp	r0, #0
   1d3de:	dcf3      	bgt.n	1d3c8 <__sflush_r+0xb8>
   1d3e0:	2240      	movs	r2, #64	; 0x40
   1d3e2:	2001      	movs	r0, #1
   1d3e4:	89a3      	ldrh	r3, [r4, #12]
   1d3e6:	4240      	negs	r0, r0
   1d3e8:	4313      	orrs	r3, r2
   1d3ea:	81a3      	strh	r3, [r4, #12]
   1d3ec:	e7db      	b.n	1d3a6 <__sflush_r+0x96>
   1d3ee:	6c0a      	ldr	r2, [r1, #64]	; 0x40
   1d3f0:	2a00      	cmp	r2, #0
   1d3f2:	dc98      	bgt.n	1d326 <__sflush_r+0x16>
   1d3f4:	e7d6      	b.n	1d3a4 <__sflush_r+0x94>
   1d3f6:	6d60      	ldr	r0, [r4, #84]	; 0x54
   1d3f8:	e7a9      	b.n	1d34e <__sflush_r+0x3e>
   1d3fa:	2300      	movs	r3, #0
   1d3fc:	6063      	str	r3, [r4, #4]
   1d3fe:	6923      	ldr	r3, [r4, #16]
   1d400:	6023      	str	r3, [r4, #0]
   1d402:	89a3      	ldrh	r3, [r4, #12]
   1d404:	04db      	lsls	r3, r3, #19
   1d406:	d5bf      	bpl.n	1d388 <__sflush_r+0x78>
   1d408:	6560      	str	r0, [r4, #84]	; 0x54
   1d40a:	e7bd      	b.n	1d388 <__sflush_r+0x78>
   1d40c:	4643      	mov	r3, r8
   1d40e:	681b      	ldr	r3, [r3, #0]
   1d410:	2b00      	cmp	r3, #0
   1d412:	d099      	beq.n	1d348 <__sflush_r+0x38>
   1d414:	2b1d      	cmp	r3, #29
   1d416:	d00d      	beq.n	1d434 <__sflush_r+0x124>
   1d418:	2b16      	cmp	r3, #22
   1d41a:	d00b      	beq.n	1d434 <__sflush_r+0x124>
   1d41c:	2240      	movs	r2, #64	; 0x40
   1d41e:	89a3      	ldrh	r3, [r4, #12]
   1d420:	4313      	orrs	r3, r2
   1d422:	81a3      	strh	r3, [r4, #12]
   1d424:	e7bf      	b.n	1d3a6 <__sflush_r+0x96>
   1d426:	6063      	str	r3, [r4, #4]
   1d428:	6923      	ldr	r3, [r4, #16]
   1d42a:	6023      	str	r3, [r4, #0]
   1d42c:	04d3      	lsls	r3, r2, #19
   1d42e:	d5ab      	bpl.n	1d388 <__sflush_r+0x78>
   1d430:	6560      	str	r0, [r4, #84]	; 0x54
   1d432:	e7a9      	b.n	1d388 <__sflush_r+0x78>
   1d434:	4643      	mov	r3, r8
   1d436:	2000      	movs	r0, #0
   1d438:	601e      	str	r6, [r3, #0]
   1d43a:	e7b4      	b.n	1d3a6 <__sflush_r+0x96>
   1d43c:	2340      	movs	r3, #64	; 0x40
   1d43e:	431a      	orrs	r2, r3
   1d440:	81a2      	strh	r2, [r4, #12]
   1d442:	e7b0      	b.n	1d3a6 <__sflush_r+0x96>

0001d444 <_fflush_r>:
   1d444:	690b      	ldr	r3, [r1, #16]
   1d446:	b570      	push	{r4, r5, r6, lr}
   1d448:	0005      	movs	r5, r0
   1d44a:	000c      	movs	r4, r1
   1d44c:	2b00      	cmp	r3, #0
   1d44e:	d016      	beq.n	1d47e <_fflush_r+0x3a>
   1d450:	2800      	cmp	r0, #0
   1d452:	d002      	beq.n	1d45a <_fflush_r+0x16>
   1d454:	6983      	ldr	r3, [r0, #24]
   1d456:	2b00      	cmp	r3, #0
   1d458:	d015      	beq.n	1d486 <_fflush_r+0x42>
   1d45a:	4b0e      	ldr	r3, [pc, #56]	; (1d494 <_fflush_r+0x50>)
   1d45c:	429c      	cmp	r4, r3
   1d45e:	d010      	beq.n	1d482 <_fflush_r+0x3e>
   1d460:	4b0d      	ldr	r3, [pc, #52]	; (1d498 <_fflush_r+0x54>)
   1d462:	429c      	cmp	r4, r3
   1d464:	d012      	beq.n	1d48c <_fflush_r+0x48>
   1d466:	4b0d      	ldr	r3, [pc, #52]	; (1d49c <_fflush_r+0x58>)
   1d468:	429c      	cmp	r4, r3
   1d46a:	d011      	beq.n	1d490 <_fflush_r+0x4c>
   1d46c:	220c      	movs	r2, #12
   1d46e:	5ea3      	ldrsh	r3, [r4, r2]
   1d470:	2b00      	cmp	r3, #0
   1d472:	d004      	beq.n	1d47e <_fflush_r+0x3a>
   1d474:	0021      	movs	r1, r4
   1d476:	0028      	movs	r0, r5
   1d478:	f7ff ff4a 	bl	1d310 <__sflush_r>
   1d47c:	e000      	b.n	1d480 <_fflush_r+0x3c>
   1d47e:	2000      	movs	r0, #0
   1d480:	bd70      	pop	{r4, r5, r6, pc}
   1d482:	686c      	ldr	r4, [r5, #4]
   1d484:	e7f2      	b.n	1d46c <_fflush_r+0x28>
   1d486:	f7ff f939 	bl	1c6fc <__sinit>
   1d48a:	e7e6      	b.n	1d45a <_fflush_r+0x16>
   1d48c:	68ac      	ldr	r4, [r5, #8]
   1d48e:	e7ed      	b.n	1d46c <_fflush_r+0x28>
   1d490:	68ec      	ldr	r4, [r5, #12]
   1d492:	e7eb      	b.n	1d46c <_fflush_r+0x28>
   1d494:	0001e03c 	.word	0x0001e03c
   1d498:	0001e01c 	.word	0x0001e01c
   1d49c:	0001dffc 	.word	0x0001dffc

0001d4a0 <fflush>:
   1d4a0:	b510      	push	{r4, lr}
   1d4a2:	1e01      	subs	r1, r0, #0
   1d4a4:	d004      	beq.n	1d4b0 <fflush+0x10>
   1d4a6:	4b05      	ldr	r3, [pc, #20]	; (1d4bc <fflush+0x1c>)
   1d4a8:	6818      	ldr	r0, [r3, #0]
   1d4aa:	f7ff ffcb 	bl	1d444 <_fflush_r>
   1d4ae:	bd10      	pop	{r4, pc}
   1d4b0:	4b03      	ldr	r3, [pc, #12]	; (1d4c0 <fflush+0x20>)
   1d4b2:	4904      	ldr	r1, [pc, #16]	; (1d4c4 <fflush+0x24>)
   1d4b4:	6818      	ldr	r0, [r3, #0]
   1d4b6:	f7ff f96b 	bl	1c790 <_fwalk_reent>
   1d4ba:	e7f8      	b.n	1d4ae <fflush+0xe>
   1d4bc:	200013c8 	.word	0x200013c8
   1d4c0:	0001df38 	.word	0x0001df38
   1d4c4:	0001d445 	.word	0x0001d445

0001d4c8 <__sfvwrite_r>:
   1d4c8:	b5f0      	push	{r4, r5, r6, r7, lr}
   1d4ca:	4645      	mov	r5, r8
   1d4cc:	46de      	mov	lr, fp
   1d4ce:	4657      	mov	r7, sl
   1d4d0:	464e      	mov	r6, r9
   1d4d2:	b5e0      	push	{r5, r6, r7, lr}
   1d4d4:	6893      	ldr	r3, [r2, #8]
   1d4d6:	b083      	sub	sp, #12
   1d4d8:	9000      	str	r0, [sp, #0]
   1d4da:	000c      	movs	r4, r1
   1d4dc:	4690      	mov	r8, r2
   1d4de:	2b00      	cmp	r3, #0
   1d4e0:	d06d      	beq.n	1d5be <__sfvwrite_r+0xf6>
   1d4e2:	898b      	ldrh	r3, [r1, #12]
   1d4e4:	071a      	lsls	r2, r3, #28
   1d4e6:	d400      	bmi.n	1d4ea <__sfvwrite_r+0x22>
   1d4e8:	e071      	b.n	1d5ce <__sfvwrite_r+0x106>
   1d4ea:	690a      	ldr	r2, [r1, #16]
   1d4ec:	2a00      	cmp	r2, #0
   1d4ee:	d100      	bne.n	1d4f2 <__sfvwrite_r+0x2a>
   1d4f0:	e06d      	b.n	1d5ce <__sfvwrite_r+0x106>
   1d4f2:	4642      	mov	r2, r8
   1d4f4:	6816      	ldr	r6, [r2, #0]
   1d4f6:	079a      	lsls	r2, r3, #30
   1d4f8:	d400      	bmi.n	1d4fc <__sfvwrite_r+0x34>
   1d4fa:	e075      	b.n	1d5e8 <__sfvwrite_r+0x120>
   1d4fc:	6aa3      	ldr	r3, [r4, #40]	; 0x28
   1d4fe:	2700      	movs	r7, #0
   1d500:	469a      	mov	sl, r3
   1d502:	4bb5      	ldr	r3, [pc, #724]	; (1d7d8 <__sfvwrite_r+0x310>)
   1d504:	2500      	movs	r5, #0
   1d506:	4699      	mov	r9, r3
   1d508:	6a21      	ldr	r1, [r4, #32]
   1d50a:	2d00      	cmp	r5, #0
   1d50c:	d016      	beq.n	1d53c <__sfvwrite_r+0x74>
   1d50e:	002b      	movs	r3, r5
   1d510:	454d      	cmp	r5, r9
   1d512:	d900      	bls.n	1d516 <__sfvwrite_r+0x4e>
   1d514:	4bb0      	ldr	r3, [pc, #704]	; (1d7d8 <__sfvwrite_r+0x310>)
   1d516:	003a      	movs	r2, r7
   1d518:	9800      	ldr	r0, [sp, #0]
   1d51a:	47d0      	blx	sl
   1d51c:	2800      	cmp	r0, #0
   1d51e:	dc00      	bgt.n	1d522 <__sfvwrite_r+0x5a>
   1d520:	e0d5      	b.n	1d6ce <__sfvwrite_r+0x206>
   1d522:	4643      	mov	r3, r8
   1d524:	689b      	ldr	r3, [r3, #8]
   1d526:	183f      	adds	r7, r7, r0
   1d528:	1a2d      	subs	r5, r5, r0
   1d52a:	1a18      	subs	r0, r3, r0
   1d52c:	4643      	mov	r3, r8
   1d52e:	6098      	str	r0, [r3, #8]
   1d530:	d045      	beq.n	1d5be <__sfvwrite_r+0xf6>
   1d532:	6aa3      	ldr	r3, [r4, #40]	; 0x28
   1d534:	6a21      	ldr	r1, [r4, #32]
   1d536:	469a      	mov	sl, r3
   1d538:	2d00      	cmp	r5, #0
   1d53a:	d1e8      	bne.n	1d50e <__sfvwrite_r+0x46>
   1d53c:	6837      	ldr	r7, [r6, #0]
   1d53e:	6875      	ldr	r5, [r6, #4]
   1d540:	3608      	adds	r6, #8
   1d542:	e7e2      	b.n	1d50a <__sfvwrite_r+0x42>
   1d544:	464b      	mov	r3, r9
   1d546:	681b      	ldr	r3, [r3, #0]
   1d548:	469a      	mov	sl, r3
   1d54a:	464b      	mov	r3, r9
   1d54c:	685f      	ldr	r7, [r3, #4]
   1d54e:	2308      	movs	r3, #8
   1d550:	469c      	mov	ip, r3
   1d552:	44e1      	add	r9, ip
   1d554:	2f00      	cmp	r7, #0
   1d556:	d0f5      	beq.n	1d544 <__sfvwrite_r+0x7c>
   1d558:	003a      	movs	r2, r7
   1d55a:	210a      	movs	r1, #10
   1d55c:	4650      	mov	r0, sl
   1d55e:	f000 f9c7 	bl	1d8f0 <memchr>
   1d562:	2800      	cmp	r0, #0
   1d564:	d100      	bne.n	1d568 <__sfvwrite_r+0xa0>
   1d566:	e0ce      	b.n	1d706 <__sfvwrite_r+0x23e>
   1d568:	4653      	mov	r3, sl
   1d56a:	3001      	adds	r0, #1
   1d56c:	1ac6      	subs	r6, r0, r3
   1d56e:	0033      	movs	r3, r6
   1d570:	46bb      	mov	fp, r7
   1d572:	429f      	cmp	r7, r3
   1d574:	d900      	bls.n	1d578 <__sfvwrite_r+0xb0>
   1d576:	469b      	mov	fp, r3
   1d578:	6820      	ldr	r0, [r4, #0]
   1d57a:	6922      	ldr	r2, [r4, #16]
   1d57c:	6963      	ldr	r3, [r4, #20]
   1d57e:	4290      	cmp	r0, r2
   1d580:	d904      	bls.n	1d58c <__sfvwrite_r+0xc4>
   1d582:	68a2      	ldr	r2, [r4, #8]
   1d584:	189d      	adds	r5, r3, r2
   1d586:	45ab      	cmp	fp, r5
   1d588:	dd00      	ble.n	1d58c <__sfvwrite_r+0xc4>
   1d58a:	e092      	b.n	1d6b2 <__sfvwrite_r+0x1ea>
   1d58c:	455b      	cmp	r3, fp
   1d58e:	dd00      	ble.n	1d592 <__sfvwrite_r+0xca>
   1d590:	e0f9      	b.n	1d786 <__sfvwrite_r+0x2be>
   1d592:	6aa5      	ldr	r5, [r4, #40]	; 0x28
   1d594:	4652      	mov	r2, sl
   1d596:	6a21      	ldr	r1, [r4, #32]
   1d598:	9800      	ldr	r0, [sp, #0]
   1d59a:	47a8      	blx	r5
   1d59c:	1e05      	subs	r5, r0, #0
   1d59e:	dc00      	bgt.n	1d5a2 <__sfvwrite_r+0xda>
   1d5a0:	e095      	b.n	1d6ce <__sfvwrite_r+0x206>
   1d5a2:	1b76      	subs	r6, r6, r5
   1d5a4:	2001      	movs	r0, #1
   1d5a6:	2e00      	cmp	r6, #0
   1d5a8:	d100      	bne.n	1d5ac <__sfvwrite_r+0xe4>
   1d5aa:	e0e4      	b.n	1d776 <__sfvwrite_r+0x2ae>
   1d5ac:	4643      	mov	r3, r8
   1d5ae:	689b      	ldr	r3, [r3, #8]
   1d5b0:	44aa      	add	sl, r5
   1d5b2:	1b7f      	subs	r7, r7, r5
   1d5b4:	1b5d      	subs	r5, r3, r5
   1d5b6:	4643      	mov	r3, r8
   1d5b8:	609d      	str	r5, [r3, #8]
   1d5ba:	d000      	beq.n	1d5be <__sfvwrite_r+0xf6>
   1d5bc:	e095      	b.n	1d6ea <__sfvwrite_r+0x222>
   1d5be:	2000      	movs	r0, #0
   1d5c0:	b003      	add	sp, #12
   1d5c2:	bc3c      	pop	{r2, r3, r4, r5}
   1d5c4:	4690      	mov	r8, r2
   1d5c6:	4699      	mov	r9, r3
   1d5c8:	46a2      	mov	sl, r4
   1d5ca:	46ab      	mov	fp, r5
   1d5cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1d5ce:	0021      	movs	r1, r4
   1d5d0:	9800      	ldr	r0, [sp, #0]
   1d5d2:	f7ff fe05 	bl	1d1e0 <__swsetup_r>
   1d5d6:	2800      	cmp	r0, #0
   1d5d8:	d000      	beq.n	1d5dc <__sfvwrite_r+0x114>
   1d5da:	e0f9      	b.n	1d7d0 <__sfvwrite_r+0x308>
   1d5dc:	4642      	mov	r2, r8
   1d5de:	89a3      	ldrh	r3, [r4, #12]
   1d5e0:	6816      	ldr	r6, [r2, #0]
   1d5e2:	079a      	lsls	r2, r3, #30
   1d5e4:	d500      	bpl.n	1d5e8 <__sfvwrite_r+0x120>
   1d5e6:	e789      	b.n	1d4fc <__sfvwrite_r+0x34>
   1d5e8:	07da      	lsls	r2, r3, #31
   1d5ea:	d478      	bmi.n	1d6de <__sfvwrite_r+0x216>
   1d5ec:	2200      	movs	r2, #0
   1d5ee:	4691      	mov	r9, r2
   1d5f0:	2280      	movs	r2, #128	; 0x80
   1d5f2:	0092      	lsls	r2, r2, #2
   1d5f4:	2700      	movs	r7, #0
   1d5f6:	4693      	mov	fp, r2
   1d5f8:	68a5      	ldr	r5, [r4, #8]
   1d5fa:	6820      	ldr	r0, [r4, #0]
   1d5fc:	2f00      	cmp	r7, #0
   1d5fe:	d053      	beq.n	1d6a8 <__sfvwrite_r+0x1e0>
   1d600:	465a      	mov	r2, fp
   1d602:	4213      	tst	r3, r2
   1d604:	d100      	bne.n	1d608 <__sfvwrite_r+0x140>
   1d606:	e081      	b.n	1d70c <__sfvwrite_r+0x244>
   1d608:	46aa      	mov	sl, r5
   1d60a:	42bd      	cmp	r5, r7
   1d60c:	d900      	bls.n	1d610 <__sfvwrite_r+0x148>
   1d60e:	e0af      	b.n	1d770 <__sfvwrite_r+0x2a8>
   1d610:	2290      	movs	r2, #144	; 0x90
   1d612:	00d2      	lsls	r2, r2, #3
   1d614:	4213      	tst	r3, r2
   1d616:	d02e      	beq.n	1d676 <__sfvwrite_r+0x1ae>
   1d618:	6921      	ldr	r1, [r4, #16]
   1d61a:	1a45      	subs	r5, r0, r1
   1d61c:	46ac      	mov	ip, r5
   1d61e:	6960      	ldr	r0, [r4, #20]
   1d620:	9501      	str	r5, [sp, #4]
   1d622:	0042      	lsls	r2, r0, #1
   1d624:	1812      	adds	r2, r2, r0
   1d626:	0fd0      	lsrs	r0, r2, #31
   1d628:	1882      	adds	r2, r0, r2
   1d62a:	1c78      	adds	r0, r7, #1
   1d62c:	1052      	asrs	r2, r2, #1
   1d62e:	4460      	add	r0, ip
   1d630:	4692      	mov	sl, r2
   1d632:	4290      	cmp	r0, r2
   1d634:	d901      	bls.n	1d63a <__sfvwrite_r+0x172>
   1d636:	4682      	mov	sl, r0
   1d638:	0002      	movs	r2, r0
   1d63a:	055b      	lsls	r3, r3, #21
   1d63c:	d400      	bmi.n	1d640 <__sfvwrite_r+0x178>
   1d63e:	e0af      	b.n	1d7a0 <__sfvwrite_r+0x2d8>
   1d640:	0011      	movs	r1, r2
   1d642:	9800      	ldr	r0, [sp, #0]
   1d644:	f7ff f8ca 	bl	1c7dc <_malloc_r>
   1d648:	1e05      	subs	r5, r0, #0
   1d64a:	d100      	bne.n	1d64e <__sfvwrite_r+0x186>
   1d64c:	e0ba      	b.n	1d7c4 <__sfvwrite_r+0x2fc>
   1d64e:	9a01      	ldr	r2, [sp, #4]
   1d650:	6921      	ldr	r1, [r4, #16]
   1d652:	f7fe fed3 	bl	1c3fc <memcpy>
   1d656:	89a3      	ldrh	r3, [r4, #12]
   1d658:	4a60      	ldr	r2, [pc, #384]	; (1d7dc <__sfvwrite_r+0x314>)
   1d65a:	4013      	ands	r3, r2
   1d65c:	2280      	movs	r2, #128	; 0x80
   1d65e:	4313      	orrs	r3, r2
   1d660:	81a3      	strh	r3, [r4, #12]
   1d662:	4652      	mov	r2, sl
   1d664:	9b01      	ldr	r3, [sp, #4]
   1d666:	6125      	str	r5, [r4, #16]
   1d668:	18e8      	adds	r0, r5, r3
   1d66a:	46ba      	mov	sl, r7
   1d66c:	003d      	movs	r5, r7
   1d66e:	1ad3      	subs	r3, r2, r3
   1d670:	6020      	str	r0, [r4, #0]
   1d672:	6162      	str	r2, [r4, #20]
   1d674:	60a3      	str	r3, [r4, #8]
   1d676:	4652      	mov	r2, sl
   1d678:	4649      	mov	r1, r9
   1d67a:	f000 f979 	bl	1d970 <memmove>
   1d67e:	68a3      	ldr	r3, [r4, #8]
   1d680:	1b5d      	subs	r5, r3, r5
   1d682:	60a5      	str	r5, [r4, #8]
   1d684:	003d      	movs	r5, r7
   1d686:	2700      	movs	r7, #0
   1d688:	6823      	ldr	r3, [r4, #0]
   1d68a:	4453      	add	r3, sl
   1d68c:	6023      	str	r3, [r4, #0]
   1d68e:	4643      	mov	r3, r8
   1d690:	689b      	ldr	r3, [r3, #8]
   1d692:	44a9      	add	r9, r5
   1d694:	1b5d      	subs	r5, r3, r5
   1d696:	4643      	mov	r3, r8
   1d698:	609d      	str	r5, [r3, #8]
   1d69a:	d100      	bne.n	1d69e <__sfvwrite_r+0x1d6>
   1d69c:	e78f      	b.n	1d5be <__sfvwrite_r+0xf6>
   1d69e:	68a5      	ldr	r5, [r4, #8]
   1d6a0:	6820      	ldr	r0, [r4, #0]
   1d6a2:	89a3      	ldrh	r3, [r4, #12]
   1d6a4:	2f00      	cmp	r7, #0
   1d6a6:	d1ab      	bne.n	1d600 <__sfvwrite_r+0x138>
   1d6a8:	6832      	ldr	r2, [r6, #0]
   1d6aa:	6877      	ldr	r7, [r6, #4]
   1d6ac:	4691      	mov	r9, r2
   1d6ae:	3608      	adds	r6, #8
   1d6b0:	e7a4      	b.n	1d5fc <__sfvwrite_r+0x134>
   1d6b2:	4651      	mov	r1, sl
   1d6b4:	002a      	movs	r2, r5
   1d6b6:	f000 f95b 	bl	1d970 <memmove>
   1d6ba:	6823      	ldr	r3, [r4, #0]
   1d6bc:	0021      	movs	r1, r4
   1d6be:	195b      	adds	r3, r3, r5
   1d6c0:	6023      	str	r3, [r4, #0]
   1d6c2:	9800      	ldr	r0, [sp, #0]
   1d6c4:	f7ff febe 	bl	1d444 <_fflush_r>
   1d6c8:	2800      	cmp	r0, #0
   1d6ca:	d100      	bne.n	1d6ce <__sfvwrite_r+0x206>
   1d6cc:	e769      	b.n	1d5a2 <__sfvwrite_r+0xda>
   1d6ce:	220c      	movs	r2, #12
   1d6d0:	5ea3      	ldrsh	r3, [r4, r2]
   1d6d2:	2240      	movs	r2, #64	; 0x40
   1d6d4:	2001      	movs	r0, #1
   1d6d6:	4313      	orrs	r3, r2
   1d6d8:	81a3      	strh	r3, [r4, #12]
   1d6da:	4240      	negs	r0, r0
   1d6dc:	e770      	b.n	1d5c0 <__sfvwrite_r+0xf8>
   1d6de:	2300      	movs	r3, #0
   1d6e0:	46b1      	mov	r9, r6
   1d6e2:	2000      	movs	r0, #0
   1d6e4:	469a      	mov	sl, r3
   1d6e6:	2700      	movs	r7, #0
   1d6e8:	001e      	movs	r6, r3
   1d6ea:	2f00      	cmp	r7, #0
   1d6ec:	d100      	bne.n	1d6f0 <__sfvwrite_r+0x228>
   1d6ee:	e729      	b.n	1d544 <__sfvwrite_r+0x7c>
   1d6f0:	2800      	cmp	r0, #0
   1d6f2:	d000      	beq.n	1d6f6 <__sfvwrite_r+0x22e>
   1d6f4:	e73b      	b.n	1d56e <__sfvwrite_r+0xa6>
   1d6f6:	003a      	movs	r2, r7
   1d6f8:	210a      	movs	r1, #10
   1d6fa:	4650      	mov	r0, sl
   1d6fc:	f000 f8f8 	bl	1d8f0 <memchr>
   1d700:	2800      	cmp	r0, #0
   1d702:	d000      	beq.n	1d706 <__sfvwrite_r+0x23e>
   1d704:	e730      	b.n	1d568 <__sfvwrite_r+0xa0>
   1d706:	1c7b      	adds	r3, r7, #1
   1d708:	001e      	movs	r6, r3
   1d70a:	e731      	b.n	1d570 <__sfvwrite_r+0xa8>
   1d70c:	6923      	ldr	r3, [r4, #16]
   1d70e:	4283      	cmp	r3, r0
   1d710:	d317      	bcc.n	1d742 <__sfvwrite_r+0x27a>
   1d712:	6963      	ldr	r3, [r4, #20]
   1d714:	469a      	mov	sl, r3
   1d716:	42bb      	cmp	r3, r7
   1d718:	d813      	bhi.n	1d742 <__sfvwrite_r+0x27a>
   1d71a:	4b31      	ldr	r3, [pc, #196]	; (1d7e0 <__sfvwrite_r+0x318>)
   1d71c:	0038      	movs	r0, r7
   1d71e:	429f      	cmp	r7, r3
   1d720:	d900      	bls.n	1d724 <__sfvwrite_r+0x25c>
   1d722:	4830      	ldr	r0, [pc, #192]	; (1d7e4 <__sfvwrite_r+0x31c>)
   1d724:	4651      	mov	r1, sl
   1d726:	f000 fad1 	bl	1dccc <__divsi3>
   1d72a:	4653      	mov	r3, sl
   1d72c:	464a      	mov	r2, r9
   1d72e:	4343      	muls	r3, r0
   1d730:	6a21      	ldr	r1, [r4, #32]
   1d732:	9800      	ldr	r0, [sp, #0]
   1d734:	6aa5      	ldr	r5, [r4, #40]	; 0x28
   1d736:	47a8      	blx	r5
   1d738:	2800      	cmp	r0, #0
   1d73a:	ddc8      	ble.n	1d6ce <__sfvwrite_r+0x206>
   1d73c:	0005      	movs	r5, r0
   1d73e:	1b7f      	subs	r7, r7, r5
   1d740:	e7a5      	b.n	1d68e <__sfvwrite_r+0x1c6>
   1d742:	42bd      	cmp	r5, r7
   1d744:	d900      	bls.n	1d748 <__sfvwrite_r+0x280>
   1d746:	003d      	movs	r5, r7
   1d748:	002a      	movs	r2, r5
   1d74a:	4649      	mov	r1, r9
   1d74c:	f000 f910 	bl	1d970 <memmove>
   1d750:	68a3      	ldr	r3, [r4, #8]
   1d752:	6822      	ldr	r2, [r4, #0]
   1d754:	1b5b      	subs	r3, r3, r5
   1d756:	1952      	adds	r2, r2, r5
   1d758:	60a3      	str	r3, [r4, #8]
   1d75a:	6022      	str	r2, [r4, #0]
   1d75c:	2b00      	cmp	r3, #0
   1d75e:	d1ee      	bne.n	1d73e <__sfvwrite_r+0x276>
   1d760:	0021      	movs	r1, r4
   1d762:	9800      	ldr	r0, [sp, #0]
   1d764:	f7ff fe6e 	bl	1d444 <_fflush_r>
   1d768:	2800      	cmp	r0, #0
   1d76a:	d1b0      	bne.n	1d6ce <__sfvwrite_r+0x206>
   1d76c:	1b7f      	subs	r7, r7, r5
   1d76e:	e78e      	b.n	1d68e <__sfvwrite_r+0x1c6>
   1d770:	003d      	movs	r5, r7
   1d772:	46ba      	mov	sl, r7
   1d774:	e77f      	b.n	1d676 <__sfvwrite_r+0x1ae>
   1d776:	0021      	movs	r1, r4
   1d778:	9800      	ldr	r0, [sp, #0]
   1d77a:	f7ff fe63 	bl	1d444 <_fflush_r>
   1d77e:	2800      	cmp	r0, #0
   1d780:	d100      	bne.n	1d784 <__sfvwrite_r+0x2bc>
   1d782:	e713      	b.n	1d5ac <__sfvwrite_r+0xe4>
   1d784:	e7a3      	b.n	1d6ce <__sfvwrite_r+0x206>
   1d786:	465a      	mov	r2, fp
   1d788:	4651      	mov	r1, sl
   1d78a:	f000 f8f1 	bl	1d970 <memmove>
   1d78e:	465a      	mov	r2, fp
   1d790:	68a3      	ldr	r3, [r4, #8]
   1d792:	465d      	mov	r5, fp
   1d794:	1a9b      	subs	r3, r3, r2
   1d796:	60a3      	str	r3, [r4, #8]
   1d798:	6823      	ldr	r3, [r4, #0]
   1d79a:	445b      	add	r3, fp
   1d79c:	6023      	str	r3, [r4, #0]
   1d79e:	e700      	b.n	1d5a2 <__sfvwrite_r+0xda>
   1d7a0:	9800      	ldr	r0, [sp, #0]
   1d7a2:	f000 f99d 	bl	1dae0 <_realloc_r>
   1d7a6:	1e05      	subs	r5, r0, #0
   1d7a8:	d000      	beq.n	1d7ac <__sfvwrite_r+0x2e4>
   1d7aa:	e75a      	b.n	1d662 <__sfvwrite_r+0x19a>
   1d7ac:	9d00      	ldr	r5, [sp, #0]
   1d7ae:	6921      	ldr	r1, [r4, #16]
   1d7b0:	0028      	movs	r0, r5
   1d7b2:	f000 f93f 	bl	1da34 <_free_r>
   1d7b6:	2280      	movs	r2, #128	; 0x80
   1d7b8:	89a3      	ldrh	r3, [r4, #12]
   1d7ba:	4393      	bics	r3, r2
   1d7bc:	3a74      	subs	r2, #116	; 0x74
   1d7be:	b21b      	sxth	r3, r3
   1d7c0:	602a      	str	r2, [r5, #0]
   1d7c2:	e786      	b.n	1d6d2 <__sfvwrite_r+0x20a>
   1d7c4:	230c      	movs	r3, #12
   1d7c6:	9a00      	ldr	r2, [sp, #0]
   1d7c8:	6013      	str	r3, [r2, #0]
   1d7ca:	220c      	movs	r2, #12
   1d7cc:	5ea3      	ldrsh	r3, [r4, r2]
   1d7ce:	e780      	b.n	1d6d2 <__sfvwrite_r+0x20a>
   1d7d0:	2001      	movs	r0, #1
   1d7d2:	4240      	negs	r0, r0
   1d7d4:	e6f4      	b.n	1d5c0 <__sfvwrite_r+0xf8>
   1d7d6:	46c0      	nop			; (mov r8, r8)
   1d7d8:	7ffffc00 	.word	0x7ffffc00
   1d7dc:	fffffb7f 	.word	0xfffffb7f
   1d7e0:	7ffffffe 	.word	0x7ffffffe
   1d7e4:	7fffffff 	.word	0x7fffffff

0001d7e8 <_lseek_r>:
   1d7e8:	b570      	push	{r4, r5, r6, lr}
   1d7ea:	0005      	movs	r5, r0
   1d7ec:	0008      	movs	r0, r1
   1d7ee:	0011      	movs	r1, r2
   1d7f0:	2200      	movs	r2, #0
   1d7f2:	4c06      	ldr	r4, [pc, #24]	; (1d80c <_lseek_r+0x24>)
   1d7f4:	6022      	str	r2, [r4, #0]
   1d7f6:	001a      	movs	r2, r3
   1d7f8:	f000 fb6c 	bl	1ded4 <_lseek>
   1d7fc:	1c43      	adds	r3, r0, #1
   1d7fe:	d000      	beq.n	1d802 <_lseek_r+0x1a>
   1d800:	bd70      	pop	{r4, r5, r6, pc}
   1d802:	6823      	ldr	r3, [r4, #0]
   1d804:	2b00      	cmp	r3, #0
   1d806:	d0fb      	beq.n	1d800 <_lseek_r+0x18>
   1d808:	602b      	str	r3, [r5, #0]
   1d80a:	e7f9      	b.n	1d800 <_lseek_r+0x18>
   1d80c:	20001b64 	.word	0x20001b64

0001d810 <__swhatbuf_r>:
   1d810:	b570      	push	{r4, r5, r6, lr}
   1d812:	000c      	movs	r4, r1
   1d814:	001d      	movs	r5, r3
   1d816:	230e      	movs	r3, #14
   1d818:	5ec9      	ldrsh	r1, [r1, r3]
   1d81a:	b096      	sub	sp, #88	; 0x58
   1d81c:	0016      	movs	r6, r2
   1d81e:	2900      	cmp	r1, #0
   1d820:	db14      	blt.n	1d84c <__swhatbuf_r+0x3c>
   1d822:	466a      	mov	r2, sp
   1d824:	f000 f998 	bl	1db58 <_fstat_r>
   1d828:	2800      	cmp	r0, #0
   1d82a:	db0f      	blt.n	1d84c <__swhatbuf_r+0x3c>
   1d82c:	22f0      	movs	r2, #240	; 0xf0
   1d82e:	9b01      	ldr	r3, [sp, #4]
   1d830:	0212      	lsls	r2, r2, #8
   1d832:	4013      	ands	r3, r2
   1d834:	4a09      	ldr	r2, [pc, #36]	; (1d85c <__swhatbuf_r+0x4c>)
   1d836:	4694      	mov	ip, r2
   1d838:	4463      	add	r3, ip
   1d83a:	425a      	negs	r2, r3
   1d83c:	4153      	adcs	r3, r2
   1d83e:	602b      	str	r3, [r5, #0]
   1d840:	2380      	movs	r3, #128	; 0x80
   1d842:	00db      	lsls	r3, r3, #3
   1d844:	6033      	str	r3, [r6, #0]
   1d846:	2000      	movs	r0, #0
   1d848:	b016      	add	sp, #88	; 0x58
   1d84a:	bd70      	pop	{r4, r5, r6, pc}
   1d84c:	2300      	movs	r3, #0
   1d84e:	602b      	str	r3, [r5, #0]
   1d850:	89a3      	ldrh	r3, [r4, #12]
   1d852:	061b      	lsls	r3, r3, #24
   1d854:	d5f4      	bpl.n	1d840 <__swhatbuf_r+0x30>
   1d856:	2340      	movs	r3, #64	; 0x40
   1d858:	6033      	str	r3, [r6, #0]
   1d85a:	e7f4      	b.n	1d846 <__swhatbuf_r+0x36>
   1d85c:	ffffe000 	.word	0xffffe000

0001d860 <__smakebuf_r>:
   1d860:	b570      	push	{r4, r5, r6, lr}
   1d862:	898b      	ldrh	r3, [r1, #12]
   1d864:	b082      	sub	sp, #8
   1d866:	0006      	movs	r6, r0
   1d868:	000c      	movs	r4, r1
   1d86a:	079b      	lsls	r3, r3, #30
   1d86c:	d507      	bpl.n	1d87e <__smakebuf_r+0x1e>
   1d86e:	0023      	movs	r3, r4
   1d870:	3347      	adds	r3, #71	; 0x47
   1d872:	6023      	str	r3, [r4, #0]
   1d874:	6123      	str	r3, [r4, #16]
   1d876:	2301      	movs	r3, #1
   1d878:	6163      	str	r3, [r4, #20]
   1d87a:	b002      	add	sp, #8
   1d87c:	bd70      	pop	{r4, r5, r6, pc}
   1d87e:	ab01      	add	r3, sp, #4
   1d880:	466a      	mov	r2, sp
   1d882:	f7ff ffc5 	bl	1d810 <__swhatbuf_r>
   1d886:	9900      	ldr	r1, [sp, #0]
   1d888:	0005      	movs	r5, r0
   1d88a:	0030      	movs	r0, r6
   1d88c:	f7fe ffa6 	bl	1c7dc <_malloc_r>
   1d890:	2800      	cmp	r0, #0
   1d892:	d010      	beq.n	1d8b6 <__smakebuf_r+0x56>
   1d894:	2280      	movs	r2, #128	; 0x80
   1d896:	4b15      	ldr	r3, [pc, #84]	; (1d8ec <__smakebuf_r+0x8c>)
   1d898:	62b3      	str	r3, [r6, #40]	; 0x28
   1d89a:	89a3      	ldrh	r3, [r4, #12]
   1d89c:	6020      	str	r0, [r4, #0]
   1d89e:	4313      	orrs	r3, r2
   1d8a0:	9a00      	ldr	r2, [sp, #0]
   1d8a2:	b21b      	sxth	r3, r3
   1d8a4:	6162      	str	r2, [r4, #20]
   1d8a6:	9a01      	ldr	r2, [sp, #4]
   1d8a8:	81a3      	strh	r3, [r4, #12]
   1d8aa:	6120      	str	r0, [r4, #16]
   1d8ac:	2a00      	cmp	r2, #0
   1d8ae:	d10c      	bne.n	1d8ca <__smakebuf_r+0x6a>
   1d8b0:	432b      	orrs	r3, r5
   1d8b2:	81a3      	strh	r3, [r4, #12]
   1d8b4:	e7e1      	b.n	1d87a <__smakebuf_r+0x1a>
   1d8b6:	220c      	movs	r2, #12
   1d8b8:	5ea3      	ldrsh	r3, [r4, r2]
   1d8ba:	059a      	lsls	r2, r3, #22
   1d8bc:	d4dd      	bmi.n	1d87a <__smakebuf_r+0x1a>
   1d8be:	2203      	movs	r2, #3
   1d8c0:	4393      	bics	r3, r2
   1d8c2:	2202      	movs	r2, #2
   1d8c4:	4313      	orrs	r3, r2
   1d8c6:	81a3      	strh	r3, [r4, #12]
   1d8c8:	e7d1      	b.n	1d86e <__smakebuf_r+0xe>
   1d8ca:	230e      	movs	r3, #14
   1d8cc:	5ee1      	ldrsh	r1, [r4, r3]
   1d8ce:	0030      	movs	r0, r6
   1d8d0:	f000 f956 	bl	1db80 <_isatty_r>
   1d8d4:	2800      	cmp	r0, #0
   1d8d6:	d102      	bne.n	1d8de <__smakebuf_r+0x7e>
   1d8d8:	220c      	movs	r2, #12
   1d8da:	5ea3      	ldrsh	r3, [r4, r2]
   1d8dc:	e7e8      	b.n	1d8b0 <__smakebuf_r+0x50>
   1d8de:	2203      	movs	r2, #3
   1d8e0:	89a3      	ldrh	r3, [r4, #12]
   1d8e2:	4393      	bics	r3, r2
   1d8e4:	2201      	movs	r2, #1
   1d8e6:	4313      	orrs	r3, r2
   1d8e8:	b21b      	sxth	r3, r3
   1d8ea:	e7e1      	b.n	1d8b0 <__smakebuf_r+0x50>
   1d8ec:	0001c511 	.word	0x0001c511

0001d8f0 <memchr>:
   1d8f0:	b570      	push	{r4, r5, r6, lr}
   1d8f2:	b2cd      	uxtb	r5, r1
   1d8f4:	0783      	lsls	r3, r0, #30
   1d8f6:	d034      	beq.n	1d962 <memchr+0x72>
   1d8f8:	1e53      	subs	r3, r2, #1
   1d8fa:	2a00      	cmp	r2, #0
   1d8fc:	d01b      	beq.n	1d936 <memchr+0x46>
   1d8fe:	7802      	ldrb	r2, [r0, #0]
   1d900:	42aa      	cmp	r2, r5
   1d902:	d019      	beq.n	1d938 <memchr+0x48>
   1d904:	2403      	movs	r4, #3
   1d906:	e004      	b.n	1d912 <memchr+0x22>
   1d908:	3b01      	subs	r3, #1
   1d90a:	d314      	bcc.n	1d936 <memchr+0x46>
   1d90c:	7802      	ldrb	r2, [r0, #0]
   1d90e:	42aa      	cmp	r2, r5
   1d910:	d012      	beq.n	1d938 <memchr+0x48>
   1d912:	3001      	adds	r0, #1
   1d914:	4220      	tst	r0, r4
   1d916:	d1f7      	bne.n	1d908 <memchr+0x18>
   1d918:	2b03      	cmp	r3, #3
   1d91a:	d80e      	bhi.n	1d93a <memchr+0x4a>
   1d91c:	2b00      	cmp	r3, #0
   1d91e:	d00a      	beq.n	1d936 <memchr+0x46>
   1d920:	7802      	ldrb	r2, [r0, #0]
   1d922:	42aa      	cmp	r2, r5
   1d924:	d008      	beq.n	1d938 <memchr+0x48>
   1d926:	18c3      	adds	r3, r0, r3
   1d928:	e002      	b.n	1d930 <memchr+0x40>
   1d92a:	7802      	ldrb	r2, [r0, #0]
   1d92c:	42aa      	cmp	r2, r5
   1d92e:	d003      	beq.n	1d938 <memchr+0x48>
   1d930:	3001      	adds	r0, #1
   1d932:	4283      	cmp	r3, r0
   1d934:	d1f9      	bne.n	1d92a <memchr+0x3a>
   1d936:	2000      	movs	r0, #0
   1d938:	bd70      	pop	{r4, r5, r6, pc}
   1d93a:	22ff      	movs	r2, #255	; 0xff
   1d93c:	060c      	lsls	r4, r1, #24
   1d93e:	0c24      	lsrs	r4, r4, #16
   1d940:	4011      	ands	r1, r2
   1d942:	4321      	orrs	r1, r4
   1d944:	040c      	lsls	r4, r1, #16
   1d946:	4e08      	ldr	r6, [pc, #32]	; (1d968 <memchr+0x78>)
   1d948:	430c      	orrs	r4, r1
   1d94a:	6802      	ldr	r2, [r0, #0]
   1d94c:	4907      	ldr	r1, [pc, #28]	; (1d96c <memchr+0x7c>)
   1d94e:	4062      	eors	r2, r4
   1d950:	1851      	adds	r1, r2, r1
   1d952:	4391      	bics	r1, r2
   1d954:	4231      	tst	r1, r6
   1d956:	d1e3      	bne.n	1d920 <memchr+0x30>
   1d958:	3b04      	subs	r3, #4
   1d95a:	3004      	adds	r0, #4
   1d95c:	2b03      	cmp	r3, #3
   1d95e:	d8f4      	bhi.n	1d94a <memchr+0x5a>
   1d960:	e7dc      	b.n	1d91c <memchr+0x2c>
   1d962:	0013      	movs	r3, r2
   1d964:	e7d8      	b.n	1d918 <memchr+0x28>
   1d966:	46c0      	nop			; (mov r8, r8)
   1d968:	80808080 	.word	0x80808080
   1d96c:	fefefeff 	.word	0xfefefeff

0001d970 <memmove>:
   1d970:	b5f0      	push	{r4, r5, r6, r7, lr}
   1d972:	46c6      	mov	lr, r8
   1d974:	b500      	push	{lr}
   1d976:	4288      	cmp	r0, r1
   1d978:	d90c      	bls.n	1d994 <memmove+0x24>
   1d97a:	188b      	adds	r3, r1, r2
   1d97c:	4298      	cmp	r0, r3
   1d97e:	d209      	bcs.n	1d994 <memmove+0x24>
   1d980:	1e53      	subs	r3, r2, #1
   1d982:	2a00      	cmp	r2, #0
   1d984:	d003      	beq.n	1d98e <memmove+0x1e>
   1d986:	5cca      	ldrb	r2, [r1, r3]
   1d988:	54c2      	strb	r2, [r0, r3]
   1d98a:	3b01      	subs	r3, #1
   1d98c:	d2fb      	bcs.n	1d986 <memmove+0x16>
   1d98e:	bc04      	pop	{r2}
   1d990:	4690      	mov	r8, r2
   1d992:	bdf0      	pop	{r4, r5, r6, r7, pc}
   1d994:	2a0f      	cmp	r2, #15
   1d996:	d80c      	bhi.n	1d9b2 <memmove+0x42>
   1d998:	0005      	movs	r5, r0
   1d99a:	1e56      	subs	r6, r2, #1
   1d99c:	2a00      	cmp	r2, #0
   1d99e:	d0f6      	beq.n	1d98e <memmove+0x1e>
   1d9a0:	2300      	movs	r3, #0
   1d9a2:	e000      	b.n	1d9a6 <memmove+0x36>
   1d9a4:	0023      	movs	r3, r4
   1d9a6:	5cca      	ldrb	r2, [r1, r3]
   1d9a8:	1c5c      	adds	r4, r3, #1
   1d9aa:	54ea      	strb	r2, [r5, r3]
   1d9ac:	429e      	cmp	r6, r3
   1d9ae:	d1f9      	bne.n	1d9a4 <memmove+0x34>
   1d9b0:	e7ed      	b.n	1d98e <memmove+0x1e>
   1d9b2:	000b      	movs	r3, r1
   1d9b4:	2603      	movs	r6, #3
   1d9b6:	4303      	orrs	r3, r0
   1d9b8:	401e      	ands	r6, r3
   1d9ba:	000c      	movs	r4, r1
   1d9bc:	0003      	movs	r3, r0
   1d9be:	2e00      	cmp	r6, #0
   1d9c0:	d12e      	bne.n	1da20 <memmove+0xb0>
   1d9c2:	0015      	movs	r5, r2
   1d9c4:	3d10      	subs	r5, #16
   1d9c6:	092d      	lsrs	r5, r5, #4
   1d9c8:	46ac      	mov	ip, r5
   1d9ca:	012d      	lsls	r5, r5, #4
   1d9cc:	46a8      	mov	r8, r5
   1d9ce:	4480      	add	r8, r0
   1d9d0:	e000      	b.n	1d9d4 <memmove+0x64>
   1d9d2:	002b      	movs	r3, r5
   1d9d4:	001d      	movs	r5, r3
   1d9d6:	6827      	ldr	r7, [r4, #0]
   1d9d8:	3510      	adds	r5, #16
   1d9da:	601f      	str	r7, [r3, #0]
   1d9dc:	6867      	ldr	r7, [r4, #4]
   1d9de:	605f      	str	r7, [r3, #4]
   1d9e0:	68a7      	ldr	r7, [r4, #8]
   1d9e2:	609f      	str	r7, [r3, #8]
   1d9e4:	68e7      	ldr	r7, [r4, #12]
   1d9e6:	3410      	adds	r4, #16
   1d9e8:	60df      	str	r7, [r3, #12]
   1d9ea:	4543      	cmp	r3, r8
   1d9ec:	d1f1      	bne.n	1d9d2 <memmove+0x62>
   1d9ee:	4665      	mov	r5, ip
   1d9f0:	230f      	movs	r3, #15
   1d9f2:	240c      	movs	r4, #12
   1d9f4:	3501      	adds	r5, #1
   1d9f6:	012d      	lsls	r5, r5, #4
   1d9f8:	1949      	adds	r1, r1, r5
   1d9fa:	4013      	ands	r3, r2
   1d9fc:	1945      	adds	r5, r0, r5
   1d9fe:	4214      	tst	r4, r2
   1da00:	d011      	beq.n	1da26 <memmove+0xb6>
   1da02:	598c      	ldr	r4, [r1, r6]
   1da04:	51ac      	str	r4, [r5, r6]
   1da06:	3604      	adds	r6, #4
   1da08:	1b9c      	subs	r4, r3, r6
   1da0a:	2c03      	cmp	r4, #3
   1da0c:	d8f9      	bhi.n	1da02 <memmove+0x92>
   1da0e:	2403      	movs	r4, #3
   1da10:	3b04      	subs	r3, #4
   1da12:	089b      	lsrs	r3, r3, #2
   1da14:	3301      	adds	r3, #1
   1da16:	009b      	lsls	r3, r3, #2
   1da18:	18ed      	adds	r5, r5, r3
   1da1a:	18c9      	adds	r1, r1, r3
   1da1c:	4022      	ands	r2, r4
   1da1e:	e7bc      	b.n	1d99a <memmove+0x2a>
   1da20:	1e56      	subs	r6, r2, #1
   1da22:	0005      	movs	r5, r0
   1da24:	e7bc      	b.n	1d9a0 <memmove+0x30>
   1da26:	001a      	movs	r2, r3
   1da28:	e7b7      	b.n	1d99a <memmove+0x2a>
   1da2a:	46c0      	nop			; (mov r8, r8)

0001da2c <__malloc_lock>:
   1da2c:	4770      	bx	lr
   1da2e:	46c0      	nop			; (mov r8, r8)

0001da30 <__malloc_unlock>:
   1da30:	4770      	bx	lr
   1da32:	46c0      	nop			; (mov r8, r8)

0001da34 <_free_r>:
   1da34:	b570      	push	{r4, r5, r6, lr}
   1da36:	0005      	movs	r5, r0
   1da38:	2900      	cmp	r1, #0
   1da3a:	d015      	beq.n	1da68 <_free_r+0x34>
   1da3c:	1f0c      	subs	r4, r1, #4
   1da3e:	6823      	ldr	r3, [r4, #0]
   1da40:	2b00      	cmp	r3, #0
   1da42:	db27      	blt.n	1da94 <_free_r+0x60>
   1da44:	0028      	movs	r0, r5
   1da46:	f7ff fff1 	bl	1da2c <__malloc_lock>
   1da4a:	4b24      	ldr	r3, [pc, #144]	; (1dadc <_free_r+0xa8>)
   1da4c:	681a      	ldr	r2, [r3, #0]
   1da4e:	2a00      	cmp	r2, #0
   1da50:	d005      	beq.n	1da5e <_free_r+0x2a>
   1da52:	42a2      	cmp	r2, r4
   1da54:	d90c      	bls.n	1da70 <_free_r+0x3c>
   1da56:	6821      	ldr	r1, [r4, #0]
   1da58:	1860      	adds	r0, r4, r1
   1da5a:	4282      	cmp	r2, r0
   1da5c:	d024      	beq.n	1daa8 <_free_r+0x74>
   1da5e:	6062      	str	r2, [r4, #4]
   1da60:	0028      	movs	r0, r5
   1da62:	601c      	str	r4, [r3, #0]
   1da64:	f7ff ffe4 	bl	1da30 <__malloc_unlock>
   1da68:	bd70      	pop	{r4, r5, r6, pc}
   1da6a:	42a3      	cmp	r3, r4
   1da6c:	d803      	bhi.n	1da76 <_free_r+0x42>
   1da6e:	001a      	movs	r2, r3
   1da70:	6853      	ldr	r3, [r2, #4]
   1da72:	2b00      	cmp	r3, #0
   1da74:	d1f9      	bne.n	1da6a <_free_r+0x36>
   1da76:	6811      	ldr	r1, [r2, #0]
   1da78:	1850      	adds	r0, r2, r1
   1da7a:	42a0      	cmp	r0, r4
   1da7c:	d01b      	beq.n	1dab6 <_free_r+0x82>
   1da7e:	d827      	bhi.n	1dad0 <_free_r+0x9c>
   1da80:	6821      	ldr	r1, [r4, #0]
   1da82:	1860      	adds	r0, r4, r1
   1da84:	4283      	cmp	r3, r0
   1da86:	d007      	beq.n	1da98 <_free_r+0x64>
   1da88:	6063      	str	r3, [r4, #4]
   1da8a:	6054      	str	r4, [r2, #4]
   1da8c:	0028      	movs	r0, r5
   1da8e:	f7ff ffcf 	bl	1da30 <__malloc_unlock>
   1da92:	e7e9      	b.n	1da68 <_free_r+0x34>
   1da94:	18e4      	adds	r4, r4, r3
   1da96:	e7d5      	b.n	1da44 <_free_r+0x10>
   1da98:	6818      	ldr	r0, [r3, #0]
   1da9a:	685b      	ldr	r3, [r3, #4]
   1da9c:	4684      	mov	ip, r0
   1da9e:	4461      	add	r1, ip
   1daa0:	6021      	str	r1, [r4, #0]
   1daa2:	6063      	str	r3, [r4, #4]
   1daa4:	6054      	str	r4, [r2, #4]
   1daa6:	e7f1      	b.n	1da8c <_free_r+0x58>
   1daa8:	6810      	ldr	r0, [r2, #0]
   1daaa:	6852      	ldr	r2, [r2, #4]
   1daac:	4684      	mov	ip, r0
   1daae:	4461      	add	r1, ip
   1dab0:	6021      	str	r1, [r4, #0]
   1dab2:	6062      	str	r2, [r4, #4]
   1dab4:	e7d4      	b.n	1da60 <_free_r+0x2c>
   1dab6:	6820      	ldr	r0, [r4, #0]
   1dab8:	1809      	adds	r1, r1, r0
   1daba:	1850      	adds	r0, r2, r1
   1dabc:	6011      	str	r1, [r2, #0]
   1dabe:	4283      	cmp	r3, r0
   1dac0:	d1e4      	bne.n	1da8c <_free_r+0x58>
   1dac2:	6818      	ldr	r0, [r3, #0]
   1dac4:	685b      	ldr	r3, [r3, #4]
   1dac6:	4684      	mov	ip, r0
   1dac8:	4461      	add	r1, ip
   1daca:	6011      	str	r1, [r2, #0]
   1dacc:	6053      	str	r3, [r2, #4]
   1dace:	e7dd      	b.n	1da8c <_free_r+0x58>
   1dad0:	230c      	movs	r3, #12
   1dad2:	0028      	movs	r0, r5
   1dad4:	602b      	str	r3, [r5, #0]
   1dad6:	f7ff ffab 	bl	1da30 <__malloc_unlock>
   1dada:	e7c5      	b.n	1da68 <_free_r+0x34>
   1dadc:	20001b58 	.word	0x20001b58

0001dae0 <_realloc_r>:
   1dae0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1dae2:	0007      	movs	r7, r0
   1dae4:	000c      	movs	r4, r1
   1dae6:	0015      	movs	r5, r2
   1dae8:	2900      	cmp	r1, #0
   1daea:	d01b      	beq.n	1db24 <_realloc_r+0x44>
   1daec:	2a00      	cmp	r2, #0
   1daee:	d015      	beq.n	1db1c <_realloc_r+0x3c>
   1daf0:	f000 f858 	bl	1dba4 <_malloc_usable_size_r>
   1daf4:	0026      	movs	r6, r4
   1daf6:	42a8      	cmp	r0, r5
   1daf8:	d301      	bcc.n	1dafe <_realloc_r+0x1e>
   1dafa:	0030      	movs	r0, r6
   1dafc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
   1dafe:	0029      	movs	r1, r5
   1db00:	0038      	movs	r0, r7
   1db02:	f7fe fe6b 	bl	1c7dc <_malloc_r>
   1db06:	1e06      	subs	r6, r0, #0
   1db08:	d0f7      	beq.n	1dafa <_realloc_r+0x1a>
   1db0a:	0021      	movs	r1, r4
   1db0c:	002a      	movs	r2, r5
   1db0e:	f7fe fc75 	bl	1c3fc <memcpy>
   1db12:	0021      	movs	r1, r4
   1db14:	0038      	movs	r0, r7
   1db16:	f7ff ff8d 	bl	1da34 <_free_r>
   1db1a:	e7ee      	b.n	1dafa <_realloc_r+0x1a>
   1db1c:	f7ff ff8a 	bl	1da34 <_free_r>
   1db20:	2600      	movs	r6, #0
   1db22:	e7ea      	b.n	1dafa <_realloc_r+0x1a>
   1db24:	0011      	movs	r1, r2
   1db26:	f7fe fe59 	bl	1c7dc <_malloc_r>
   1db2a:	0006      	movs	r6, r0
   1db2c:	e7e5      	b.n	1dafa <_realloc_r+0x1a>
   1db2e:	46c0      	nop			; (mov r8, r8)

0001db30 <_read_r>:
   1db30:	b570      	push	{r4, r5, r6, lr}
   1db32:	0005      	movs	r5, r0
   1db34:	0008      	movs	r0, r1
   1db36:	0011      	movs	r1, r2
   1db38:	2200      	movs	r2, #0
   1db3a:	4c06      	ldr	r4, [pc, #24]	; (1db54 <_read_r+0x24>)
   1db3c:	6022      	str	r2, [r4, #0]
   1db3e:	001a      	movs	r2, r3
   1db40:	f000 f9d0 	bl	1dee4 <_read>
   1db44:	1c43      	adds	r3, r0, #1
   1db46:	d000      	beq.n	1db4a <_read_r+0x1a>
   1db48:	bd70      	pop	{r4, r5, r6, pc}
   1db4a:	6823      	ldr	r3, [r4, #0]
   1db4c:	2b00      	cmp	r3, #0
   1db4e:	d0fb      	beq.n	1db48 <_read_r+0x18>
   1db50:	602b      	str	r3, [r5, #0]
   1db52:	e7f9      	b.n	1db48 <_read_r+0x18>
   1db54:	20001b64 	.word	0x20001b64

0001db58 <_fstat_r>:
   1db58:	2300      	movs	r3, #0
   1db5a:	b570      	push	{r4, r5, r6, lr}
   1db5c:	4c07      	ldr	r4, [pc, #28]	; (1db7c <_fstat_r+0x24>)
   1db5e:	0005      	movs	r5, r0
   1db60:	0008      	movs	r0, r1
   1db62:	0011      	movs	r1, r2
   1db64:	6023      	str	r3, [r4, #0]
   1db66:	f000 f9a5 	bl	1deb4 <_fstat>
   1db6a:	1c43      	adds	r3, r0, #1
   1db6c:	d000      	beq.n	1db70 <_fstat_r+0x18>
   1db6e:	bd70      	pop	{r4, r5, r6, pc}
   1db70:	6823      	ldr	r3, [r4, #0]
   1db72:	2b00      	cmp	r3, #0
   1db74:	d0fb      	beq.n	1db6e <_fstat_r+0x16>
   1db76:	602b      	str	r3, [r5, #0]
   1db78:	e7f9      	b.n	1db6e <_fstat_r+0x16>
   1db7a:	46c0      	nop			; (mov r8, r8)
   1db7c:	20001b64 	.word	0x20001b64

0001db80 <_isatty_r>:
   1db80:	2300      	movs	r3, #0
   1db82:	b570      	push	{r4, r5, r6, lr}
   1db84:	4c06      	ldr	r4, [pc, #24]	; (1dba0 <_isatty_r+0x20>)
   1db86:	0005      	movs	r5, r0
   1db88:	0008      	movs	r0, r1
   1db8a:	6023      	str	r3, [r4, #0]
   1db8c:	f000 f99a 	bl	1dec4 <_isatty>
   1db90:	1c43      	adds	r3, r0, #1
   1db92:	d000      	beq.n	1db96 <_isatty_r+0x16>
   1db94:	bd70      	pop	{r4, r5, r6, pc}
   1db96:	6823      	ldr	r3, [r4, #0]
   1db98:	2b00      	cmp	r3, #0
   1db9a:	d0fb      	beq.n	1db94 <_isatty_r+0x14>
   1db9c:	602b      	str	r3, [r5, #0]
   1db9e:	e7f9      	b.n	1db94 <_isatty_r+0x14>
   1dba0:	20001b64 	.word	0x20001b64

0001dba4 <_malloc_usable_size_r>:
   1dba4:	1f0b      	subs	r3, r1, #4
   1dba6:	681b      	ldr	r3, [r3, #0]
   1dba8:	1f18      	subs	r0, r3, #4
   1dbaa:	2b00      	cmp	r3, #0
   1dbac:	db00      	blt.n	1dbb0 <_malloc_usable_size_r+0xc>
   1dbae:	4770      	bx	lr
   1dbb0:	580b      	ldr	r3, [r1, r0]
   1dbb2:	18c0      	adds	r0, r0, r3
   1dbb4:	e7fb      	b.n	1dbae <_malloc_usable_size_r+0xa>
   1dbb6:	46c0      	nop			; (mov r8, r8)

0001dbb8 <__udivsi3>:
   1dbb8:	2200      	movs	r2, #0
   1dbba:	0843      	lsrs	r3, r0, #1
   1dbbc:	428b      	cmp	r3, r1
   1dbbe:	d374      	bcc.n	1dcaa <__udivsi3+0xf2>
   1dbc0:	0903      	lsrs	r3, r0, #4
   1dbc2:	428b      	cmp	r3, r1
   1dbc4:	d35f      	bcc.n	1dc86 <__udivsi3+0xce>
   1dbc6:	0a03      	lsrs	r3, r0, #8
   1dbc8:	428b      	cmp	r3, r1
   1dbca:	d344      	bcc.n	1dc56 <__udivsi3+0x9e>
   1dbcc:	0b03      	lsrs	r3, r0, #12
   1dbce:	428b      	cmp	r3, r1
   1dbd0:	d328      	bcc.n	1dc24 <__udivsi3+0x6c>
   1dbd2:	0c03      	lsrs	r3, r0, #16
   1dbd4:	428b      	cmp	r3, r1
   1dbd6:	d30d      	bcc.n	1dbf4 <__udivsi3+0x3c>
   1dbd8:	22ff      	movs	r2, #255	; 0xff
   1dbda:	0209      	lsls	r1, r1, #8
   1dbdc:	ba12      	rev	r2, r2
   1dbde:	0c03      	lsrs	r3, r0, #16
   1dbe0:	428b      	cmp	r3, r1
   1dbe2:	d302      	bcc.n	1dbea <__udivsi3+0x32>
   1dbe4:	1212      	asrs	r2, r2, #8
   1dbe6:	0209      	lsls	r1, r1, #8
   1dbe8:	d065      	beq.n	1dcb6 <__udivsi3+0xfe>
   1dbea:	0b03      	lsrs	r3, r0, #12
   1dbec:	428b      	cmp	r3, r1
   1dbee:	d319      	bcc.n	1dc24 <__udivsi3+0x6c>
   1dbf0:	e000      	b.n	1dbf4 <__udivsi3+0x3c>
   1dbf2:	0a09      	lsrs	r1, r1, #8
   1dbf4:	0bc3      	lsrs	r3, r0, #15
   1dbf6:	428b      	cmp	r3, r1
   1dbf8:	d301      	bcc.n	1dbfe <__udivsi3+0x46>
   1dbfa:	03cb      	lsls	r3, r1, #15
   1dbfc:	1ac0      	subs	r0, r0, r3
   1dbfe:	4152      	adcs	r2, r2
   1dc00:	0b83      	lsrs	r3, r0, #14
   1dc02:	428b      	cmp	r3, r1
   1dc04:	d301      	bcc.n	1dc0a <__udivsi3+0x52>
   1dc06:	038b      	lsls	r3, r1, #14
   1dc08:	1ac0      	subs	r0, r0, r3
   1dc0a:	4152      	adcs	r2, r2
   1dc0c:	0b43      	lsrs	r3, r0, #13
   1dc0e:	428b      	cmp	r3, r1
   1dc10:	d301      	bcc.n	1dc16 <__udivsi3+0x5e>
   1dc12:	034b      	lsls	r3, r1, #13
   1dc14:	1ac0      	subs	r0, r0, r3
   1dc16:	4152      	adcs	r2, r2
   1dc18:	0b03      	lsrs	r3, r0, #12
   1dc1a:	428b      	cmp	r3, r1
   1dc1c:	d301      	bcc.n	1dc22 <__udivsi3+0x6a>
   1dc1e:	030b      	lsls	r3, r1, #12
   1dc20:	1ac0      	subs	r0, r0, r3
   1dc22:	4152      	adcs	r2, r2
   1dc24:	0ac3      	lsrs	r3, r0, #11
   1dc26:	428b      	cmp	r3, r1
   1dc28:	d301      	bcc.n	1dc2e <__udivsi3+0x76>
   1dc2a:	02cb      	lsls	r3, r1, #11
   1dc2c:	1ac0      	subs	r0, r0, r3
   1dc2e:	4152      	adcs	r2, r2
   1dc30:	0a83      	lsrs	r3, r0, #10
   1dc32:	428b      	cmp	r3, r1
   1dc34:	d301      	bcc.n	1dc3a <__udivsi3+0x82>
   1dc36:	028b      	lsls	r3, r1, #10
   1dc38:	1ac0      	subs	r0, r0, r3
   1dc3a:	4152      	adcs	r2, r2
   1dc3c:	0a43      	lsrs	r3, r0, #9
   1dc3e:	428b      	cmp	r3, r1
   1dc40:	d301      	bcc.n	1dc46 <__udivsi3+0x8e>
   1dc42:	024b      	lsls	r3, r1, #9
   1dc44:	1ac0      	subs	r0, r0, r3
   1dc46:	4152      	adcs	r2, r2
   1dc48:	0a03      	lsrs	r3, r0, #8
   1dc4a:	428b      	cmp	r3, r1
   1dc4c:	d301      	bcc.n	1dc52 <__udivsi3+0x9a>
   1dc4e:	020b      	lsls	r3, r1, #8
   1dc50:	1ac0      	subs	r0, r0, r3
   1dc52:	4152      	adcs	r2, r2
   1dc54:	d2cd      	bcs.n	1dbf2 <__udivsi3+0x3a>
   1dc56:	09c3      	lsrs	r3, r0, #7
   1dc58:	428b      	cmp	r3, r1
   1dc5a:	d301      	bcc.n	1dc60 <__udivsi3+0xa8>
   1dc5c:	01cb      	lsls	r3, r1, #7
   1dc5e:	1ac0      	subs	r0, r0, r3
   1dc60:	4152      	adcs	r2, r2
   1dc62:	0983      	lsrs	r3, r0, #6
   1dc64:	428b      	cmp	r3, r1
   1dc66:	d301      	bcc.n	1dc6c <__udivsi3+0xb4>
   1dc68:	018b      	lsls	r3, r1, #6
   1dc6a:	1ac0      	subs	r0, r0, r3
   1dc6c:	4152      	adcs	r2, r2
   1dc6e:	0943      	lsrs	r3, r0, #5
   1dc70:	428b      	cmp	r3, r1
   1dc72:	d301      	bcc.n	1dc78 <__udivsi3+0xc0>
   1dc74:	014b      	lsls	r3, r1, #5
   1dc76:	1ac0      	subs	r0, r0, r3
   1dc78:	4152      	adcs	r2, r2
   1dc7a:	0903      	lsrs	r3, r0, #4
   1dc7c:	428b      	cmp	r3, r1
   1dc7e:	d301      	bcc.n	1dc84 <__udivsi3+0xcc>
   1dc80:	010b      	lsls	r3, r1, #4
   1dc82:	1ac0      	subs	r0, r0, r3
   1dc84:	4152      	adcs	r2, r2
   1dc86:	08c3      	lsrs	r3, r0, #3
   1dc88:	428b      	cmp	r3, r1
   1dc8a:	d301      	bcc.n	1dc90 <__udivsi3+0xd8>
   1dc8c:	00cb      	lsls	r3, r1, #3
   1dc8e:	1ac0      	subs	r0, r0, r3
   1dc90:	4152      	adcs	r2, r2
   1dc92:	0883      	lsrs	r3, r0, #2
   1dc94:	428b      	cmp	r3, r1
   1dc96:	d301      	bcc.n	1dc9c <__udivsi3+0xe4>
   1dc98:	008b      	lsls	r3, r1, #2
   1dc9a:	1ac0      	subs	r0, r0, r3
   1dc9c:	4152      	adcs	r2, r2
   1dc9e:	0843      	lsrs	r3, r0, #1
   1dca0:	428b      	cmp	r3, r1
   1dca2:	d301      	bcc.n	1dca8 <__udivsi3+0xf0>
   1dca4:	004b      	lsls	r3, r1, #1
   1dca6:	1ac0      	subs	r0, r0, r3
   1dca8:	4152      	adcs	r2, r2
   1dcaa:	1a41      	subs	r1, r0, r1
   1dcac:	d200      	bcs.n	1dcb0 <__udivsi3+0xf8>
   1dcae:	4601      	mov	r1, r0
   1dcb0:	4152      	adcs	r2, r2
   1dcb2:	4610      	mov	r0, r2
   1dcb4:	4770      	bx	lr
   1dcb6:	e7ff      	b.n	1dcb8 <__udivsi3+0x100>
   1dcb8:	b501      	push	{r0, lr}
   1dcba:	2000      	movs	r0, #0
   1dcbc:	f000 f8f0 	bl	1dea0 <__aeabi_idiv0>
   1dcc0:	bd02      	pop	{r1, pc}
   1dcc2:	46c0      	nop			; (mov r8, r8)

0001dcc4 <__aeabi_uidivmod>:
   1dcc4:	2900      	cmp	r1, #0
   1dcc6:	d0f7      	beq.n	1dcb8 <__udivsi3+0x100>
   1dcc8:	e776      	b.n	1dbb8 <__udivsi3>
   1dcca:	4770      	bx	lr

0001dccc <__divsi3>:
   1dccc:	4603      	mov	r3, r0
   1dcce:	430b      	orrs	r3, r1
   1dcd0:	d47f      	bmi.n	1ddd2 <__divsi3+0x106>
   1dcd2:	2200      	movs	r2, #0
   1dcd4:	0843      	lsrs	r3, r0, #1
   1dcd6:	428b      	cmp	r3, r1
   1dcd8:	d374      	bcc.n	1ddc4 <__divsi3+0xf8>
   1dcda:	0903      	lsrs	r3, r0, #4
   1dcdc:	428b      	cmp	r3, r1
   1dcde:	d35f      	bcc.n	1dda0 <__divsi3+0xd4>
   1dce0:	0a03      	lsrs	r3, r0, #8
   1dce2:	428b      	cmp	r3, r1
   1dce4:	d344      	bcc.n	1dd70 <__divsi3+0xa4>
   1dce6:	0b03      	lsrs	r3, r0, #12
   1dce8:	428b      	cmp	r3, r1
   1dcea:	d328      	bcc.n	1dd3e <__divsi3+0x72>
   1dcec:	0c03      	lsrs	r3, r0, #16
   1dcee:	428b      	cmp	r3, r1
   1dcf0:	d30d      	bcc.n	1dd0e <__divsi3+0x42>
   1dcf2:	22ff      	movs	r2, #255	; 0xff
   1dcf4:	0209      	lsls	r1, r1, #8
   1dcf6:	ba12      	rev	r2, r2
   1dcf8:	0c03      	lsrs	r3, r0, #16
   1dcfa:	428b      	cmp	r3, r1
   1dcfc:	d302      	bcc.n	1dd04 <__divsi3+0x38>
   1dcfe:	1212      	asrs	r2, r2, #8
   1dd00:	0209      	lsls	r1, r1, #8
   1dd02:	d065      	beq.n	1ddd0 <__divsi3+0x104>
   1dd04:	0b03      	lsrs	r3, r0, #12
   1dd06:	428b      	cmp	r3, r1
   1dd08:	d319      	bcc.n	1dd3e <__divsi3+0x72>
   1dd0a:	e000      	b.n	1dd0e <__divsi3+0x42>
   1dd0c:	0a09      	lsrs	r1, r1, #8
   1dd0e:	0bc3      	lsrs	r3, r0, #15
   1dd10:	428b      	cmp	r3, r1
   1dd12:	d301      	bcc.n	1dd18 <__divsi3+0x4c>
   1dd14:	03cb      	lsls	r3, r1, #15
   1dd16:	1ac0      	subs	r0, r0, r3
   1dd18:	4152      	adcs	r2, r2
   1dd1a:	0b83      	lsrs	r3, r0, #14
   1dd1c:	428b      	cmp	r3, r1
   1dd1e:	d301      	bcc.n	1dd24 <__divsi3+0x58>
   1dd20:	038b      	lsls	r3, r1, #14
   1dd22:	1ac0      	subs	r0, r0, r3
   1dd24:	4152      	adcs	r2, r2
   1dd26:	0b43      	lsrs	r3, r0, #13
   1dd28:	428b      	cmp	r3, r1
   1dd2a:	d301      	bcc.n	1dd30 <__divsi3+0x64>
   1dd2c:	034b      	lsls	r3, r1, #13
   1dd2e:	1ac0      	subs	r0, r0, r3
   1dd30:	4152      	adcs	r2, r2
   1dd32:	0b03      	lsrs	r3, r0, #12
   1dd34:	428b      	cmp	r3, r1
   1dd36:	d301      	bcc.n	1dd3c <__divsi3+0x70>
   1dd38:	030b      	lsls	r3, r1, #12
   1dd3a:	1ac0      	subs	r0, r0, r3
   1dd3c:	4152      	adcs	r2, r2
   1dd3e:	0ac3      	lsrs	r3, r0, #11
   1dd40:	428b      	cmp	r3, r1
   1dd42:	d301      	bcc.n	1dd48 <__divsi3+0x7c>
   1dd44:	02cb      	lsls	r3, r1, #11
   1dd46:	1ac0      	subs	r0, r0, r3
   1dd48:	4152      	adcs	r2, r2
   1dd4a:	0a83      	lsrs	r3, r0, #10
   1dd4c:	428b      	cmp	r3, r1
   1dd4e:	d301      	bcc.n	1dd54 <__divsi3+0x88>
   1dd50:	028b      	lsls	r3, r1, #10
   1dd52:	1ac0      	subs	r0, r0, r3
   1dd54:	4152      	adcs	r2, r2
   1dd56:	0a43      	lsrs	r3, r0, #9
   1dd58:	428b      	cmp	r3, r1
   1dd5a:	d301      	bcc.n	1dd60 <__divsi3+0x94>
   1dd5c:	024b      	lsls	r3, r1, #9
   1dd5e:	1ac0      	subs	r0, r0, r3
   1dd60:	4152      	adcs	r2, r2
   1dd62:	0a03      	lsrs	r3, r0, #8
   1dd64:	428b      	cmp	r3, r1
   1dd66:	d301      	bcc.n	1dd6c <__divsi3+0xa0>
   1dd68:	020b      	lsls	r3, r1, #8
   1dd6a:	1ac0      	subs	r0, r0, r3
   1dd6c:	4152      	adcs	r2, r2
   1dd6e:	d2cd      	bcs.n	1dd0c <__divsi3+0x40>
   1dd70:	09c3      	lsrs	r3, r0, #7
   1dd72:	428b      	cmp	r3, r1
   1dd74:	d301      	bcc.n	1dd7a <__divsi3+0xae>
   1dd76:	01cb      	lsls	r3, r1, #7
   1dd78:	1ac0      	subs	r0, r0, r3
   1dd7a:	4152      	adcs	r2, r2
   1dd7c:	0983      	lsrs	r3, r0, #6
   1dd7e:	428b      	cmp	r3, r1
   1dd80:	d301      	bcc.n	1dd86 <__divsi3+0xba>
   1dd82:	018b      	lsls	r3, r1, #6
   1dd84:	1ac0      	subs	r0, r0, r3
   1dd86:	4152      	adcs	r2, r2
   1dd88:	0943      	lsrs	r3, r0, #5
   1dd8a:	428b      	cmp	r3, r1
   1dd8c:	d301      	bcc.n	1dd92 <__divsi3+0xc6>
   1dd8e:	014b      	lsls	r3, r1, #5
   1dd90:	1ac0      	subs	r0, r0, r3
   1dd92:	4152      	adcs	r2, r2
   1dd94:	0903      	lsrs	r3, r0, #4
   1dd96:	428b      	cmp	r3, r1
   1dd98:	d301      	bcc.n	1dd9e <__divsi3+0xd2>
   1dd9a:	010b      	lsls	r3, r1, #4
   1dd9c:	1ac0      	subs	r0, r0, r3
   1dd9e:	4152      	adcs	r2, r2
   1dda0:	08c3      	lsrs	r3, r0, #3
   1dda2:	428b      	cmp	r3, r1
   1dda4:	d301      	bcc.n	1ddaa <__divsi3+0xde>
   1dda6:	00cb      	lsls	r3, r1, #3
   1dda8:	1ac0      	subs	r0, r0, r3
   1ddaa:	4152      	adcs	r2, r2
   1ddac:	0883      	lsrs	r3, r0, #2
   1ddae:	428b      	cmp	r3, r1
   1ddb0:	d301      	bcc.n	1ddb6 <__divsi3+0xea>
   1ddb2:	008b      	lsls	r3, r1, #2
   1ddb4:	1ac0      	subs	r0, r0, r3
   1ddb6:	4152      	adcs	r2, r2
   1ddb8:	0843      	lsrs	r3, r0, #1
   1ddba:	428b      	cmp	r3, r1
   1ddbc:	d301      	bcc.n	1ddc2 <__divsi3+0xf6>
   1ddbe:	004b      	lsls	r3, r1, #1
   1ddc0:	1ac0      	subs	r0, r0, r3
   1ddc2:	4152      	adcs	r2, r2
   1ddc4:	1a41      	subs	r1, r0, r1
   1ddc6:	d200      	bcs.n	1ddca <__divsi3+0xfe>
   1ddc8:	4601      	mov	r1, r0
   1ddca:	4152      	adcs	r2, r2
   1ddcc:	4610      	mov	r0, r2
   1ddce:	4770      	bx	lr
   1ddd0:	e05d      	b.n	1de8e <__divsi3+0x1c2>
   1ddd2:	0fca      	lsrs	r2, r1, #31
   1ddd4:	d000      	beq.n	1ddd8 <__divsi3+0x10c>
   1ddd6:	4249      	negs	r1, r1
   1ddd8:	1003      	asrs	r3, r0, #32
   1ddda:	d300      	bcc.n	1ddde <__divsi3+0x112>
   1dddc:	4240      	negs	r0, r0
   1ddde:	4053      	eors	r3, r2
   1dde0:	2200      	movs	r2, #0
   1dde2:	469c      	mov	ip, r3
   1dde4:	0903      	lsrs	r3, r0, #4
   1dde6:	428b      	cmp	r3, r1
   1dde8:	d32d      	bcc.n	1de46 <__divsi3+0x17a>
   1ddea:	0a03      	lsrs	r3, r0, #8
   1ddec:	428b      	cmp	r3, r1
   1ddee:	d312      	bcc.n	1de16 <__divsi3+0x14a>
   1ddf0:	22fc      	movs	r2, #252	; 0xfc
   1ddf2:	0189      	lsls	r1, r1, #6
   1ddf4:	ba12      	rev	r2, r2
   1ddf6:	0a03      	lsrs	r3, r0, #8
   1ddf8:	428b      	cmp	r3, r1
   1ddfa:	d30c      	bcc.n	1de16 <__divsi3+0x14a>
   1ddfc:	0189      	lsls	r1, r1, #6
   1ddfe:	1192      	asrs	r2, r2, #6
   1de00:	428b      	cmp	r3, r1
   1de02:	d308      	bcc.n	1de16 <__divsi3+0x14a>
   1de04:	0189      	lsls	r1, r1, #6
   1de06:	1192      	asrs	r2, r2, #6
   1de08:	428b      	cmp	r3, r1
   1de0a:	d304      	bcc.n	1de16 <__divsi3+0x14a>
   1de0c:	0189      	lsls	r1, r1, #6
   1de0e:	d03a      	beq.n	1de86 <__divsi3+0x1ba>
   1de10:	1192      	asrs	r2, r2, #6
   1de12:	e000      	b.n	1de16 <__divsi3+0x14a>
   1de14:	0989      	lsrs	r1, r1, #6
   1de16:	09c3      	lsrs	r3, r0, #7
   1de18:	428b      	cmp	r3, r1
   1de1a:	d301      	bcc.n	1de20 <__divsi3+0x154>
   1de1c:	01cb      	lsls	r3, r1, #7
   1de1e:	1ac0      	subs	r0, r0, r3
   1de20:	4152      	adcs	r2, r2
   1de22:	0983      	lsrs	r3, r0, #6
   1de24:	428b      	cmp	r3, r1
   1de26:	d301      	bcc.n	1de2c <__divsi3+0x160>
   1de28:	018b      	lsls	r3, r1, #6
   1de2a:	1ac0      	subs	r0, r0, r3
   1de2c:	4152      	adcs	r2, r2
   1de2e:	0943      	lsrs	r3, r0, #5
   1de30:	428b      	cmp	r3, r1
   1de32:	d301      	bcc.n	1de38 <__divsi3+0x16c>
   1de34:	014b      	lsls	r3, r1, #5
   1de36:	1ac0      	subs	r0, r0, r3
   1de38:	4152      	adcs	r2, r2
   1de3a:	0903      	lsrs	r3, r0, #4
   1de3c:	428b      	cmp	r3, r1
   1de3e:	d301      	bcc.n	1de44 <__divsi3+0x178>
   1de40:	010b      	lsls	r3, r1, #4
   1de42:	1ac0      	subs	r0, r0, r3
   1de44:	4152      	adcs	r2, r2
   1de46:	08c3      	lsrs	r3, r0, #3
   1de48:	428b      	cmp	r3, r1
   1de4a:	d301      	bcc.n	1de50 <__divsi3+0x184>
   1de4c:	00cb      	lsls	r3, r1, #3
   1de4e:	1ac0      	subs	r0, r0, r3
   1de50:	4152      	adcs	r2, r2
   1de52:	0883      	lsrs	r3, r0, #2
   1de54:	428b      	cmp	r3, r1
   1de56:	d301      	bcc.n	1de5c <__divsi3+0x190>
   1de58:	008b      	lsls	r3, r1, #2
   1de5a:	1ac0      	subs	r0, r0, r3
   1de5c:	4152      	adcs	r2, r2
   1de5e:	d2d9      	bcs.n	1de14 <__divsi3+0x148>
   1de60:	0843      	lsrs	r3, r0, #1
   1de62:	428b      	cmp	r3, r1
   1de64:	d301      	bcc.n	1de6a <__divsi3+0x19e>
   1de66:	004b      	lsls	r3, r1, #1
   1de68:	1ac0      	subs	r0, r0, r3
   1de6a:	4152      	adcs	r2, r2
   1de6c:	1a41      	subs	r1, r0, r1
   1de6e:	d200      	bcs.n	1de72 <__divsi3+0x1a6>
   1de70:	4601      	mov	r1, r0
   1de72:	4663      	mov	r3, ip
   1de74:	4152      	adcs	r2, r2
   1de76:	105b      	asrs	r3, r3, #1
   1de78:	4610      	mov	r0, r2
   1de7a:	d301      	bcc.n	1de80 <__divsi3+0x1b4>
   1de7c:	4240      	negs	r0, r0
   1de7e:	2b00      	cmp	r3, #0
   1de80:	d500      	bpl.n	1de84 <__divsi3+0x1b8>
   1de82:	4249      	negs	r1, r1
   1de84:	4770      	bx	lr
   1de86:	4663      	mov	r3, ip
   1de88:	105b      	asrs	r3, r3, #1
   1de8a:	d300      	bcc.n	1de8e <__divsi3+0x1c2>
   1de8c:	4240      	negs	r0, r0
   1de8e:	b501      	push	{r0, lr}
   1de90:	2000      	movs	r0, #0
   1de92:	f000 f805 	bl	1dea0 <__aeabi_idiv0>
   1de96:	bd02      	pop	{r1, pc}

0001de98 <__aeabi_idivmod>:
   1de98:	2900      	cmp	r1, #0
   1de9a:	d0f8      	beq.n	1de8e <__divsi3+0x1c2>
   1de9c:	e716      	b.n	1dccc <__divsi3>
   1de9e:	4770      	bx	lr

0001dea0 <__aeabi_idiv0>:
   1dea0:	4770      	bx	lr
   1dea2:	46c0      	nop			; (mov r8, r8)

0001dea4 <_close>:
   1dea4:	2258      	movs	r2, #88	; 0x58
   1dea6:	2001      	movs	r0, #1
   1dea8:	4b01      	ldr	r3, [pc, #4]	; (1deb0 <_close+0xc>)
   1deaa:	4240      	negs	r0, r0
   1deac:	601a      	str	r2, [r3, #0]
   1deae:	4770      	bx	lr
   1deb0:	20001b64 	.word	0x20001b64

0001deb4 <_fstat>:
   1deb4:	2258      	movs	r2, #88	; 0x58
   1deb6:	2001      	movs	r0, #1
   1deb8:	4b01      	ldr	r3, [pc, #4]	; (1dec0 <_fstat+0xc>)
   1deba:	4240      	negs	r0, r0
   1debc:	601a      	str	r2, [r3, #0]
   1debe:	4770      	bx	lr
   1dec0:	20001b64 	.word	0x20001b64

0001dec4 <_isatty>:
   1dec4:	2258      	movs	r2, #88	; 0x58
   1dec6:	4b02      	ldr	r3, [pc, #8]	; (1ded0 <_isatty+0xc>)
   1dec8:	2000      	movs	r0, #0
   1deca:	601a      	str	r2, [r3, #0]
   1decc:	4770      	bx	lr
   1dece:	46c0      	nop			; (mov r8, r8)
   1ded0:	20001b64 	.word	0x20001b64

0001ded4 <_lseek>:
   1ded4:	2258      	movs	r2, #88	; 0x58
   1ded6:	2001      	movs	r0, #1
   1ded8:	4b01      	ldr	r3, [pc, #4]	; (1dee0 <_lseek+0xc>)
   1deda:	4240      	negs	r0, r0
   1dedc:	601a      	str	r2, [r3, #0]
   1dede:	4770      	bx	lr
   1dee0:	20001b64 	.word	0x20001b64

0001dee4 <_read>:
   1dee4:	2258      	movs	r2, #88	; 0x58
   1dee6:	2001      	movs	r0, #1
   1dee8:	4b01      	ldr	r3, [pc, #4]	; (1def0 <_read+0xc>)
   1deea:	4240      	negs	r0, r0
   1deec:	601a      	str	r2, [r3, #0]
   1deee:	4770      	bx	lr
   1def0:	20001b64 	.word	0x20001b64

0001def4 <_sbrk>:
   1def4:	4a04      	ldr	r2, [pc, #16]	; (1df08 <_sbrk+0x14>)
   1def6:	6813      	ldr	r3, [r2, #0]
   1def8:	2b00      	cmp	r3, #0
   1defa:	d003      	beq.n	1df04 <_sbrk+0x10>
   1defc:	1818      	adds	r0, r3, r0
   1defe:	6010      	str	r0, [r2, #0]
   1df00:	0018      	movs	r0, r3
   1df02:	4770      	bx	lr
   1df04:	4b01      	ldr	r3, [pc, #4]	; (1df0c <_sbrk+0x18>)
   1df06:	e7f9      	b.n	1defc <_sbrk+0x8>
   1df08:	20001b60 	.word	0x20001b60
   1df0c:	20001b68 	.word	0x20001b68

0001df10 <_write>:
   1df10:	2258      	movs	r2, #88	; 0x58
   1df12:	2001      	movs	r0, #1
   1df14:	4b01      	ldr	r3, [pc, #4]	; (1df1c <_write+0xc>)
   1df16:	4240      	negs	r0, r0
   1df18:	601a      	str	r2, [r3, #0]
   1df1a:	4770      	bx	lr
   1df1c:	20001b64 	.word	0x20001b64

0001df20 <_init>:
   1df20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1df22:	46c0      	nop			; (mov r8, r8)
   1df24:	bcf8      	pop	{r3, r4, r5, r6, r7}
   1df26:	bc08      	pop	{r3}
   1df28:	469e      	mov	lr, r3
   1df2a:	4770      	bx	lr

0001df2c <_fini>:
   1df2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1df2e:	46c0      	nop			; (mov r8, r8)
   1df30:	bcf8      	pop	{r3, r4, r5, r6, r7}
   1df32:	bc08      	pop	{r3}
   1df34:	469e      	mov	lr, r3
   1df36:	4770      	bx	lr

0001df38 <_global_impure_ptr>:
   1df38:	13cc 2000 0015 0000 0017 0000 0000 0000     ... ............
	...
   1df50:	e000 01d7 0a0d 7453 7261 3a74 0d20 000a     ......Start: ...
   1df60:	0d20 450a 6978 2174 0a0d 0000 682f 6d6f      ..Exit!..../hom
   1df70:	2f65 7473 6d65 6170 656e 6472 6e2f 6672     e/stempanerd/nrf
   1df80:	6e2f 6672 3135 3238 2f32 7273 2f63 616d     /nrf51822/src/ma
   1df90:	6e69 632e 0000 0000 ffff ffff ffff ffff     in.c............
   1dfa0:	ffff ffff ffff ffff 0000 0000 0000 0000     ................
   1dfb0:	e000 01d7 0003 0000 5041 5f50 5245 4f52     ........APP_ERRO
   1dfc0:	3a52 5245 4f52 3a52 6146 6174 0d6c 000a     R:ERROR:Fatal...
   1dfd0:	764f 7265 6c66 776f 0a0d 0000 ffff ffff     Overflow........
   1dfe0:	ffff ffff ffff ffff ffff ffff 0000 0000     ................
   1dff0:	0000 0000 e000 01d7 0003 0000               ............

0001dffc <__sf_fake_stderr>:
	...

0001e01c <__sf_fake_stdout>:
	...

0001e03c <__sf_fake_stdin>:
	...
   1e05c:	2d23 2b30 0020 0000 6c68 004c 6665 4567     #-0+ ...hlL.efgE
   1e06c:	4746 0000 3130 3332 3534 3736 3938 4241     FG..0123456789AB
   1e07c:	4443 4645 0000 0000 3130 3332 3534 3736     CDEF....01234567
   1e08c:	3938 6261 6463 6665 0000 0000               89abcdef....

0001e098 <__EH_FRAME_BEGIN__>:
   1e098:	0000 0000                                   ....
